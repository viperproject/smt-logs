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
(declare-sort T@Field_25639_53 0)
(declare-sort T@Field_25652_25653 0)
(declare-sort T@Field_32195_32196 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_31894_3421 0)
(declare-sort T@Field_34814_34819 0)
(declare-sort T@Field_50596_50597 0)
(declare-sort T@Field_50609_50614 0)
(declare-sort T@Field_51826_51827 0)
(declare-sort T@Field_51839_51844 0)
(declare-sort T@Field_52762_52763 0)
(declare-sort T@Field_52776_52781 0)
(declare-sort T@Field_14127_14218 0)
(declare-sort T@Field_14127_34819 0)
(declare-sort T@Field_14217_14128 0)
(declare-sort T@Field_14217_3421 0)
(declare-sort T@Field_14217_53 0)
(declare-sort T@Field_14257_14128 0)
(declare-sort T@Field_14257_3421 0)
(declare-sort T@Field_14257_53 0)
(declare-sort T@Field_14312_14128 0)
(declare-sort T@Field_14312_3421 0)
(declare-sort T@Field_14312_53 0)
(declare-sort T@Field_51826_14128 0)
(declare-sort T@Field_51826_3421 0)
(declare-sort T@Field_51826_53 0)
(declare-datatypes ((T@PolymorphicMapType_25600 0)) (((PolymorphicMapType_25600 (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| (Array T@Ref T@Field_32195_32196 Real)) (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_31894_3421 Real)) (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_25652_25653 Real)) (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| (Array T@Ref T@Field_50596_50597 Real)) (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_51827 Real)) (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| (Array T@Ref T@Field_52762_52763 Real)) (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_14217_3421 Real)) (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_14217_14128 Real)) (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| (Array T@Ref T@Field_14217_53 Real)) (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| (Array T@Ref T@Field_34814_34819 Real)) (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| (Array T@Ref T@Field_14127_14218 Real)) (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| (Array T@Ref T@Field_25639_53 Real)) (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| (Array T@Ref T@Field_14127_34819 Real)) (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_14257_3421 Real)) (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_14257_14128 Real)) (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| (Array T@Ref T@Field_14257_53 Real)) (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| (Array T@Ref T@Field_50609_50614 Real)) (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_3421 Real)) (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_14128 Real)) (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_53 Real)) (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| (Array T@Ref T@Field_51839_51844 Real)) (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_14312_3421 Real)) (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_14312_14128 Real)) (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| (Array T@Ref T@Field_14312_53 Real)) (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| (Array T@Ref T@Field_52776_52781 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26128 0)) (((PolymorphicMapType_26128 (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_25652_25653 Bool)) (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_31894_3421 Bool)) (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (Array T@Ref T@Field_25639_53 Bool)) (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_14127_14218 Bool)) (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (Array T@Ref T@Field_14127_34819 Bool)) (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_14217_14128 Bool)) (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_14217_3421 Bool)) (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (Array T@Ref T@Field_14217_53 Bool)) (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_32195_32196 Bool)) (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (Array T@Ref T@Field_34814_34819 Bool)) (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_14257_14128 Bool)) (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_14257_3421 Bool)) (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (Array T@Ref T@Field_14257_53 Bool)) (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_50596_50597 Bool)) (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (Array T@Ref T@Field_50609_50614 Bool)) (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_14128 Bool)) (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_3421 Bool)) (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_53 Bool)) (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_51827 Bool)) (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (Array T@Ref T@Field_51839_51844 Bool)) (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_14312_14128 Bool)) (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_14312_3421 Bool)) (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (Array T@Ref T@Field_14312_53 Bool)) (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_52762_52763 Bool)) (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (Array T@Ref T@Field_52776_52781 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_25579 0)) (((PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| (Array T@Ref T@Field_25639_53 Bool)) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| (Array T@Ref T@Field_25652_25653 T@Ref)) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| (Array T@Ref T@Field_32195_32196 T@FrameType)) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_31894_3421 Int)) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| (Array T@Ref T@Field_34814_34819 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| (Array T@Ref T@Field_50596_50597 T@FrameType)) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| (Array T@Ref T@Field_50609_50614 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_51827 T@FrameType)) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| (Array T@Ref T@Field_51839_51844 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| (Array T@Ref T@Field_52762_52763 T@FrameType)) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| (Array T@Ref T@Field_52776_52781 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| (Array T@Ref T@Field_14127_14218 T@FrameType)) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| (Array T@Ref T@Field_14127_34819 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_14217_14128 T@Ref)) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_14217_3421 Int)) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| (Array T@Ref T@Field_14217_53 Bool)) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_14257_14128 T@Ref)) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_14257_3421 Int)) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| (Array T@Ref T@Field_14257_53 Bool)) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_14312_14128 T@Ref)) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_14312_3421 Int)) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| (Array T@Ref T@Field_14312_53 Bool)) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_14128 T@Ref)) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_3421 Int)) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_25639_53)
(declare-fun next () T@Field_25652_25653)
(declare-fun data () T@Field_31894_3421)
(declare-fun succHeap (T@PolymorphicMapType_25579 T@PolymorphicMapType_25579) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_25579 T@PolymorphicMapType_25579) Bool)
(declare-fun state (T@PolymorphicMapType_25579 T@PolymorphicMapType_25600) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_25600) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_26128)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun list (T@Ref) T@Field_32195_32196)
(declare-fun IsPredicateField_14217_14218 (T@Field_32195_32196) Bool)
(declare-fun bla_1 (T@Ref) T@Field_50596_50597)
(declare-fun IsPredicateField_14257_14258 (T@Field_50596_50597) Bool)
(declare-fun blabla (T@Ref) T@Field_51826_51827)
(declare-fun IsPredicateField_14285_14286 (T@Field_51826_51827) Bool)
(declare-fun bla_qp ((Array T@Ref Bool)) T@Field_52762_52763)
(declare-fun IsPredicateField_14312_14313 (T@Field_52762_52763) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_25579 T@Ref) Bool)
(declare-fun dummyFunction_3619 (Bool) Bool)
(declare-fun |foo#triggerStateless| (T@Ref) Bool)
(declare-fun |foo_qp'| (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Bool)
(declare-fun |foo_qp#triggerStateless| ((Array T@Ref Bool)) Bool)
(declare-fun |list#trigger_14217| (T@PolymorphicMapType_25579 T@Field_32195_32196) Bool)
(declare-fun |list#everUsed_14217| (T@Field_32195_32196) Bool)
(declare-fun |bla#trigger_14257| (T@PolymorphicMapType_25579 T@Field_50596_50597) Bool)
(declare-fun |bla#everUsed_14257| (T@Field_50596_50597) Bool)
(declare-fun |blabla#trigger_14285| (T@PolymorphicMapType_25579 T@Field_51826_51827) Bool)
(declare-fun |blabla#everUsed_14285| (T@Field_51826_51827) Bool)
(declare-fun |bla_qp#trigger_14312| (T@PolymorphicMapType_25579 T@Field_52762_52763) Bool)
(declare-fun |bla_qp#everUsed_14312| (T@Field_52762_52763) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_25579 T@PolymorphicMapType_25579 T@PolymorphicMapType_25600) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_14285 (T@Field_51826_51827) T@Field_51839_51844)
(declare-fun HasDirectPerm_51826_14218 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_51827) Bool)
(declare-fun PredicateMaskField_14312 (T@Field_52762_52763) T@Field_52776_52781)
(declare-fun HasDirectPerm_14312_14313 (T@PolymorphicMapType_25600 T@Ref T@Field_52762_52763) Bool)
(declare-fun PredicateMaskField_14257 (T@Field_50596_50597) T@Field_50609_50614)
(declare-fun HasDirectPerm_14257_14258 (T@PolymorphicMapType_25600 T@Ref T@Field_50596_50597) Bool)
(declare-fun PredicateMaskField_14217 (T@Field_32195_32196) T@Field_34814_34819)
(declare-fun HasDirectPerm_14217_14218 (T@PolymorphicMapType_25600 T@Ref T@Field_32195_32196) Bool)
(declare-fun IsPredicateField_14127_92945 (T@Field_14127_14218) Bool)
(declare-fun PredicateMaskField_14127 (T@Field_14127_14218) T@Field_14127_34819)
(declare-fun HasDirectPerm_14127_14218 (T@PolymorphicMapType_25600 T@Ref T@Field_14127_14218) Bool)
(declare-fun IsWandField_51826_102648 (T@Field_51826_51827) Bool)
(declare-fun WandMaskField_51826 (T@Field_51826_51827) T@Field_51839_51844)
(declare-fun IsWandField_14312_102291 (T@Field_52762_52763) Bool)
(declare-fun WandMaskField_14312 (T@Field_52762_52763) T@Field_52776_52781)
(declare-fun IsWandField_14257_101934 (T@Field_50596_50597) Bool)
(declare-fun WandMaskField_14257 (T@Field_50596_50597) T@Field_50609_50614)
(declare-fun IsWandField_14217_101577 (T@Field_32195_32196) Bool)
(declare-fun WandMaskField_14217 (T@Field_32195_32196) T@Field_34814_34819)
(declare-fun IsWandField_14127_101220 (T@Field_14127_14218) Bool)
(declare-fun WandMaskField_14127 (T@Field_14127_14218) T@Field_14127_34819)
(declare-fun foo_qp (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun foo_1 (T@PolymorphicMapType_25579 T@Ref) Bool)
(declare-fun |list#sm| (T@Ref) T@Field_34814_34819)
(declare-fun |bla#sm| (T@Ref) T@Field_50609_50614)
(declare-fun |blabla#sm| (T@Ref) T@Field_51839_51844)
(declare-fun |bla_qp#sm| ((Array T@Ref Bool)) T@Field_52776_52781)
(declare-fun dummyHeap () T@PolymorphicMapType_25579)
(declare-fun ZeroMask () T@PolymorphicMapType_25600)
(declare-fun InsidePredicate_52762_52762 (T@Field_52762_52763 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_25639 (T@Field_14127_14218 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_51826 (T@Field_51826_51827 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_14257 (T@Field_50596_50597 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_14217 (T@Field_32195_32196 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun IsPredicateField_14127_14128 (T@Field_25652_25653) Bool)
(declare-fun IsWandField_14127_14128 (T@Field_25652_25653) Bool)
(declare-fun IsPredicateField_14130_3421 (T@Field_31894_3421) Bool)
(declare-fun IsWandField_14130_3421 (T@Field_31894_3421) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14312_119709 (T@Field_52776_52781) Bool)
(declare-fun IsWandField_14312_119725 (T@Field_52776_52781) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14312_53 (T@Field_14312_53) Bool)
(declare-fun IsWandField_14312_53 (T@Field_14312_53) Bool)
(declare-fun IsPredicateField_14312_14128 (T@Field_14312_14128) Bool)
(declare-fun IsWandField_14312_14128 (T@Field_14312_14128) Bool)
(declare-fun IsPredicateField_14312_3421 (T@Field_14312_3421) Bool)
(declare-fun IsWandField_14312_3421 (T@Field_14312_3421) Bool)
(declare-fun IsPredicateField_14285_118878 (T@Field_51839_51844) Bool)
(declare-fun IsWandField_14285_118894 (T@Field_51839_51844) Bool)
(declare-fun IsPredicateField_14285_53 (T@Field_51826_53) Bool)
(declare-fun IsWandField_14285_53 (T@Field_51826_53) Bool)
(declare-fun IsPredicateField_14285_14128 (T@Field_51826_14128) Bool)
(declare-fun IsWandField_14285_14128 (T@Field_51826_14128) Bool)
(declare-fun IsPredicateField_14285_3421 (T@Field_51826_3421) Bool)
(declare-fun IsWandField_14285_3421 (T@Field_51826_3421) Bool)
(declare-fun IsPredicateField_14257_118047 (T@Field_50609_50614) Bool)
(declare-fun IsWandField_14257_118063 (T@Field_50609_50614) Bool)
(declare-fun IsPredicateField_14257_53 (T@Field_14257_53) Bool)
(declare-fun IsWandField_14257_53 (T@Field_14257_53) Bool)
(declare-fun IsPredicateField_14257_14128 (T@Field_14257_14128) Bool)
(declare-fun IsWandField_14257_14128 (T@Field_14257_14128) Bool)
(declare-fun IsPredicateField_14257_3421 (T@Field_14257_3421) Bool)
(declare-fun IsWandField_14257_3421 (T@Field_14257_3421) Bool)
(declare-fun IsPredicateField_14130_117216 (T@Field_14127_34819) Bool)
(declare-fun IsWandField_14130_117232 (T@Field_14127_34819) Bool)
(declare-fun IsPredicateField_14130_53 (T@Field_25639_53) Bool)
(declare-fun IsWandField_14130_53 (T@Field_25639_53) Bool)
(declare-fun IsPredicateField_14217_116413 (T@Field_34814_34819) Bool)
(declare-fun IsWandField_14217_116429 (T@Field_34814_34819) Bool)
(declare-fun IsPredicateField_14217_53 (T@Field_14217_53) Bool)
(declare-fun IsWandField_14217_53 (T@Field_14217_53) Bool)
(declare-fun IsPredicateField_14217_14128 (T@Field_14217_14128) Bool)
(declare-fun IsWandField_14217_14128 (T@Field_14217_14128) Bool)
(declare-fun IsPredicateField_14217_3421 (T@Field_14217_3421) Bool)
(declare-fun IsWandField_14217_3421 (T@Field_14217_3421) Bool)
(declare-fun HasDirectPerm_51826_92700 (T@PolymorphicMapType_25600 T@Ref T@Field_51839_51844) Bool)
(declare-fun HasDirectPerm_51826_53 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_53) Bool)
(declare-fun HasDirectPerm_51826_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_3421) Bool)
(declare-fun HasDirectPerm_51826_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_14128) Bool)
(declare-fun HasDirectPerm_14312_91582 (T@PolymorphicMapType_25600 T@Ref T@Field_52776_52781) Bool)
(declare-fun HasDirectPerm_14312_53 (T@PolymorphicMapType_25600 T@Ref T@Field_14312_53) Bool)
(declare-fun HasDirectPerm_14312_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_14312_3421) Bool)
(declare-fun HasDirectPerm_14312_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_14312_14128) Bool)
(declare-fun HasDirectPerm_14257_90484 (T@PolymorphicMapType_25600 T@Ref T@Field_50609_50614) Bool)
(declare-fun HasDirectPerm_14257_53 (T@PolymorphicMapType_25600 T@Ref T@Field_14257_53) Bool)
(declare-fun HasDirectPerm_14257_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_14257_3421) Bool)
(declare-fun HasDirectPerm_14257_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_14257_14128) Bool)
(declare-fun HasDirectPerm_14217_89386 (T@PolymorphicMapType_25600 T@Ref T@Field_34814_34819) Bool)
(declare-fun HasDirectPerm_14217_53 (T@PolymorphicMapType_25600 T@Ref T@Field_14217_53) Bool)
(declare-fun HasDirectPerm_14217_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_14217_3421) Bool)
(declare-fun HasDirectPerm_14217_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_14217_14128) Bool)
(declare-fun HasDirectPerm_14127_88245 (T@PolymorphicMapType_25600 T@Ref T@Field_14127_34819) Bool)
(declare-fun HasDirectPerm_14127_53 (T@PolymorphicMapType_25600 T@Ref T@Field_25639_53) Bool)
(declare-fun HasDirectPerm_14130_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_31894_3421) Bool)
(declare-fun HasDirectPerm_14127_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_25652_25653) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_25600 T@PolymorphicMapType_25600 T@PolymorphicMapType_25600) Bool)
(declare-fun |foo#frame| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_14217_14218 (T@Field_32195_32196) Int)
(declare-fun getPredWandId_14257_14258 (T@Field_50596_50597) Int)
(declare-fun getPredWandId_14285_14286 (T@Field_51826_51827) Int)
(declare-fun getPredWandId_14312_14313 (T@Field_52762_52763) Int)
(declare-fun |foo_qp#frame| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun FrameFragment_3869 (Int) T@FrameType)
(declare-fun |foo_qp#condqp1| (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Int)
(declare-fun |sk_foo_qp#condqp1| (Int Int) T@Ref)
(declare-fun |bla_qp#condqp2| (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Int)
(declare-fun |sk_bla_qp#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_52762_51826 (T@Field_52762_52763 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_52762_25639 (T@Field_52762_52763 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_52762_14257 (T@Field_52762_52763 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_52762_14217 (T@Field_52762_52763 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_52762 (T@Field_14127_14218 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_51826 (T@Field_14127_14218 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_14257 (T@Field_14127_14218 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_14217 (T@Field_14127_14218 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_52762 (T@Field_51826_51827 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_25639 (T@Field_51826_51827 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_14257 (T@Field_51826_51827 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_14217 (T@Field_51826_51827 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_52762 (T@Field_50596_50597 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_51826 (T@Field_50596_50597 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_25639 (T@Field_50596_50597 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_14217 (T@Field_50596_50597 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_52762 (T@Field_32195_32196 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_51826 (T@Field_32195_32196 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_25639 (T@Field_32195_32196 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_14257 (T@Field_32195_32196 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_25579) (Heap1 T@PolymorphicMapType_25579) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_25579) (Mask T@PolymorphicMapType_25600) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_25579) (Heap1@@0 T@PolymorphicMapType_25579) (Heap2 T@PolymorphicMapType_25579) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_52776_52781) ) (!  (not (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_52762_52763) ) (!  (not (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14312_53) ) (!  (not (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14312_3421) ) (!  (not (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14312_14128) ) (!  (not (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_51839_51844) ) (!  (not (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_51826_51827) ) (!  (not (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_51826_53) ) (!  (not (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_51826_3421) ) (!  (not (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_51826_14128) ) (!  (not (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_50609_50614) ) (!  (not (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_50596_50597) ) (!  (not (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14257_53) ) (!  (not (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_14257_3421) ) (!  (not (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_14257_14128) ) (!  (not (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_34814_34819) ) (!  (not (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_32195_32196) ) (!  (not (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_14217_53) ) (!  (not (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14217_3421) ) (!  (not (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14217_14128) ) (!  (not (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_14127_34819) ) (!  (not (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_14127_14218) ) (!  (not (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_25639_53) ) (!  (not (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_31894_3421) ) (!  (not (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_25652_25653) ) (!  (not (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.316:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_14217_14218 (list this))
 :qid |stdinbpl.593:15|
 :skolemid |98|
 :pattern ( (list this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_14257_14258 (bla_1 this@@0))
 :qid |stdinbpl.821:15|
 :skolemid |108|
 :pattern ( (bla_1 this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_14285_14286 (blabla this@@1))
 :qid |stdinbpl.896:15|
 :skolemid |114|
 :pattern ( (blabla this@@1))
)))
(assert (forall ((xs (Array T@Ref Bool)) ) (! (IsPredicateField_14312_14313 (bla_qp xs))
 :qid |stdinbpl.950:15|
 :skolemid |120|
 :pattern ( (bla_qp xs))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_25579) (this@@2 T@Ref) ) (! (dummyFunction_3619 (|foo#triggerStateless| this@@2))
 :qid |stdinbpl.432:15|
 :skolemid |83|
 :pattern ( (|foo'| Heap@@0 this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_25579) (xs@@0 (Array T@Ref Bool)) ) (! (dummyFunction_3619 (|foo_qp#triggerStateless| xs@@0))
 :qid |stdinbpl.490:15|
 :skolemid |87|
 :pattern ( (|foo_qp'| Heap@@1 xs@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_25579) (this@@3 T@Ref) ) (! (|list#everUsed_14217| (list this@@3))
 :qid |stdinbpl.612:15|
 :skolemid |102|
 :pattern ( (|list#trigger_14217| Heap@@2 (list this@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_25579) (this@@4 T@Ref) ) (! (|bla#everUsed_14257| (bla_1 this@@4))
 :qid |stdinbpl.840:15|
 :skolemid |112|
 :pattern ( (|bla#trigger_14257| Heap@@3 (bla_1 this@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_25579) (this@@5 T@Ref) ) (! (|blabla#everUsed_14285| (blabla this@@5))
 :qid |stdinbpl.915:15|
 :skolemid |118|
 :pattern ( (|blabla#trigger_14285| Heap@@4 (blabla this@@5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_25579) (xs@@1 (Array T@Ref Bool)) ) (! (|bla_qp#everUsed_14312| (bla_qp xs@@1))
 :qid |stdinbpl.969:15|
 :skolemid |124|
 :pattern ( (|bla_qp#trigger_14312| Heap@@5 (bla_qp xs@@1)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.319:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_25579) (ExhaleHeap T@PolymorphicMapType_25579) (Mask@@0 T@PolymorphicMapType_25600) (pm_f_44 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_51826_14218 Mask@@0 null pm_f_44) (IsPredicateField_14285_14286 pm_f_44)) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@6) null (PredicateMaskField_14285 pm_f_44)) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap) null (PredicateMaskField_14285 pm_f_44)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_14285_14286 pm_f_44) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap) null (PredicateMaskField_14285 pm_f_44)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_25579) (ExhaleHeap@@0 T@PolymorphicMapType_25579) (Mask@@1 T@PolymorphicMapType_25600) (pm_f_44@@0 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_14312_14313 Mask@@1 null pm_f_44@@0) (IsPredicateField_14312_14313 pm_f_44@@0)) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@7) null (PredicateMaskField_14312 pm_f_44@@0)) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@0) null (PredicateMaskField_14312 pm_f_44@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_14312_14313 pm_f_44@@0) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@0) null (PredicateMaskField_14312 pm_f_44@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_25579) (ExhaleHeap@@1 T@PolymorphicMapType_25579) (Mask@@2 T@PolymorphicMapType_25600) (pm_f_44@@1 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14257_14258 Mask@@2 null pm_f_44@@1) (IsPredicateField_14257_14258 pm_f_44@@1)) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@8) null (PredicateMaskField_14257 pm_f_44@@1)) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@1) null (PredicateMaskField_14257 pm_f_44@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_14257_14258 pm_f_44@@1) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@1) null (PredicateMaskField_14257 pm_f_44@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_25579) (ExhaleHeap@@2 T@PolymorphicMapType_25579) (Mask@@3 T@PolymorphicMapType_25600) (pm_f_44@@2 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_14217_14218 Mask@@3 null pm_f_44@@2) (IsPredicateField_14217_14218 pm_f_44@@2)) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@9) null (PredicateMaskField_14217 pm_f_44@@2)) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@2) null (PredicateMaskField_14217 pm_f_44@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsPredicateField_14217_14218 pm_f_44@@2) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@2) null (PredicateMaskField_14217 pm_f_44@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_25579) (ExhaleHeap@@3 T@PolymorphicMapType_25579) (Mask@@4 T@PolymorphicMapType_25600) (pm_f_44@@3 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14127_14218 Mask@@4 null pm_f_44@@3) (IsPredicateField_14127_92945 pm_f_44@@3)) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@10) null (PredicateMaskField_14127 pm_f_44@@3)) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@3) null (PredicateMaskField_14127 pm_f_44@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsPredicateField_14127_92945 pm_f_44@@3) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@3) null (PredicateMaskField_14127 pm_f_44@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_25579) (ExhaleHeap@@4 T@PolymorphicMapType_25579) (Mask@@5 T@PolymorphicMapType_25600) (pm_f_44@@4 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_51826_14218 Mask@@5 null pm_f_44@@4) (IsWandField_51826_102648 pm_f_44@@4)) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@11) null (WandMaskField_51826 pm_f_44@@4)) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@4) null (WandMaskField_51826 pm_f_44@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_51826_102648 pm_f_44@@4) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@4) null (WandMaskField_51826 pm_f_44@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_25579) (ExhaleHeap@@5 T@PolymorphicMapType_25579) (Mask@@6 T@PolymorphicMapType_25600) (pm_f_44@@5 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_14312_14313 Mask@@6 null pm_f_44@@5) (IsWandField_14312_102291 pm_f_44@@5)) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@12) null (WandMaskField_14312 pm_f_44@@5)) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@5) null (WandMaskField_14312 pm_f_44@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (IsWandField_14312_102291 pm_f_44@@5) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@5) null (WandMaskField_14312 pm_f_44@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_25579) (ExhaleHeap@@6 T@PolymorphicMapType_25579) (Mask@@7 T@PolymorphicMapType_25600) (pm_f_44@@6 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_14257_14258 Mask@@7 null pm_f_44@@6) (IsWandField_14257_101934 pm_f_44@@6)) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@13) null (WandMaskField_14257 pm_f_44@@6)) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@6) null (WandMaskField_14257 pm_f_44@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (IsWandField_14257_101934 pm_f_44@@6) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@6) null (WandMaskField_14257 pm_f_44@@6)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_25579) (ExhaleHeap@@7 T@PolymorphicMapType_25579) (Mask@@8 T@PolymorphicMapType_25600) (pm_f_44@@7 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_14217_14218 Mask@@8 null pm_f_44@@7) (IsWandField_14217_101577 pm_f_44@@7)) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@14) null (WandMaskField_14217 pm_f_44@@7)) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@7) null (WandMaskField_14217 pm_f_44@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (IsWandField_14217_101577 pm_f_44@@7) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@7) null (WandMaskField_14217 pm_f_44@@7)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_25579) (ExhaleHeap@@8 T@PolymorphicMapType_25579) (Mask@@9 T@PolymorphicMapType_25600) (pm_f_44@@8 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_14127_14218 Mask@@9 null pm_f_44@@8) (IsWandField_14127_101220 pm_f_44@@8)) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@15) null (WandMaskField_14127 pm_f_44@@8)) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@8) null (WandMaskField_14127 pm_f_44@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (IsWandField_14127_101220 pm_f_44@@8) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@8) null (WandMaskField_14127 pm_f_44@@8)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_25579) (Mask@@10 T@PolymorphicMapType_25600) (xs@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@16 Mask@@10) (< AssumeFunctionsAbove 0)) (foo_qp Heap@@16 xs@@2))
 :qid |stdinbpl.496:15|
 :skolemid |88|
 :pattern ( (state Heap@@16 Mask@@10) (foo_qp Heap@@16 xs@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_25579) (Mask@@11 T@PolymorphicMapType_25600) (this@@6 T@Ref) ) (!  (=> (and (state Heap@@17 Mask@@11) (< AssumeFunctionsAbove 1)) (foo_1 Heap@@17 this@@6))
 :qid |stdinbpl.438:15|
 :skolemid |84|
 :pattern ( (state Heap@@17 Mask@@11) (foo_1 Heap@@17 this@@6))
 :pattern ( (state Heap@@17 Mask@@11) (|foo#triggerStateless| this@@6) (|list#trigger_14217| Heap@@17 (list this@@6)))
)))
(assert (forall ((this@@7 T@Ref) (this2 T@Ref) ) (!  (=> (= (list this@@7) (list this2)) (= this@@7 this2))
 :qid |stdinbpl.603:15|
 :skolemid |100|
 :pattern ( (list this@@7) (list this2))
)))
(assert (forall ((this@@8 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|list#sm| this@@8) (|list#sm| this2@@0)) (= this@@8 this2@@0))
 :qid |stdinbpl.607:15|
 :skolemid |101|
 :pattern ( (|list#sm| this@@8) (|list#sm| this2@@0))
)))
(assert (forall ((this@@9 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (bla_1 this@@9) (bla_1 this2@@1)) (= this@@9 this2@@1))
 :qid |stdinbpl.831:15|
 :skolemid |110|
 :pattern ( (bla_1 this@@9) (bla_1 this2@@1))
)))
(assert (forall ((this@@10 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|bla#sm| this@@10) (|bla#sm| this2@@2)) (= this@@10 this2@@2))
 :qid |stdinbpl.835:15|
 :skolemid |111|
 :pattern ( (|bla#sm| this@@10) (|bla#sm| this2@@2))
)))
(assert (forall ((this@@11 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (blabla this@@11) (blabla this2@@3)) (= this@@11 this2@@3))
 :qid |stdinbpl.906:15|
 :skolemid |116|
 :pattern ( (blabla this@@11) (blabla this2@@3))
)))
(assert (forall ((this@@12 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|blabla#sm| this@@12) (|blabla#sm| this2@@4)) (= this@@12 this2@@4))
 :qid |stdinbpl.910:15|
 :skolemid |117|
 :pattern ( (|blabla#sm| this@@12) (|blabla#sm| this2@@4))
)))
(assert (forall ((xs@@3 (Array T@Ref Bool)) (xs2 (Array T@Ref Bool)) ) (!  (=> (= (bla_qp xs@@3) (bla_qp xs2)) (= xs@@3 xs2))
 :qid |stdinbpl.960:15|
 :skolemid |122|
 :pattern ( (bla_qp xs@@3) (bla_qp xs2))
)))
(assert (forall ((xs@@4 (Array T@Ref Bool)) (xs2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|bla_qp#sm| xs@@4) (|bla_qp#sm| xs2@@0)) (= xs@@4 xs2@@0))
 :qid |stdinbpl.964:15|
 :skolemid |123|
 :pattern ( (|bla_qp#sm| xs@@4) (|bla_qp#sm| xs2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_25579) (ExhaleHeap@@9 T@PolymorphicMapType_25579) (Mask@@12 T@PolymorphicMapType_25600) (o_119 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@12) (=> (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@18) o_119 $allocated) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@9) o_119 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@12) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@9) o_119 $allocated))
)))
(assert (forall ((p T@Field_52762_52763) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_52762_52762 p v_1 p w))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_52762_52762 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14127_14218) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_25639_25639 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25639_25639 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_51826_51827) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_14285_51826 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14285_51826 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_50596_50597) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_14257_14257 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14257_14257 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_32195_32196) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_14217_14217 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14217_14217 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_14127_14128 next)))
(assert  (not (IsWandField_14127_14128 next)))
(assert  (not (IsPredicateField_14130_3421 data)))
(assert  (not (IsWandField_14130_3421 data)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_25579) (ExhaleHeap@@10 T@PolymorphicMapType_25579) (Mask@@13 T@PolymorphicMapType_25600) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@13) (succHeap Heap@@19 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_25600) (o_2@@24 T@Ref) (f_4@@24 T@Field_52776_52781) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@14) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_14312_119709 f_4@@24))) (not (IsWandField_14312_119725 f_4@@24))) (<= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@14) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@14) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_25600) (o_2@@25 T@Ref) (f_4@@25 T@Field_14312_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@15) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14312_53 f_4@@25))) (not (IsWandField_14312_53 f_4@@25))) (<= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@15) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@15) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_25600) (o_2@@26 T@Ref) (f_4@@26 T@Field_14312_14128) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@16) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14312_14128 f_4@@26))) (not (IsWandField_14312_14128 f_4@@26))) (<= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@16) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@16) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_25600) (o_2@@27 T@Ref) (f_4@@27 T@Field_14312_3421) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@17) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14312_3421 f_4@@27))) (not (IsWandField_14312_3421 f_4@@27))) (<= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@17) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@17) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_25600) (o_2@@28 T@Ref) (f_4@@28 T@Field_52762_52763) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@18) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_14312_14313 f_4@@28))) (not (IsWandField_14312_102291 f_4@@28))) (<= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@18) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@18) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_25600) (o_2@@29 T@Ref) (f_4@@29 T@Field_51839_51844) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@19) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_14285_118878 f_4@@29))) (not (IsWandField_14285_118894 f_4@@29))) (<= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@19) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@19) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_25600) (o_2@@30 T@Ref) (f_4@@30 T@Field_51826_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@20) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_14285_53 f_4@@30))) (not (IsWandField_14285_53 f_4@@30))) (<= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@20) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@20) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_25600) (o_2@@31 T@Ref) (f_4@@31 T@Field_51826_14128) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@21) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_14285_14128 f_4@@31))) (not (IsWandField_14285_14128 f_4@@31))) (<= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@21) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@21) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_25600) (o_2@@32 T@Ref) (f_4@@32 T@Field_51826_3421) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@22) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_14285_3421 f_4@@32))) (not (IsWandField_14285_3421 f_4@@32))) (<= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@22) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@22) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_25600) (o_2@@33 T@Ref) (f_4@@33 T@Field_51826_51827) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@23) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_14285_14286 f_4@@33))) (not (IsWandField_51826_102648 f_4@@33))) (<= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@23) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@23) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_25600) (o_2@@34 T@Ref) (f_4@@34 T@Field_50609_50614) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@24) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_14257_118047 f_4@@34))) (not (IsWandField_14257_118063 f_4@@34))) (<= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@24) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@24) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_25600) (o_2@@35 T@Ref) (f_4@@35 T@Field_14257_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@25) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_14257_53 f_4@@35))) (not (IsWandField_14257_53 f_4@@35))) (<= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@25) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@25) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_25600) (o_2@@36 T@Ref) (f_4@@36 T@Field_14257_14128) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@26) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_14257_14128 f_4@@36))) (not (IsWandField_14257_14128 f_4@@36))) (<= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@26) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@26) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_25600) (o_2@@37 T@Ref) (f_4@@37 T@Field_14257_3421) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@27) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_14257_3421 f_4@@37))) (not (IsWandField_14257_3421 f_4@@37))) (<= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@27) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@27) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_25600) (o_2@@38 T@Ref) (f_4@@38 T@Field_50596_50597) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@28) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_14257_14258 f_4@@38))) (not (IsWandField_14257_101934 f_4@@38))) (<= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@28) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@28) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_25600) (o_2@@39 T@Ref) (f_4@@39 T@Field_14127_34819) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@29) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_14130_117216 f_4@@39))) (not (IsWandField_14130_117232 f_4@@39))) (<= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@29) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@29) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_25600) (o_2@@40 T@Ref) (f_4@@40 T@Field_25639_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@30) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_14130_53 f_4@@40))) (not (IsWandField_14130_53 f_4@@40))) (<= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@30) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@30) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_25600) (o_2@@41 T@Ref) (f_4@@41 T@Field_25652_25653) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@31) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_14127_14128 f_4@@41))) (not (IsWandField_14127_14128 f_4@@41))) (<= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@31) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@31) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_25600) (o_2@@42 T@Ref) (f_4@@42 T@Field_31894_3421) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@32) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_14130_3421 f_4@@42))) (not (IsWandField_14130_3421 f_4@@42))) (<= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@32) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@32) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_25600) (o_2@@43 T@Ref) (f_4@@43 T@Field_14127_14218) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@33) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_14127_92945 f_4@@43))) (not (IsWandField_14127_101220 f_4@@43))) (<= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@33) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@33) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_25600) (o_2@@44 T@Ref) (f_4@@44 T@Field_34814_34819) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@34) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_14217_116413 f_4@@44))) (not (IsWandField_14217_116429 f_4@@44))) (<= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@34) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@34) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_25600) (o_2@@45 T@Ref) (f_4@@45 T@Field_14217_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@35) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_14217_53 f_4@@45))) (not (IsWandField_14217_53 f_4@@45))) (<= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@35) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@35) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_25600) (o_2@@46 T@Ref) (f_4@@46 T@Field_14217_14128) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@36) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_14217_14128 f_4@@46))) (not (IsWandField_14217_14128 f_4@@46))) (<= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@36) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@36) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_25600) (o_2@@47 T@Ref) (f_4@@47 T@Field_14217_3421) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@37) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_14217_3421 f_4@@47))) (not (IsWandField_14217_3421 f_4@@47))) (<= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@37) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@37) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_25600) (o_2@@48 T@Ref) (f_4@@48 T@Field_32195_32196) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@38) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_14217_14218 f_4@@48))) (not (IsWandField_14217_101577 f_4@@48))) (<= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@38) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@38) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_25600) (o_2@@49 T@Ref) (f_4@@49 T@Field_51839_51844) ) (! (= (HasDirectPerm_51826_92700 Mask@@39 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@39) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_92700 Mask@@39 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_25600) (o_2@@50 T@Ref) (f_4@@50 T@Field_51826_53) ) (! (= (HasDirectPerm_51826_53 Mask@@40 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@40) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_53 Mask@@40 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_25600) (o_2@@51 T@Ref) (f_4@@51 T@Field_51826_51827) ) (! (= (HasDirectPerm_51826_14218 Mask@@41 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@41) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_14218 Mask@@41 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_25600) (o_2@@52 T@Ref) (f_4@@52 T@Field_51826_3421) ) (! (= (HasDirectPerm_51826_3421 Mask@@42 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@42) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_3421 Mask@@42 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_25600) (o_2@@53 T@Ref) (f_4@@53 T@Field_51826_14128) ) (! (= (HasDirectPerm_51826_14128 Mask@@43 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@43) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_14128 Mask@@43 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_25600) (o_2@@54 T@Ref) (f_4@@54 T@Field_52776_52781) ) (! (= (HasDirectPerm_14312_91582 Mask@@44 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@44) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_91582 Mask@@44 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_25600) (o_2@@55 T@Ref) (f_4@@55 T@Field_14312_53) ) (! (= (HasDirectPerm_14312_53 Mask@@45 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@45) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_53 Mask@@45 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_25600) (o_2@@56 T@Ref) (f_4@@56 T@Field_52762_52763) ) (! (= (HasDirectPerm_14312_14313 Mask@@46 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@46) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_14313 Mask@@46 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_25600) (o_2@@57 T@Ref) (f_4@@57 T@Field_14312_3421) ) (! (= (HasDirectPerm_14312_3421 Mask@@47 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@47) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_3421 Mask@@47 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_25600) (o_2@@58 T@Ref) (f_4@@58 T@Field_14312_14128) ) (! (= (HasDirectPerm_14312_14128 Mask@@48 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@48) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_14128 Mask@@48 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_25600) (o_2@@59 T@Ref) (f_4@@59 T@Field_50609_50614) ) (! (= (HasDirectPerm_14257_90484 Mask@@49 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@49) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_90484 Mask@@49 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_25600) (o_2@@60 T@Ref) (f_4@@60 T@Field_14257_53) ) (! (= (HasDirectPerm_14257_53 Mask@@50 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@50) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_53 Mask@@50 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_25600) (o_2@@61 T@Ref) (f_4@@61 T@Field_50596_50597) ) (! (= (HasDirectPerm_14257_14258 Mask@@51 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@51) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_14258 Mask@@51 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_25600) (o_2@@62 T@Ref) (f_4@@62 T@Field_14257_3421) ) (! (= (HasDirectPerm_14257_3421 Mask@@52 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@52) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_3421 Mask@@52 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_25600) (o_2@@63 T@Ref) (f_4@@63 T@Field_14257_14128) ) (! (= (HasDirectPerm_14257_14128 Mask@@53 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@53) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_14128 Mask@@53 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_25600) (o_2@@64 T@Ref) (f_4@@64 T@Field_34814_34819) ) (! (= (HasDirectPerm_14217_89386 Mask@@54 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@54) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_89386 Mask@@54 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_25600) (o_2@@65 T@Ref) (f_4@@65 T@Field_14217_53) ) (! (= (HasDirectPerm_14217_53 Mask@@55 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@55) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_53 Mask@@55 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_25600) (o_2@@66 T@Ref) (f_4@@66 T@Field_32195_32196) ) (! (= (HasDirectPerm_14217_14218 Mask@@56 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@56) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_14218 Mask@@56 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_25600) (o_2@@67 T@Ref) (f_4@@67 T@Field_14217_3421) ) (! (= (HasDirectPerm_14217_3421 Mask@@57 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@57) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_3421 Mask@@57 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_25600) (o_2@@68 T@Ref) (f_4@@68 T@Field_14217_14128) ) (! (= (HasDirectPerm_14217_14128 Mask@@58 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@58) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_14128 Mask@@58 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_25600) (o_2@@69 T@Ref) (f_4@@69 T@Field_14127_34819) ) (! (= (HasDirectPerm_14127_88245 Mask@@59 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@59) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_88245 Mask@@59 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_25600) (o_2@@70 T@Ref) (f_4@@70 T@Field_25639_53) ) (! (= (HasDirectPerm_14127_53 Mask@@60 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@60) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_53 Mask@@60 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_25600) (o_2@@71 T@Ref) (f_4@@71 T@Field_14127_14218) ) (! (= (HasDirectPerm_14127_14218 Mask@@61 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@61) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_14218 Mask@@61 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_25600) (o_2@@72 T@Ref) (f_4@@72 T@Field_31894_3421) ) (! (= (HasDirectPerm_14130_3421 Mask@@62 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@62) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14130_3421 Mask@@62 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_25600) (o_2@@73 T@Ref) (f_4@@73 T@Field_25652_25653) ) (! (= (HasDirectPerm_14127_14128 Mask@@63 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@63) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_14128 Mask@@63 o_2@@73 f_4@@73))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.202:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_25579) (ExhaleHeap@@11 T@PolymorphicMapType_25579) (Mask@@64 T@PolymorphicMapType_25600) (o_119@@0 T@Ref) (f_78 T@Field_51839_51844) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@64) (=> (HasDirectPerm_51826_92700 Mask@@64 o_119@@0 f_78) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@20) o_119@@0 f_78) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@11) o_119@@0 f_78))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@64) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@11) o_119@@0 f_78))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_25579) (ExhaleHeap@@12 T@PolymorphicMapType_25579) (Mask@@65 T@PolymorphicMapType_25600) (o_119@@1 T@Ref) (f_78@@0 T@Field_51826_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@65) (=> (HasDirectPerm_51826_53 Mask@@65 o_119@@1 f_78@@0) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@21) o_119@@1 f_78@@0) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@12) o_119@@1 f_78@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@65) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@12) o_119@@1 f_78@@0))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_25579) (ExhaleHeap@@13 T@PolymorphicMapType_25579) (Mask@@66 T@PolymorphicMapType_25600) (o_119@@2 T@Ref) (f_78@@1 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@66) (=> (HasDirectPerm_51826_14218 Mask@@66 o_119@@2 f_78@@1) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@22) o_119@@2 f_78@@1) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@13) o_119@@2 f_78@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@66) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@13) o_119@@2 f_78@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_25579) (ExhaleHeap@@14 T@PolymorphicMapType_25579) (Mask@@67 T@PolymorphicMapType_25600) (o_119@@3 T@Ref) (f_78@@2 T@Field_51826_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@67) (=> (HasDirectPerm_51826_3421 Mask@@67 o_119@@3 f_78@@2) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@23) o_119@@3 f_78@@2) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@14) o_119@@3 f_78@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@67) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@14) o_119@@3 f_78@@2))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_25579) (ExhaleHeap@@15 T@PolymorphicMapType_25579) (Mask@@68 T@PolymorphicMapType_25600) (o_119@@4 T@Ref) (f_78@@3 T@Field_51826_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@68) (=> (HasDirectPerm_51826_14128 Mask@@68 o_119@@4 f_78@@3) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@24) o_119@@4 f_78@@3) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@15) o_119@@4 f_78@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@68) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@15) o_119@@4 f_78@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_25579) (ExhaleHeap@@16 T@PolymorphicMapType_25579) (Mask@@69 T@PolymorphicMapType_25600) (o_119@@5 T@Ref) (f_78@@4 T@Field_52776_52781) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@69) (=> (HasDirectPerm_14312_91582 Mask@@69 o_119@@5 f_78@@4) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@25) o_119@@5 f_78@@4) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@16) o_119@@5 f_78@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@69) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@16) o_119@@5 f_78@@4))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_25579) (ExhaleHeap@@17 T@PolymorphicMapType_25579) (Mask@@70 T@PolymorphicMapType_25600) (o_119@@6 T@Ref) (f_78@@5 T@Field_14312_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@70) (=> (HasDirectPerm_14312_53 Mask@@70 o_119@@6 f_78@@5) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@26) o_119@@6 f_78@@5) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@17) o_119@@6 f_78@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@70) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@17) o_119@@6 f_78@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_25579) (ExhaleHeap@@18 T@PolymorphicMapType_25579) (Mask@@71 T@PolymorphicMapType_25600) (o_119@@7 T@Ref) (f_78@@6 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@71) (=> (HasDirectPerm_14312_14313 Mask@@71 o_119@@7 f_78@@6) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@27) o_119@@7 f_78@@6) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@18) o_119@@7 f_78@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@71) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@18) o_119@@7 f_78@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_25579) (ExhaleHeap@@19 T@PolymorphicMapType_25579) (Mask@@72 T@PolymorphicMapType_25600) (o_119@@8 T@Ref) (f_78@@7 T@Field_14312_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@72) (=> (HasDirectPerm_14312_3421 Mask@@72 o_119@@8 f_78@@7) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@28) o_119@@8 f_78@@7) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@19) o_119@@8 f_78@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@72) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@19) o_119@@8 f_78@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_25579) (ExhaleHeap@@20 T@PolymorphicMapType_25579) (Mask@@73 T@PolymorphicMapType_25600) (o_119@@9 T@Ref) (f_78@@8 T@Field_14312_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@73) (=> (HasDirectPerm_14312_14128 Mask@@73 o_119@@9 f_78@@8) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@29) o_119@@9 f_78@@8) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@20) o_119@@9 f_78@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@73) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@20) o_119@@9 f_78@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_25579) (ExhaleHeap@@21 T@PolymorphicMapType_25579) (Mask@@74 T@PolymorphicMapType_25600) (o_119@@10 T@Ref) (f_78@@9 T@Field_50609_50614) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@74) (=> (HasDirectPerm_14257_90484 Mask@@74 o_119@@10 f_78@@9) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@30) o_119@@10 f_78@@9) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@21) o_119@@10 f_78@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@74) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@21) o_119@@10 f_78@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_25579) (ExhaleHeap@@22 T@PolymorphicMapType_25579) (Mask@@75 T@PolymorphicMapType_25600) (o_119@@11 T@Ref) (f_78@@10 T@Field_14257_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@22 Mask@@75) (=> (HasDirectPerm_14257_53 Mask@@75 o_119@@11 f_78@@10) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@31) o_119@@11 f_78@@10) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@22) o_119@@11 f_78@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@22 Mask@@75) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@22) o_119@@11 f_78@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_25579) (ExhaleHeap@@23 T@PolymorphicMapType_25579) (Mask@@76 T@PolymorphicMapType_25600) (o_119@@12 T@Ref) (f_78@@11 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@23 Mask@@76) (=> (HasDirectPerm_14257_14258 Mask@@76 o_119@@12 f_78@@11) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@32) o_119@@12 f_78@@11) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@23) o_119@@12 f_78@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@23 Mask@@76) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@23) o_119@@12 f_78@@11))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_25579) (ExhaleHeap@@24 T@PolymorphicMapType_25579) (Mask@@77 T@PolymorphicMapType_25600) (o_119@@13 T@Ref) (f_78@@12 T@Field_14257_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@24 Mask@@77) (=> (HasDirectPerm_14257_3421 Mask@@77 o_119@@13 f_78@@12) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@33) o_119@@13 f_78@@12) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@24) o_119@@13 f_78@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@24 Mask@@77) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@24) o_119@@13 f_78@@12))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_25579) (ExhaleHeap@@25 T@PolymorphicMapType_25579) (Mask@@78 T@PolymorphicMapType_25600) (o_119@@14 T@Ref) (f_78@@13 T@Field_14257_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@25 Mask@@78) (=> (HasDirectPerm_14257_14128 Mask@@78 o_119@@14 f_78@@13) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@34) o_119@@14 f_78@@13) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@25) o_119@@14 f_78@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@25 Mask@@78) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@25) o_119@@14 f_78@@13))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_25579) (ExhaleHeap@@26 T@PolymorphicMapType_25579) (Mask@@79 T@PolymorphicMapType_25600) (o_119@@15 T@Ref) (f_78@@14 T@Field_34814_34819) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@26 Mask@@79) (=> (HasDirectPerm_14217_89386 Mask@@79 o_119@@15 f_78@@14) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@35) o_119@@15 f_78@@14) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@26) o_119@@15 f_78@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@26 Mask@@79) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@26) o_119@@15 f_78@@14))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_25579) (ExhaleHeap@@27 T@PolymorphicMapType_25579) (Mask@@80 T@PolymorphicMapType_25600) (o_119@@16 T@Ref) (f_78@@15 T@Field_14217_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@27 Mask@@80) (=> (HasDirectPerm_14217_53 Mask@@80 o_119@@16 f_78@@15) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@36) o_119@@16 f_78@@15) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@27) o_119@@16 f_78@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@27 Mask@@80) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@27) o_119@@16 f_78@@15))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_25579) (ExhaleHeap@@28 T@PolymorphicMapType_25579) (Mask@@81 T@PolymorphicMapType_25600) (o_119@@17 T@Ref) (f_78@@16 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@28 Mask@@81) (=> (HasDirectPerm_14217_14218 Mask@@81 o_119@@17 f_78@@16) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@37) o_119@@17 f_78@@16) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@28) o_119@@17 f_78@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@28 Mask@@81) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@28) o_119@@17 f_78@@16))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_25579) (ExhaleHeap@@29 T@PolymorphicMapType_25579) (Mask@@82 T@PolymorphicMapType_25600) (o_119@@18 T@Ref) (f_78@@17 T@Field_14217_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@29 Mask@@82) (=> (HasDirectPerm_14217_3421 Mask@@82 o_119@@18 f_78@@17) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@38) o_119@@18 f_78@@17) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@29) o_119@@18 f_78@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@29 Mask@@82) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@29) o_119@@18 f_78@@17))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_25579) (ExhaleHeap@@30 T@PolymorphicMapType_25579) (Mask@@83 T@PolymorphicMapType_25600) (o_119@@19 T@Ref) (f_78@@18 T@Field_14217_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@30 Mask@@83) (=> (HasDirectPerm_14217_14128 Mask@@83 o_119@@19 f_78@@18) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@39) o_119@@19 f_78@@18) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@30) o_119@@19 f_78@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@30 Mask@@83) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@30) o_119@@19 f_78@@18))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_25579) (ExhaleHeap@@31 T@PolymorphicMapType_25579) (Mask@@84 T@PolymorphicMapType_25600) (o_119@@20 T@Ref) (f_78@@19 T@Field_14127_34819) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@31 Mask@@84) (=> (HasDirectPerm_14127_88245 Mask@@84 o_119@@20 f_78@@19) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@40) o_119@@20 f_78@@19) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@31) o_119@@20 f_78@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@31 Mask@@84) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@31) o_119@@20 f_78@@19))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_25579) (ExhaleHeap@@32 T@PolymorphicMapType_25579) (Mask@@85 T@PolymorphicMapType_25600) (o_119@@21 T@Ref) (f_78@@20 T@Field_25639_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@32 Mask@@85) (=> (HasDirectPerm_14127_53 Mask@@85 o_119@@21 f_78@@20) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@41) o_119@@21 f_78@@20) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@32) o_119@@21 f_78@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@32 Mask@@85) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@32) o_119@@21 f_78@@20))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_25579) (ExhaleHeap@@33 T@PolymorphicMapType_25579) (Mask@@86 T@PolymorphicMapType_25600) (o_119@@22 T@Ref) (f_78@@21 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@33 Mask@@86) (=> (HasDirectPerm_14127_14218 Mask@@86 o_119@@22 f_78@@21) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@42) o_119@@22 f_78@@21) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@33) o_119@@22 f_78@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@33 Mask@@86) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@33) o_119@@22 f_78@@21))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_25579) (ExhaleHeap@@34 T@PolymorphicMapType_25579) (Mask@@87 T@PolymorphicMapType_25600) (o_119@@23 T@Ref) (f_78@@22 T@Field_31894_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@34 Mask@@87) (=> (HasDirectPerm_14130_3421 Mask@@87 o_119@@23 f_78@@22) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@43) o_119@@23 f_78@@22) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@34) o_119@@23 f_78@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@34 Mask@@87) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@34) o_119@@23 f_78@@22))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_25579) (ExhaleHeap@@35 T@PolymorphicMapType_25579) (Mask@@88 T@PolymorphicMapType_25600) (o_119@@24 T@Ref) (f_78@@23 T@Field_25652_25653) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@35 Mask@@88) (=> (HasDirectPerm_14127_14128 Mask@@88 o_119@@24 f_78@@23) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@44) o_119@@24 f_78@@23) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@35) o_119@@24 f_78@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@35 Mask@@88) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@35) o_119@@24 f_78@@23))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_52776_52781) ) (! (= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_14312_53) ) (! (= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_14312_14128) ) (! (= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_14312_3421) ) (! (= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_52762_52763) ) (! (= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_51839_51844) ) (! (= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_51826_53) ) (! (= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_51826_14128) ) (! (= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_51826_3421) ) (! (= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_51826_51827) ) (! (= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_50609_50614) ) (! (= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_14257_53) ) (! (= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_14257_14128) ) (! (= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_14257_3421) ) (! (= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_50596_50597) ) (! (= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_14127_34819) ) (! (= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_25639_53) ) (! (= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_25652_25653) ) (! (= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_31894_3421) ) (! (= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_14127_14218) ) (! (= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_34814_34819) ) (! (= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_14217_53) ) (! (= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_14217_14128) ) (! (= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_14217_3421) ) (! (= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_32195_32196) ) (! (= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_25600) (SummandMask1 T@PolymorphicMapType_25600) (SummandMask2 T@PolymorphicMapType_25600) (o_2@@99 T@Ref) (f_4@@99 T@Field_52776_52781) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_25600) (SummandMask1@@0 T@PolymorphicMapType_25600) (SummandMask2@@0 T@PolymorphicMapType_25600) (o_2@@100 T@Ref) (f_4@@100 T@Field_14312_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_25600) (SummandMask1@@1 T@PolymorphicMapType_25600) (SummandMask2@@1 T@PolymorphicMapType_25600) (o_2@@101 T@Ref) (f_4@@101 T@Field_14312_14128) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_25600) (SummandMask1@@2 T@PolymorphicMapType_25600) (SummandMask2@@2 T@PolymorphicMapType_25600) (o_2@@102 T@Ref) (f_4@@102 T@Field_14312_3421) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_25600) (SummandMask1@@3 T@PolymorphicMapType_25600) (SummandMask2@@3 T@PolymorphicMapType_25600) (o_2@@103 T@Ref) (f_4@@103 T@Field_52762_52763) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_25600) (SummandMask1@@4 T@PolymorphicMapType_25600) (SummandMask2@@4 T@PolymorphicMapType_25600) (o_2@@104 T@Ref) (f_4@@104 T@Field_51839_51844) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_25600) (SummandMask1@@5 T@PolymorphicMapType_25600) (SummandMask2@@5 T@PolymorphicMapType_25600) (o_2@@105 T@Ref) (f_4@@105 T@Field_51826_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_25600) (SummandMask1@@6 T@PolymorphicMapType_25600) (SummandMask2@@6 T@PolymorphicMapType_25600) (o_2@@106 T@Ref) (f_4@@106 T@Field_51826_14128) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_25600) (SummandMask1@@7 T@PolymorphicMapType_25600) (SummandMask2@@7 T@PolymorphicMapType_25600) (o_2@@107 T@Ref) (f_4@@107 T@Field_51826_3421) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_25600) (SummandMask1@@8 T@PolymorphicMapType_25600) (SummandMask2@@8 T@PolymorphicMapType_25600) (o_2@@108 T@Ref) (f_4@@108 T@Field_51826_51827) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_25600) (SummandMask1@@9 T@PolymorphicMapType_25600) (SummandMask2@@9 T@PolymorphicMapType_25600) (o_2@@109 T@Ref) (f_4@@109 T@Field_50609_50614) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_25600) (SummandMask1@@10 T@PolymorphicMapType_25600) (SummandMask2@@10 T@PolymorphicMapType_25600) (o_2@@110 T@Ref) (f_4@@110 T@Field_14257_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_25600) (SummandMask1@@11 T@PolymorphicMapType_25600) (SummandMask2@@11 T@PolymorphicMapType_25600) (o_2@@111 T@Ref) (f_4@@111 T@Field_14257_14128) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_25600) (SummandMask1@@12 T@PolymorphicMapType_25600) (SummandMask2@@12 T@PolymorphicMapType_25600) (o_2@@112 T@Ref) (f_4@@112 T@Field_14257_3421) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_25600) (SummandMask1@@13 T@PolymorphicMapType_25600) (SummandMask2@@13 T@PolymorphicMapType_25600) (o_2@@113 T@Ref) (f_4@@113 T@Field_50596_50597) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_25600) (SummandMask1@@14 T@PolymorphicMapType_25600) (SummandMask2@@14 T@PolymorphicMapType_25600) (o_2@@114 T@Ref) (f_4@@114 T@Field_14127_34819) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_25600) (SummandMask1@@15 T@PolymorphicMapType_25600) (SummandMask2@@15 T@PolymorphicMapType_25600) (o_2@@115 T@Ref) (f_4@@115 T@Field_25639_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_25600) (SummandMask1@@16 T@PolymorphicMapType_25600) (SummandMask2@@16 T@PolymorphicMapType_25600) (o_2@@116 T@Ref) (f_4@@116 T@Field_25652_25653) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_25600) (SummandMask1@@17 T@PolymorphicMapType_25600) (SummandMask2@@17 T@PolymorphicMapType_25600) (o_2@@117 T@Ref) (f_4@@117 T@Field_31894_3421) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_25600) (SummandMask1@@18 T@PolymorphicMapType_25600) (SummandMask2@@18 T@PolymorphicMapType_25600) (o_2@@118 T@Ref) (f_4@@118 T@Field_14127_14218) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_25600) (SummandMask1@@19 T@PolymorphicMapType_25600) (SummandMask2@@19 T@PolymorphicMapType_25600) (o_2@@119 T@Ref) (f_4@@119 T@Field_34814_34819) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_25600) (SummandMask1@@20 T@PolymorphicMapType_25600) (SummandMask2@@20 T@PolymorphicMapType_25600) (o_2@@120 T@Ref) (f_4@@120 T@Field_14217_53) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_25600) (SummandMask1@@21 T@PolymorphicMapType_25600) (SummandMask2@@21 T@PolymorphicMapType_25600) (o_2@@121 T@Ref) (f_4@@121 T@Field_14217_14128) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_25600) (SummandMask1@@22 T@PolymorphicMapType_25600) (SummandMask2@@22 T@PolymorphicMapType_25600) (o_2@@122 T@Ref) (f_4@@122 T@Field_14217_3421) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_25600) (SummandMask1@@23 T@PolymorphicMapType_25600) (SummandMask2@@23 T@PolymorphicMapType_25600) (o_2@@123 T@Ref) (f_4@@123 T@Field_32195_32196) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_25579) (Mask@@89 T@PolymorphicMapType_25600) (this@@13 T@Ref) ) (!  (=> (state Heap@@45 Mask@@89) (= (|foo'| Heap@@45 this@@13) (|foo#frame| (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@45) null (list this@@13)) this@@13)))
 :qid |stdinbpl.445:15|
 :skolemid |85|
 :pattern ( (state Heap@@45 Mask@@89) (|foo'| Heap@@45 this@@13))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_25579) (this@@14 T@Ref) ) (!  (and (= (foo_1 Heap@@46 this@@14) (|foo'| Heap@@46 this@@14)) (dummyFunction_3619 (|foo#triggerStateless| this@@14)))
 :qid |stdinbpl.428:15|
 :skolemid |82|
 :pattern ( (foo_1 Heap@@46 this@@14))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_25579) (xs@@5 (Array T@Ref Bool)) ) (!  (and (= (foo_qp Heap@@47 xs@@5) (|foo_qp'| Heap@@47 xs@@5)) (dummyFunction_3619 (|foo_qp#triggerStateless| xs@@5)))
 :qid |stdinbpl.486:15|
 :skolemid |86|
 :pattern ( (foo_qp Heap@@47 xs@@5))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (getPredWandId_14217_14218 (list this@@15)) 0)
 :qid |stdinbpl.597:15|
 :skolemid |99|
 :pattern ( (list this@@15))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_14257_14258 (bla_1 this@@16)) 1)
 :qid |stdinbpl.825:15|
 :skolemid |109|
 :pattern ( (bla_1 this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (getPredWandId_14285_14286 (blabla this@@17)) 2)
 :qid |stdinbpl.900:15|
 :skolemid |115|
 :pattern ( (blabla this@@17))
)))
(assert (forall ((xs@@6 (Array T@Ref Bool)) ) (! (= (getPredWandId_14312_14313 (bla_qp xs@@6)) 3)
 :qid |stdinbpl.954:15|
 :skolemid |121|
 :pattern ( (bla_qp xs@@6))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_25579) (Mask@@90 T@PolymorphicMapType_25600) (xs@@7 (Array T@Ref Bool)) ) (!  (=> (state Heap@@48 Mask@@90) (= (|foo_qp'| Heap@@48 xs@@7) (|foo_qp#frame| (FrameFragment_3869 (|foo_qp#condqp1| Heap@@48 xs@@7)) xs@@7)))
 :qid |stdinbpl.503:15|
 :skolemid |89|
 :pattern ( (state Heap@@48 Mask@@90) (|foo_qp'| Heap@@48 xs@@7))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_25579) (o_57 T@Ref) (f_131 T@Field_52776_52781) (v T@PolymorphicMapType_26128) ) (! (succHeap Heap@@49 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@49) (store (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@49) o_57 f_131 v) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@49) (store (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@49) o_57 f_131 v) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_25579) (o_57@@0 T@Ref) (f_131@@0 T@Field_14312_3421) (v@@0 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@50) (store (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@50) o_57@@0 f_131@@0 v@@0) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@50) (store (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@50) o_57@@0 f_131@@0 v@@0) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_25579) (o_57@@1 T@Ref) (f_131@@1 T@Field_52762_52763) (v@@1 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@51) (store (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@51) o_57@@1 f_131@@1 v@@1) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@51) (store (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@51) o_57@@1 f_131@@1 v@@1) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_25579) (o_57@@2 T@Ref) (f_131@@2 T@Field_14312_14128) (v@@2 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@52) (store (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@52) o_57@@2 f_131@@2 v@@2) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@52) (store (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@52) o_57@@2 f_131@@2 v@@2) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_25579) (o_57@@3 T@Ref) (f_131@@3 T@Field_14312_53) (v@@3 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@53) (store (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@53) o_57@@3 f_131@@3 v@@3) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@53) (store (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@53) o_57@@3 f_131@@3 v@@3) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_25579) (o_57@@4 T@Ref) (f_131@@4 T@Field_51839_51844) (v@@4 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@54 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@54) (store (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@54) o_57@@4 f_131@@4 v@@4) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@54) (store (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@54) o_57@@4 f_131@@4 v@@4) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_25579) (o_57@@5 T@Ref) (f_131@@5 T@Field_51826_3421) (v@@5 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@55) (store (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@55) o_57@@5 f_131@@5 v@@5) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@55) (store (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@55) o_57@@5 f_131@@5 v@@5) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_25579) (o_57@@6 T@Ref) (f_131@@6 T@Field_51826_51827) (v@@6 T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@56) (store (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@56) o_57@@6 f_131@@6 v@@6) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@56) (store (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@56) o_57@@6 f_131@@6 v@@6) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_25579) (o_57@@7 T@Ref) (f_131@@7 T@Field_51826_14128) (v@@7 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@57) (store (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@57) o_57@@7 f_131@@7 v@@7) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@57) (store (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@57) o_57@@7 f_131@@7 v@@7) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_25579) (o_57@@8 T@Ref) (f_131@@8 T@Field_51826_53) (v@@8 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@58) (store (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@58) o_57@@8 f_131@@8 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@58) (store (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@58) o_57@@8 f_131@@8 v@@8)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_25579) (o_57@@9 T@Ref) (f_131@@9 T@Field_50609_50614) (v@@9 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@59 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@59) (store (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@59) o_57@@9 f_131@@9 v@@9) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@59) (store (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@59) o_57@@9 f_131@@9 v@@9) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_25579) (o_57@@10 T@Ref) (f_131@@10 T@Field_14257_3421) (v@@10 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@60) (store (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@60) o_57@@10 f_131@@10 v@@10) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@60) (store (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@60) o_57@@10 f_131@@10 v@@10) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_25579) (o_57@@11 T@Ref) (f_131@@11 T@Field_50596_50597) (v@@11 T@FrameType) ) (! (succHeap Heap@@61 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@61) (store (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@61) o_57@@11 f_131@@11 v@@11) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@61) (store (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@61) o_57@@11 f_131@@11 v@@11) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_25579) (o_57@@12 T@Ref) (f_131@@12 T@Field_14257_14128) (v@@12 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@62) (store (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@62) o_57@@12 f_131@@12 v@@12) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@62) (store (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@62) o_57@@12 f_131@@12 v@@12) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_25579) (o_57@@13 T@Ref) (f_131@@13 T@Field_14257_53) (v@@13 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@63) (store (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@63) o_57@@13 f_131@@13 v@@13) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@63) (store (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@63) o_57@@13 f_131@@13 v@@13) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_25579) (o_57@@14 T@Ref) (f_131@@14 T@Field_34814_34819) (v@@14 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@64 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@64) (store (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@64) o_57@@14 f_131@@14 v@@14) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@64) (store (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@64) o_57@@14 f_131@@14 v@@14) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_25579) (o_57@@15 T@Ref) (f_131@@15 T@Field_14217_3421) (v@@15 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@65) (store (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@65) o_57@@15 f_131@@15 v@@15) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@65) (store (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@65) o_57@@15 f_131@@15 v@@15) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_25579) (o_57@@16 T@Ref) (f_131@@16 T@Field_32195_32196) (v@@16 T@FrameType) ) (! (succHeap Heap@@66 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@66) (store (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@66) o_57@@16 f_131@@16 v@@16) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@66) (store (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@66) o_57@@16 f_131@@16 v@@16) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_25579) (o_57@@17 T@Ref) (f_131@@17 T@Field_14217_14128) (v@@17 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@67) (store (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@67) o_57@@17 f_131@@17 v@@17) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@67) (store (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@67) o_57@@17 f_131@@17 v@@17) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_25579) (o_57@@18 T@Ref) (f_131@@18 T@Field_14217_53) (v@@18 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@68) (store (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@68) o_57@@18 f_131@@18 v@@18) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@68) (store (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@68) o_57@@18 f_131@@18 v@@18) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_25579) (o_57@@19 T@Ref) (f_131@@19 T@Field_14127_34819) (v@@19 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@69 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@69) (store (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@69) o_57@@19 f_131@@19 v@@19) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@69) (store (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@69) o_57@@19 f_131@@19 v@@19) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_25579) (o_57@@20 T@Ref) (f_131@@20 T@Field_31894_3421) (v@@20 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@70) (store (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@70) o_57@@20 f_131@@20 v@@20) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@70) (store (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@70) o_57@@20 f_131@@20 v@@20) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_25579) (o_57@@21 T@Ref) (f_131@@21 T@Field_14127_14218) (v@@21 T@FrameType) ) (! (succHeap Heap@@71 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@71) (store (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@71) o_57@@21 f_131@@21 v@@21) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@71) (store (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@71) o_57@@21 f_131@@21 v@@21) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_25579) (o_57@@22 T@Ref) (f_131@@22 T@Field_25652_25653) (v@@22 T@Ref) ) (! (succHeap Heap@@72 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@72) (store (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@72) o_57@@22 f_131@@22 v@@22) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@72) (store (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@72) o_57@@22 f_131@@22 v@@22) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_25579) (o_57@@23 T@Ref) (f_131@@23 T@Field_25639_53) (v@@23 Bool) ) (! (succHeap Heap@@73 (PolymorphicMapType_25579 (store (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@73) o_57@@23 f_131@@23 v@@23) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (store (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@73) o_57@@23 f_131@@23 v@@23) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@73)))
)))
(assert (forall ((this@@18 T@Ref) ) (! (= (PredicateMaskField_14217 (list this@@18)) (|list#sm| this@@18))
 :qid |stdinbpl.589:15|
 :skolemid |97|
 :pattern ( (PredicateMaskField_14217 (list this@@18)))
)))
(assert (forall ((this@@19 T@Ref) ) (! (= (PredicateMaskField_14257 (bla_1 this@@19)) (|bla#sm| this@@19))
 :qid |stdinbpl.817:15|
 :skolemid |107|
 :pattern ( (PredicateMaskField_14257 (bla_1 this@@19)))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (PredicateMaskField_14285 (blabla this@@20)) (|blabla#sm| this@@20))
 :qid |stdinbpl.892:15|
 :skolemid |113|
 :pattern ( (PredicateMaskField_14285 (blabla this@@20)))
)))
(assert (forall ((xs@@8 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_14312 (bla_qp xs@@8)) (|bla_qp#sm| xs@@8))
 :qid |stdinbpl.946:15|
 :skolemid |119|
 :pattern ( (PredicateMaskField_14312 (bla_qp xs@@8)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.314:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.315:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_25579) (Heap1Heap T@PolymorphicMapType_25579) (xs@@9 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select xs@@9 (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9))) (< NoPerm FullPerm))  (and (select xs@@9 (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9))) (< NoPerm FullPerm))) (=> (and (select xs@@9 (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap2Heap) (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9)) data) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap1Heap) (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9)) data)))) (= (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9)))
 :qid |stdinbpl.513:15|
 :skolemid |90|
 :pattern ( (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_25579) (Heap1Heap@@0 T@PolymorphicMapType_25579) (xs@@10 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select xs@@10 (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10))) (< NoPerm FullPerm))  (and (select xs@@10 (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10))) (< NoPerm FullPerm))) (=> (and (select xs@@10 (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap2Heap@@0) (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10)) data) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap1Heap@@0) (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10)) data)))) (= (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10)))
 :qid |stdinbpl.980:15|
 :skolemid |125|
 :pattern ( (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((o_57@@24 T@Ref) (f_69 T@Field_25652_25653) (Heap@@74 T@PolymorphicMapType_25579) ) (!  (=> (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@74) o_57@@24 $allocated) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@74) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@74) o_57@@24 f_69) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@74) o_57@@24 f_69))
)))
(assert (forall ((p@@5 T@Field_52762_52763) (v_1@@4 T@FrameType) (q T@Field_52762_52763) (w@@4 T@FrameType) (r T@Field_52762_52763) (u T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@5 v_1@@4 q w@@4) (InsidePredicate_52762_52762 q w@@4 r u)) (InsidePredicate_52762_52762 p@@5 v_1@@4 r u))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@5 v_1@@4 q w@@4) (InsidePredicate_52762_52762 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_52762_52763) (v_1@@5 T@FrameType) (q@@0 T@Field_52762_52763) (w@@5 T@FrameType) (r@@0 T@Field_51826_51827) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_52762_51826 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_52762_51826 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_52762_51826 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_52762_52763) (v_1@@6 T@FrameType) (q@@1 T@Field_52762_52763) (w@@6 T@FrameType) (r@@1 T@Field_14127_14218) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_52762_25639 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_52762_25639 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_52762_25639 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_52762_52763) (v_1@@7 T@FrameType) (q@@2 T@Field_52762_52763) (w@@7 T@FrameType) (r@@2 T@Field_50596_50597) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_52762_14257 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_52762_14257 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_52762_14257 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_52762_52763) (v_1@@8 T@FrameType) (q@@3 T@Field_52762_52763) (w@@8 T@FrameType) (r@@3 T@Field_32195_32196) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_52762_14217 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_52762_14217 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_52762_14217 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_52762_52763) (v_1@@9 T@FrameType) (q@@4 T@Field_14127_14218) (w@@9 T@FrameType) (r@@4 T@Field_52762_52763) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_25639_52762 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_52762_52762 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_25639_52762 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_52762_52763) (v_1@@10 T@FrameType) (q@@5 T@Field_14127_14218) (w@@10 T@FrameType) (r@@5 T@Field_51826_51827) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_25639_51826 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_52762_51826 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_25639_51826 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_52762_52763) (v_1@@11 T@FrameType) (q@@6 T@Field_14127_14218) (w@@11 T@FrameType) (r@@6 T@Field_14127_14218) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_25639_25639 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_52762_25639 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_25639_25639 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_52762_52763) (v_1@@12 T@FrameType) (q@@7 T@Field_14127_14218) (w@@12 T@FrameType) (r@@7 T@Field_50596_50597) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_25639_14257 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_52762_14257 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_25639_14257 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_52762_52763) (v_1@@13 T@FrameType) (q@@8 T@Field_14127_14218) (w@@13 T@FrameType) (r@@8 T@Field_32195_32196) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_25639_14217 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_52762_14217 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_25639_14217 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_52762_52763) (v_1@@14 T@FrameType) (q@@9 T@Field_51826_51827) (w@@14 T@FrameType) (r@@9 T@Field_52762_52763) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_14285_52762 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_52762_52762 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_14285_52762 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_52762_52763) (v_1@@15 T@FrameType) (q@@10 T@Field_51826_51827) (w@@15 T@FrameType) (r@@10 T@Field_51826_51827) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_14285_51826 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_52762_51826 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_14285_51826 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_52762_52763) (v_1@@16 T@FrameType) (q@@11 T@Field_51826_51827) (w@@16 T@FrameType) (r@@11 T@Field_14127_14218) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_14285_25639 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_52762_25639 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_14285_25639 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_52762_52763) (v_1@@17 T@FrameType) (q@@12 T@Field_51826_51827) (w@@17 T@FrameType) (r@@12 T@Field_50596_50597) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_14285_14257 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_52762_14257 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_14285_14257 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_52762_52763) (v_1@@18 T@FrameType) (q@@13 T@Field_51826_51827) (w@@18 T@FrameType) (r@@13 T@Field_32195_32196) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_14285_14217 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_52762_14217 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_14285_14217 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_52762_52763) (v_1@@19 T@FrameType) (q@@14 T@Field_50596_50597) (w@@19 T@FrameType) (r@@14 T@Field_52762_52763) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_14257_52762 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_52762_52762 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_14257_52762 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_52762_52763) (v_1@@20 T@FrameType) (q@@15 T@Field_50596_50597) (w@@20 T@FrameType) (r@@15 T@Field_51826_51827) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_14257_51826 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_52762_51826 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_14257_51826 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_52762_52763) (v_1@@21 T@FrameType) (q@@16 T@Field_50596_50597) (w@@21 T@FrameType) (r@@16 T@Field_14127_14218) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_14257_25639 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_52762_25639 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_14257_25639 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_52762_52763) (v_1@@22 T@FrameType) (q@@17 T@Field_50596_50597) (w@@22 T@FrameType) (r@@17 T@Field_50596_50597) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_14257_14257 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_52762_14257 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_14257_14257 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_52762_52763) (v_1@@23 T@FrameType) (q@@18 T@Field_50596_50597) (w@@23 T@FrameType) (r@@18 T@Field_32195_32196) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_14257_14217 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_52762_14217 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_14257_14217 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_52762_52763) (v_1@@24 T@FrameType) (q@@19 T@Field_32195_32196) (w@@24 T@FrameType) (r@@19 T@Field_52762_52763) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_14217_52762 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_52762_52762 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_14217_52762 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_52762_52763) (v_1@@25 T@FrameType) (q@@20 T@Field_32195_32196) (w@@25 T@FrameType) (r@@20 T@Field_51826_51827) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_14217_51826 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_52762_51826 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_14217_51826 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_52762_52763) (v_1@@26 T@FrameType) (q@@21 T@Field_32195_32196) (w@@26 T@FrameType) (r@@21 T@Field_14127_14218) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_14217_25639 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_52762_25639 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_14217_25639 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_52762_52763) (v_1@@27 T@FrameType) (q@@22 T@Field_32195_32196) (w@@27 T@FrameType) (r@@22 T@Field_50596_50597) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_14217_14257 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_52762_14257 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_14217_14257 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_52762_52763) (v_1@@28 T@FrameType) (q@@23 T@Field_32195_32196) (w@@28 T@FrameType) (r@@23 T@Field_32195_32196) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_14217_14217 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_52762_14217 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_14217_14217 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_14127_14218) (v_1@@29 T@FrameType) (q@@24 T@Field_52762_52763) (w@@29 T@FrameType) (r@@24 T@Field_52762_52763) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_52762_52762 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_25639_52762 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_52762_52762 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_14127_14218) (v_1@@30 T@FrameType) (q@@25 T@Field_52762_52763) (w@@30 T@FrameType) (r@@25 T@Field_51826_51827) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_52762_51826 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_25639_51826 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_52762_51826 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_14127_14218) (v_1@@31 T@FrameType) (q@@26 T@Field_52762_52763) (w@@31 T@FrameType) (r@@26 T@Field_14127_14218) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_52762_25639 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_25639_25639 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_52762_25639 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_14127_14218) (v_1@@32 T@FrameType) (q@@27 T@Field_52762_52763) (w@@32 T@FrameType) (r@@27 T@Field_50596_50597) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_52762_14257 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_25639_14257 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_52762_14257 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_14127_14218) (v_1@@33 T@FrameType) (q@@28 T@Field_52762_52763) (w@@33 T@FrameType) (r@@28 T@Field_32195_32196) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_52762_14217 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_25639_14217 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_52762_14217 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_14127_14218) (v_1@@34 T@FrameType) (q@@29 T@Field_14127_14218) (w@@34 T@FrameType) (r@@29 T@Field_52762_52763) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_25639_52762 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_25639_52762 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_25639_52762 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_14127_14218) (v_1@@35 T@FrameType) (q@@30 T@Field_14127_14218) (w@@35 T@FrameType) (r@@30 T@Field_51826_51827) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_25639_51826 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_25639_51826 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_25639_51826 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_14127_14218) (v_1@@36 T@FrameType) (q@@31 T@Field_14127_14218) (w@@36 T@FrameType) (r@@31 T@Field_14127_14218) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_25639_25639 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_25639_25639 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_25639_25639 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_14127_14218) (v_1@@37 T@FrameType) (q@@32 T@Field_14127_14218) (w@@37 T@FrameType) (r@@32 T@Field_50596_50597) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_25639_14257 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_25639_14257 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_25639_14257 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_14127_14218) (v_1@@38 T@FrameType) (q@@33 T@Field_14127_14218) (w@@38 T@FrameType) (r@@33 T@Field_32195_32196) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_25639_14217 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_25639_14217 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_25639_14217 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_14127_14218) (v_1@@39 T@FrameType) (q@@34 T@Field_51826_51827) (w@@39 T@FrameType) (r@@34 T@Field_52762_52763) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_14285_52762 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_25639_52762 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_14285_52762 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_14127_14218) (v_1@@40 T@FrameType) (q@@35 T@Field_51826_51827) (w@@40 T@FrameType) (r@@35 T@Field_51826_51827) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_14285_51826 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_25639_51826 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_14285_51826 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_14127_14218) (v_1@@41 T@FrameType) (q@@36 T@Field_51826_51827) (w@@41 T@FrameType) (r@@36 T@Field_14127_14218) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_14285_25639 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_25639_25639 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_14285_25639 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_14127_14218) (v_1@@42 T@FrameType) (q@@37 T@Field_51826_51827) (w@@42 T@FrameType) (r@@37 T@Field_50596_50597) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_14285_14257 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_25639_14257 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_14285_14257 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_14127_14218) (v_1@@43 T@FrameType) (q@@38 T@Field_51826_51827) (w@@43 T@FrameType) (r@@38 T@Field_32195_32196) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_14285_14217 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_25639_14217 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_14285_14217 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_14127_14218) (v_1@@44 T@FrameType) (q@@39 T@Field_50596_50597) (w@@44 T@FrameType) (r@@39 T@Field_52762_52763) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_14257_52762 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_25639_52762 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_14257_52762 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_14127_14218) (v_1@@45 T@FrameType) (q@@40 T@Field_50596_50597) (w@@45 T@FrameType) (r@@40 T@Field_51826_51827) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_14257_51826 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_25639_51826 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_14257_51826 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_14127_14218) (v_1@@46 T@FrameType) (q@@41 T@Field_50596_50597) (w@@46 T@FrameType) (r@@41 T@Field_14127_14218) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_14257_25639 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_25639_25639 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_14257_25639 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_14127_14218) (v_1@@47 T@FrameType) (q@@42 T@Field_50596_50597) (w@@47 T@FrameType) (r@@42 T@Field_50596_50597) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_14257_14257 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_25639_14257 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_14257_14257 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_14127_14218) (v_1@@48 T@FrameType) (q@@43 T@Field_50596_50597) (w@@48 T@FrameType) (r@@43 T@Field_32195_32196) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_14257_14217 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_25639_14217 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_14257_14217 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_14127_14218) (v_1@@49 T@FrameType) (q@@44 T@Field_32195_32196) (w@@49 T@FrameType) (r@@44 T@Field_52762_52763) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_14217_52762 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_25639_52762 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_14217_52762 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_14127_14218) (v_1@@50 T@FrameType) (q@@45 T@Field_32195_32196) (w@@50 T@FrameType) (r@@45 T@Field_51826_51827) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_14217_51826 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_25639_51826 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_14217_51826 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_14127_14218) (v_1@@51 T@FrameType) (q@@46 T@Field_32195_32196) (w@@51 T@FrameType) (r@@46 T@Field_14127_14218) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_14217_25639 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_25639_25639 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_14217_25639 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_14127_14218) (v_1@@52 T@FrameType) (q@@47 T@Field_32195_32196) (w@@52 T@FrameType) (r@@47 T@Field_50596_50597) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_14217_14257 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_25639_14257 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_14217_14257 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_14127_14218) (v_1@@53 T@FrameType) (q@@48 T@Field_32195_32196) (w@@53 T@FrameType) (r@@48 T@Field_32195_32196) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_14217_14217 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_25639_14217 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_14217_14217 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_51826_51827) (v_1@@54 T@FrameType) (q@@49 T@Field_52762_52763) (w@@54 T@FrameType) (r@@49 T@Field_52762_52763) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_52762_52762 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_14285_52762 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_52762_52762 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_51826_51827) (v_1@@55 T@FrameType) (q@@50 T@Field_52762_52763) (w@@55 T@FrameType) (r@@50 T@Field_51826_51827) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_52762_51826 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_14285_51826 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_52762_51826 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_51826_51827) (v_1@@56 T@FrameType) (q@@51 T@Field_52762_52763) (w@@56 T@FrameType) (r@@51 T@Field_14127_14218) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_52762_25639 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_14285_25639 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_52762_25639 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_51826_51827) (v_1@@57 T@FrameType) (q@@52 T@Field_52762_52763) (w@@57 T@FrameType) (r@@52 T@Field_50596_50597) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_52762_14257 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_14285_14257 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_52762_14257 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_51826_51827) (v_1@@58 T@FrameType) (q@@53 T@Field_52762_52763) (w@@58 T@FrameType) (r@@53 T@Field_32195_32196) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_52762_14217 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_14285_14217 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_52762_14217 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_51826_51827) (v_1@@59 T@FrameType) (q@@54 T@Field_14127_14218) (w@@59 T@FrameType) (r@@54 T@Field_52762_52763) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_25639_52762 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_14285_52762 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_25639_52762 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_51826_51827) (v_1@@60 T@FrameType) (q@@55 T@Field_14127_14218) (w@@60 T@FrameType) (r@@55 T@Field_51826_51827) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_25639_51826 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_14285_51826 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_25639_51826 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_51826_51827) (v_1@@61 T@FrameType) (q@@56 T@Field_14127_14218) (w@@61 T@FrameType) (r@@56 T@Field_14127_14218) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_25639_25639 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_14285_25639 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_25639_25639 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_51826_51827) (v_1@@62 T@FrameType) (q@@57 T@Field_14127_14218) (w@@62 T@FrameType) (r@@57 T@Field_50596_50597) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_25639_14257 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_14285_14257 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_25639_14257 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_51826_51827) (v_1@@63 T@FrameType) (q@@58 T@Field_14127_14218) (w@@63 T@FrameType) (r@@58 T@Field_32195_32196) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_25639_14217 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_14285_14217 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_25639_14217 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_51826_51827) (v_1@@64 T@FrameType) (q@@59 T@Field_51826_51827) (w@@64 T@FrameType) (r@@59 T@Field_52762_52763) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_14285_52762 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_14285_52762 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_14285_52762 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_51826_51827) (v_1@@65 T@FrameType) (q@@60 T@Field_51826_51827) (w@@65 T@FrameType) (r@@60 T@Field_51826_51827) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_14285_51826 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_14285_51826 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_14285_51826 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_51826_51827) (v_1@@66 T@FrameType) (q@@61 T@Field_51826_51827) (w@@66 T@FrameType) (r@@61 T@Field_14127_14218) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_14285_25639 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_14285_25639 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_14285_25639 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_51826_51827) (v_1@@67 T@FrameType) (q@@62 T@Field_51826_51827) (w@@67 T@FrameType) (r@@62 T@Field_50596_50597) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_14285_14257 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_14285_14257 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_14285_14257 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_51826_51827) (v_1@@68 T@FrameType) (q@@63 T@Field_51826_51827) (w@@68 T@FrameType) (r@@63 T@Field_32195_32196) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_14285_14217 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_14285_14217 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_14285_14217 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_51826_51827) (v_1@@69 T@FrameType) (q@@64 T@Field_50596_50597) (w@@69 T@FrameType) (r@@64 T@Field_52762_52763) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_14257_52762 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_14285_52762 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_14257_52762 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_51826_51827) (v_1@@70 T@FrameType) (q@@65 T@Field_50596_50597) (w@@70 T@FrameType) (r@@65 T@Field_51826_51827) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_14257_51826 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_14285_51826 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_14257_51826 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_51826_51827) (v_1@@71 T@FrameType) (q@@66 T@Field_50596_50597) (w@@71 T@FrameType) (r@@66 T@Field_14127_14218) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_14257_25639 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_14285_25639 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_14257_25639 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_51826_51827) (v_1@@72 T@FrameType) (q@@67 T@Field_50596_50597) (w@@72 T@FrameType) (r@@67 T@Field_50596_50597) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_14257_14257 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_14285_14257 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_14257_14257 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_51826_51827) (v_1@@73 T@FrameType) (q@@68 T@Field_50596_50597) (w@@73 T@FrameType) (r@@68 T@Field_32195_32196) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_14257_14217 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_14285_14217 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_14257_14217 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_51826_51827) (v_1@@74 T@FrameType) (q@@69 T@Field_32195_32196) (w@@74 T@FrameType) (r@@69 T@Field_52762_52763) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_14217_52762 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_14285_52762 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_14217_52762 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_51826_51827) (v_1@@75 T@FrameType) (q@@70 T@Field_32195_32196) (w@@75 T@FrameType) (r@@70 T@Field_51826_51827) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_14217_51826 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_14285_51826 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_14217_51826 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_51826_51827) (v_1@@76 T@FrameType) (q@@71 T@Field_32195_32196) (w@@76 T@FrameType) (r@@71 T@Field_14127_14218) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_14217_25639 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_14285_25639 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_14217_25639 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_51826_51827) (v_1@@77 T@FrameType) (q@@72 T@Field_32195_32196) (w@@77 T@FrameType) (r@@72 T@Field_50596_50597) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_14217_14257 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_14285_14257 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_14217_14257 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_51826_51827) (v_1@@78 T@FrameType) (q@@73 T@Field_32195_32196) (w@@78 T@FrameType) (r@@73 T@Field_32195_32196) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_14217_14217 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_14285_14217 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_14217_14217 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_50596_50597) (v_1@@79 T@FrameType) (q@@74 T@Field_52762_52763) (w@@79 T@FrameType) (r@@74 T@Field_52762_52763) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_52762_52762 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_14257_52762 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_52762_52762 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_50596_50597) (v_1@@80 T@FrameType) (q@@75 T@Field_52762_52763) (w@@80 T@FrameType) (r@@75 T@Field_51826_51827) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_52762_51826 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_14257_51826 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_52762_51826 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_50596_50597) (v_1@@81 T@FrameType) (q@@76 T@Field_52762_52763) (w@@81 T@FrameType) (r@@76 T@Field_14127_14218) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_52762_25639 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_14257_25639 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_52762_25639 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_50596_50597) (v_1@@82 T@FrameType) (q@@77 T@Field_52762_52763) (w@@82 T@FrameType) (r@@77 T@Field_50596_50597) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_52762_14257 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_14257_14257 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_52762_14257 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_50596_50597) (v_1@@83 T@FrameType) (q@@78 T@Field_52762_52763) (w@@83 T@FrameType) (r@@78 T@Field_32195_32196) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_52762_14217 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_14257_14217 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_52762_14217 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_50596_50597) (v_1@@84 T@FrameType) (q@@79 T@Field_14127_14218) (w@@84 T@FrameType) (r@@79 T@Field_52762_52763) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_25639_52762 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_14257_52762 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_25639_52762 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_50596_50597) (v_1@@85 T@FrameType) (q@@80 T@Field_14127_14218) (w@@85 T@FrameType) (r@@80 T@Field_51826_51827) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_25639_51826 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_14257_51826 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_25639_51826 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_50596_50597) (v_1@@86 T@FrameType) (q@@81 T@Field_14127_14218) (w@@86 T@FrameType) (r@@81 T@Field_14127_14218) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_25639_25639 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_14257_25639 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_25639_25639 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_50596_50597) (v_1@@87 T@FrameType) (q@@82 T@Field_14127_14218) (w@@87 T@FrameType) (r@@82 T@Field_50596_50597) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_25639_14257 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_14257_14257 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_25639_14257 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_50596_50597) (v_1@@88 T@FrameType) (q@@83 T@Field_14127_14218) (w@@88 T@FrameType) (r@@83 T@Field_32195_32196) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_25639_14217 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_14257_14217 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_25639_14217 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_50596_50597) (v_1@@89 T@FrameType) (q@@84 T@Field_51826_51827) (w@@89 T@FrameType) (r@@84 T@Field_52762_52763) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_14285_52762 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_14257_52762 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_14285_52762 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_50596_50597) (v_1@@90 T@FrameType) (q@@85 T@Field_51826_51827) (w@@90 T@FrameType) (r@@85 T@Field_51826_51827) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_14285_51826 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_14257_51826 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_14285_51826 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_50596_50597) (v_1@@91 T@FrameType) (q@@86 T@Field_51826_51827) (w@@91 T@FrameType) (r@@86 T@Field_14127_14218) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_14285_25639 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_14257_25639 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_14285_25639 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_50596_50597) (v_1@@92 T@FrameType) (q@@87 T@Field_51826_51827) (w@@92 T@FrameType) (r@@87 T@Field_50596_50597) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_14285_14257 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_14257_14257 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_14285_14257 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_50596_50597) (v_1@@93 T@FrameType) (q@@88 T@Field_51826_51827) (w@@93 T@FrameType) (r@@88 T@Field_32195_32196) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_14285_14217 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_14257_14217 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_14285_14217 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_50596_50597) (v_1@@94 T@FrameType) (q@@89 T@Field_50596_50597) (w@@94 T@FrameType) (r@@89 T@Field_52762_52763) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_14257_52762 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_14257_52762 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_14257_52762 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_50596_50597) (v_1@@95 T@FrameType) (q@@90 T@Field_50596_50597) (w@@95 T@FrameType) (r@@90 T@Field_51826_51827) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_14257_51826 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_14257_51826 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_14257_51826 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_50596_50597) (v_1@@96 T@FrameType) (q@@91 T@Field_50596_50597) (w@@96 T@FrameType) (r@@91 T@Field_14127_14218) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_14257_25639 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_14257_25639 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_14257_25639 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_50596_50597) (v_1@@97 T@FrameType) (q@@92 T@Field_50596_50597) (w@@97 T@FrameType) (r@@92 T@Field_50596_50597) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_14257_14257 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_14257_14257 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_14257_14257 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_50596_50597) (v_1@@98 T@FrameType) (q@@93 T@Field_50596_50597) (w@@98 T@FrameType) (r@@93 T@Field_32195_32196) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_14257_14217 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_14257_14217 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_14257_14217 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_50596_50597) (v_1@@99 T@FrameType) (q@@94 T@Field_32195_32196) (w@@99 T@FrameType) (r@@94 T@Field_52762_52763) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_14217_52762 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_14257_52762 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_14217_52762 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_50596_50597) (v_1@@100 T@FrameType) (q@@95 T@Field_32195_32196) (w@@100 T@FrameType) (r@@95 T@Field_51826_51827) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_14217_51826 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_14257_51826 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_14217_51826 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_50596_50597) (v_1@@101 T@FrameType) (q@@96 T@Field_32195_32196) (w@@101 T@FrameType) (r@@96 T@Field_14127_14218) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_14217_25639 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_14257_25639 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_14217_25639 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_50596_50597) (v_1@@102 T@FrameType) (q@@97 T@Field_32195_32196) (w@@102 T@FrameType) (r@@97 T@Field_50596_50597) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_14217_14257 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_14257_14257 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_14217_14257 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_50596_50597) (v_1@@103 T@FrameType) (q@@98 T@Field_32195_32196) (w@@103 T@FrameType) (r@@98 T@Field_32195_32196) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_14217_14217 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_14257_14217 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_14217_14217 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_32195_32196) (v_1@@104 T@FrameType) (q@@99 T@Field_52762_52763) (w@@104 T@FrameType) (r@@99 T@Field_52762_52763) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_52762_52762 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_14217_52762 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_52762_52762 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_32195_32196) (v_1@@105 T@FrameType) (q@@100 T@Field_52762_52763) (w@@105 T@FrameType) (r@@100 T@Field_51826_51827) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_52762_51826 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_14217_51826 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_52762_51826 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_32195_32196) (v_1@@106 T@FrameType) (q@@101 T@Field_52762_52763) (w@@106 T@FrameType) (r@@101 T@Field_14127_14218) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_52762_25639 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_14217_25639 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_52762_25639 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_32195_32196) (v_1@@107 T@FrameType) (q@@102 T@Field_52762_52763) (w@@107 T@FrameType) (r@@102 T@Field_50596_50597) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_52762_14257 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_14217_14257 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_52762_14257 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_32195_32196) (v_1@@108 T@FrameType) (q@@103 T@Field_52762_52763) (w@@108 T@FrameType) (r@@103 T@Field_32195_32196) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_52762_14217 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_14217_14217 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_52762_14217 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_32195_32196) (v_1@@109 T@FrameType) (q@@104 T@Field_14127_14218) (w@@109 T@FrameType) (r@@104 T@Field_52762_52763) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_25639_52762 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_14217_52762 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_25639_52762 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_32195_32196) (v_1@@110 T@FrameType) (q@@105 T@Field_14127_14218) (w@@110 T@FrameType) (r@@105 T@Field_51826_51827) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_25639_51826 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_14217_51826 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_25639_51826 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_32195_32196) (v_1@@111 T@FrameType) (q@@106 T@Field_14127_14218) (w@@111 T@FrameType) (r@@106 T@Field_14127_14218) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_25639_25639 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_14217_25639 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_25639_25639 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_32195_32196) (v_1@@112 T@FrameType) (q@@107 T@Field_14127_14218) (w@@112 T@FrameType) (r@@107 T@Field_50596_50597) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_25639_14257 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_14217_14257 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_25639_14257 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_32195_32196) (v_1@@113 T@FrameType) (q@@108 T@Field_14127_14218) (w@@113 T@FrameType) (r@@108 T@Field_32195_32196) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_25639_14217 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_14217_14217 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_25639_14217 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_32195_32196) (v_1@@114 T@FrameType) (q@@109 T@Field_51826_51827) (w@@114 T@FrameType) (r@@109 T@Field_52762_52763) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_14285_52762 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_14217_52762 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_14285_52762 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_32195_32196) (v_1@@115 T@FrameType) (q@@110 T@Field_51826_51827) (w@@115 T@FrameType) (r@@110 T@Field_51826_51827) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_14285_51826 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_14217_51826 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_14285_51826 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_32195_32196) (v_1@@116 T@FrameType) (q@@111 T@Field_51826_51827) (w@@116 T@FrameType) (r@@111 T@Field_14127_14218) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_14285_25639 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_14217_25639 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_14285_25639 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_32195_32196) (v_1@@117 T@FrameType) (q@@112 T@Field_51826_51827) (w@@117 T@FrameType) (r@@112 T@Field_50596_50597) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_14285_14257 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_14217_14257 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_14285_14257 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_32195_32196) (v_1@@118 T@FrameType) (q@@113 T@Field_51826_51827) (w@@118 T@FrameType) (r@@113 T@Field_32195_32196) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_14285_14217 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_14217_14217 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_14285_14217 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_32195_32196) (v_1@@119 T@FrameType) (q@@114 T@Field_50596_50597) (w@@119 T@FrameType) (r@@114 T@Field_52762_52763) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_14257_52762 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_14217_52762 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_14257_52762 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_32195_32196) (v_1@@120 T@FrameType) (q@@115 T@Field_50596_50597) (w@@120 T@FrameType) (r@@115 T@Field_51826_51827) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_14257_51826 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_14217_51826 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_14257_51826 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_32195_32196) (v_1@@121 T@FrameType) (q@@116 T@Field_50596_50597) (w@@121 T@FrameType) (r@@116 T@Field_14127_14218) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_14257_25639 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_14217_25639 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_14257_25639 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_32195_32196) (v_1@@122 T@FrameType) (q@@117 T@Field_50596_50597) (w@@122 T@FrameType) (r@@117 T@Field_50596_50597) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_14257_14257 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_14217_14257 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_14257_14257 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_32195_32196) (v_1@@123 T@FrameType) (q@@118 T@Field_50596_50597) (w@@123 T@FrameType) (r@@118 T@Field_32195_32196) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_14257_14217 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_14217_14217 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_14257_14217 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_32195_32196) (v_1@@124 T@FrameType) (q@@119 T@Field_32195_32196) (w@@124 T@FrameType) (r@@119 T@Field_52762_52763) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_14217_52762 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_14217_52762 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_14217_52762 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_32195_32196) (v_1@@125 T@FrameType) (q@@120 T@Field_32195_32196) (w@@125 T@FrameType) (r@@120 T@Field_51826_51827) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_14217_51826 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_14217_51826 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_14217_51826 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_32195_32196) (v_1@@126 T@FrameType) (q@@121 T@Field_32195_32196) (w@@126 T@FrameType) (r@@121 T@Field_14127_14218) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_14217_25639 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_14217_25639 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_14217_25639 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_32195_32196) (v_1@@127 T@FrameType) (q@@122 T@Field_32195_32196) (w@@127 T@FrameType) (r@@122 T@Field_50596_50597) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_14217_14257 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_14217_14257 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_14217_14257 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_32195_32196) (v_1@@128 T@FrameType) (q@@123 T@Field_32195_32196) (w@@128 T@FrameType) (r@@123 T@Field_32195_32196) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_14217_14217 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_14217_14217 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_14217_14217 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_25579) (ExhaleHeap@@36 T@PolymorphicMapType_25579) (Mask@@91 T@PolymorphicMapType_25600) (pm_f_44@@9 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@36 Mask@@91) (=> (and (HasDirectPerm_51826_14218 Mask@@91 null pm_f_44@@9) (IsPredicateField_14285_14286 pm_f_44@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44 T@Ref) (f_78@@24 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44 f_78@@24) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@75) o2_44 f_78@@24) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44 f_78@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44 f_78@@24))
)) (forall ((o2_44@@0 T@Ref) (f_78@@25 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@0 f_78@@25) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@0 f_78@@25) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@0 f_78@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@0 f_78@@25))
))) (forall ((o2_44@@1 T@Ref) (f_78@@26 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@1 f_78@@26) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@75) o2_44@@1 f_78@@26) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@1 f_78@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@1 f_78@@26))
))) (forall ((o2_44@@2 T@Ref) (f_78@@27 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@2 f_78@@27) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@75) o2_44@@2 f_78@@27) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@2 f_78@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@2 f_78@@27))
))) (forall ((o2_44@@3 T@Ref) (f_78@@28 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@3 f_78@@28) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@75) o2_44@@3 f_78@@28) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@3 f_78@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@3 f_78@@28))
))) (forall ((o2_44@@4 T@Ref) (f_78@@29 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@4 f_78@@29) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@4 f_78@@29) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@4 f_78@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@4 f_78@@29))
))) (forall ((o2_44@@5 T@Ref) (f_78@@30 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@5 f_78@@30) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@5 f_78@@30) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@5 f_78@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@5 f_78@@30))
))) (forall ((o2_44@@6 T@Ref) (f_78@@31 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@6 f_78@@31) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@75) o2_44@@6 f_78@@31) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@6 f_78@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@6 f_78@@31))
))) (forall ((o2_44@@7 T@Ref) (f_78@@32 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@7 f_78@@32) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@75) o2_44@@7 f_78@@32) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@7 f_78@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@7 f_78@@32))
))) (forall ((o2_44@@8 T@Ref) (f_78@@33 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@8 f_78@@33) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@75) o2_44@@8 f_78@@33) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@8 f_78@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@8 f_78@@33))
))) (forall ((o2_44@@9 T@Ref) (f_78@@34 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@9 f_78@@34) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@9 f_78@@34) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@9 f_78@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@9 f_78@@34))
))) (forall ((o2_44@@10 T@Ref) (f_78@@35 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@10 f_78@@35) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@10 f_78@@35) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@10 f_78@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@10 f_78@@35))
))) (forall ((o2_44@@11 T@Ref) (f_78@@36 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@11 f_78@@36) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@75) o2_44@@11 f_78@@36) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@11 f_78@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@11 f_78@@36))
))) (forall ((o2_44@@12 T@Ref) (f_78@@37 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@12 f_78@@37) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@75) o2_44@@12 f_78@@37) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@12 f_78@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@12 f_78@@37))
))) (forall ((o2_44@@13 T@Ref) (f_78@@38 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@13 f_78@@38) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@75) o2_44@@13 f_78@@38) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@13 f_78@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@13 f_78@@38))
))) (forall ((o2_44@@14 T@Ref) (f_78@@39 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@14 f_78@@39) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@14 f_78@@39) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@14 f_78@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@14 f_78@@39))
))) (forall ((o2_44@@15 T@Ref) (f_78@@40 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@15 f_78@@40) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@15 f_78@@40) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@15 f_78@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@15 f_78@@40))
))) (forall ((o2_44@@16 T@Ref) (f_78@@41 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@16 f_78@@41) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@75) o2_44@@16 f_78@@41) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@16 f_78@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@16 f_78@@41))
))) (forall ((o2_44@@17 T@Ref) (f_78@@42 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@17 f_78@@42) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@75) o2_44@@17 f_78@@42) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@17 f_78@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@17 f_78@@42))
))) (forall ((o2_44@@18 T@Ref) (f_78@@43 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@18 f_78@@43) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) o2_44@@18 f_78@@43) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@18 f_78@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@18 f_78@@43))
))) (forall ((o2_44@@19 T@Ref) (f_78@@44 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@19 f_78@@44) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@19 f_78@@44) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@19 f_78@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@19 f_78@@44))
))) (forall ((o2_44@@20 T@Ref) (f_78@@45 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@20 f_78@@45) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@20 f_78@@45) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@20 f_78@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@20 f_78@@45))
))) (forall ((o2_44@@21 T@Ref) (f_78@@46 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@21 f_78@@46) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@75) o2_44@@21 f_78@@46) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@21 f_78@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@21 f_78@@46))
))) (forall ((o2_44@@22 T@Ref) (f_78@@47 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@22 f_78@@47) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@75) o2_44@@22 f_78@@47) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@22 f_78@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@22 f_78@@47))
))) (forall ((o2_44@@23 T@Ref) (f_78@@48 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@23 f_78@@48) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@75) o2_44@@23 f_78@@48) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@23 f_78@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@23 f_78@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@36 Mask@@91) (IsPredicateField_14285_14286 pm_f_44@@9))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_25579) (ExhaleHeap@@37 T@PolymorphicMapType_25579) (Mask@@92 T@PolymorphicMapType_25600) (pm_f_44@@10 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@37 Mask@@92) (=> (and (HasDirectPerm_14312_14313 Mask@@92 null pm_f_44@@10) (IsPredicateField_14312_14313 pm_f_44@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@24 T@Ref) (f_78@@49 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@24 f_78@@49) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@76) o2_44@@24 f_78@@49) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@24 f_78@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@24 f_78@@49))
)) (forall ((o2_44@@25 T@Ref) (f_78@@50 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@25 f_78@@50) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@25 f_78@@50) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@25 f_78@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@25 f_78@@50))
))) (forall ((o2_44@@26 T@Ref) (f_78@@51 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@26 f_78@@51) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@76) o2_44@@26 f_78@@51) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@26 f_78@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@26 f_78@@51))
))) (forall ((o2_44@@27 T@Ref) (f_78@@52 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@27 f_78@@52) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@76) o2_44@@27 f_78@@52) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@27 f_78@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@27 f_78@@52))
))) (forall ((o2_44@@28 T@Ref) (f_78@@53 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@28 f_78@@53) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@76) o2_44@@28 f_78@@53) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@28 f_78@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@28 f_78@@53))
))) (forall ((o2_44@@29 T@Ref) (f_78@@54 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@29 f_78@@54) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@29 f_78@@54) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@29 f_78@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@29 f_78@@54))
))) (forall ((o2_44@@30 T@Ref) (f_78@@55 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@30 f_78@@55) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@30 f_78@@55) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@30 f_78@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@30 f_78@@55))
))) (forall ((o2_44@@31 T@Ref) (f_78@@56 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@31 f_78@@56) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@76) o2_44@@31 f_78@@56) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@31 f_78@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@31 f_78@@56))
))) (forall ((o2_44@@32 T@Ref) (f_78@@57 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@32 f_78@@57) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@76) o2_44@@32 f_78@@57) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@32 f_78@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@32 f_78@@57))
))) (forall ((o2_44@@33 T@Ref) (f_78@@58 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@33 f_78@@58) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@76) o2_44@@33 f_78@@58) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@33 f_78@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@33 f_78@@58))
))) (forall ((o2_44@@34 T@Ref) (f_78@@59 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@34 f_78@@59) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@34 f_78@@59) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@34 f_78@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@34 f_78@@59))
))) (forall ((o2_44@@35 T@Ref) (f_78@@60 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@35 f_78@@60) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@35 f_78@@60) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@35 f_78@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@35 f_78@@60))
))) (forall ((o2_44@@36 T@Ref) (f_78@@61 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@36 f_78@@61) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@76) o2_44@@36 f_78@@61) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@36 f_78@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@36 f_78@@61))
))) (forall ((o2_44@@37 T@Ref) (f_78@@62 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@37 f_78@@62) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@76) o2_44@@37 f_78@@62) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@37 f_78@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@37 f_78@@62))
))) (forall ((o2_44@@38 T@Ref) (f_78@@63 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@38 f_78@@63) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@76) o2_44@@38 f_78@@63) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@38 f_78@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@38 f_78@@63))
))) (forall ((o2_44@@39 T@Ref) (f_78@@64 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@39 f_78@@64) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@39 f_78@@64) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@39 f_78@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@39 f_78@@64))
))) (forall ((o2_44@@40 T@Ref) (f_78@@65 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@40 f_78@@65) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@40 f_78@@65) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@40 f_78@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@40 f_78@@65))
))) (forall ((o2_44@@41 T@Ref) (f_78@@66 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@41 f_78@@66) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@76) o2_44@@41 f_78@@66) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@41 f_78@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@41 f_78@@66))
))) (forall ((o2_44@@42 T@Ref) (f_78@@67 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@42 f_78@@67) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@76) o2_44@@42 f_78@@67) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@42 f_78@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@42 f_78@@67))
))) (forall ((o2_44@@43 T@Ref) (f_78@@68 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@43 f_78@@68) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@76) o2_44@@43 f_78@@68) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@43 f_78@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@43 f_78@@68))
))) (forall ((o2_44@@44 T@Ref) (f_78@@69 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@44 f_78@@69) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@44 f_78@@69) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@44 f_78@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@44 f_78@@69))
))) (forall ((o2_44@@45 T@Ref) (f_78@@70 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@45 f_78@@70) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@45 f_78@@70) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@45 f_78@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@45 f_78@@70))
))) (forall ((o2_44@@46 T@Ref) (f_78@@71 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@46 f_78@@71) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@76) o2_44@@46 f_78@@71) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@46 f_78@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@46 f_78@@71))
))) (forall ((o2_44@@47 T@Ref) (f_78@@72 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@47 f_78@@72) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@76) o2_44@@47 f_78@@72) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@47 f_78@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@47 f_78@@72))
))) (forall ((o2_44@@48 T@Ref) (f_78@@73 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@48 f_78@@73) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) o2_44@@48 f_78@@73) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@48 f_78@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@48 f_78@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@37 Mask@@92) (IsPredicateField_14312_14313 pm_f_44@@10))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_25579) (ExhaleHeap@@38 T@PolymorphicMapType_25579) (Mask@@93 T@PolymorphicMapType_25600) (pm_f_44@@11 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@77 ExhaleHeap@@38 Mask@@93) (=> (and (HasDirectPerm_14257_14258 Mask@@93 null pm_f_44@@11) (IsPredicateField_14257_14258 pm_f_44@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@49 T@Ref) (f_78@@74 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@49 f_78@@74) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@77) o2_44@@49 f_78@@74) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@49 f_78@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@49 f_78@@74))
)) (forall ((o2_44@@50 T@Ref) (f_78@@75 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@50 f_78@@75) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@50 f_78@@75) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@50 f_78@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@50 f_78@@75))
))) (forall ((o2_44@@51 T@Ref) (f_78@@76 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@51 f_78@@76) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@77) o2_44@@51 f_78@@76) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@51 f_78@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@51 f_78@@76))
))) (forall ((o2_44@@52 T@Ref) (f_78@@77 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@52 f_78@@77) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@77) o2_44@@52 f_78@@77) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@52 f_78@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@52 f_78@@77))
))) (forall ((o2_44@@53 T@Ref) (f_78@@78 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@53 f_78@@78) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@77) o2_44@@53 f_78@@78) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@53 f_78@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@53 f_78@@78))
))) (forall ((o2_44@@54 T@Ref) (f_78@@79 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@54 f_78@@79) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@54 f_78@@79) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@54 f_78@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@54 f_78@@79))
))) (forall ((o2_44@@55 T@Ref) (f_78@@80 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@55 f_78@@80) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@55 f_78@@80) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@55 f_78@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@55 f_78@@80))
))) (forall ((o2_44@@56 T@Ref) (f_78@@81 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@56 f_78@@81) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@77) o2_44@@56 f_78@@81) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@56 f_78@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@56 f_78@@81))
))) (forall ((o2_44@@57 T@Ref) (f_78@@82 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@57 f_78@@82) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@77) o2_44@@57 f_78@@82) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@57 f_78@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@57 f_78@@82))
))) (forall ((o2_44@@58 T@Ref) (f_78@@83 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@58 f_78@@83) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@77) o2_44@@58 f_78@@83) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@58 f_78@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@58 f_78@@83))
))) (forall ((o2_44@@59 T@Ref) (f_78@@84 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@59 f_78@@84) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@59 f_78@@84) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@59 f_78@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@59 f_78@@84))
))) (forall ((o2_44@@60 T@Ref) (f_78@@85 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@60 f_78@@85) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@60 f_78@@85) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@60 f_78@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@60 f_78@@85))
))) (forall ((o2_44@@61 T@Ref) (f_78@@86 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@61 f_78@@86) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@77) o2_44@@61 f_78@@86) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@61 f_78@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@61 f_78@@86))
))) (forall ((o2_44@@62 T@Ref) (f_78@@87 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@62 f_78@@87) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@77) o2_44@@62 f_78@@87) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@62 f_78@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@62 f_78@@87))
))) (forall ((o2_44@@63 T@Ref) (f_78@@88 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@63 f_78@@88) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) o2_44@@63 f_78@@88) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@63 f_78@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@63 f_78@@88))
))) (forall ((o2_44@@64 T@Ref) (f_78@@89 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@64 f_78@@89) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@64 f_78@@89) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@64 f_78@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@64 f_78@@89))
))) (forall ((o2_44@@65 T@Ref) (f_78@@90 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@65 f_78@@90) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@65 f_78@@90) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@65 f_78@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@65 f_78@@90))
))) (forall ((o2_44@@66 T@Ref) (f_78@@91 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@66 f_78@@91) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@77) o2_44@@66 f_78@@91) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@66 f_78@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@66 f_78@@91))
))) (forall ((o2_44@@67 T@Ref) (f_78@@92 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@67 f_78@@92) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@77) o2_44@@67 f_78@@92) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@67 f_78@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@67 f_78@@92))
))) (forall ((o2_44@@68 T@Ref) (f_78@@93 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@68 f_78@@93) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@77) o2_44@@68 f_78@@93) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@68 f_78@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@68 f_78@@93))
))) (forall ((o2_44@@69 T@Ref) (f_78@@94 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@69 f_78@@94) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@69 f_78@@94) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@69 f_78@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@69 f_78@@94))
))) (forall ((o2_44@@70 T@Ref) (f_78@@95 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@70 f_78@@95) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@70 f_78@@95) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@70 f_78@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@70 f_78@@95))
))) (forall ((o2_44@@71 T@Ref) (f_78@@96 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@71 f_78@@96) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@77) o2_44@@71 f_78@@96) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@71 f_78@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@71 f_78@@96))
))) (forall ((o2_44@@72 T@Ref) (f_78@@97 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@72 f_78@@97) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@77) o2_44@@72 f_78@@97) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@72 f_78@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@72 f_78@@97))
))) (forall ((o2_44@@73 T@Ref) (f_78@@98 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@73 f_78@@98) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@77) o2_44@@73 f_78@@98) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@73 f_78@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@73 f_78@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@77 ExhaleHeap@@38 Mask@@93) (IsPredicateField_14257_14258 pm_f_44@@11))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_25579) (ExhaleHeap@@39 T@PolymorphicMapType_25579) (Mask@@94 T@PolymorphicMapType_25600) (pm_f_44@@12 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@78 ExhaleHeap@@39 Mask@@94) (=> (and (HasDirectPerm_14217_14218 Mask@@94 null pm_f_44@@12) (IsPredicateField_14217_14218 pm_f_44@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@74 T@Ref) (f_78@@99 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@74 f_78@@99) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@78) o2_44@@74 f_78@@99) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@74 f_78@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@74 f_78@@99))
)) (forall ((o2_44@@75 T@Ref) (f_78@@100 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@75 f_78@@100) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@75 f_78@@100) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@75 f_78@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@75 f_78@@100))
))) (forall ((o2_44@@76 T@Ref) (f_78@@101 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@76 f_78@@101) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@78) o2_44@@76 f_78@@101) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@76 f_78@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@76 f_78@@101))
))) (forall ((o2_44@@77 T@Ref) (f_78@@102 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@77 f_78@@102) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@78) o2_44@@77 f_78@@102) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@77 f_78@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@77 f_78@@102))
))) (forall ((o2_44@@78 T@Ref) (f_78@@103 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@78 f_78@@103) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@78) o2_44@@78 f_78@@103) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@78 f_78@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@78 f_78@@103))
))) (forall ((o2_44@@79 T@Ref) (f_78@@104 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@79 f_78@@104) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@79 f_78@@104) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@79 f_78@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@79 f_78@@104))
))) (forall ((o2_44@@80 T@Ref) (f_78@@105 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@80 f_78@@105) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@80 f_78@@105) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@80 f_78@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@80 f_78@@105))
))) (forall ((o2_44@@81 T@Ref) (f_78@@106 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@81 f_78@@106) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@78) o2_44@@81 f_78@@106) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@81 f_78@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@81 f_78@@106))
))) (forall ((o2_44@@82 T@Ref) (f_78@@107 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@82 f_78@@107) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@78) o2_44@@82 f_78@@107) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@82 f_78@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@82 f_78@@107))
))) (forall ((o2_44@@83 T@Ref) (f_78@@108 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@83 f_78@@108) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) o2_44@@83 f_78@@108) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@83 f_78@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@83 f_78@@108))
))) (forall ((o2_44@@84 T@Ref) (f_78@@109 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@84 f_78@@109) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@84 f_78@@109) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@84 f_78@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@84 f_78@@109))
))) (forall ((o2_44@@85 T@Ref) (f_78@@110 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@85 f_78@@110) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@85 f_78@@110) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@85 f_78@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@85 f_78@@110))
))) (forall ((o2_44@@86 T@Ref) (f_78@@111 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@86 f_78@@111) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@78) o2_44@@86 f_78@@111) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@86 f_78@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@86 f_78@@111))
))) (forall ((o2_44@@87 T@Ref) (f_78@@112 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@87 f_78@@112) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@78) o2_44@@87 f_78@@112) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@87 f_78@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@87 f_78@@112))
))) (forall ((o2_44@@88 T@Ref) (f_78@@113 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@88 f_78@@113) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@78) o2_44@@88 f_78@@113) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@88 f_78@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@88 f_78@@113))
))) (forall ((o2_44@@89 T@Ref) (f_78@@114 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@89 f_78@@114) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@89 f_78@@114) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@89 f_78@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@89 f_78@@114))
))) (forall ((o2_44@@90 T@Ref) (f_78@@115 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@90 f_78@@115) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@90 f_78@@115) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@90 f_78@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@90 f_78@@115))
))) (forall ((o2_44@@91 T@Ref) (f_78@@116 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@91 f_78@@116) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@78) o2_44@@91 f_78@@116) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@91 f_78@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@91 f_78@@116))
))) (forall ((o2_44@@92 T@Ref) (f_78@@117 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@92 f_78@@117) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@78) o2_44@@92 f_78@@117) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@92 f_78@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@92 f_78@@117))
))) (forall ((o2_44@@93 T@Ref) (f_78@@118 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@93 f_78@@118) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@78) o2_44@@93 f_78@@118) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@93 f_78@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@93 f_78@@118))
))) (forall ((o2_44@@94 T@Ref) (f_78@@119 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@94 f_78@@119) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@94 f_78@@119) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@94 f_78@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@94 f_78@@119))
))) (forall ((o2_44@@95 T@Ref) (f_78@@120 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@95 f_78@@120) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@95 f_78@@120) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@95 f_78@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@95 f_78@@120))
))) (forall ((o2_44@@96 T@Ref) (f_78@@121 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@96 f_78@@121) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@78) o2_44@@96 f_78@@121) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@96 f_78@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@96 f_78@@121))
))) (forall ((o2_44@@97 T@Ref) (f_78@@122 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@97 f_78@@122) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@78) o2_44@@97 f_78@@122) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@97 f_78@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@97 f_78@@122))
))) (forall ((o2_44@@98 T@Ref) (f_78@@123 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@98 f_78@@123) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@78) o2_44@@98 f_78@@123) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@98 f_78@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@98 f_78@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@78 ExhaleHeap@@39 Mask@@94) (IsPredicateField_14217_14218 pm_f_44@@12))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_25579) (ExhaleHeap@@40 T@PolymorphicMapType_25579) (Mask@@95 T@PolymorphicMapType_25600) (pm_f_44@@13 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@79 ExhaleHeap@@40 Mask@@95) (=> (and (HasDirectPerm_14127_14218 Mask@@95 null pm_f_44@@13) (IsPredicateField_14127_92945 pm_f_44@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@99 T@Ref) (f_78@@124 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@99 f_78@@124) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@79) o2_44@@99 f_78@@124) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@99 f_78@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@99 f_78@@124))
)) (forall ((o2_44@@100 T@Ref) (f_78@@125 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@100 f_78@@125) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@100 f_78@@125) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@100 f_78@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@100 f_78@@125))
))) (forall ((o2_44@@101 T@Ref) (f_78@@126 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@101 f_78@@126) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@79) o2_44@@101 f_78@@126) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@101 f_78@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@101 f_78@@126))
))) (forall ((o2_44@@102 T@Ref) (f_78@@127 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@102 f_78@@127) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@79) o2_44@@102 f_78@@127) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@102 f_78@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@102 f_78@@127))
))) (forall ((o2_44@@103 T@Ref) (f_78@@128 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@103 f_78@@128) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) o2_44@@103 f_78@@128) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@103 f_78@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@103 f_78@@128))
))) (forall ((o2_44@@104 T@Ref) (f_78@@129 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@104 f_78@@129) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@104 f_78@@129) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@104 f_78@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@104 f_78@@129))
))) (forall ((o2_44@@105 T@Ref) (f_78@@130 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@105 f_78@@130) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@105 f_78@@130) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@105 f_78@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@105 f_78@@130))
))) (forall ((o2_44@@106 T@Ref) (f_78@@131 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@106 f_78@@131) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@79) o2_44@@106 f_78@@131) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@106 f_78@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@106 f_78@@131))
))) (forall ((o2_44@@107 T@Ref) (f_78@@132 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@107 f_78@@132) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@79) o2_44@@107 f_78@@132) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@107 f_78@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@107 f_78@@132))
))) (forall ((o2_44@@108 T@Ref) (f_78@@133 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@108 f_78@@133) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@79) o2_44@@108 f_78@@133) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@108 f_78@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@108 f_78@@133))
))) (forall ((o2_44@@109 T@Ref) (f_78@@134 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@109 f_78@@134) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@109 f_78@@134) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@109 f_78@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@109 f_78@@134))
))) (forall ((o2_44@@110 T@Ref) (f_78@@135 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@110 f_78@@135) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@110 f_78@@135) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@110 f_78@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@110 f_78@@135))
))) (forall ((o2_44@@111 T@Ref) (f_78@@136 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@111 f_78@@136) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@79) o2_44@@111 f_78@@136) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@111 f_78@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@111 f_78@@136))
))) (forall ((o2_44@@112 T@Ref) (f_78@@137 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@112 f_78@@137) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@79) o2_44@@112 f_78@@137) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@112 f_78@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@112 f_78@@137))
))) (forall ((o2_44@@113 T@Ref) (f_78@@138 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@113 f_78@@138) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@79) o2_44@@113 f_78@@138) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@113 f_78@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@113 f_78@@138))
))) (forall ((o2_44@@114 T@Ref) (f_78@@139 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@114 f_78@@139) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@114 f_78@@139) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@114 f_78@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@114 f_78@@139))
))) (forall ((o2_44@@115 T@Ref) (f_78@@140 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@115 f_78@@140) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@115 f_78@@140) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@115 f_78@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@115 f_78@@140))
))) (forall ((o2_44@@116 T@Ref) (f_78@@141 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@116 f_78@@141) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@79) o2_44@@116 f_78@@141) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@116 f_78@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@116 f_78@@141))
))) (forall ((o2_44@@117 T@Ref) (f_78@@142 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@117 f_78@@142) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@79) o2_44@@117 f_78@@142) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@117 f_78@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@117 f_78@@142))
))) (forall ((o2_44@@118 T@Ref) (f_78@@143 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@118 f_78@@143) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@79) o2_44@@118 f_78@@143) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@118 f_78@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@118 f_78@@143))
))) (forall ((o2_44@@119 T@Ref) (f_78@@144 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@119 f_78@@144) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@119 f_78@@144) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@119 f_78@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@119 f_78@@144))
))) (forall ((o2_44@@120 T@Ref) (f_78@@145 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@120 f_78@@145) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@120 f_78@@145) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@120 f_78@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@120 f_78@@145))
))) (forall ((o2_44@@121 T@Ref) (f_78@@146 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@121 f_78@@146) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@79) o2_44@@121 f_78@@146) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@121 f_78@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@121 f_78@@146))
))) (forall ((o2_44@@122 T@Ref) (f_78@@147 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@122 f_78@@147) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@79) o2_44@@122 f_78@@147) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@122 f_78@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@122 f_78@@147))
))) (forall ((o2_44@@123 T@Ref) (f_78@@148 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@123 f_78@@148) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@79) o2_44@@123 f_78@@148) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@123 f_78@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@123 f_78@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@79 ExhaleHeap@@40 Mask@@95) (IsPredicateField_14127_92945 pm_f_44@@13))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_25579) (ExhaleHeap@@41 T@PolymorphicMapType_25579) (Mask@@96 T@PolymorphicMapType_25600) (pm_f_44@@14 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@80 ExhaleHeap@@41 Mask@@96) (=> (and (HasDirectPerm_51826_14218 Mask@@96 null pm_f_44@@14) (IsWandField_51826_102648 pm_f_44@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@124 T@Ref) (f_78@@149 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@124 f_78@@149) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@80) o2_44@@124 f_78@@149) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@124 f_78@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@124 f_78@@149))
)) (forall ((o2_44@@125 T@Ref) (f_78@@150 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@125 f_78@@150) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@125 f_78@@150) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@125 f_78@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@125 f_78@@150))
))) (forall ((o2_44@@126 T@Ref) (f_78@@151 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@126 f_78@@151) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@80) o2_44@@126 f_78@@151) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@126 f_78@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@126 f_78@@151))
))) (forall ((o2_44@@127 T@Ref) (f_78@@152 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@127 f_78@@152) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@80) o2_44@@127 f_78@@152) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@127 f_78@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@127 f_78@@152))
))) (forall ((o2_44@@128 T@Ref) (f_78@@153 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@128 f_78@@153) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@80) o2_44@@128 f_78@@153) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@128 f_78@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@128 f_78@@153))
))) (forall ((o2_44@@129 T@Ref) (f_78@@154 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@129 f_78@@154) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@129 f_78@@154) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@129 f_78@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@129 f_78@@154))
))) (forall ((o2_44@@130 T@Ref) (f_78@@155 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@130 f_78@@155) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@130 f_78@@155) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@130 f_78@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@130 f_78@@155))
))) (forall ((o2_44@@131 T@Ref) (f_78@@156 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@131 f_78@@156) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@80) o2_44@@131 f_78@@156) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@131 f_78@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@131 f_78@@156))
))) (forall ((o2_44@@132 T@Ref) (f_78@@157 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@132 f_78@@157) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@80) o2_44@@132 f_78@@157) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@132 f_78@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@132 f_78@@157))
))) (forall ((o2_44@@133 T@Ref) (f_78@@158 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@133 f_78@@158) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@80) o2_44@@133 f_78@@158) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@133 f_78@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@133 f_78@@158))
))) (forall ((o2_44@@134 T@Ref) (f_78@@159 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@134 f_78@@159) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@134 f_78@@159) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@134 f_78@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@134 f_78@@159))
))) (forall ((o2_44@@135 T@Ref) (f_78@@160 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@135 f_78@@160) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@135 f_78@@160) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@135 f_78@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@135 f_78@@160))
))) (forall ((o2_44@@136 T@Ref) (f_78@@161 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@136 f_78@@161) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@80) o2_44@@136 f_78@@161) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@136 f_78@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@136 f_78@@161))
))) (forall ((o2_44@@137 T@Ref) (f_78@@162 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@137 f_78@@162) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@80) o2_44@@137 f_78@@162) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@137 f_78@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@137 f_78@@162))
))) (forall ((o2_44@@138 T@Ref) (f_78@@163 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@138 f_78@@163) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@80) o2_44@@138 f_78@@163) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@138 f_78@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@138 f_78@@163))
))) (forall ((o2_44@@139 T@Ref) (f_78@@164 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@139 f_78@@164) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@139 f_78@@164) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@139 f_78@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@139 f_78@@164))
))) (forall ((o2_44@@140 T@Ref) (f_78@@165 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@140 f_78@@165) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@140 f_78@@165) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@140 f_78@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@140 f_78@@165))
))) (forall ((o2_44@@141 T@Ref) (f_78@@166 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@141 f_78@@166) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@80) o2_44@@141 f_78@@166) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@141 f_78@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@141 f_78@@166))
))) (forall ((o2_44@@142 T@Ref) (f_78@@167 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@142 f_78@@167) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@80) o2_44@@142 f_78@@167) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@142 f_78@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@142 f_78@@167))
))) (forall ((o2_44@@143 T@Ref) (f_78@@168 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@143 f_78@@168) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) o2_44@@143 f_78@@168) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@143 f_78@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@143 f_78@@168))
))) (forall ((o2_44@@144 T@Ref) (f_78@@169 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@144 f_78@@169) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@144 f_78@@169) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@144 f_78@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@144 f_78@@169))
))) (forall ((o2_44@@145 T@Ref) (f_78@@170 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@145 f_78@@170) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@145 f_78@@170) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@145 f_78@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@145 f_78@@170))
))) (forall ((o2_44@@146 T@Ref) (f_78@@171 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@146 f_78@@171) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@80) o2_44@@146 f_78@@171) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@146 f_78@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@146 f_78@@171))
))) (forall ((o2_44@@147 T@Ref) (f_78@@172 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@147 f_78@@172) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@80) o2_44@@147 f_78@@172) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@147 f_78@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@147 f_78@@172))
))) (forall ((o2_44@@148 T@Ref) (f_78@@173 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@148 f_78@@173) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@80) o2_44@@148 f_78@@173) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@148 f_78@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@148 f_78@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@80 ExhaleHeap@@41 Mask@@96) (IsWandField_51826_102648 pm_f_44@@14))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_25579) (ExhaleHeap@@42 T@PolymorphicMapType_25579) (Mask@@97 T@PolymorphicMapType_25600) (pm_f_44@@15 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@81 ExhaleHeap@@42 Mask@@97) (=> (and (HasDirectPerm_14312_14313 Mask@@97 null pm_f_44@@15) (IsWandField_14312_102291 pm_f_44@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@149 T@Ref) (f_78@@174 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@149 f_78@@174) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@81) o2_44@@149 f_78@@174) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@149 f_78@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@149 f_78@@174))
)) (forall ((o2_44@@150 T@Ref) (f_78@@175 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@150 f_78@@175) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@150 f_78@@175) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@150 f_78@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@150 f_78@@175))
))) (forall ((o2_44@@151 T@Ref) (f_78@@176 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@151 f_78@@176) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@81) o2_44@@151 f_78@@176) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@151 f_78@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@151 f_78@@176))
))) (forall ((o2_44@@152 T@Ref) (f_78@@177 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@152 f_78@@177) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@81) o2_44@@152 f_78@@177) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@152 f_78@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@152 f_78@@177))
))) (forall ((o2_44@@153 T@Ref) (f_78@@178 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@153 f_78@@178) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@81) o2_44@@153 f_78@@178) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@153 f_78@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@153 f_78@@178))
))) (forall ((o2_44@@154 T@Ref) (f_78@@179 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@154 f_78@@179) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@154 f_78@@179) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@154 f_78@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@154 f_78@@179))
))) (forall ((o2_44@@155 T@Ref) (f_78@@180 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@155 f_78@@180) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@155 f_78@@180) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@155 f_78@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@155 f_78@@180))
))) (forall ((o2_44@@156 T@Ref) (f_78@@181 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@156 f_78@@181) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@81) o2_44@@156 f_78@@181) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@156 f_78@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@156 f_78@@181))
))) (forall ((o2_44@@157 T@Ref) (f_78@@182 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@157 f_78@@182) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@81) o2_44@@157 f_78@@182) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@157 f_78@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@157 f_78@@182))
))) (forall ((o2_44@@158 T@Ref) (f_78@@183 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@158 f_78@@183) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@81) o2_44@@158 f_78@@183) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@158 f_78@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@158 f_78@@183))
))) (forall ((o2_44@@159 T@Ref) (f_78@@184 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@159 f_78@@184) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@159 f_78@@184) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@159 f_78@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@159 f_78@@184))
))) (forall ((o2_44@@160 T@Ref) (f_78@@185 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@160 f_78@@185) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@160 f_78@@185) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@160 f_78@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@160 f_78@@185))
))) (forall ((o2_44@@161 T@Ref) (f_78@@186 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@161 f_78@@186) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@81) o2_44@@161 f_78@@186) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@161 f_78@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@161 f_78@@186))
))) (forall ((o2_44@@162 T@Ref) (f_78@@187 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@162 f_78@@187) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@81) o2_44@@162 f_78@@187) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@162 f_78@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@162 f_78@@187))
))) (forall ((o2_44@@163 T@Ref) (f_78@@188 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@163 f_78@@188) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@81) o2_44@@163 f_78@@188) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@163 f_78@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@163 f_78@@188))
))) (forall ((o2_44@@164 T@Ref) (f_78@@189 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@164 f_78@@189) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@164 f_78@@189) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@164 f_78@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@164 f_78@@189))
))) (forall ((o2_44@@165 T@Ref) (f_78@@190 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@165 f_78@@190) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@165 f_78@@190) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@165 f_78@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@165 f_78@@190))
))) (forall ((o2_44@@166 T@Ref) (f_78@@191 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@166 f_78@@191) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@81) o2_44@@166 f_78@@191) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@166 f_78@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@166 f_78@@191))
))) (forall ((o2_44@@167 T@Ref) (f_78@@192 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@167 f_78@@192) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@81) o2_44@@167 f_78@@192) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@167 f_78@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@167 f_78@@192))
))) (forall ((o2_44@@168 T@Ref) (f_78@@193 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@168 f_78@@193) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@81) o2_44@@168 f_78@@193) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@168 f_78@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@168 f_78@@193))
))) (forall ((o2_44@@169 T@Ref) (f_78@@194 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@169 f_78@@194) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@169 f_78@@194) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@169 f_78@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@169 f_78@@194))
))) (forall ((o2_44@@170 T@Ref) (f_78@@195 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@170 f_78@@195) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@170 f_78@@195) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@170 f_78@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@170 f_78@@195))
))) (forall ((o2_44@@171 T@Ref) (f_78@@196 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@171 f_78@@196) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@81) o2_44@@171 f_78@@196) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@171 f_78@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@171 f_78@@196))
))) (forall ((o2_44@@172 T@Ref) (f_78@@197 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@172 f_78@@197) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@81) o2_44@@172 f_78@@197) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@172 f_78@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@172 f_78@@197))
))) (forall ((o2_44@@173 T@Ref) (f_78@@198 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@173 f_78@@198) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) o2_44@@173 f_78@@198) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@173 f_78@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@173 f_78@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@81 ExhaleHeap@@42 Mask@@97) (IsWandField_14312_102291 pm_f_44@@15))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_25579) (ExhaleHeap@@43 T@PolymorphicMapType_25579) (Mask@@98 T@PolymorphicMapType_25600) (pm_f_44@@16 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@82 ExhaleHeap@@43 Mask@@98) (=> (and (HasDirectPerm_14257_14258 Mask@@98 null pm_f_44@@16) (IsWandField_14257_101934 pm_f_44@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@174 T@Ref) (f_78@@199 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@174 f_78@@199) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@82) o2_44@@174 f_78@@199) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@174 f_78@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@174 f_78@@199))
)) (forall ((o2_44@@175 T@Ref) (f_78@@200 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@175 f_78@@200) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@175 f_78@@200) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@175 f_78@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@175 f_78@@200))
))) (forall ((o2_44@@176 T@Ref) (f_78@@201 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@176 f_78@@201) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@82) o2_44@@176 f_78@@201) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@176 f_78@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@176 f_78@@201))
))) (forall ((o2_44@@177 T@Ref) (f_78@@202 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@177 f_78@@202) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@82) o2_44@@177 f_78@@202) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@177 f_78@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@177 f_78@@202))
))) (forall ((o2_44@@178 T@Ref) (f_78@@203 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@178 f_78@@203) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@82) o2_44@@178 f_78@@203) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@178 f_78@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@178 f_78@@203))
))) (forall ((o2_44@@179 T@Ref) (f_78@@204 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@179 f_78@@204) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@179 f_78@@204) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@179 f_78@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@179 f_78@@204))
))) (forall ((o2_44@@180 T@Ref) (f_78@@205 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@180 f_78@@205) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@180 f_78@@205) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@180 f_78@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@180 f_78@@205))
))) (forall ((o2_44@@181 T@Ref) (f_78@@206 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@181 f_78@@206) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@82) o2_44@@181 f_78@@206) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@181 f_78@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@181 f_78@@206))
))) (forall ((o2_44@@182 T@Ref) (f_78@@207 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@182 f_78@@207) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@82) o2_44@@182 f_78@@207) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@182 f_78@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@182 f_78@@207))
))) (forall ((o2_44@@183 T@Ref) (f_78@@208 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@183 f_78@@208) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@82) o2_44@@183 f_78@@208) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@183 f_78@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@183 f_78@@208))
))) (forall ((o2_44@@184 T@Ref) (f_78@@209 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@184 f_78@@209) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@184 f_78@@209) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@184 f_78@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@184 f_78@@209))
))) (forall ((o2_44@@185 T@Ref) (f_78@@210 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@185 f_78@@210) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@185 f_78@@210) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@185 f_78@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@185 f_78@@210))
))) (forall ((o2_44@@186 T@Ref) (f_78@@211 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@186 f_78@@211) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@82) o2_44@@186 f_78@@211) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@186 f_78@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@186 f_78@@211))
))) (forall ((o2_44@@187 T@Ref) (f_78@@212 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@187 f_78@@212) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@82) o2_44@@187 f_78@@212) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@187 f_78@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@187 f_78@@212))
))) (forall ((o2_44@@188 T@Ref) (f_78@@213 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@188 f_78@@213) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) o2_44@@188 f_78@@213) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@188 f_78@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@188 f_78@@213))
))) (forall ((o2_44@@189 T@Ref) (f_78@@214 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@189 f_78@@214) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@189 f_78@@214) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@189 f_78@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@189 f_78@@214))
))) (forall ((o2_44@@190 T@Ref) (f_78@@215 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@190 f_78@@215) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@190 f_78@@215) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@190 f_78@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@190 f_78@@215))
))) (forall ((o2_44@@191 T@Ref) (f_78@@216 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@191 f_78@@216) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@82) o2_44@@191 f_78@@216) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@191 f_78@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@191 f_78@@216))
))) (forall ((o2_44@@192 T@Ref) (f_78@@217 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@192 f_78@@217) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@82) o2_44@@192 f_78@@217) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@192 f_78@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@192 f_78@@217))
))) (forall ((o2_44@@193 T@Ref) (f_78@@218 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@193 f_78@@218) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@82) o2_44@@193 f_78@@218) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@193 f_78@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@193 f_78@@218))
))) (forall ((o2_44@@194 T@Ref) (f_78@@219 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@194 f_78@@219) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@194 f_78@@219) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@194 f_78@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@194 f_78@@219))
))) (forall ((o2_44@@195 T@Ref) (f_78@@220 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@195 f_78@@220) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@195 f_78@@220) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@195 f_78@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@195 f_78@@220))
))) (forall ((o2_44@@196 T@Ref) (f_78@@221 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@196 f_78@@221) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@82) o2_44@@196 f_78@@221) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@196 f_78@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@196 f_78@@221))
))) (forall ((o2_44@@197 T@Ref) (f_78@@222 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@197 f_78@@222) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@82) o2_44@@197 f_78@@222) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@197 f_78@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@197 f_78@@222))
))) (forall ((o2_44@@198 T@Ref) (f_78@@223 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@198 f_78@@223) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@82) o2_44@@198 f_78@@223) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@198 f_78@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@198 f_78@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@82 ExhaleHeap@@43 Mask@@98) (IsWandField_14257_101934 pm_f_44@@16))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_25579) (ExhaleHeap@@44 T@PolymorphicMapType_25579) (Mask@@99 T@PolymorphicMapType_25600) (pm_f_44@@17 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@83 ExhaleHeap@@44 Mask@@99) (=> (and (HasDirectPerm_14217_14218 Mask@@99 null pm_f_44@@17) (IsWandField_14217_101577 pm_f_44@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@199 T@Ref) (f_78@@224 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@199 f_78@@224) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@83) o2_44@@199 f_78@@224) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@199 f_78@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@199 f_78@@224))
)) (forall ((o2_44@@200 T@Ref) (f_78@@225 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@200 f_78@@225) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@200 f_78@@225) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@200 f_78@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@200 f_78@@225))
))) (forall ((o2_44@@201 T@Ref) (f_78@@226 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@201 f_78@@226) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@83) o2_44@@201 f_78@@226) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@201 f_78@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@201 f_78@@226))
))) (forall ((o2_44@@202 T@Ref) (f_78@@227 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@202 f_78@@227) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@83) o2_44@@202 f_78@@227) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@202 f_78@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@202 f_78@@227))
))) (forall ((o2_44@@203 T@Ref) (f_78@@228 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@203 f_78@@228) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@83) o2_44@@203 f_78@@228) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@203 f_78@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@203 f_78@@228))
))) (forall ((o2_44@@204 T@Ref) (f_78@@229 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@204 f_78@@229) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@204 f_78@@229) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@204 f_78@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@204 f_78@@229))
))) (forall ((o2_44@@205 T@Ref) (f_78@@230 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@205 f_78@@230) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@205 f_78@@230) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@205 f_78@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@205 f_78@@230))
))) (forall ((o2_44@@206 T@Ref) (f_78@@231 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@206 f_78@@231) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@83) o2_44@@206 f_78@@231) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@206 f_78@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@206 f_78@@231))
))) (forall ((o2_44@@207 T@Ref) (f_78@@232 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@207 f_78@@232) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@83) o2_44@@207 f_78@@232) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@207 f_78@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@207 f_78@@232))
))) (forall ((o2_44@@208 T@Ref) (f_78@@233 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@208 f_78@@233) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) o2_44@@208 f_78@@233) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@208 f_78@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@208 f_78@@233))
))) (forall ((o2_44@@209 T@Ref) (f_78@@234 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@209 f_78@@234) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@209 f_78@@234) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@209 f_78@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@209 f_78@@234))
))) (forall ((o2_44@@210 T@Ref) (f_78@@235 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@210 f_78@@235) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@210 f_78@@235) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@210 f_78@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@210 f_78@@235))
))) (forall ((o2_44@@211 T@Ref) (f_78@@236 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@211 f_78@@236) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@83) o2_44@@211 f_78@@236) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@211 f_78@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@211 f_78@@236))
))) (forall ((o2_44@@212 T@Ref) (f_78@@237 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@212 f_78@@237) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@83) o2_44@@212 f_78@@237) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@212 f_78@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@212 f_78@@237))
))) (forall ((o2_44@@213 T@Ref) (f_78@@238 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@213 f_78@@238) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@83) o2_44@@213 f_78@@238) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@213 f_78@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@213 f_78@@238))
))) (forall ((o2_44@@214 T@Ref) (f_78@@239 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@214 f_78@@239) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@214 f_78@@239) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@214 f_78@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@214 f_78@@239))
))) (forall ((o2_44@@215 T@Ref) (f_78@@240 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@215 f_78@@240) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@215 f_78@@240) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@215 f_78@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@215 f_78@@240))
))) (forall ((o2_44@@216 T@Ref) (f_78@@241 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@216 f_78@@241) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@83) o2_44@@216 f_78@@241) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@216 f_78@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@216 f_78@@241))
))) (forall ((o2_44@@217 T@Ref) (f_78@@242 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@217 f_78@@242) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@83) o2_44@@217 f_78@@242) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@217 f_78@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@217 f_78@@242))
))) (forall ((o2_44@@218 T@Ref) (f_78@@243 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@218 f_78@@243) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@83) o2_44@@218 f_78@@243) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@218 f_78@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@218 f_78@@243))
))) (forall ((o2_44@@219 T@Ref) (f_78@@244 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@219 f_78@@244) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@219 f_78@@244) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@219 f_78@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@219 f_78@@244))
))) (forall ((o2_44@@220 T@Ref) (f_78@@245 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@220 f_78@@245) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@220 f_78@@245) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@220 f_78@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@220 f_78@@245))
))) (forall ((o2_44@@221 T@Ref) (f_78@@246 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@221 f_78@@246) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@83) o2_44@@221 f_78@@246) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@221 f_78@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@221 f_78@@246))
))) (forall ((o2_44@@222 T@Ref) (f_78@@247 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@222 f_78@@247) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@83) o2_44@@222 f_78@@247) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@222 f_78@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@222 f_78@@247))
))) (forall ((o2_44@@223 T@Ref) (f_78@@248 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@223 f_78@@248) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@83) o2_44@@223 f_78@@248) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@223 f_78@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@223 f_78@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@83 ExhaleHeap@@44 Mask@@99) (IsWandField_14217_101577 pm_f_44@@17))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_25579) (ExhaleHeap@@45 T@PolymorphicMapType_25579) (Mask@@100 T@PolymorphicMapType_25600) (pm_f_44@@18 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@84 ExhaleHeap@@45 Mask@@100) (=> (and (HasDirectPerm_14127_14218 Mask@@100 null pm_f_44@@18) (IsWandField_14127_101220 pm_f_44@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@224 T@Ref) (f_78@@249 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@224 f_78@@249) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@84) o2_44@@224 f_78@@249) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@224 f_78@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@224 f_78@@249))
)) (forall ((o2_44@@225 T@Ref) (f_78@@250 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@225 f_78@@250) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@225 f_78@@250) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@225 f_78@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@225 f_78@@250))
))) (forall ((o2_44@@226 T@Ref) (f_78@@251 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@226 f_78@@251) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@84) o2_44@@226 f_78@@251) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@226 f_78@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@226 f_78@@251))
))) (forall ((o2_44@@227 T@Ref) (f_78@@252 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@227 f_78@@252) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@84) o2_44@@227 f_78@@252) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@227 f_78@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@227 f_78@@252))
))) (forall ((o2_44@@228 T@Ref) (f_78@@253 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@228 f_78@@253) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) o2_44@@228 f_78@@253) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@228 f_78@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@228 f_78@@253))
))) (forall ((o2_44@@229 T@Ref) (f_78@@254 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@229 f_78@@254) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@229 f_78@@254) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@229 f_78@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@229 f_78@@254))
))) (forall ((o2_44@@230 T@Ref) (f_78@@255 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@230 f_78@@255) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@230 f_78@@255) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@230 f_78@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@230 f_78@@255))
))) (forall ((o2_44@@231 T@Ref) (f_78@@256 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@231 f_78@@256) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@84) o2_44@@231 f_78@@256) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@231 f_78@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@231 f_78@@256))
))) (forall ((o2_44@@232 T@Ref) (f_78@@257 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@232 f_78@@257) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@84) o2_44@@232 f_78@@257) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@232 f_78@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@232 f_78@@257))
))) (forall ((o2_44@@233 T@Ref) (f_78@@258 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@233 f_78@@258) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@84) o2_44@@233 f_78@@258) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@233 f_78@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@233 f_78@@258))
))) (forall ((o2_44@@234 T@Ref) (f_78@@259 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@234 f_78@@259) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@234 f_78@@259) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@234 f_78@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@234 f_78@@259))
))) (forall ((o2_44@@235 T@Ref) (f_78@@260 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@235 f_78@@260) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@235 f_78@@260) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@235 f_78@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@235 f_78@@260))
))) (forall ((o2_44@@236 T@Ref) (f_78@@261 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@236 f_78@@261) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@84) o2_44@@236 f_78@@261) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@236 f_78@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@236 f_78@@261))
))) (forall ((o2_44@@237 T@Ref) (f_78@@262 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@237 f_78@@262) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@84) o2_44@@237 f_78@@262) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@237 f_78@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@237 f_78@@262))
))) (forall ((o2_44@@238 T@Ref) (f_78@@263 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@238 f_78@@263) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@84) o2_44@@238 f_78@@263) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@238 f_78@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@238 f_78@@263))
))) (forall ((o2_44@@239 T@Ref) (f_78@@264 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@239 f_78@@264) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@239 f_78@@264) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@239 f_78@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@239 f_78@@264))
))) (forall ((o2_44@@240 T@Ref) (f_78@@265 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@240 f_78@@265) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@240 f_78@@265) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@240 f_78@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@240 f_78@@265))
))) (forall ((o2_44@@241 T@Ref) (f_78@@266 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@241 f_78@@266) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@84) o2_44@@241 f_78@@266) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@241 f_78@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@241 f_78@@266))
))) (forall ((o2_44@@242 T@Ref) (f_78@@267 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@242 f_78@@267) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@84) o2_44@@242 f_78@@267) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@242 f_78@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@242 f_78@@267))
))) (forall ((o2_44@@243 T@Ref) (f_78@@268 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@243 f_78@@268) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@84) o2_44@@243 f_78@@268) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@243 f_78@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@243 f_78@@268))
))) (forall ((o2_44@@244 T@Ref) (f_78@@269 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@244 f_78@@269) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@244 f_78@@269) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@244 f_78@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@244 f_78@@269))
))) (forall ((o2_44@@245 T@Ref) (f_78@@270 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@245 f_78@@270) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@245 f_78@@270) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@245 f_78@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@245 f_78@@270))
))) (forall ((o2_44@@246 T@Ref) (f_78@@271 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@246 f_78@@271) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@84) o2_44@@246 f_78@@271) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@246 f_78@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@246 f_78@@271))
))) (forall ((o2_44@@247 T@Ref) (f_78@@272 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@247 f_78@@272) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@84) o2_44@@247 f_78@@272) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@247 f_78@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@247 f_78@@272))
))) (forall ((o2_44@@248 T@Ref) (f_78@@273 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@248 f_78@@273) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@84) o2_44@@248 f_78@@273) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@248 f_78@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@248 f_78@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@84 ExhaleHeap@@45 Mask@@100) (IsWandField_14127_101220 pm_f_44@@18))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.320:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Unfolding1Mask@0 () T@PolymorphicMapType_25600)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_25600)
(declare-fun this@@21 () T@Ref)
(declare-fun perm@2 () Real)
(declare-fun perm@3 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_25600)
(declare-fun Mask@0 () T@PolymorphicMapType_25600)
(declare-fun perm@0 () Real)
(declare-fun perm@1 () Real)
(declare-fun Heap@@85 () T@PolymorphicMapType_25579)
(set-info :boogie-vc-id test05)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon4_correct  (=> (= Unfolding1Mask@0 (PolymorphicMapType_25600 (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| UnfoldingMask@1) (store (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| UnfoldingMask@1) null (bla_1 this@@21) (- (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| UnfoldingMask@1) null (bla_1 this@@21)) perm@2)) (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| UnfoldingMask@1) (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| UnfoldingMask@1))) (=> (and (= perm@3 (/ (to_real 1) (to_real 5))) (= (ControlFlow 0 2) (- 0 1))) (>= perm@3 NoPerm)))))
(let ((anon6_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 5) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= perm@2 (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| UnfoldingMask@1) null (bla_1 this@@21)))) (=> (<= perm@2 (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| UnfoldingMask@1) null (bla_1 this@@21))) (=> (= (ControlFlow 0 3) 2) anon4_correct))))))
(let ((anon2_correct  (=> (and (= UnfoldingMask@0 (PolymorphicMapType_25600 (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@0) (store (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@0) null (blabla this@@21) (- (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@0) null (blabla this@@21)) perm@0)) (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@0) (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@0))) (= perm@1 (/ (to_real 1) (to_real 3)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (= UnfoldingMask@1 (PolymorphicMapType_25600 (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| UnfoldingMask@0) (store (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| UnfoldingMask@0) null (bla_1 this@@21) (+ (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| UnfoldingMask@0) null (bla_1 this@@21)) perm@1)) (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| UnfoldingMask@0) (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| UnfoldingMask@0))) (=> (and (InsidePredicate_14285_14257 (blabla this@@21) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@85) null (blabla this@@21)) (bla_1 this@@21) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@85) null (bla_1 this@@21))) (state Heap@@85 UnfoldingMask@1)) (=> (and (and (state Heap@@85 UnfoldingMask@1) (|bla#trigger_14257| Heap@@85 (bla_1 this@@21))) (and (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@85) null (bla_1 this@@21)) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@85) null (list this@@21))) (= perm@2 (/ (to_real 1) (to_real 5))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 6) 3) anon6_Then_correct) (=> (= (ControlFlow 0 6) 5) anon6_Else_correct))))))))))))
(let ((anon5_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 11) 6)) anon2_correct)))
(let ((anon5_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= perm@0 (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@0) null (blabla this@@21)))) (=> (<= perm@0 (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@0) null (blabla this@@21))) (=> (= (ControlFlow 0 9) 6) anon2_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@85 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@85) this@@21 $allocated)) (and (= Mask@0 (PolymorphicMapType_25600 (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ZeroMask) (store (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ZeroMask) null (blabla this@@21) (+ (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ZeroMask) null (blabla this@@21)) FullPerm)) (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ZeroMask) (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ZeroMask))) (state Heap@@85 Mask@0))) (and (and (state Heap@@85 Mask@0) (|blabla#trigger_14285| Heap@@85 (blabla this@@21))) (and (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@85) null (blabla this@@21)) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@85) null (bla_1 this@@21))) (= perm@0 (/ (to_real 1) (to_real 3)))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 12) 9) anon5_Then_correct) (=> (= (ControlFlow 0 12) 11) anon5_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-sort T@Field_25639_53 0)
(declare-sort T@Field_25652_25653 0)
(declare-sort T@Field_32195_32196 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_31894_3421 0)
(declare-sort T@Field_34814_34819 0)
(declare-sort T@Field_50596_50597 0)
(declare-sort T@Field_50609_50614 0)
(declare-sort T@Field_51826_51827 0)
(declare-sort T@Field_51839_51844 0)
(declare-sort T@Field_52762_52763 0)
(declare-sort T@Field_52776_52781 0)
(declare-sort T@Field_14127_14218 0)
(declare-sort T@Field_14127_34819 0)
(declare-sort T@Field_14217_14128 0)
(declare-sort T@Field_14217_3421 0)
(declare-sort T@Field_14217_53 0)
(declare-sort T@Field_14257_14128 0)
(declare-sort T@Field_14257_3421 0)
(declare-sort T@Field_14257_53 0)
(declare-sort T@Field_14312_14128 0)
(declare-sort T@Field_14312_3421 0)
(declare-sort T@Field_14312_53 0)
(declare-sort T@Field_51826_14128 0)
(declare-sort T@Field_51826_3421 0)
(declare-sort T@Field_51826_53 0)
(declare-datatypes ((T@PolymorphicMapType_25600 0)) (((PolymorphicMapType_25600 (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| (Array T@Ref T@Field_32195_32196 Real)) (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_31894_3421 Real)) (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_25652_25653 Real)) (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| (Array T@Ref T@Field_50596_50597 Real)) (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_51827 Real)) (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| (Array T@Ref T@Field_52762_52763 Real)) (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_14217_3421 Real)) (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_14217_14128 Real)) (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| (Array T@Ref T@Field_14217_53 Real)) (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| (Array T@Ref T@Field_34814_34819 Real)) (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| (Array T@Ref T@Field_14127_14218 Real)) (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| (Array T@Ref T@Field_25639_53 Real)) (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| (Array T@Ref T@Field_14127_34819 Real)) (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_14257_3421 Real)) (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_14257_14128 Real)) (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| (Array T@Ref T@Field_14257_53 Real)) (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| (Array T@Ref T@Field_50609_50614 Real)) (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_3421 Real)) (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_14128 Real)) (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| (Array T@Ref T@Field_51826_53 Real)) (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| (Array T@Ref T@Field_51839_51844 Real)) (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| (Array T@Ref T@Field_14312_3421 Real)) (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| (Array T@Ref T@Field_14312_14128 Real)) (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| (Array T@Ref T@Field_14312_53 Real)) (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| (Array T@Ref T@Field_52776_52781 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26128 0)) (((PolymorphicMapType_26128 (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_25652_25653 Bool)) (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_31894_3421 Bool)) (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (Array T@Ref T@Field_25639_53 Bool)) (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_14127_14218 Bool)) (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (Array T@Ref T@Field_14127_34819 Bool)) (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_14217_14128 Bool)) (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_14217_3421 Bool)) (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (Array T@Ref T@Field_14217_53 Bool)) (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_32195_32196 Bool)) (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (Array T@Ref T@Field_34814_34819 Bool)) (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_14257_14128 Bool)) (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_14257_3421 Bool)) (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (Array T@Ref T@Field_14257_53 Bool)) (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_50596_50597 Bool)) (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (Array T@Ref T@Field_50609_50614 Bool)) (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_14128 Bool)) (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_3421 Bool)) (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_53 Bool)) (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_51826_51827 Bool)) (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (Array T@Ref T@Field_51839_51844 Bool)) (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (Array T@Ref T@Field_14312_14128 Bool)) (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (Array T@Ref T@Field_14312_3421 Bool)) (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (Array T@Ref T@Field_14312_53 Bool)) (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (Array T@Ref T@Field_52762_52763 Bool)) (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (Array T@Ref T@Field_52776_52781 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_25579 0)) (((PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| (Array T@Ref T@Field_25639_53 Bool)) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| (Array T@Ref T@Field_25652_25653 T@Ref)) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| (Array T@Ref T@Field_32195_32196 T@FrameType)) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_31894_3421 Int)) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| (Array T@Ref T@Field_34814_34819 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| (Array T@Ref T@Field_50596_50597 T@FrameType)) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| (Array T@Ref T@Field_50609_50614 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_51827 T@FrameType)) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| (Array T@Ref T@Field_51839_51844 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| (Array T@Ref T@Field_52762_52763 T@FrameType)) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| (Array T@Ref T@Field_52776_52781 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| (Array T@Ref T@Field_14127_14218 T@FrameType)) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| (Array T@Ref T@Field_14127_34819 T@PolymorphicMapType_26128)) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_14217_14128 T@Ref)) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_14217_3421 Int)) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| (Array T@Ref T@Field_14217_53 Bool)) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_14257_14128 T@Ref)) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_14257_3421 Int)) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| (Array T@Ref T@Field_14257_53 Bool)) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_14312_14128 T@Ref)) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_14312_3421 Int)) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| (Array T@Ref T@Field_14312_53 Bool)) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_14128 T@Ref)) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_3421 Int)) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| (Array T@Ref T@Field_51826_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_25639_53)
(declare-fun next () T@Field_25652_25653)
(declare-fun data () T@Field_31894_3421)
(declare-fun succHeap (T@PolymorphicMapType_25579 T@PolymorphicMapType_25579) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_25579 T@PolymorphicMapType_25579) Bool)
(declare-fun state (T@PolymorphicMapType_25579 T@PolymorphicMapType_25600) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_25600) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_26128)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun list (T@Ref) T@Field_32195_32196)
(declare-fun IsPredicateField_14217_14218 (T@Field_32195_32196) Bool)
(declare-fun bla_1 (T@Ref) T@Field_50596_50597)
(declare-fun IsPredicateField_14257_14258 (T@Field_50596_50597) Bool)
(declare-fun blabla (T@Ref) T@Field_51826_51827)
(declare-fun IsPredicateField_14285_14286 (T@Field_51826_51827) Bool)
(declare-fun bla_qp ((Array T@Ref Bool)) T@Field_52762_52763)
(declare-fun IsPredicateField_14312_14313 (T@Field_52762_52763) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_25579 T@Ref) Bool)
(declare-fun dummyFunction_3619 (Bool) Bool)
(declare-fun |foo#triggerStateless| (T@Ref) Bool)
(declare-fun |foo_qp'| (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Bool)
(declare-fun |foo_qp#triggerStateless| ((Array T@Ref Bool)) Bool)
(declare-fun |list#trigger_14217| (T@PolymorphicMapType_25579 T@Field_32195_32196) Bool)
(declare-fun |list#everUsed_14217| (T@Field_32195_32196) Bool)
(declare-fun |bla#trigger_14257| (T@PolymorphicMapType_25579 T@Field_50596_50597) Bool)
(declare-fun |bla#everUsed_14257| (T@Field_50596_50597) Bool)
(declare-fun |blabla#trigger_14285| (T@PolymorphicMapType_25579 T@Field_51826_51827) Bool)
(declare-fun |blabla#everUsed_14285| (T@Field_51826_51827) Bool)
(declare-fun |bla_qp#trigger_14312| (T@PolymorphicMapType_25579 T@Field_52762_52763) Bool)
(declare-fun |bla_qp#everUsed_14312| (T@Field_52762_52763) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_25579 T@PolymorphicMapType_25579 T@PolymorphicMapType_25600) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_14285 (T@Field_51826_51827) T@Field_51839_51844)
(declare-fun HasDirectPerm_51826_14218 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_51827) Bool)
(declare-fun PredicateMaskField_14312 (T@Field_52762_52763) T@Field_52776_52781)
(declare-fun HasDirectPerm_14312_14313 (T@PolymorphicMapType_25600 T@Ref T@Field_52762_52763) Bool)
(declare-fun PredicateMaskField_14257 (T@Field_50596_50597) T@Field_50609_50614)
(declare-fun HasDirectPerm_14257_14258 (T@PolymorphicMapType_25600 T@Ref T@Field_50596_50597) Bool)
(declare-fun PredicateMaskField_14217 (T@Field_32195_32196) T@Field_34814_34819)
(declare-fun HasDirectPerm_14217_14218 (T@PolymorphicMapType_25600 T@Ref T@Field_32195_32196) Bool)
(declare-fun IsPredicateField_14127_92945 (T@Field_14127_14218) Bool)
(declare-fun PredicateMaskField_14127 (T@Field_14127_14218) T@Field_14127_34819)
(declare-fun HasDirectPerm_14127_14218 (T@PolymorphicMapType_25600 T@Ref T@Field_14127_14218) Bool)
(declare-fun IsWandField_51826_102648 (T@Field_51826_51827) Bool)
(declare-fun WandMaskField_51826 (T@Field_51826_51827) T@Field_51839_51844)
(declare-fun IsWandField_14312_102291 (T@Field_52762_52763) Bool)
(declare-fun WandMaskField_14312 (T@Field_52762_52763) T@Field_52776_52781)
(declare-fun IsWandField_14257_101934 (T@Field_50596_50597) Bool)
(declare-fun WandMaskField_14257 (T@Field_50596_50597) T@Field_50609_50614)
(declare-fun IsWandField_14217_101577 (T@Field_32195_32196) Bool)
(declare-fun WandMaskField_14217 (T@Field_32195_32196) T@Field_34814_34819)
(declare-fun IsWandField_14127_101220 (T@Field_14127_14218) Bool)
(declare-fun WandMaskField_14127 (T@Field_14127_14218) T@Field_14127_34819)
(declare-fun foo_qp (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun foo_1 (T@PolymorphicMapType_25579 T@Ref) Bool)
(declare-fun |list#sm| (T@Ref) T@Field_34814_34819)
(declare-fun |bla#sm| (T@Ref) T@Field_50609_50614)
(declare-fun |blabla#sm| (T@Ref) T@Field_51839_51844)
(declare-fun |bla_qp#sm| ((Array T@Ref Bool)) T@Field_52776_52781)
(declare-fun dummyHeap () T@PolymorphicMapType_25579)
(declare-fun ZeroMask () T@PolymorphicMapType_25600)
(declare-fun InsidePredicate_52762_52762 (T@Field_52762_52763 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_25639 (T@Field_14127_14218 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_51826 (T@Field_51826_51827 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_14257 (T@Field_50596_50597 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_14217 (T@Field_32195_32196 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun IsPredicateField_14127_14128 (T@Field_25652_25653) Bool)
(declare-fun IsWandField_14127_14128 (T@Field_25652_25653) Bool)
(declare-fun IsPredicateField_14130_3421 (T@Field_31894_3421) Bool)
(declare-fun IsWandField_14130_3421 (T@Field_31894_3421) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14312_119709 (T@Field_52776_52781) Bool)
(declare-fun IsWandField_14312_119725 (T@Field_52776_52781) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14312_53 (T@Field_14312_53) Bool)
(declare-fun IsWandField_14312_53 (T@Field_14312_53) Bool)
(declare-fun IsPredicateField_14312_14128 (T@Field_14312_14128) Bool)
(declare-fun IsWandField_14312_14128 (T@Field_14312_14128) Bool)
(declare-fun IsPredicateField_14312_3421 (T@Field_14312_3421) Bool)
(declare-fun IsWandField_14312_3421 (T@Field_14312_3421) Bool)
(declare-fun IsPredicateField_14285_118878 (T@Field_51839_51844) Bool)
(declare-fun IsWandField_14285_118894 (T@Field_51839_51844) Bool)
(declare-fun IsPredicateField_14285_53 (T@Field_51826_53) Bool)
(declare-fun IsWandField_14285_53 (T@Field_51826_53) Bool)
(declare-fun IsPredicateField_14285_14128 (T@Field_51826_14128) Bool)
(declare-fun IsWandField_14285_14128 (T@Field_51826_14128) Bool)
(declare-fun IsPredicateField_14285_3421 (T@Field_51826_3421) Bool)
(declare-fun IsWandField_14285_3421 (T@Field_51826_3421) Bool)
(declare-fun IsPredicateField_14257_118047 (T@Field_50609_50614) Bool)
(declare-fun IsWandField_14257_118063 (T@Field_50609_50614) Bool)
(declare-fun IsPredicateField_14257_53 (T@Field_14257_53) Bool)
(declare-fun IsWandField_14257_53 (T@Field_14257_53) Bool)
(declare-fun IsPredicateField_14257_14128 (T@Field_14257_14128) Bool)
(declare-fun IsWandField_14257_14128 (T@Field_14257_14128) Bool)
(declare-fun IsPredicateField_14257_3421 (T@Field_14257_3421) Bool)
(declare-fun IsWandField_14257_3421 (T@Field_14257_3421) Bool)
(declare-fun IsPredicateField_14130_117216 (T@Field_14127_34819) Bool)
(declare-fun IsWandField_14130_117232 (T@Field_14127_34819) Bool)
(declare-fun IsPredicateField_14130_53 (T@Field_25639_53) Bool)
(declare-fun IsWandField_14130_53 (T@Field_25639_53) Bool)
(declare-fun IsPredicateField_14217_116413 (T@Field_34814_34819) Bool)
(declare-fun IsWandField_14217_116429 (T@Field_34814_34819) Bool)
(declare-fun IsPredicateField_14217_53 (T@Field_14217_53) Bool)
(declare-fun IsWandField_14217_53 (T@Field_14217_53) Bool)
(declare-fun IsPredicateField_14217_14128 (T@Field_14217_14128) Bool)
(declare-fun IsWandField_14217_14128 (T@Field_14217_14128) Bool)
(declare-fun IsPredicateField_14217_3421 (T@Field_14217_3421) Bool)
(declare-fun IsWandField_14217_3421 (T@Field_14217_3421) Bool)
(declare-fun HasDirectPerm_51826_92700 (T@PolymorphicMapType_25600 T@Ref T@Field_51839_51844) Bool)
(declare-fun HasDirectPerm_51826_53 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_53) Bool)
(declare-fun HasDirectPerm_51826_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_3421) Bool)
(declare-fun HasDirectPerm_51826_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_51826_14128) Bool)
(declare-fun HasDirectPerm_14312_91582 (T@PolymorphicMapType_25600 T@Ref T@Field_52776_52781) Bool)
(declare-fun HasDirectPerm_14312_53 (T@PolymorphicMapType_25600 T@Ref T@Field_14312_53) Bool)
(declare-fun HasDirectPerm_14312_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_14312_3421) Bool)
(declare-fun HasDirectPerm_14312_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_14312_14128) Bool)
(declare-fun HasDirectPerm_14257_90484 (T@PolymorphicMapType_25600 T@Ref T@Field_50609_50614) Bool)
(declare-fun HasDirectPerm_14257_53 (T@PolymorphicMapType_25600 T@Ref T@Field_14257_53) Bool)
(declare-fun HasDirectPerm_14257_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_14257_3421) Bool)
(declare-fun HasDirectPerm_14257_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_14257_14128) Bool)
(declare-fun HasDirectPerm_14217_89386 (T@PolymorphicMapType_25600 T@Ref T@Field_34814_34819) Bool)
(declare-fun HasDirectPerm_14217_53 (T@PolymorphicMapType_25600 T@Ref T@Field_14217_53) Bool)
(declare-fun HasDirectPerm_14217_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_14217_3421) Bool)
(declare-fun HasDirectPerm_14217_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_14217_14128) Bool)
(declare-fun HasDirectPerm_14127_88245 (T@PolymorphicMapType_25600 T@Ref T@Field_14127_34819) Bool)
(declare-fun HasDirectPerm_14127_53 (T@PolymorphicMapType_25600 T@Ref T@Field_25639_53) Bool)
(declare-fun HasDirectPerm_14130_3421 (T@PolymorphicMapType_25600 T@Ref T@Field_31894_3421) Bool)
(declare-fun HasDirectPerm_14127_14128 (T@PolymorphicMapType_25600 T@Ref T@Field_25652_25653) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_25600 T@PolymorphicMapType_25600 T@PolymorphicMapType_25600) Bool)
(declare-fun |foo#frame| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_14217_14218 (T@Field_32195_32196) Int)
(declare-fun getPredWandId_14257_14258 (T@Field_50596_50597) Int)
(declare-fun getPredWandId_14285_14286 (T@Field_51826_51827) Int)
(declare-fun getPredWandId_14312_14313 (T@Field_52762_52763) Int)
(declare-fun |foo_qp#frame| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun FrameFragment_3869 (Int) T@FrameType)
(declare-fun |foo_qp#condqp1| (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Int)
(declare-fun |sk_foo_qp#condqp1| (Int Int) T@Ref)
(declare-fun |bla_qp#condqp2| (T@PolymorphicMapType_25579 (Array T@Ref Bool)) Int)
(declare-fun |sk_bla_qp#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_52762_51826 (T@Field_52762_52763 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_52762_25639 (T@Field_52762_52763 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_52762_14257 (T@Field_52762_52763 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_52762_14217 (T@Field_52762_52763 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_52762 (T@Field_14127_14218 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_51826 (T@Field_14127_14218 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_14257 (T@Field_14127_14218 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_25639_14217 (T@Field_14127_14218 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_52762 (T@Field_51826_51827 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_25639 (T@Field_51826_51827 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_14257 (T@Field_51826_51827 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(declare-fun InsidePredicate_14285_14217 (T@Field_51826_51827 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_52762 (T@Field_50596_50597 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_51826 (T@Field_50596_50597 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_25639 (T@Field_50596_50597 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14257_14217 (T@Field_50596_50597 T@FrameType T@Field_32195_32196 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_52762 (T@Field_32195_32196 T@FrameType T@Field_52762_52763 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_51826 (T@Field_32195_32196 T@FrameType T@Field_51826_51827 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_25639 (T@Field_32195_32196 T@FrameType T@Field_14127_14218 T@FrameType) Bool)
(declare-fun InsidePredicate_14217_14257 (T@Field_32195_32196 T@FrameType T@Field_50596_50597 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_25579) (Heap1 T@PolymorphicMapType_25579) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_25579) (Mask T@PolymorphicMapType_25600) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_25579) (Heap1@@0 T@PolymorphicMapType_25579) (Heap2 T@PolymorphicMapType_25579) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_52776_52781) ) (!  (not (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_52762_52763) ) (!  (not (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14312_53) ) (!  (not (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14312_3421) ) (!  (not (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14312_14128) ) (!  (not (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_51839_51844) ) (!  (not (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_51826_51827) ) (!  (not (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_51826_53) ) (!  (not (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_51826_3421) ) (!  (not (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_51826_14128) ) (!  (not (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_50609_50614) ) (!  (not (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_50596_50597) ) (!  (not (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14257_53) ) (!  (not (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_14257_3421) ) (!  (not (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_14257_14128) ) (!  (not (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_34814_34819) ) (!  (not (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_32195_32196) ) (!  (not (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_14217_53) ) (!  (not (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14217_3421) ) (!  (not (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14217_14128) ) (!  (not (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_14127_34819) ) (!  (not (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_14127_14218) ) (!  (not (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_25639_53) ) (!  (not (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_31894_3421) ) (!  (not (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_25652_25653) ) (!  (not (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.316:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_14217_14218 (list this))
 :qid |stdinbpl.593:15|
 :skolemid |98|
 :pattern ( (list this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_14257_14258 (bla_1 this@@0))
 :qid |stdinbpl.821:15|
 :skolemid |108|
 :pattern ( (bla_1 this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_14285_14286 (blabla this@@1))
 :qid |stdinbpl.896:15|
 :skolemid |114|
 :pattern ( (blabla this@@1))
)))
(assert (forall ((xs (Array T@Ref Bool)) ) (! (IsPredicateField_14312_14313 (bla_qp xs))
 :qid |stdinbpl.950:15|
 :skolemid |120|
 :pattern ( (bla_qp xs))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_25579) (this@@2 T@Ref) ) (! (dummyFunction_3619 (|foo#triggerStateless| this@@2))
 :qid |stdinbpl.432:15|
 :skolemid |83|
 :pattern ( (|foo'| Heap@@0 this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_25579) (xs@@0 (Array T@Ref Bool)) ) (! (dummyFunction_3619 (|foo_qp#triggerStateless| xs@@0))
 :qid |stdinbpl.490:15|
 :skolemid |87|
 :pattern ( (|foo_qp'| Heap@@1 xs@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_25579) (this@@3 T@Ref) ) (! (|list#everUsed_14217| (list this@@3))
 :qid |stdinbpl.612:15|
 :skolemid |102|
 :pattern ( (|list#trigger_14217| Heap@@2 (list this@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_25579) (this@@4 T@Ref) ) (! (|bla#everUsed_14257| (bla_1 this@@4))
 :qid |stdinbpl.840:15|
 :skolemid |112|
 :pattern ( (|bla#trigger_14257| Heap@@3 (bla_1 this@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_25579) (this@@5 T@Ref) ) (! (|blabla#everUsed_14285| (blabla this@@5))
 :qid |stdinbpl.915:15|
 :skolemid |118|
 :pattern ( (|blabla#trigger_14285| Heap@@4 (blabla this@@5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_25579) (xs@@1 (Array T@Ref Bool)) ) (! (|bla_qp#everUsed_14312| (bla_qp xs@@1))
 :qid |stdinbpl.969:15|
 :skolemid |124|
 :pattern ( (|bla_qp#trigger_14312| Heap@@5 (bla_qp xs@@1)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.319:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_25579) (ExhaleHeap T@PolymorphicMapType_25579) (Mask@@0 T@PolymorphicMapType_25600) (pm_f_44 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_51826_14218 Mask@@0 null pm_f_44) (IsPredicateField_14285_14286 pm_f_44)) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@6) null (PredicateMaskField_14285 pm_f_44)) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap) null (PredicateMaskField_14285 pm_f_44)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_14285_14286 pm_f_44) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap) null (PredicateMaskField_14285 pm_f_44)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_25579) (ExhaleHeap@@0 T@PolymorphicMapType_25579) (Mask@@1 T@PolymorphicMapType_25600) (pm_f_44@@0 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_14312_14313 Mask@@1 null pm_f_44@@0) (IsPredicateField_14312_14313 pm_f_44@@0)) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@7) null (PredicateMaskField_14312 pm_f_44@@0)) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@0) null (PredicateMaskField_14312 pm_f_44@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_14312_14313 pm_f_44@@0) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@0) null (PredicateMaskField_14312 pm_f_44@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_25579) (ExhaleHeap@@1 T@PolymorphicMapType_25579) (Mask@@2 T@PolymorphicMapType_25600) (pm_f_44@@1 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14257_14258 Mask@@2 null pm_f_44@@1) (IsPredicateField_14257_14258 pm_f_44@@1)) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@8) null (PredicateMaskField_14257 pm_f_44@@1)) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@1) null (PredicateMaskField_14257 pm_f_44@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_14257_14258 pm_f_44@@1) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@1) null (PredicateMaskField_14257 pm_f_44@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_25579) (ExhaleHeap@@2 T@PolymorphicMapType_25579) (Mask@@3 T@PolymorphicMapType_25600) (pm_f_44@@2 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_14217_14218 Mask@@3 null pm_f_44@@2) (IsPredicateField_14217_14218 pm_f_44@@2)) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@9) null (PredicateMaskField_14217 pm_f_44@@2)) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@2) null (PredicateMaskField_14217 pm_f_44@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsPredicateField_14217_14218 pm_f_44@@2) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@2) null (PredicateMaskField_14217 pm_f_44@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_25579) (ExhaleHeap@@3 T@PolymorphicMapType_25579) (Mask@@4 T@PolymorphicMapType_25600) (pm_f_44@@3 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14127_14218 Mask@@4 null pm_f_44@@3) (IsPredicateField_14127_92945 pm_f_44@@3)) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@10) null (PredicateMaskField_14127 pm_f_44@@3)) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@3) null (PredicateMaskField_14127 pm_f_44@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsPredicateField_14127_92945 pm_f_44@@3) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@3) null (PredicateMaskField_14127 pm_f_44@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_25579) (ExhaleHeap@@4 T@PolymorphicMapType_25579) (Mask@@5 T@PolymorphicMapType_25600) (pm_f_44@@4 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_51826_14218 Mask@@5 null pm_f_44@@4) (IsWandField_51826_102648 pm_f_44@@4)) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@11) null (WandMaskField_51826 pm_f_44@@4)) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@4) null (WandMaskField_51826 pm_f_44@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_51826_102648 pm_f_44@@4) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@4) null (WandMaskField_51826 pm_f_44@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_25579) (ExhaleHeap@@5 T@PolymorphicMapType_25579) (Mask@@6 T@PolymorphicMapType_25600) (pm_f_44@@5 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_14312_14313 Mask@@6 null pm_f_44@@5) (IsWandField_14312_102291 pm_f_44@@5)) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@12) null (WandMaskField_14312 pm_f_44@@5)) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@5) null (WandMaskField_14312 pm_f_44@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (IsWandField_14312_102291 pm_f_44@@5) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@5) null (WandMaskField_14312 pm_f_44@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_25579) (ExhaleHeap@@6 T@PolymorphicMapType_25579) (Mask@@7 T@PolymorphicMapType_25600) (pm_f_44@@6 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_14257_14258 Mask@@7 null pm_f_44@@6) (IsWandField_14257_101934 pm_f_44@@6)) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@13) null (WandMaskField_14257 pm_f_44@@6)) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@6) null (WandMaskField_14257 pm_f_44@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (IsWandField_14257_101934 pm_f_44@@6) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@6) null (WandMaskField_14257 pm_f_44@@6)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_25579) (ExhaleHeap@@7 T@PolymorphicMapType_25579) (Mask@@8 T@PolymorphicMapType_25600) (pm_f_44@@7 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_14217_14218 Mask@@8 null pm_f_44@@7) (IsWandField_14217_101577 pm_f_44@@7)) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@14) null (WandMaskField_14217 pm_f_44@@7)) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@7) null (WandMaskField_14217 pm_f_44@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (IsWandField_14217_101577 pm_f_44@@7) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@7) null (WandMaskField_14217 pm_f_44@@7)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_25579) (ExhaleHeap@@8 T@PolymorphicMapType_25579) (Mask@@9 T@PolymorphicMapType_25600) (pm_f_44@@8 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_14127_14218 Mask@@9 null pm_f_44@@8) (IsWandField_14127_101220 pm_f_44@@8)) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@15) null (WandMaskField_14127 pm_f_44@@8)) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@8) null (WandMaskField_14127 pm_f_44@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (IsWandField_14127_101220 pm_f_44@@8) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@8) null (WandMaskField_14127 pm_f_44@@8)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_25579) (Mask@@10 T@PolymorphicMapType_25600) (xs@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@16 Mask@@10) (< AssumeFunctionsAbove 0)) (foo_qp Heap@@16 xs@@2))
 :qid |stdinbpl.496:15|
 :skolemid |88|
 :pattern ( (state Heap@@16 Mask@@10) (foo_qp Heap@@16 xs@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_25579) (Mask@@11 T@PolymorphicMapType_25600) (this@@6 T@Ref) ) (!  (=> (and (state Heap@@17 Mask@@11) (< AssumeFunctionsAbove 1)) (foo_1 Heap@@17 this@@6))
 :qid |stdinbpl.438:15|
 :skolemid |84|
 :pattern ( (state Heap@@17 Mask@@11) (foo_1 Heap@@17 this@@6))
 :pattern ( (state Heap@@17 Mask@@11) (|foo#triggerStateless| this@@6) (|list#trigger_14217| Heap@@17 (list this@@6)))
)))
(assert (forall ((this@@7 T@Ref) (this2 T@Ref) ) (!  (=> (= (list this@@7) (list this2)) (= this@@7 this2))
 :qid |stdinbpl.603:15|
 :skolemid |100|
 :pattern ( (list this@@7) (list this2))
)))
(assert (forall ((this@@8 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|list#sm| this@@8) (|list#sm| this2@@0)) (= this@@8 this2@@0))
 :qid |stdinbpl.607:15|
 :skolemid |101|
 :pattern ( (|list#sm| this@@8) (|list#sm| this2@@0))
)))
(assert (forall ((this@@9 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (bla_1 this@@9) (bla_1 this2@@1)) (= this@@9 this2@@1))
 :qid |stdinbpl.831:15|
 :skolemid |110|
 :pattern ( (bla_1 this@@9) (bla_1 this2@@1))
)))
(assert (forall ((this@@10 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|bla#sm| this@@10) (|bla#sm| this2@@2)) (= this@@10 this2@@2))
 :qid |stdinbpl.835:15|
 :skolemid |111|
 :pattern ( (|bla#sm| this@@10) (|bla#sm| this2@@2))
)))
(assert (forall ((this@@11 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (blabla this@@11) (blabla this2@@3)) (= this@@11 this2@@3))
 :qid |stdinbpl.906:15|
 :skolemid |116|
 :pattern ( (blabla this@@11) (blabla this2@@3))
)))
(assert (forall ((this@@12 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|blabla#sm| this@@12) (|blabla#sm| this2@@4)) (= this@@12 this2@@4))
 :qid |stdinbpl.910:15|
 :skolemid |117|
 :pattern ( (|blabla#sm| this@@12) (|blabla#sm| this2@@4))
)))
(assert (forall ((xs@@3 (Array T@Ref Bool)) (xs2 (Array T@Ref Bool)) ) (!  (=> (= (bla_qp xs@@3) (bla_qp xs2)) (= xs@@3 xs2))
 :qid |stdinbpl.960:15|
 :skolemid |122|
 :pattern ( (bla_qp xs@@3) (bla_qp xs2))
)))
(assert (forall ((xs@@4 (Array T@Ref Bool)) (xs2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|bla_qp#sm| xs@@4) (|bla_qp#sm| xs2@@0)) (= xs@@4 xs2@@0))
 :qid |stdinbpl.964:15|
 :skolemid |123|
 :pattern ( (|bla_qp#sm| xs@@4) (|bla_qp#sm| xs2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_25579) (ExhaleHeap@@9 T@PolymorphicMapType_25579) (Mask@@12 T@PolymorphicMapType_25600) (o_119 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@12) (=> (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@18) o_119 $allocated) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@9) o_119 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@12) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@9) o_119 $allocated))
)))
(assert (forall ((p T@Field_52762_52763) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_52762_52762 p v_1 p w))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_52762_52762 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14127_14218) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_25639_25639 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25639_25639 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_51826_51827) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_14285_51826 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14285_51826 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_50596_50597) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_14257_14257 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14257_14257 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_32195_32196) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_14217_14217 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.214:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14217_14217 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert  (not (IsPredicateField_14127_14128 next)))
(assert  (not (IsWandField_14127_14128 next)))
(assert  (not (IsPredicateField_14130_3421 data)))
(assert  (not (IsWandField_14130_3421 data)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_25579) (ExhaleHeap@@10 T@PolymorphicMapType_25579) (Mask@@13 T@PolymorphicMapType_25600) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@13) (succHeap Heap@@19 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_25600) (o_2@@24 T@Ref) (f_4@@24 T@Field_52776_52781) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@14) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_14312_119709 f_4@@24))) (not (IsWandField_14312_119725 f_4@@24))) (<= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@14) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@14) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_25600) (o_2@@25 T@Ref) (f_4@@25 T@Field_14312_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@15) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14312_53 f_4@@25))) (not (IsWandField_14312_53 f_4@@25))) (<= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@15) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@15) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_25600) (o_2@@26 T@Ref) (f_4@@26 T@Field_14312_14128) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@16) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14312_14128 f_4@@26))) (not (IsWandField_14312_14128 f_4@@26))) (<= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@16) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@16) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_25600) (o_2@@27 T@Ref) (f_4@@27 T@Field_14312_3421) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@17) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14312_3421 f_4@@27))) (not (IsWandField_14312_3421 f_4@@27))) (<= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@17) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@17) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_25600) (o_2@@28 T@Ref) (f_4@@28 T@Field_52762_52763) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@18) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_14312_14313 f_4@@28))) (not (IsWandField_14312_102291 f_4@@28))) (<= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@18) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@18) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_25600) (o_2@@29 T@Ref) (f_4@@29 T@Field_51839_51844) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@19) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_14285_118878 f_4@@29))) (not (IsWandField_14285_118894 f_4@@29))) (<= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@19) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@19) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_25600) (o_2@@30 T@Ref) (f_4@@30 T@Field_51826_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@20) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_14285_53 f_4@@30))) (not (IsWandField_14285_53 f_4@@30))) (<= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@20) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@20) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_25600) (o_2@@31 T@Ref) (f_4@@31 T@Field_51826_14128) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@21) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_14285_14128 f_4@@31))) (not (IsWandField_14285_14128 f_4@@31))) (<= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@21) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@21) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_25600) (o_2@@32 T@Ref) (f_4@@32 T@Field_51826_3421) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@22) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_14285_3421 f_4@@32))) (not (IsWandField_14285_3421 f_4@@32))) (<= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@22) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@22) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_25600) (o_2@@33 T@Ref) (f_4@@33 T@Field_51826_51827) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@23) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_14285_14286 f_4@@33))) (not (IsWandField_51826_102648 f_4@@33))) (<= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@23) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@23) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_25600) (o_2@@34 T@Ref) (f_4@@34 T@Field_50609_50614) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@24) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_14257_118047 f_4@@34))) (not (IsWandField_14257_118063 f_4@@34))) (<= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@24) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@24) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_25600) (o_2@@35 T@Ref) (f_4@@35 T@Field_14257_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@25) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_14257_53 f_4@@35))) (not (IsWandField_14257_53 f_4@@35))) (<= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@25) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@25) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_25600) (o_2@@36 T@Ref) (f_4@@36 T@Field_14257_14128) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@26) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_14257_14128 f_4@@36))) (not (IsWandField_14257_14128 f_4@@36))) (<= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@26) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@26) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_25600) (o_2@@37 T@Ref) (f_4@@37 T@Field_14257_3421) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@27) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_14257_3421 f_4@@37))) (not (IsWandField_14257_3421 f_4@@37))) (<= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@27) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@27) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_25600) (o_2@@38 T@Ref) (f_4@@38 T@Field_50596_50597) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@28) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_14257_14258 f_4@@38))) (not (IsWandField_14257_101934 f_4@@38))) (<= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@28) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@28) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_25600) (o_2@@39 T@Ref) (f_4@@39 T@Field_14127_34819) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@29) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_14130_117216 f_4@@39))) (not (IsWandField_14130_117232 f_4@@39))) (<= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@29) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@29) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_25600) (o_2@@40 T@Ref) (f_4@@40 T@Field_25639_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@30) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_14130_53 f_4@@40))) (not (IsWandField_14130_53 f_4@@40))) (<= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@30) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@30) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_25600) (o_2@@41 T@Ref) (f_4@@41 T@Field_25652_25653) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@31) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_14127_14128 f_4@@41))) (not (IsWandField_14127_14128 f_4@@41))) (<= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@31) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@31) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_25600) (o_2@@42 T@Ref) (f_4@@42 T@Field_31894_3421) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@32) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_14130_3421 f_4@@42))) (not (IsWandField_14130_3421 f_4@@42))) (<= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@32) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@32) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_25600) (o_2@@43 T@Ref) (f_4@@43 T@Field_14127_14218) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@33) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_14127_92945 f_4@@43))) (not (IsWandField_14127_101220 f_4@@43))) (<= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@33) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@33) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_25600) (o_2@@44 T@Ref) (f_4@@44 T@Field_34814_34819) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@34) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_14217_116413 f_4@@44))) (not (IsWandField_14217_116429 f_4@@44))) (<= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@34) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@34) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_25600) (o_2@@45 T@Ref) (f_4@@45 T@Field_14217_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@35) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_14217_53 f_4@@45))) (not (IsWandField_14217_53 f_4@@45))) (<= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@35) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@35) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_25600) (o_2@@46 T@Ref) (f_4@@46 T@Field_14217_14128) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@36) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_14217_14128 f_4@@46))) (not (IsWandField_14217_14128 f_4@@46))) (<= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@36) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@36) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_25600) (o_2@@47 T@Ref) (f_4@@47 T@Field_14217_3421) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@37) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_14217_3421 f_4@@47))) (not (IsWandField_14217_3421 f_4@@47))) (<= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@37) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@37) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_25600) (o_2@@48 T@Ref) (f_4@@48 T@Field_32195_32196) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@38) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_14217_14218 f_4@@48))) (not (IsWandField_14217_101577 f_4@@48))) (<= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@38) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@38) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_25600) (o_2@@49 T@Ref) (f_4@@49 T@Field_51839_51844) ) (! (= (HasDirectPerm_51826_92700 Mask@@39 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| Mask@@39) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_92700 Mask@@39 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_25600) (o_2@@50 T@Ref) (f_4@@50 T@Field_51826_53) ) (! (= (HasDirectPerm_51826_53 Mask@@40 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| Mask@@40) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_53 Mask@@40 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_25600) (o_2@@51 T@Ref) (f_4@@51 T@Field_51826_51827) ) (! (= (HasDirectPerm_51826_14218 Mask@@41 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| Mask@@41) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_14218 Mask@@41 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_25600) (o_2@@52 T@Ref) (f_4@@52 T@Field_51826_3421) ) (! (= (HasDirectPerm_51826_3421 Mask@@42 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| Mask@@42) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_3421 Mask@@42 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_25600) (o_2@@53 T@Ref) (f_4@@53 T@Field_51826_14128) ) (! (= (HasDirectPerm_51826_14128 Mask@@43 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| Mask@@43) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51826_14128 Mask@@43 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_25600) (o_2@@54 T@Ref) (f_4@@54 T@Field_52776_52781) ) (! (= (HasDirectPerm_14312_91582 Mask@@44 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| Mask@@44) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_91582 Mask@@44 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_25600) (o_2@@55 T@Ref) (f_4@@55 T@Field_14312_53) ) (! (= (HasDirectPerm_14312_53 Mask@@45 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| Mask@@45) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_53 Mask@@45 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_25600) (o_2@@56 T@Ref) (f_4@@56 T@Field_52762_52763) ) (! (= (HasDirectPerm_14312_14313 Mask@@46 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| Mask@@46) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_14313 Mask@@46 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_25600) (o_2@@57 T@Ref) (f_4@@57 T@Field_14312_3421) ) (! (= (HasDirectPerm_14312_3421 Mask@@47 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| Mask@@47) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_3421 Mask@@47 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_25600) (o_2@@58 T@Ref) (f_4@@58 T@Field_14312_14128) ) (! (= (HasDirectPerm_14312_14128 Mask@@48 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| Mask@@48) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14312_14128 Mask@@48 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_25600) (o_2@@59 T@Ref) (f_4@@59 T@Field_50609_50614) ) (! (= (HasDirectPerm_14257_90484 Mask@@49 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| Mask@@49) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_90484 Mask@@49 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_25600) (o_2@@60 T@Ref) (f_4@@60 T@Field_14257_53) ) (! (= (HasDirectPerm_14257_53 Mask@@50 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| Mask@@50) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_53 Mask@@50 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_25600) (o_2@@61 T@Ref) (f_4@@61 T@Field_50596_50597) ) (! (= (HasDirectPerm_14257_14258 Mask@@51 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| Mask@@51) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_14258 Mask@@51 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_25600) (o_2@@62 T@Ref) (f_4@@62 T@Field_14257_3421) ) (! (= (HasDirectPerm_14257_3421 Mask@@52 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| Mask@@52) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_3421 Mask@@52 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_25600) (o_2@@63 T@Ref) (f_4@@63 T@Field_14257_14128) ) (! (= (HasDirectPerm_14257_14128 Mask@@53 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| Mask@@53) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14257_14128 Mask@@53 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_25600) (o_2@@64 T@Ref) (f_4@@64 T@Field_34814_34819) ) (! (= (HasDirectPerm_14217_89386 Mask@@54 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| Mask@@54) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_89386 Mask@@54 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_25600) (o_2@@65 T@Ref) (f_4@@65 T@Field_14217_53) ) (! (= (HasDirectPerm_14217_53 Mask@@55 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| Mask@@55) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_53 Mask@@55 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_25600) (o_2@@66 T@Ref) (f_4@@66 T@Field_32195_32196) ) (! (= (HasDirectPerm_14217_14218 Mask@@56 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| Mask@@56) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_14218 Mask@@56 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_25600) (o_2@@67 T@Ref) (f_4@@67 T@Field_14217_3421) ) (! (= (HasDirectPerm_14217_3421 Mask@@57 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| Mask@@57) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_3421 Mask@@57 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_25600) (o_2@@68 T@Ref) (f_4@@68 T@Field_14217_14128) ) (! (= (HasDirectPerm_14217_14128 Mask@@58 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| Mask@@58) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14217_14128 Mask@@58 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_25600) (o_2@@69 T@Ref) (f_4@@69 T@Field_14127_34819) ) (! (= (HasDirectPerm_14127_88245 Mask@@59 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| Mask@@59) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_88245 Mask@@59 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_25600) (o_2@@70 T@Ref) (f_4@@70 T@Field_25639_53) ) (! (= (HasDirectPerm_14127_53 Mask@@60 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| Mask@@60) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_53 Mask@@60 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_25600) (o_2@@71 T@Ref) (f_4@@71 T@Field_14127_14218) ) (! (= (HasDirectPerm_14127_14218 Mask@@61 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| Mask@@61) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_14218 Mask@@61 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_25600) (o_2@@72 T@Ref) (f_4@@72 T@Field_31894_3421) ) (! (= (HasDirectPerm_14130_3421 Mask@@62 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| Mask@@62) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14130_3421 Mask@@62 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_25600) (o_2@@73 T@Ref) (f_4@@73 T@Field_25652_25653) ) (! (= (HasDirectPerm_14127_14128 Mask@@63 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| Mask@@63) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14127_14128 Mask@@63 o_2@@73 f_4@@73))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.202:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_25579) (ExhaleHeap@@11 T@PolymorphicMapType_25579) (Mask@@64 T@PolymorphicMapType_25600) (o_119@@0 T@Ref) (f_78 T@Field_51839_51844) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@64) (=> (HasDirectPerm_51826_92700 Mask@@64 o_119@@0 f_78) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@20) o_119@@0 f_78) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@11) o_119@@0 f_78))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@64) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@11) o_119@@0 f_78))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_25579) (ExhaleHeap@@12 T@PolymorphicMapType_25579) (Mask@@65 T@PolymorphicMapType_25600) (o_119@@1 T@Ref) (f_78@@0 T@Field_51826_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@65) (=> (HasDirectPerm_51826_53 Mask@@65 o_119@@1 f_78@@0) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@21) o_119@@1 f_78@@0) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@12) o_119@@1 f_78@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@65) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@12) o_119@@1 f_78@@0))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_25579) (ExhaleHeap@@13 T@PolymorphicMapType_25579) (Mask@@66 T@PolymorphicMapType_25600) (o_119@@2 T@Ref) (f_78@@1 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@66) (=> (HasDirectPerm_51826_14218 Mask@@66 o_119@@2 f_78@@1) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@22) o_119@@2 f_78@@1) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@13) o_119@@2 f_78@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@66) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@13) o_119@@2 f_78@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_25579) (ExhaleHeap@@14 T@PolymorphicMapType_25579) (Mask@@67 T@PolymorphicMapType_25600) (o_119@@3 T@Ref) (f_78@@2 T@Field_51826_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@67) (=> (HasDirectPerm_51826_3421 Mask@@67 o_119@@3 f_78@@2) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@23) o_119@@3 f_78@@2) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@14) o_119@@3 f_78@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@67) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@14) o_119@@3 f_78@@2))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_25579) (ExhaleHeap@@15 T@PolymorphicMapType_25579) (Mask@@68 T@PolymorphicMapType_25600) (o_119@@4 T@Ref) (f_78@@3 T@Field_51826_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@68) (=> (HasDirectPerm_51826_14128 Mask@@68 o_119@@4 f_78@@3) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@24) o_119@@4 f_78@@3) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@15) o_119@@4 f_78@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@68) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@15) o_119@@4 f_78@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_25579) (ExhaleHeap@@16 T@PolymorphicMapType_25579) (Mask@@69 T@PolymorphicMapType_25600) (o_119@@5 T@Ref) (f_78@@4 T@Field_52776_52781) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@69) (=> (HasDirectPerm_14312_91582 Mask@@69 o_119@@5 f_78@@4) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@25) o_119@@5 f_78@@4) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@16) o_119@@5 f_78@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@69) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@16) o_119@@5 f_78@@4))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_25579) (ExhaleHeap@@17 T@PolymorphicMapType_25579) (Mask@@70 T@PolymorphicMapType_25600) (o_119@@6 T@Ref) (f_78@@5 T@Field_14312_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@70) (=> (HasDirectPerm_14312_53 Mask@@70 o_119@@6 f_78@@5) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@26) o_119@@6 f_78@@5) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@17) o_119@@6 f_78@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@70) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@17) o_119@@6 f_78@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_25579) (ExhaleHeap@@18 T@PolymorphicMapType_25579) (Mask@@71 T@PolymorphicMapType_25600) (o_119@@7 T@Ref) (f_78@@6 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@71) (=> (HasDirectPerm_14312_14313 Mask@@71 o_119@@7 f_78@@6) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@27) o_119@@7 f_78@@6) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@18) o_119@@7 f_78@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@71) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@18) o_119@@7 f_78@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_25579) (ExhaleHeap@@19 T@PolymorphicMapType_25579) (Mask@@72 T@PolymorphicMapType_25600) (o_119@@8 T@Ref) (f_78@@7 T@Field_14312_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@72) (=> (HasDirectPerm_14312_3421 Mask@@72 o_119@@8 f_78@@7) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@28) o_119@@8 f_78@@7) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@19) o_119@@8 f_78@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@72) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@19) o_119@@8 f_78@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_25579) (ExhaleHeap@@20 T@PolymorphicMapType_25579) (Mask@@73 T@PolymorphicMapType_25600) (o_119@@9 T@Ref) (f_78@@8 T@Field_14312_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@73) (=> (HasDirectPerm_14312_14128 Mask@@73 o_119@@9 f_78@@8) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@29) o_119@@9 f_78@@8) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@20) o_119@@9 f_78@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@73) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@20) o_119@@9 f_78@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_25579) (ExhaleHeap@@21 T@PolymorphicMapType_25579) (Mask@@74 T@PolymorphicMapType_25600) (o_119@@10 T@Ref) (f_78@@9 T@Field_50609_50614) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@74) (=> (HasDirectPerm_14257_90484 Mask@@74 o_119@@10 f_78@@9) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@30) o_119@@10 f_78@@9) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@21) o_119@@10 f_78@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@74) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@21) o_119@@10 f_78@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_25579) (ExhaleHeap@@22 T@PolymorphicMapType_25579) (Mask@@75 T@PolymorphicMapType_25600) (o_119@@11 T@Ref) (f_78@@10 T@Field_14257_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@22 Mask@@75) (=> (HasDirectPerm_14257_53 Mask@@75 o_119@@11 f_78@@10) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@31) o_119@@11 f_78@@10) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@22) o_119@@11 f_78@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@22 Mask@@75) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@22) o_119@@11 f_78@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_25579) (ExhaleHeap@@23 T@PolymorphicMapType_25579) (Mask@@76 T@PolymorphicMapType_25600) (o_119@@12 T@Ref) (f_78@@11 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@23 Mask@@76) (=> (HasDirectPerm_14257_14258 Mask@@76 o_119@@12 f_78@@11) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@32) o_119@@12 f_78@@11) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@23) o_119@@12 f_78@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@23 Mask@@76) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@23) o_119@@12 f_78@@11))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_25579) (ExhaleHeap@@24 T@PolymorphicMapType_25579) (Mask@@77 T@PolymorphicMapType_25600) (o_119@@13 T@Ref) (f_78@@12 T@Field_14257_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@24 Mask@@77) (=> (HasDirectPerm_14257_3421 Mask@@77 o_119@@13 f_78@@12) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@33) o_119@@13 f_78@@12) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@24) o_119@@13 f_78@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@24 Mask@@77) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@24) o_119@@13 f_78@@12))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_25579) (ExhaleHeap@@25 T@PolymorphicMapType_25579) (Mask@@78 T@PolymorphicMapType_25600) (o_119@@14 T@Ref) (f_78@@13 T@Field_14257_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@25 Mask@@78) (=> (HasDirectPerm_14257_14128 Mask@@78 o_119@@14 f_78@@13) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@34) o_119@@14 f_78@@13) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@25) o_119@@14 f_78@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@25 Mask@@78) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@25) o_119@@14 f_78@@13))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_25579) (ExhaleHeap@@26 T@PolymorphicMapType_25579) (Mask@@79 T@PolymorphicMapType_25600) (o_119@@15 T@Ref) (f_78@@14 T@Field_34814_34819) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@26 Mask@@79) (=> (HasDirectPerm_14217_89386 Mask@@79 o_119@@15 f_78@@14) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@35) o_119@@15 f_78@@14) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@26) o_119@@15 f_78@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@26 Mask@@79) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@26) o_119@@15 f_78@@14))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_25579) (ExhaleHeap@@27 T@PolymorphicMapType_25579) (Mask@@80 T@PolymorphicMapType_25600) (o_119@@16 T@Ref) (f_78@@15 T@Field_14217_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@27 Mask@@80) (=> (HasDirectPerm_14217_53 Mask@@80 o_119@@16 f_78@@15) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@36) o_119@@16 f_78@@15) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@27) o_119@@16 f_78@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@27 Mask@@80) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@27) o_119@@16 f_78@@15))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_25579) (ExhaleHeap@@28 T@PolymorphicMapType_25579) (Mask@@81 T@PolymorphicMapType_25600) (o_119@@17 T@Ref) (f_78@@16 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@28 Mask@@81) (=> (HasDirectPerm_14217_14218 Mask@@81 o_119@@17 f_78@@16) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@37) o_119@@17 f_78@@16) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@28) o_119@@17 f_78@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@28 Mask@@81) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@28) o_119@@17 f_78@@16))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_25579) (ExhaleHeap@@29 T@PolymorphicMapType_25579) (Mask@@82 T@PolymorphicMapType_25600) (o_119@@18 T@Ref) (f_78@@17 T@Field_14217_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@29 Mask@@82) (=> (HasDirectPerm_14217_3421 Mask@@82 o_119@@18 f_78@@17) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@38) o_119@@18 f_78@@17) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@29) o_119@@18 f_78@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@29 Mask@@82) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@29) o_119@@18 f_78@@17))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_25579) (ExhaleHeap@@30 T@PolymorphicMapType_25579) (Mask@@83 T@PolymorphicMapType_25600) (o_119@@19 T@Ref) (f_78@@18 T@Field_14217_14128) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@30 Mask@@83) (=> (HasDirectPerm_14217_14128 Mask@@83 o_119@@19 f_78@@18) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@39) o_119@@19 f_78@@18) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@30) o_119@@19 f_78@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@30 Mask@@83) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@30) o_119@@19 f_78@@18))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_25579) (ExhaleHeap@@31 T@PolymorphicMapType_25579) (Mask@@84 T@PolymorphicMapType_25600) (o_119@@20 T@Ref) (f_78@@19 T@Field_14127_34819) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@31 Mask@@84) (=> (HasDirectPerm_14127_88245 Mask@@84 o_119@@20 f_78@@19) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@40) o_119@@20 f_78@@19) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@31) o_119@@20 f_78@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@31 Mask@@84) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@31) o_119@@20 f_78@@19))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_25579) (ExhaleHeap@@32 T@PolymorphicMapType_25579) (Mask@@85 T@PolymorphicMapType_25600) (o_119@@21 T@Ref) (f_78@@20 T@Field_25639_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@32 Mask@@85) (=> (HasDirectPerm_14127_53 Mask@@85 o_119@@21 f_78@@20) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@41) o_119@@21 f_78@@20) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@32) o_119@@21 f_78@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@32 Mask@@85) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@32) o_119@@21 f_78@@20))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_25579) (ExhaleHeap@@33 T@PolymorphicMapType_25579) (Mask@@86 T@PolymorphicMapType_25600) (o_119@@22 T@Ref) (f_78@@21 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@33 Mask@@86) (=> (HasDirectPerm_14127_14218 Mask@@86 o_119@@22 f_78@@21) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@42) o_119@@22 f_78@@21) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@33) o_119@@22 f_78@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@33 Mask@@86) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@33) o_119@@22 f_78@@21))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_25579) (ExhaleHeap@@34 T@PolymorphicMapType_25579) (Mask@@87 T@PolymorphicMapType_25600) (o_119@@23 T@Ref) (f_78@@22 T@Field_31894_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@34 Mask@@87) (=> (HasDirectPerm_14130_3421 Mask@@87 o_119@@23 f_78@@22) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@43) o_119@@23 f_78@@22) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@34) o_119@@23 f_78@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@34 Mask@@87) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@34) o_119@@23 f_78@@22))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_25579) (ExhaleHeap@@35 T@PolymorphicMapType_25579) (Mask@@88 T@PolymorphicMapType_25600) (o_119@@24 T@Ref) (f_78@@23 T@Field_25652_25653) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@35 Mask@@88) (=> (HasDirectPerm_14127_14128 Mask@@88 o_119@@24 f_78@@23) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@44) o_119@@24 f_78@@23) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@35) o_119@@24 f_78@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@35 Mask@@88) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@35) o_119@@24 f_78@@23))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_52776_52781) ) (! (= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_14312_53) ) (! (= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_14312_14128) ) (! (= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_14312_3421) ) (! (= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_52762_52763) ) (! (= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_51839_51844) ) (! (= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_51826_53) ) (! (= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_51826_14128) ) (! (= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_51826_3421) ) (! (= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_51826_51827) ) (! (= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_50609_50614) ) (! (= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_14257_53) ) (! (= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_14257_14128) ) (! (= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_14257_3421) ) (! (= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_50596_50597) ) (! (= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_14127_34819) ) (! (= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_25639_53) ) (! (= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_25652_25653) ) (! (= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_31894_3421) ) (! (= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_14127_14218) ) (! (= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_34814_34819) ) (! (= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_14217_53) ) (! (= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_14217_14128) ) (! (= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_14217_3421) ) (! (= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_32195_32196) ) (! (= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_25600) (SummandMask1 T@PolymorphicMapType_25600) (SummandMask2 T@PolymorphicMapType_25600) (o_2@@99 T@Ref) (f_4@@99 T@Field_52776_52781) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25600_14312_113942#PolymorphicMapType_25600| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_25600) (SummandMask1@@0 T@PolymorphicMapType_25600) (SummandMask2@@0 T@PolymorphicMapType_25600) (o_2@@100 T@Ref) (f_4@@100 T@Field_14312_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25600_14312_53#PolymorphicMapType_25600| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_25600) (SummandMask1@@1 T@PolymorphicMapType_25600) (SummandMask2@@1 T@PolymorphicMapType_25600) (o_2@@101 T@Ref) (f_4@@101 T@Field_14312_14128) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25600_14312_14128#PolymorphicMapType_25600| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_25600) (SummandMask1@@2 T@PolymorphicMapType_25600) (SummandMask2@@2 T@PolymorphicMapType_25600) (o_2@@102 T@Ref) (f_4@@102 T@Field_14312_3421) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25600_14312_3421#PolymorphicMapType_25600| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_25600) (SummandMask1@@3 T@PolymorphicMapType_25600) (SummandMask2@@3 T@PolymorphicMapType_25600) (o_2@@103 T@Ref) (f_4@@103 T@Field_52762_52763) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25600_14312_14313#PolymorphicMapType_25600| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_25600) (SummandMask1@@4 T@PolymorphicMapType_25600) (SummandMask2@@4 T@PolymorphicMapType_25600) (o_2@@104 T@Ref) (f_4@@104 T@Field_51839_51844) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_25600_14285_113531#PolymorphicMapType_25600| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_25600) (SummandMask1@@5 T@PolymorphicMapType_25600) (SummandMask2@@5 T@PolymorphicMapType_25600) (o_2@@105 T@Ref) (f_4@@105 T@Field_51826_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_25600_14285_53#PolymorphicMapType_25600| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_25600) (SummandMask1@@6 T@PolymorphicMapType_25600) (SummandMask2@@6 T@PolymorphicMapType_25600) (o_2@@106 T@Ref) (f_4@@106 T@Field_51826_14128) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_25600_14285_14128#PolymorphicMapType_25600| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_25600) (SummandMask1@@7 T@PolymorphicMapType_25600) (SummandMask2@@7 T@PolymorphicMapType_25600) (o_2@@107 T@Ref) (f_4@@107 T@Field_51826_3421) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_25600_14285_3421#PolymorphicMapType_25600| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_25600) (SummandMask1@@8 T@PolymorphicMapType_25600) (SummandMask2@@8 T@PolymorphicMapType_25600) (o_2@@108 T@Ref) (f_4@@108 T@Field_51826_51827) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_25600_14285_14286#PolymorphicMapType_25600| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_25600) (SummandMask1@@9 T@PolymorphicMapType_25600) (SummandMask2@@9 T@PolymorphicMapType_25600) (o_2@@109 T@Ref) (f_4@@109 T@Field_50609_50614) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_25600_14257_113120#PolymorphicMapType_25600| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_25600) (SummandMask1@@10 T@PolymorphicMapType_25600) (SummandMask2@@10 T@PolymorphicMapType_25600) (o_2@@110 T@Ref) (f_4@@110 T@Field_14257_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_25600_14257_53#PolymorphicMapType_25600| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_25600) (SummandMask1@@11 T@PolymorphicMapType_25600) (SummandMask2@@11 T@PolymorphicMapType_25600) (o_2@@111 T@Ref) (f_4@@111 T@Field_14257_14128) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_25600_14257_14128#PolymorphicMapType_25600| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_25600) (SummandMask1@@12 T@PolymorphicMapType_25600) (SummandMask2@@12 T@PolymorphicMapType_25600) (o_2@@112 T@Ref) (f_4@@112 T@Field_14257_3421) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_25600_14257_3421#PolymorphicMapType_25600| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_25600) (SummandMask1@@13 T@PolymorphicMapType_25600) (SummandMask2@@13 T@PolymorphicMapType_25600) (o_2@@113 T@Ref) (f_4@@113 T@Field_50596_50597) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_25600_14257_14258#PolymorphicMapType_25600| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_25600) (SummandMask1@@14 T@PolymorphicMapType_25600) (SummandMask2@@14 T@PolymorphicMapType_25600) (o_2@@114 T@Ref) (f_4@@114 T@Field_14127_34819) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_25600_14130_112709#PolymorphicMapType_25600| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_25600) (SummandMask1@@15 T@PolymorphicMapType_25600) (SummandMask2@@15 T@PolymorphicMapType_25600) (o_2@@115 T@Ref) (f_4@@115 T@Field_25639_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_25600_14130_53#PolymorphicMapType_25600| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_25600) (SummandMask1@@16 T@PolymorphicMapType_25600) (SummandMask2@@16 T@PolymorphicMapType_25600) (o_2@@116 T@Ref) (f_4@@116 T@Field_25652_25653) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_25600_14127_14128#PolymorphicMapType_25600| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_25600) (SummandMask1@@17 T@PolymorphicMapType_25600) (SummandMask2@@17 T@PolymorphicMapType_25600) (o_2@@117 T@Ref) (f_4@@117 T@Field_31894_3421) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_25600_14130_3421#PolymorphicMapType_25600| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_25600) (SummandMask1@@18 T@PolymorphicMapType_25600) (SummandMask2@@18 T@PolymorphicMapType_25600) (o_2@@118 T@Ref) (f_4@@118 T@Field_14127_14218) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_25600_14130_14218#PolymorphicMapType_25600| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_25600) (SummandMask1@@19 T@PolymorphicMapType_25600) (SummandMask2@@19 T@PolymorphicMapType_25600) (o_2@@119 T@Ref) (f_4@@119 T@Field_34814_34819) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_25600_14217_112310#PolymorphicMapType_25600| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_25600) (SummandMask1@@20 T@PolymorphicMapType_25600) (SummandMask2@@20 T@PolymorphicMapType_25600) (o_2@@120 T@Ref) (f_4@@120 T@Field_14217_53) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_25600_14217_53#PolymorphicMapType_25600| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_25600) (SummandMask1@@21 T@PolymorphicMapType_25600) (SummandMask2@@21 T@PolymorphicMapType_25600) (o_2@@121 T@Ref) (f_4@@121 T@Field_14217_14128) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_25600_14217_14128#PolymorphicMapType_25600| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_25600) (SummandMask1@@22 T@PolymorphicMapType_25600) (SummandMask2@@22 T@PolymorphicMapType_25600) (o_2@@122 T@Ref) (f_4@@122 T@Field_14217_3421) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_25600_14217_3421#PolymorphicMapType_25600| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_25600) (SummandMask1@@23 T@PolymorphicMapType_25600) (SummandMask2@@23 T@PolymorphicMapType_25600) (o_2@@123 T@Ref) (f_4@@123 T@Field_32195_32196) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_25600_14217_14218#PolymorphicMapType_25600| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_25579) (Mask@@89 T@PolymorphicMapType_25600) (this@@13 T@Ref) ) (!  (=> (state Heap@@45 Mask@@89) (= (|foo'| Heap@@45 this@@13) (|foo#frame| (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@45) null (list this@@13)) this@@13)))
 :qid |stdinbpl.445:15|
 :skolemid |85|
 :pattern ( (state Heap@@45 Mask@@89) (|foo'| Heap@@45 this@@13))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_25579) (this@@14 T@Ref) ) (!  (and (= (foo_1 Heap@@46 this@@14) (|foo'| Heap@@46 this@@14)) (dummyFunction_3619 (|foo#triggerStateless| this@@14)))
 :qid |stdinbpl.428:15|
 :skolemid |82|
 :pattern ( (foo_1 Heap@@46 this@@14))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_25579) (xs@@5 (Array T@Ref Bool)) ) (!  (and (= (foo_qp Heap@@47 xs@@5) (|foo_qp'| Heap@@47 xs@@5)) (dummyFunction_3619 (|foo_qp#triggerStateless| xs@@5)))
 :qid |stdinbpl.486:15|
 :skolemid |86|
 :pattern ( (foo_qp Heap@@47 xs@@5))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (getPredWandId_14217_14218 (list this@@15)) 0)
 :qid |stdinbpl.597:15|
 :skolemid |99|
 :pattern ( (list this@@15))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_14257_14258 (bla_1 this@@16)) 1)
 :qid |stdinbpl.825:15|
 :skolemid |109|
 :pattern ( (bla_1 this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (getPredWandId_14285_14286 (blabla this@@17)) 2)
 :qid |stdinbpl.900:15|
 :skolemid |115|
 :pattern ( (blabla this@@17))
)))
(assert (forall ((xs@@6 (Array T@Ref Bool)) ) (! (= (getPredWandId_14312_14313 (bla_qp xs@@6)) 3)
 :qid |stdinbpl.954:15|
 :skolemid |121|
 :pattern ( (bla_qp xs@@6))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_25579) (Mask@@90 T@PolymorphicMapType_25600) (xs@@7 (Array T@Ref Bool)) ) (!  (=> (state Heap@@48 Mask@@90) (= (|foo_qp'| Heap@@48 xs@@7) (|foo_qp#frame| (FrameFragment_3869 (|foo_qp#condqp1| Heap@@48 xs@@7)) xs@@7)))
 :qid |stdinbpl.503:15|
 :skolemid |89|
 :pattern ( (state Heap@@48 Mask@@90) (|foo_qp'| Heap@@48 xs@@7))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_25579) (o_57 T@Ref) (f_131 T@Field_52776_52781) (v T@PolymorphicMapType_26128) ) (! (succHeap Heap@@49 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@49) (store (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@49) o_57 f_131 v) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@49) (store (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@49) o_57 f_131 v) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@49) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_25579) (o_57@@0 T@Ref) (f_131@@0 T@Field_14312_3421) (v@@0 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@50) (store (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@50) o_57@@0 f_131@@0 v@@0) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@50) (store (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@50) o_57@@0 f_131@@0 v@@0) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@50) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_25579) (o_57@@1 T@Ref) (f_131@@1 T@Field_52762_52763) (v@@1 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@51) (store (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@51) o_57@@1 f_131@@1 v@@1) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@51) (store (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@51) o_57@@1 f_131@@1 v@@1) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@51) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_25579) (o_57@@2 T@Ref) (f_131@@2 T@Field_14312_14128) (v@@2 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@52) (store (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@52) o_57@@2 f_131@@2 v@@2) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@52) (store (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@52) o_57@@2 f_131@@2 v@@2) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@52) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_25579) (o_57@@3 T@Ref) (f_131@@3 T@Field_14312_53) (v@@3 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@53) (store (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@53) o_57@@3 f_131@@3 v@@3) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@53) (store (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@53) o_57@@3 f_131@@3 v@@3) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@53) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_25579) (o_57@@4 T@Ref) (f_131@@4 T@Field_51839_51844) (v@@4 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@54 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@54) (store (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@54) o_57@@4 f_131@@4 v@@4) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@54) (store (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@54) o_57@@4 f_131@@4 v@@4) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@54) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_25579) (o_57@@5 T@Ref) (f_131@@5 T@Field_51826_3421) (v@@5 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@55) (store (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@55) o_57@@5 f_131@@5 v@@5) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@55) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@55) (store (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@55) o_57@@5 f_131@@5 v@@5) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_25579) (o_57@@6 T@Ref) (f_131@@6 T@Field_51826_51827) (v@@6 T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@56) (store (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@56) o_57@@6 f_131@@6 v@@6) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@56) (store (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@56) o_57@@6 f_131@@6 v@@6) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@56) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_25579) (o_57@@7 T@Ref) (f_131@@7 T@Field_51826_14128) (v@@7 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@57) (store (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@57) o_57@@7 f_131@@7 v@@7) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@57) (store (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@57) o_57@@7 f_131@@7 v@@7) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@57) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_25579) (o_57@@8 T@Ref) (f_131@@8 T@Field_51826_53) (v@@8 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@58) (store (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@58) o_57@@8 f_131@@8 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@58) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@58) (store (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@58) o_57@@8 f_131@@8 v@@8)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_25579) (o_57@@9 T@Ref) (f_131@@9 T@Field_50609_50614) (v@@9 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@59 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@59) (store (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@59) o_57@@9 f_131@@9 v@@9) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@59) (store (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@59) o_57@@9 f_131@@9 v@@9) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@59) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_25579) (o_57@@10 T@Ref) (f_131@@10 T@Field_14257_3421) (v@@10 Int) ) (! (succHeap Heap@@60 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@60) (store (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@60) o_57@@10 f_131@@10 v@@10) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@60) (store (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@60) o_57@@10 f_131@@10 v@@10) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@60) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_25579) (o_57@@11 T@Ref) (f_131@@11 T@Field_50596_50597) (v@@11 T@FrameType) ) (! (succHeap Heap@@61 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@61) (store (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@61) o_57@@11 f_131@@11 v@@11) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@61) (store (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@61) o_57@@11 f_131@@11 v@@11) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@61) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_25579) (o_57@@12 T@Ref) (f_131@@12 T@Field_14257_14128) (v@@12 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@62) (store (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@62) o_57@@12 f_131@@12 v@@12) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@62) (store (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@62) o_57@@12 f_131@@12 v@@12) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@62) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_25579) (o_57@@13 T@Ref) (f_131@@13 T@Field_14257_53) (v@@13 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@63) (store (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@63) o_57@@13 f_131@@13 v@@13) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@63) (store (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@63) o_57@@13 f_131@@13 v@@13) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@63) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_25579) (o_57@@14 T@Ref) (f_131@@14 T@Field_34814_34819) (v@@14 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@64 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@64) (store (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@64) o_57@@14 f_131@@14 v@@14) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@64) (store (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@64) o_57@@14 f_131@@14 v@@14) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@64) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_25579) (o_57@@15 T@Ref) (f_131@@15 T@Field_14217_3421) (v@@15 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@65) (store (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@65) o_57@@15 f_131@@15 v@@15) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@65) (store (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@65) o_57@@15 f_131@@15 v@@15) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@65) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_25579) (o_57@@16 T@Ref) (f_131@@16 T@Field_32195_32196) (v@@16 T@FrameType) ) (! (succHeap Heap@@66 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@66) (store (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@66) o_57@@16 f_131@@16 v@@16) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@66) (store (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@66) o_57@@16 f_131@@16 v@@16) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@66) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_25579) (o_57@@17 T@Ref) (f_131@@17 T@Field_14217_14128) (v@@17 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@67) (store (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@67) o_57@@17 f_131@@17 v@@17) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@67) (store (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@67) o_57@@17 f_131@@17 v@@17) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@67) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_25579) (o_57@@18 T@Ref) (f_131@@18 T@Field_14217_53) (v@@18 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@68) (store (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@68) o_57@@18 f_131@@18 v@@18) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@68) (store (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@68) o_57@@18 f_131@@18 v@@18) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@68) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_25579) (o_57@@19 T@Ref) (f_131@@19 T@Field_14127_34819) (v@@19 T@PolymorphicMapType_26128) ) (! (succHeap Heap@@69 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@69) (store (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@69) o_57@@19 f_131@@19 v@@19) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@69) (store (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@69) o_57@@19 f_131@@19 v@@19) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@69) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_25579) (o_57@@20 T@Ref) (f_131@@20 T@Field_31894_3421) (v@@20 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@70) (store (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@70) o_57@@20 f_131@@20 v@@20) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@70) (store (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@70) o_57@@20 f_131@@20 v@@20) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@70) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_25579) (o_57@@21 T@Ref) (f_131@@21 T@Field_14127_14218) (v@@21 T@FrameType) ) (! (succHeap Heap@@71 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@71) (store (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@71) o_57@@21 f_131@@21 v@@21) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@71) (store (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@71) o_57@@21 f_131@@21 v@@21) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@71) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_25579) (o_57@@22 T@Ref) (f_131@@22 T@Field_25652_25653) (v@@22 T@Ref) ) (! (succHeap Heap@@72 (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@72) (store (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@72) o_57@@22 f_131@@22 v@@22) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@72) (store (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@72) o_57@@22 f_131@@22 v@@22) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@72) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_25579) (o_57@@23 T@Ref) (f_131@@23 T@Field_25639_53) (v@@23 Bool) ) (! (succHeap Heap@@73 (PolymorphicMapType_25579 (store (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@73) o_57@@23 f_131@@23 v@@23) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25579 (store (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@73) o_57@@23 f_131@@23 v@@23) (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@73) (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@73)))
)))
(assert (forall ((this@@18 T@Ref) ) (! (= (PredicateMaskField_14217 (list this@@18)) (|list#sm| this@@18))
 :qid |stdinbpl.589:15|
 :skolemid |97|
 :pattern ( (PredicateMaskField_14217 (list this@@18)))
)))
(assert (forall ((this@@19 T@Ref) ) (! (= (PredicateMaskField_14257 (bla_1 this@@19)) (|bla#sm| this@@19))
 :qid |stdinbpl.817:15|
 :skolemid |107|
 :pattern ( (PredicateMaskField_14257 (bla_1 this@@19)))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (PredicateMaskField_14285 (blabla this@@20)) (|blabla#sm| this@@20))
 :qid |stdinbpl.892:15|
 :skolemid |113|
 :pattern ( (PredicateMaskField_14285 (blabla this@@20)))
)))
(assert (forall ((xs@@8 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_14312 (bla_qp xs@@8)) (|bla_qp#sm| xs@@8))
 :qid |stdinbpl.946:15|
 :skolemid |119|
 :pattern ( (PredicateMaskField_14312 (bla_qp xs@@8)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.314:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.315:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_25579) (Heap1Heap T@PolymorphicMapType_25579) (xs@@9 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select xs@@9 (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9))) (< NoPerm FullPerm))  (and (select xs@@9 (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9))) (< NoPerm FullPerm))) (=> (and (select xs@@9 (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap2Heap) (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9)) data) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap1Heap) (|sk_foo_qp#condqp1| (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9)) data)))) (= (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9)))
 :qid |stdinbpl.513:15|
 :skolemid |90|
 :pattern ( (|foo_qp#condqp1| Heap2Heap xs@@9) (|foo_qp#condqp1| Heap1Heap xs@@9) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_25579) (Heap1Heap@@0 T@PolymorphicMapType_25579) (xs@@10 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select xs@@10 (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10))) (< NoPerm FullPerm))  (and (select xs@@10 (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10))) (< NoPerm FullPerm))) (=> (and (select xs@@10 (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap2Heap@@0) (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10)) data) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap1Heap@@0) (|sk_bla_qp#condqp2| (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10)) data)))) (= (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10)))
 :qid |stdinbpl.980:15|
 :skolemid |125|
 :pattern ( (|bla_qp#condqp2| Heap2Heap@@0 xs@@10) (|bla_qp#condqp2| Heap1Heap@@0 xs@@10) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((o_57@@24 T@Ref) (f_69 T@Field_25652_25653) (Heap@@74 T@PolymorphicMapType_25579) ) (!  (=> (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@74) o_57@@24 $allocated) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@74) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@74) o_57@@24 f_69) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@74) o_57@@24 f_69))
)))
(assert (forall ((p@@5 T@Field_52762_52763) (v_1@@4 T@FrameType) (q T@Field_52762_52763) (w@@4 T@FrameType) (r T@Field_52762_52763) (u T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@5 v_1@@4 q w@@4) (InsidePredicate_52762_52762 q w@@4 r u)) (InsidePredicate_52762_52762 p@@5 v_1@@4 r u))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@5 v_1@@4 q w@@4) (InsidePredicate_52762_52762 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_52762_52763) (v_1@@5 T@FrameType) (q@@0 T@Field_52762_52763) (w@@5 T@FrameType) (r@@0 T@Field_51826_51827) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_52762_51826 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_52762_51826 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_52762_51826 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_52762_52763) (v_1@@6 T@FrameType) (q@@1 T@Field_52762_52763) (w@@6 T@FrameType) (r@@1 T@Field_14127_14218) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_52762_25639 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_52762_25639 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_52762_25639 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_52762_52763) (v_1@@7 T@FrameType) (q@@2 T@Field_52762_52763) (w@@7 T@FrameType) (r@@2 T@Field_50596_50597) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_52762_14257 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_52762_14257 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_52762_14257 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_52762_52763) (v_1@@8 T@FrameType) (q@@3 T@Field_52762_52763) (w@@8 T@FrameType) (r@@3 T@Field_32195_32196) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_52762 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_52762_14217 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_52762_14217 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_52762 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_52762_14217 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_52762_52763) (v_1@@9 T@FrameType) (q@@4 T@Field_14127_14218) (w@@9 T@FrameType) (r@@4 T@Field_52762_52763) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_25639_52762 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_52762_52762 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_25639_52762 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_52762_52763) (v_1@@10 T@FrameType) (q@@5 T@Field_14127_14218) (w@@10 T@FrameType) (r@@5 T@Field_51826_51827) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_25639_51826 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_52762_51826 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_25639_51826 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_52762_52763) (v_1@@11 T@FrameType) (q@@6 T@Field_14127_14218) (w@@11 T@FrameType) (r@@6 T@Field_14127_14218) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_25639_25639 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_52762_25639 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_25639_25639 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_52762_52763) (v_1@@12 T@FrameType) (q@@7 T@Field_14127_14218) (w@@12 T@FrameType) (r@@7 T@Field_50596_50597) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_25639_14257 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_52762_14257 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_25639_14257 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_52762_52763) (v_1@@13 T@FrameType) (q@@8 T@Field_14127_14218) (w@@13 T@FrameType) (r@@8 T@Field_32195_32196) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_25639 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_25639_14217 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_52762_14217 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_25639 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_25639_14217 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_52762_52763) (v_1@@14 T@FrameType) (q@@9 T@Field_51826_51827) (w@@14 T@FrameType) (r@@9 T@Field_52762_52763) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_14285_52762 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_52762_52762 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_14285_52762 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_52762_52763) (v_1@@15 T@FrameType) (q@@10 T@Field_51826_51827) (w@@15 T@FrameType) (r@@10 T@Field_51826_51827) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_14285_51826 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_52762_51826 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_14285_51826 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_52762_52763) (v_1@@16 T@FrameType) (q@@11 T@Field_51826_51827) (w@@16 T@FrameType) (r@@11 T@Field_14127_14218) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_14285_25639 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_52762_25639 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_14285_25639 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_52762_52763) (v_1@@17 T@FrameType) (q@@12 T@Field_51826_51827) (w@@17 T@FrameType) (r@@12 T@Field_50596_50597) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_14285_14257 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_52762_14257 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_14285_14257 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_52762_52763) (v_1@@18 T@FrameType) (q@@13 T@Field_51826_51827) (w@@18 T@FrameType) (r@@13 T@Field_32195_32196) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_51826 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_14285_14217 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_52762_14217 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_51826 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_14285_14217 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_52762_52763) (v_1@@19 T@FrameType) (q@@14 T@Field_50596_50597) (w@@19 T@FrameType) (r@@14 T@Field_52762_52763) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_14257_52762 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_52762_52762 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_14257_52762 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_52762_52763) (v_1@@20 T@FrameType) (q@@15 T@Field_50596_50597) (w@@20 T@FrameType) (r@@15 T@Field_51826_51827) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_14257_51826 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_52762_51826 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_14257_51826 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_52762_52763) (v_1@@21 T@FrameType) (q@@16 T@Field_50596_50597) (w@@21 T@FrameType) (r@@16 T@Field_14127_14218) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_14257_25639 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_52762_25639 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_14257_25639 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_52762_52763) (v_1@@22 T@FrameType) (q@@17 T@Field_50596_50597) (w@@22 T@FrameType) (r@@17 T@Field_50596_50597) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_14257_14257 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_52762_14257 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_14257_14257 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_52762_52763) (v_1@@23 T@FrameType) (q@@18 T@Field_50596_50597) (w@@23 T@FrameType) (r@@18 T@Field_32195_32196) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14257 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_14257_14217 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_52762_14217 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14257 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_14257_14217 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_52762_52763) (v_1@@24 T@FrameType) (q@@19 T@Field_32195_32196) (w@@24 T@FrameType) (r@@19 T@Field_52762_52763) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_14217_52762 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_52762_52762 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_14217_52762 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_52762_52763) (v_1@@25 T@FrameType) (q@@20 T@Field_32195_32196) (w@@25 T@FrameType) (r@@20 T@Field_51826_51827) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_14217_51826 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_52762_51826 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_14217_51826 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_52762_52763) (v_1@@26 T@FrameType) (q@@21 T@Field_32195_32196) (w@@26 T@FrameType) (r@@21 T@Field_14127_14218) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_14217_25639 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_52762_25639 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_14217_25639 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_52762_52763) (v_1@@27 T@FrameType) (q@@22 T@Field_32195_32196) (w@@27 T@FrameType) (r@@22 T@Field_50596_50597) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_14217_14257 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_52762_14257 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_14217_14257 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_52762_52763) (v_1@@28 T@FrameType) (q@@23 T@Field_32195_32196) (w@@28 T@FrameType) (r@@23 T@Field_32195_32196) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_52762_14217 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_14217_14217 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_52762_14217 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_52762_14217 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_14217_14217 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_14127_14218) (v_1@@29 T@FrameType) (q@@24 T@Field_52762_52763) (w@@29 T@FrameType) (r@@24 T@Field_52762_52763) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_52762_52762 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_25639_52762 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_52762_52762 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_14127_14218) (v_1@@30 T@FrameType) (q@@25 T@Field_52762_52763) (w@@30 T@FrameType) (r@@25 T@Field_51826_51827) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_52762_51826 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_25639_51826 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_52762_51826 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_14127_14218) (v_1@@31 T@FrameType) (q@@26 T@Field_52762_52763) (w@@31 T@FrameType) (r@@26 T@Field_14127_14218) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_52762_25639 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_25639_25639 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_52762_25639 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_14127_14218) (v_1@@32 T@FrameType) (q@@27 T@Field_52762_52763) (w@@32 T@FrameType) (r@@27 T@Field_50596_50597) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_52762_14257 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_25639_14257 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_52762_14257 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_14127_14218) (v_1@@33 T@FrameType) (q@@28 T@Field_52762_52763) (w@@33 T@FrameType) (r@@28 T@Field_32195_32196) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_52762 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_52762_14217 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_25639_14217 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_52762 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_52762_14217 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_14127_14218) (v_1@@34 T@FrameType) (q@@29 T@Field_14127_14218) (w@@34 T@FrameType) (r@@29 T@Field_52762_52763) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_25639_52762 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_25639_52762 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_25639_52762 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_14127_14218) (v_1@@35 T@FrameType) (q@@30 T@Field_14127_14218) (w@@35 T@FrameType) (r@@30 T@Field_51826_51827) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_25639_51826 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_25639_51826 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_25639_51826 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_14127_14218) (v_1@@36 T@FrameType) (q@@31 T@Field_14127_14218) (w@@36 T@FrameType) (r@@31 T@Field_14127_14218) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_25639_25639 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_25639_25639 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_25639_25639 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_14127_14218) (v_1@@37 T@FrameType) (q@@32 T@Field_14127_14218) (w@@37 T@FrameType) (r@@32 T@Field_50596_50597) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_25639_14257 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_25639_14257 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_25639_14257 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_14127_14218) (v_1@@38 T@FrameType) (q@@33 T@Field_14127_14218) (w@@38 T@FrameType) (r@@33 T@Field_32195_32196) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_25639 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_25639_14217 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_25639_14217 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_25639 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_25639_14217 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_14127_14218) (v_1@@39 T@FrameType) (q@@34 T@Field_51826_51827) (w@@39 T@FrameType) (r@@34 T@Field_52762_52763) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_14285_52762 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_25639_52762 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_14285_52762 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_14127_14218) (v_1@@40 T@FrameType) (q@@35 T@Field_51826_51827) (w@@40 T@FrameType) (r@@35 T@Field_51826_51827) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_14285_51826 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_25639_51826 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_14285_51826 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_14127_14218) (v_1@@41 T@FrameType) (q@@36 T@Field_51826_51827) (w@@41 T@FrameType) (r@@36 T@Field_14127_14218) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_14285_25639 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_25639_25639 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_14285_25639 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_14127_14218) (v_1@@42 T@FrameType) (q@@37 T@Field_51826_51827) (w@@42 T@FrameType) (r@@37 T@Field_50596_50597) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_14285_14257 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_25639_14257 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_14285_14257 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_14127_14218) (v_1@@43 T@FrameType) (q@@38 T@Field_51826_51827) (w@@43 T@FrameType) (r@@38 T@Field_32195_32196) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_51826 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_14285_14217 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_25639_14217 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_51826 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_14285_14217 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_14127_14218) (v_1@@44 T@FrameType) (q@@39 T@Field_50596_50597) (w@@44 T@FrameType) (r@@39 T@Field_52762_52763) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_14257_52762 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_25639_52762 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_14257_52762 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_14127_14218) (v_1@@45 T@FrameType) (q@@40 T@Field_50596_50597) (w@@45 T@FrameType) (r@@40 T@Field_51826_51827) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_14257_51826 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_25639_51826 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_14257_51826 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_14127_14218) (v_1@@46 T@FrameType) (q@@41 T@Field_50596_50597) (w@@46 T@FrameType) (r@@41 T@Field_14127_14218) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_14257_25639 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_25639_25639 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_14257_25639 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_14127_14218) (v_1@@47 T@FrameType) (q@@42 T@Field_50596_50597) (w@@47 T@FrameType) (r@@42 T@Field_50596_50597) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_14257_14257 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_25639_14257 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_14257_14257 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_14127_14218) (v_1@@48 T@FrameType) (q@@43 T@Field_50596_50597) (w@@48 T@FrameType) (r@@43 T@Field_32195_32196) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14257 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_14257_14217 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_25639_14217 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14257 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_14257_14217 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_14127_14218) (v_1@@49 T@FrameType) (q@@44 T@Field_32195_32196) (w@@49 T@FrameType) (r@@44 T@Field_52762_52763) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_14217_52762 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_25639_52762 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_14217_52762 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_14127_14218) (v_1@@50 T@FrameType) (q@@45 T@Field_32195_32196) (w@@50 T@FrameType) (r@@45 T@Field_51826_51827) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_14217_51826 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_25639_51826 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_14217_51826 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_14127_14218) (v_1@@51 T@FrameType) (q@@46 T@Field_32195_32196) (w@@51 T@FrameType) (r@@46 T@Field_14127_14218) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_14217_25639 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_25639_25639 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_14217_25639 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_14127_14218) (v_1@@52 T@FrameType) (q@@47 T@Field_32195_32196) (w@@52 T@FrameType) (r@@47 T@Field_50596_50597) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_14217_14257 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_25639_14257 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_14217_14257 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_14127_14218) (v_1@@53 T@FrameType) (q@@48 T@Field_32195_32196) (w@@53 T@FrameType) (r@@48 T@Field_32195_32196) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_25639_14217 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_14217_14217 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_25639_14217 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25639_14217 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_14217_14217 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_51826_51827) (v_1@@54 T@FrameType) (q@@49 T@Field_52762_52763) (w@@54 T@FrameType) (r@@49 T@Field_52762_52763) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_52762_52762 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_14285_52762 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_52762_52762 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_51826_51827) (v_1@@55 T@FrameType) (q@@50 T@Field_52762_52763) (w@@55 T@FrameType) (r@@50 T@Field_51826_51827) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_52762_51826 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_14285_51826 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_52762_51826 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_51826_51827) (v_1@@56 T@FrameType) (q@@51 T@Field_52762_52763) (w@@56 T@FrameType) (r@@51 T@Field_14127_14218) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_52762_25639 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_14285_25639 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_52762_25639 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_51826_51827) (v_1@@57 T@FrameType) (q@@52 T@Field_52762_52763) (w@@57 T@FrameType) (r@@52 T@Field_50596_50597) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_52762_14257 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_14285_14257 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_52762_14257 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_51826_51827) (v_1@@58 T@FrameType) (q@@53 T@Field_52762_52763) (w@@58 T@FrameType) (r@@53 T@Field_32195_32196) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_52762 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_52762_14217 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_14285_14217 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_52762 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_52762_14217 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_51826_51827) (v_1@@59 T@FrameType) (q@@54 T@Field_14127_14218) (w@@59 T@FrameType) (r@@54 T@Field_52762_52763) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_25639_52762 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_14285_52762 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_25639_52762 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_51826_51827) (v_1@@60 T@FrameType) (q@@55 T@Field_14127_14218) (w@@60 T@FrameType) (r@@55 T@Field_51826_51827) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_25639_51826 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_14285_51826 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_25639_51826 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_51826_51827) (v_1@@61 T@FrameType) (q@@56 T@Field_14127_14218) (w@@61 T@FrameType) (r@@56 T@Field_14127_14218) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_25639_25639 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_14285_25639 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_25639_25639 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_51826_51827) (v_1@@62 T@FrameType) (q@@57 T@Field_14127_14218) (w@@62 T@FrameType) (r@@57 T@Field_50596_50597) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_25639_14257 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_14285_14257 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_25639_14257 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_51826_51827) (v_1@@63 T@FrameType) (q@@58 T@Field_14127_14218) (w@@63 T@FrameType) (r@@58 T@Field_32195_32196) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_25639 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_25639_14217 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_14285_14217 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_25639 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_25639_14217 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_51826_51827) (v_1@@64 T@FrameType) (q@@59 T@Field_51826_51827) (w@@64 T@FrameType) (r@@59 T@Field_52762_52763) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_14285_52762 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_14285_52762 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_14285_52762 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_51826_51827) (v_1@@65 T@FrameType) (q@@60 T@Field_51826_51827) (w@@65 T@FrameType) (r@@60 T@Field_51826_51827) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_14285_51826 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_14285_51826 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_14285_51826 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_51826_51827) (v_1@@66 T@FrameType) (q@@61 T@Field_51826_51827) (w@@66 T@FrameType) (r@@61 T@Field_14127_14218) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_14285_25639 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_14285_25639 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_14285_25639 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_51826_51827) (v_1@@67 T@FrameType) (q@@62 T@Field_51826_51827) (w@@67 T@FrameType) (r@@62 T@Field_50596_50597) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_14285_14257 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_14285_14257 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_14285_14257 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_51826_51827) (v_1@@68 T@FrameType) (q@@63 T@Field_51826_51827) (w@@68 T@FrameType) (r@@63 T@Field_32195_32196) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_51826 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_14285_14217 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_14285_14217 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_51826 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_14285_14217 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_51826_51827) (v_1@@69 T@FrameType) (q@@64 T@Field_50596_50597) (w@@69 T@FrameType) (r@@64 T@Field_52762_52763) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_14257_52762 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_14285_52762 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_14257_52762 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_51826_51827) (v_1@@70 T@FrameType) (q@@65 T@Field_50596_50597) (w@@70 T@FrameType) (r@@65 T@Field_51826_51827) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_14257_51826 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_14285_51826 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_14257_51826 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_51826_51827) (v_1@@71 T@FrameType) (q@@66 T@Field_50596_50597) (w@@71 T@FrameType) (r@@66 T@Field_14127_14218) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_14257_25639 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_14285_25639 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_14257_25639 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_51826_51827) (v_1@@72 T@FrameType) (q@@67 T@Field_50596_50597) (w@@72 T@FrameType) (r@@67 T@Field_50596_50597) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_14257_14257 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_14285_14257 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_14257_14257 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_51826_51827) (v_1@@73 T@FrameType) (q@@68 T@Field_50596_50597) (w@@73 T@FrameType) (r@@68 T@Field_32195_32196) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14257 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_14257_14217 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_14285_14217 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14257 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_14257_14217 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_51826_51827) (v_1@@74 T@FrameType) (q@@69 T@Field_32195_32196) (w@@74 T@FrameType) (r@@69 T@Field_52762_52763) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_14217_52762 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_14285_52762 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_14217_52762 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_51826_51827) (v_1@@75 T@FrameType) (q@@70 T@Field_32195_32196) (w@@75 T@FrameType) (r@@70 T@Field_51826_51827) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_14217_51826 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_14285_51826 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_14217_51826 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_51826_51827) (v_1@@76 T@FrameType) (q@@71 T@Field_32195_32196) (w@@76 T@FrameType) (r@@71 T@Field_14127_14218) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_14217_25639 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_14285_25639 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_14217_25639 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_51826_51827) (v_1@@77 T@FrameType) (q@@72 T@Field_32195_32196) (w@@77 T@FrameType) (r@@72 T@Field_50596_50597) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_14217_14257 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_14285_14257 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_14217_14257 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_51826_51827) (v_1@@78 T@FrameType) (q@@73 T@Field_32195_32196) (w@@78 T@FrameType) (r@@73 T@Field_32195_32196) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_14285_14217 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_14217_14217 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_14285_14217 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14285_14217 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_14217_14217 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_50596_50597) (v_1@@79 T@FrameType) (q@@74 T@Field_52762_52763) (w@@79 T@FrameType) (r@@74 T@Field_52762_52763) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_52762_52762 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_14257_52762 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_52762_52762 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_50596_50597) (v_1@@80 T@FrameType) (q@@75 T@Field_52762_52763) (w@@80 T@FrameType) (r@@75 T@Field_51826_51827) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_52762_51826 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_14257_51826 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_52762_51826 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_50596_50597) (v_1@@81 T@FrameType) (q@@76 T@Field_52762_52763) (w@@81 T@FrameType) (r@@76 T@Field_14127_14218) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_52762_25639 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_14257_25639 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_52762_25639 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_50596_50597) (v_1@@82 T@FrameType) (q@@77 T@Field_52762_52763) (w@@82 T@FrameType) (r@@77 T@Field_50596_50597) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_52762_14257 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_14257_14257 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_52762_14257 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_50596_50597) (v_1@@83 T@FrameType) (q@@78 T@Field_52762_52763) (w@@83 T@FrameType) (r@@78 T@Field_32195_32196) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_52762 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_52762_14217 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_14257_14217 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_52762 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_52762_14217 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_50596_50597) (v_1@@84 T@FrameType) (q@@79 T@Field_14127_14218) (w@@84 T@FrameType) (r@@79 T@Field_52762_52763) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_25639_52762 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_14257_52762 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_25639_52762 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_50596_50597) (v_1@@85 T@FrameType) (q@@80 T@Field_14127_14218) (w@@85 T@FrameType) (r@@80 T@Field_51826_51827) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_25639_51826 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_14257_51826 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_25639_51826 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_50596_50597) (v_1@@86 T@FrameType) (q@@81 T@Field_14127_14218) (w@@86 T@FrameType) (r@@81 T@Field_14127_14218) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_25639_25639 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_14257_25639 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_25639_25639 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_50596_50597) (v_1@@87 T@FrameType) (q@@82 T@Field_14127_14218) (w@@87 T@FrameType) (r@@82 T@Field_50596_50597) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_25639_14257 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_14257_14257 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_25639_14257 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_50596_50597) (v_1@@88 T@FrameType) (q@@83 T@Field_14127_14218) (w@@88 T@FrameType) (r@@83 T@Field_32195_32196) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_25639 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_25639_14217 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_14257_14217 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_25639 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_25639_14217 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_50596_50597) (v_1@@89 T@FrameType) (q@@84 T@Field_51826_51827) (w@@89 T@FrameType) (r@@84 T@Field_52762_52763) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_14285_52762 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_14257_52762 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_14285_52762 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_50596_50597) (v_1@@90 T@FrameType) (q@@85 T@Field_51826_51827) (w@@90 T@FrameType) (r@@85 T@Field_51826_51827) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_14285_51826 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_14257_51826 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_14285_51826 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_50596_50597) (v_1@@91 T@FrameType) (q@@86 T@Field_51826_51827) (w@@91 T@FrameType) (r@@86 T@Field_14127_14218) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_14285_25639 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_14257_25639 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_14285_25639 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_50596_50597) (v_1@@92 T@FrameType) (q@@87 T@Field_51826_51827) (w@@92 T@FrameType) (r@@87 T@Field_50596_50597) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_14285_14257 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_14257_14257 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_14285_14257 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_50596_50597) (v_1@@93 T@FrameType) (q@@88 T@Field_51826_51827) (w@@93 T@FrameType) (r@@88 T@Field_32195_32196) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_51826 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_14285_14217 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_14257_14217 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_51826 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_14285_14217 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_50596_50597) (v_1@@94 T@FrameType) (q@@89 T@Field_50596_50597) (w@@94 T@FrameType) (r@@89 T@Field_52762_52763) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_14257_52762 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_14257_52762 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_14257_52762 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_50596_50597) (v_1@@95 T@FrameType) (q@@90 T@Field_50596_50597) (w@@95 T@FrameType) (r@@90 T@Field_51826_51827) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_14257_51826 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_14257_51826 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_14257_51826 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_50596_50597) (v_1@@96 T@FrameType) (q@@91 T@Field_50596_50597) (w@@96 T@FrameType) (r@@91 T@Field_14127_14218) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_14257_25639 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_14257_25639 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_14257_25639 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_50596_50597) (v_1@@97 T@FrameType) (q@@92 T@Field_50596_50597) (w@@97 T@FrameType) (r@@92 T@Field_50596_50597) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_14257_14257 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_14257_14257 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_14257_14257 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_50596_50597) (v_1@@98 T@FrameType) (q@@93 T@Field_50596_50597) (w@@98 T@FrameType) (r@@93 T@Field_32195_32196) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_14257_14217 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_14257_14217 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_14257_14217 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_50596_50597) (v_1@@99 T@FrameType) (q@@94 T@Field_32195_32196) (w@@99 T@FrameType) (r@@94 T@Field_52762_52763) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_14217_52762 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_14257_52762 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_14217_52762 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_50596_50597) (v_1@@100 T@FrameType) (q@@95 T@Field_32195_32196) (w@@100 T@FrameType) (r@@95 T@Field_51826_51827) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_14217_51826 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_14257_51826 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_14217_51826 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_50596_50597) (v_1@@101 T@FrameType) (q@@96 T@Field_32195_32196) (w@@101 T@FrameType) (r@@96 T@Field_14127_14218) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_14217_25639 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_14257_25639 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_14217_25639 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_50596_50597) (v_1@@102 T@FrameType) (q@@97 T@Field_32195_32196) (w@@102 T@FrameType) (r@@97 T@Field_50596_50597) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_14217_14257 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_14257_14257 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_14217_14257 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_50596_50597) (v_1@@103 T@FrameType) (q@@98 T@Field_32195_32196) (w@@103 T@FrameType) (r@@98 T@Field_32195_32196) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14217 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_14217_14217 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_14257_14217 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14217 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_14217_14217 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_32195_32196) (v_1@@104 T@FrameType) (q@@99 T@Field_52762_52763) (w@@104 T@FrameType) (r@@99 T@Field_52762_52763) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_52762_52762 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_14217_52762 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_52762_52762 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_32195_32196) (v_1@@105 T@FrameType) (q@@100 T@Field_52762_52763) (w@@105 T@FrameType) (r@@100 T@Field_51826_51827) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_52762_51826 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_14217_51826 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_52762_51826 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_32195_32196) (v_1@@106 T@FrameType) (q@@101 T@Field_52762_52763) (w@@106 T@FrameType) (r@@101 T@Field_14127_14218) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_52762_25639 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_14217_25639 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_52762_25639 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_32195_32196) (v_1@@107 T@FrameType) (q@@102 T@Field_52762_52763) (w@@107 T@FrameType) (r@@102 T@Field_50596_50597) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_52762_14257 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_14217_14257 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_52762_14257 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_32195_32196) (v_1@@108 T@FrameType) (q@@103 T@Field_52762_52763) (w@@108 T@FrameType) (r@@103 T@Field_32195_32196) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_52762 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_52762_14217 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_14217_14217 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_52762 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_52762_14217 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_32195_32196) (v_1@@109 T@FrameType) (q@@104 T@Field_14127_14218) (w@@109 T@FrameType) (r@@104 T@Field_52762_52763) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_25639_52762 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_14217_52762 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_25639_52762 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_32195_32196) (v_1@@110 T@FrameType) (q@@105 T@Field_14127_14218) (w@@110 T@FrameType) (r@@105 T@Field_51826_51827) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_25639_51826 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_14217_51826 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_25639_51826 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_32195_32196) (v_1@@111 T@FrameType) (q@@106 T@Field_14127_14218) (w@@111 T@FrameType) (r@@106 T@Field_14127_14218) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_25639_25639 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_14217_25639 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_25639_25639 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_32195_32196) (v_1@@112 T@FrameType) (q@@107 T@Field_14127_14218) (w@@112 T@FrameType) (r@@107 T@Field_50596_50597) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_25639_14257 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_14217_14257 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_25639_14257 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_32195_32196) (v_1@@113 T@FrameType) (q@@108 T@Field_14127_14218) (w@@113 T@FrameType) (r@@108 T@Field_32195_32196) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_25639 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_25639_14217 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_14217_14217 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_25639 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_25639_14217 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_32195_32196) (v_1@@114 T@FrameType) (q@@109 T@Field_51826_51827) (w@@114 T@FrameType) (r@@109 T@Field_52762_52763) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_14285_52762 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_14217_52762 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_14285_52762 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_32195_32196) (v_1@@115 T@FrameType) (q@@110 T@Field_51826_51827) (w@@115 T@FrameType) (r@@110 T@Field_51826_51827) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_14285_51826 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_14217_51826 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_14285_51826 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_32195_32196) (v_1@@116 T@FrameType) (q@@111 T@Field_51826_51827) (w@@116 T@FrameType) (r@@111 T@Field_14127_14218) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_14285_25639 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_14217_25639 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_14285_25639 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_32195_32196) (v_1@@117 T@FrameType) (q@@112 T@Field_51826_51827) (w@@117 T@FrameType) (r@@112 T@Field_50596_50597) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_14285_14257 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_14217_14257 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_14285_14257 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_32195_32196) (v_1@@118 T@FrameType) (q@@113 T@Field_51826_51827) (w@@118 T@FrameType) (r@@113 T@Field_32195_32196) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_51826 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_14285_14217 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_14217_14217 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_51826 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_14285_14217 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_32195_32196) (v_1@@119 T@FrameType) (q@@114 T@Field_50596_50597) (w@@119 T@FrameType) (r@@114 T@Field_52762_52763) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_14257_52762 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_14217_52762 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_14257_52762 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_32195_32196) (v_1@@120 T@FrameType) (q@@115 T@Field_50596_50597) (w@@120 T@FrameType) (r@@115 T@Field_51826_51827) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_14257_51826 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_14217_51826 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_14257_51826 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_32195_32196) (v_1@@121 T@FrameType) (q@@116 T@Field_50596_50597) (w@@121 T@FrameType) (r@@116 T@Field_14127_14218) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_14257_25639 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_14217_25639 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_14257_25639 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_32195_32196) (v_1@@122 T@FrameType) (q@@117 T@Field_50596_50597) (w@@122 T@FrameType) (r@@117 T@Field_50596_50597) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_14257_14257 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_14217_14257 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_14257_14257 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_32195_32196) (v_1@@123 T@FrameType) (q@@118 T@Field_50596_50597) (w@@123 T@FrameType) (r@@118 T@Field_32195_32196) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14257 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_14257_14217 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_14217_14217 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14257 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_14257_14217 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_32195_32196) (v_1@@124 T@FrameType) (q@@119 T@Field_32195_32196) (w@@124 T@FrameType) (r@@119 T@Field_52762_52763) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_14217_52762 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_14217_52762 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_14217_52762 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_32195_32196) (v_1@@125 T@FrameType) (q@@120 T@Field_32195_32196) (w@@125 T@FrameType) (r@@120 T@Field_51826_51827) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_14217_51826 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_14217_51826 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_14217_51826 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_32195_32196) (v_1@@126 T@FrameType) (q@@121 T@Field_32195_32196) (w@@126 T@FrameType) (r@@121 T@Field_14127_14218) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_14217_25639 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_14217_25639 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_14217_25639 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_32195_32196) (v_1@@127 T@FrameType) (q@@122 T@Field_32195_32196) (w@@127 T@FrameType) (r@@122 T@Field_50596_50597) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_14217_14257 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_14217_14257 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_14217_14257 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_32195_32196) (v_1@@128 T@FrameType) (q@@123 T@Field_32195_32196) (w@@128 T@FrameType) (r@@123 T@Field_32195_32196) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_14217_14217 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_14217_14217 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_14217_14217 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.209:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14217_14217 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_14217_14217 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_25579) (ExhaleHeap@@36 T@PolymorphicMapType_25579) (Mask@@91 T@PolymorphicMapType_25600) (pm_f_44@@9 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@36 Mask@@91) (=> (and (HasDirectPerm_51826_14218 Mask@@91 null pm_f_44@@9) (IsPredicateField_14285_14286 pm_f_44@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44 T@Ref) (f_78@@24 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44 f_78@@24) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@75) o2_44 f_78@@24) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44 f_78@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44 f_78@@24))
)) (forall ((o2_44@@0 T@Ref) (f_78@@25 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@0 f_78@@25) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@0 f_78@@25) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@0 f_78@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@0 f_78@@25))
))) (forall ((o2_44@@1 T@Ref) (f_78@@26 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@1 f_78@@26) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@75) o2_44@@1 f_78@@26) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@1 f_78@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@1 f_78@@26))
))) (forall ((o2_44@@2 T@Ref) (f_78@@27 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@2 f_78@@27) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@75) o2_44@@2 f_78@@27) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@2 f_78@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@2 f_78@@27))
))) (forall ((o2_44@@3 T@Ref) (f_78@@28 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@3 f_78@@28) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@75) o2_44@@3 f_78@@28) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@3 f_78@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@3 f_78@@28))
))) (forall ((o2_44@@4 T@Ref) (f_78@@29 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@4 f_78@@29) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@4 f_78@@29) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@4 f_78@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@4 f_78@@29))
))) (forall ((o2_44@@5 T@Ref) (f_78@@30 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@5 f_78@@30) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@5 f_78@@30) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@5 f_78@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@5 f_78@@30))
))) (forall ((o2_44@@6 T@Ref) (f_78@@31 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@6 f_78@@31) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@75) o2_44@@6 f_78@@31) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@6 f_78@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@6 f_78@@31))
))) (forall ((o2_44@@7 T@Ref) (f_78@@32 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@7 f_78@@32) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@75) o2_44@@7 f_78@@32) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@7 f_78@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@7 f_78@@32))
))) (forall ((o2_44@@8 T@Ref) (f_78@@33 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@8 f_78@@33) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@75) o2_44@@8 f_78@@33) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@8 f_78@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@8 f_78@@33))
))) (forall ((o2_44@@9 T@Ref) (f_78@@34 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@9 f_78@@34) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@9 f_78@@34) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@9 f_78@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@9 f_78@@34))
))) (forall ((o2_44@@10 T@Ref) (f_78@@35 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@10 f_78@@35) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@10 f_78@@35) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@10 f_78@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@10 f_78@@35))
))) (forall ((o2_44@@11 T@Ref) (f_78@@36 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@11 f_78@@36) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@75) o2_44@@11 f_78@@36) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@11 f_78@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@11 f_78@@36))
))) (forall ((o2_44@@12 T@Ref) (f_78@@37 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@12 f_78@@37) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@75) o2_44@@12 f_78@@37) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@12 f_78@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@12 f_78@@37))
))) (forall ((o2_44@@13 T@Ref) (f_78@@38 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@13 f_78@@38) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@75) o2_44@@13 f_78@@38) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@13 f_78@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@13 f_78@@38))
))) (forall ((o2_44@@14 T@Ref) (f_78@@39 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@14 f_78@@39) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@14 f_78@@39) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@14 f_78@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@14 f_78@@39))
))) (forall ((o2_44@@15 T@Ref) (f_78@@40 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@15 f_78@@40) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@15 f_78@@40) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@15 f_78@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@15 f_78@@40))
))) (forall ((o2_44@@16 T@Ref) (f_78@@41 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@16 f_78@@41) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@75) o2_44@@16 f_78@@41) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@16 f_78@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@16 f_78@@41))
))) (forall ((o2_44@@17 T@Ref) (f_78@@42 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@17 f_78@@42) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@75) o2_44@@17 f_78@@42) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@17 f_78@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@17 f_78@@42))
))) (forall ((o2_44@@18 T@Ref) (f_78@@43 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@18 f_78@@43) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) o2_44@@18 f_78@@43) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@18 f_78@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@18 f_78@@43))
))) (forall ((o2_44@@19 T@Ref) (f_78@@44 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@19 f_78@@44) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@75) o2_44@@19 f_78@@44) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@19 f_78@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@19 f_78@@44))
))) (forall ((o2_44@@20 T@Ref) (f_78@@45 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@20 f_78@@45) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@75) o2_44@@20 f_78@@45) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@20 f_78@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@20 f_78@@45))
))) (forall ((o2_44@@21 T@Ref) (f_78@@46 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@21 f_78@@46) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@75) o2_44@@21 f_78@@46) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@21 f_78@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@21 f_78@@46))
))) (forall ((o2_44@@22 T@Ref) (f_78@@47 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@22 f_78@@47) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@75) o2_44@@22 f_78@@47) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@22 f_78@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@22 f_78@@47))
))) (forall ((o2_44@@23 T@Ref) (f_78@@48 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@75) null (PredicateMaskField_14285 pm_f_44@@9))) o2_44@@23 f_78@@48) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@75) o2_44@@23 f_78@@48) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@23 f_78@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@36) o2_44@@23 f_78@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@75 ExhaleHeap@@36 Mask@@91) (IsPredicateField_14285_14286 pm_f_44@@9))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_25579) (ExhaleHeap@@37 T@PolymorphicMapType_25579) (Mask@@92 T@PolymorphicMapType_25600) (pm_f_44@@10 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@37 Mask@@92) (=> (and (HasDirectPerm_14312_14313 Mask@@92 null pm_f_44@@10) (IsPredicateField_14312_14313 pm_f_44@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@24 T@Ref) (f_78@@49 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@24 f_78@@49) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@76) o2_44@@24 f_78@@49) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@24 f_78@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@24 f_78@@49))
)) (forall ((o2_44@@25 T@Ref) (f_78@@50 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@25 f_78@@50) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@25 f_78@@50) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@25 f_78@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@25 f_78@@50))
))) (forall ((o2_44@@26 T@Ref) (f_78@@51 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@26 f_78@@51) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@76) o2_44@@26 f_78@@51) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@26 f_78@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@26 f_78@@51))
))) (forall ((o2_44@@27 T@Ref) (f_78@@52 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@27 f_78@@52) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@76) o2_44@@27 f_78@@52) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@27 f_78@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@27 f_78@@52))
))) (forall ((o2_44@@28 T@Ref) (f_78@@53 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@28 f_78@@53) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@76) o2_44@@28 f_78@@53) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@28 f_78@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@28 f_78@@53))
))) (forall ((o2_44@@29 T@Ref) (f_78@@54 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@29 f_78@@54) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@29 f_78@@54) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@29 f_78@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@29 f_78@@54))
))) (forall ((o2_44@@30 T@Ref) (f_78@@55 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@30 f_78@@55) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@30 f_78@@55) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@30 f_78@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@30 f_78@@55))
))) (forall ((o2_44@@31 T@Ref) (f_78@@56 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@31 f_78@@56) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@76) o2_44@@31 f_78@@56) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@31 f_78@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@31 f_78@@56))
))) (forall ((o2_44@@32 T@Ref) (f_78@@57 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@32 f_78@@57) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@76) o2_44@@32 f_78@@57) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@32 f_78@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@32 f_78@@57))
))) (forall ((o2_44@@33 T@Ref) (f_78@@58 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@33 f_78@@58) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@76) o2_44@@33 f_78@@58) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@33 f_78@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@33 f_78@@58))
))) (forall ((o2_44@@34 T@Ref) (f_78@@59 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@34 f_78@@59) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@34 f_78@@59) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@34 f_78@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@34 f_78@@59))
))) (forall ((o2_44@@35 T@Ref) (f_78@@60 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@35 f_78@@60) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@35 f_78@@60) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@35 f_78@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@35 f_78@@60))
))) (forall ((o2_44@@36 T@Ref) (f_78@@61 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@36 f_78@@61) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@76) o2_44@@36 f_78@@61) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@36 f_78@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@36 f_78@@61))
))) (forall ((o2_44@@37 T@Ref) (f_78@@62 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@37 f_78@@62) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@76) o2_44@@37 f_78@@62) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@37 f_78@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@37 f_78@@62))
))) (forall ((o2_44@@38 T@Ref) (f_78@@63 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@38 f_78@@63) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@76) o2_44@@38 f_78@@63) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@38 f_78@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@38 f_78@@63))
))) (forall ((o2_44@@39 T@Ref) (f_78@@64 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@39 f_78@@64) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@39 f_78@@64) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@39 f_78@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@39 f_78@@64))
))) (forall ((o2_44@@40 T@Ref) (f_78@@65 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@40 f_78@@65) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@40 f_78@@65) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@40 f_78@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@40 f_78@@65))
))) (forall ((o2_44@@41 T@Ref) (f_78@@66 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@41 f_78@@66) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@76) o2_44@@41 f_78@@66) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@41 f_78@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@41 f_78@@66))
))) (forall ((o2_44@@42 T@Ref) (f_78@@67 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@42 f_78@@67) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@76) o2_44@@42 f_78@@67) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@42 f_78@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@42 f_78@@67))
))) (forall ((o2_44@@43 T@Ref) (f_78@@68 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@43 f_78@@68) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@76) o2_44@@43 f_78@@68) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@43 f_78@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@43 f_78@@68))
))) (forall ((o2_44@@44 T@Ref) (f_78@@69 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@44 f_78@@69) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@76) o2_44@@44 f_78@@69) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@44 f_78@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@44 f_78@@69))
))) (forall ((o2_44@@45 T@Ref) (f_78@@70 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@45 f_78@@70) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@76) o2_44@@45 f_78@@70) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@45 f_78@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@45 f_78@@70))
))) (forall ((o2_44@@46 T@Ref) (f_78@@71 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@46 f_78@@71) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@76) o2_44@@46 f_78@@71) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@46 f_78@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@46 f_78@@71))
))) (forall ((o2_44@@47 T@Ref) (f_78@@72 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@47 f_78@@72) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@76) o2_44@@47 f_78@@72) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@47 f_78@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@47 f_78@@72))
))) (forall ((o2_44@@48 T@Ref) (f_78@@73 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) null (PredicateMaskField_14312 pm_f_44@@10))) o2_44@@48 f_78@@73) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@76) o2_44@@48 f_78@@73) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@48 f_78@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@37) o2_44@@48 f_78@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@76 ExhaleHeap@@37 Mask@@92) (IsPredicateField_14312_14313 pm_f_44@@10))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_25579) (ExhaleHeap@@38 T@PolymorphicMapType_25579) (Mask@@93 T@PolymorphicMapType_25600) (pm_f_44@@11 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@77 ExhaleHeap@@38 Mask@@93) (=> (and (HasDirectPerm_14257_14258 Mask@@93 null pm_f_44@@11) (IsPredicateField_14257_14258 pm_f_44@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@49 T@Ref) (f_78@@74 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@49 f_78@@74) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@77) o2_44@@49 f_78@@74) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@49 f_78@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@49 f_78@@74))
)) (forall ((o2_44@@50 T@Ref) (f_78@@75 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@50 f_78@@75) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@50 f_78@@75) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@50 f_78@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@50 f_78@@75))
))) (forall ((o2_44@@51 T@Ref) (f_78@@76 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@51 f_78@@76) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@77) o2_44@@51 f_78@@76) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@51 f_78@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@51 f_78@@76))
))) (forall ((o2_44@@52 T@Ref) (f_78@@77 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@52 f_78@@77) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@77) o2_44@@52 f_78@@77) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@52 f_78@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@52 f_78@@77))
))) (forall ((o2_44@@53 T@Ref) (f_78@@78 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@53 f_78@@78) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@77) o2_44@@53 f_78@@78) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@53 f_78@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@53 f_78@@78))
))) (forall ((o2_44@@54 T@Ref) (f_78@@79 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@54 f_78@@79) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@54 f_78@@79) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@54 f_78@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@54 f_78@@79))
))) (forall ((o2_44@@55 T@Ref) (f_78@@80 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@55 f_78@@80) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@55 f_78@@80) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@55 f_78@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@55 f_78@@80))
))) (forall ((o2_44@@56 T@Ref) (f_78@@81 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@56 f_78@@81) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@77) o2_44@@56 f_78@@81) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@56 f_78@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@56 f_78@@81))
))) (forall ((o2_44@@57 T@Ref) (f_78@@82 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@57 f_78@@82) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@77) o2_44@@57 f_78@@82) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@57 f_78@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@57 f_78@@82))
))) (forall ((o2_44@@58 T@Ref) (f_78@@83 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@58 f_78@@83) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@77) o2_44@@58 f_78@@83) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@58 f_78@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@58 f_78@@83))
))) (forall ((o2_44@@59 T@Ref) (f_78@@84 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@59 f_78@@84) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@59 f_78@@84) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@59 f_78@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@59 f_78@@84))
))) (forall ((o2_44@@60 T@Ref) (f_78@@85 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@60 f_78@@85) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@60 f_78@@85) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@60 f_78@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@60 f_78@@85))
))) (forall ((o2_44@@61 T@Ref) (f_78@@86 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@61 f_78@@86) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@77) o2_44@@61 f_78@@86) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@61 f_78@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@61 f_78@@86))
))) (forall ((o2_44@@62 T@Ref) (f_78@@87 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@62 f_78@@87) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@77) o2_44@@62 f_78@@87) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@62 f_78@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@62 f_78@@87))
))) (forall ((o2_44@@63 T@Ref) (f_78@@88 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@63 f_78@@88) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) o2_44@@63 f_78@@88) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@63 f_78@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@63 f_78@@88))
))) (forall ((o2_44@@64 T@Ref) (f_78@@89 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@64 f_78@@89) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@64 f_78@@89) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@64 f_78@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@64 f_78@@89))
))) (forall ((o2_44@@65 T@Ref) (f_78@@90 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@65 f_78@@90) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@65 f_78@@90) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@65 f_78@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@65 f_78@@90))
))) (forall ((o2_44@@66 T@Ref) (f_78@@91 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@66 f_78@@91) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@77) o2_44@@66 f_78@@91) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@66 f_78@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@66 f_78@@91))
))) (forall ((o2_44@@67 T@Ref) (f_78@@92 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@67 f_78@@92) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@77) o2_44@@67 f_78@@92) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@67 f_78@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@67 f_78@@92))
))) (forall ((o2_44@@68 T@Ref) (f_78@@93 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@68 f_78@@93) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@77) o2_44@@68 f_78@@93) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@68 f_78@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@68 f_78@@93))
))) (forall ((o2_44@@69 T@Ref) (f_78@@94 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@69 f_78@@94) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@77) o2_44@@69 f_78@@94) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@69 f_78@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@69 f_78@@94))
))) (forall ((o2_44@@70 T@Ref) (f_78@@95 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@70 f_78@@95) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@77) o2_44@@70 f_78@@95) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@70 f_78@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@70 f_78@@95))
))) (forall ((o2_44@@71 T@Ref) (f_78@@96 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@71 f_78@@96) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@77) o2_44@@71 f_78@@96) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@71 f_78@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@71 f_78@@96))
))) (forall ((o2_44@@72 T@Ref) (f_78@@97 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@72 f_78@@97) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@77) o2_44@@72 f_78@@97) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@72 f_78@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@72 f_78@@97))
))) (forall ((o2_44@@73 T@Ref) (f_78@@98 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@77) null (PredicateMaskField_14257 pm_f_44@@11))) o2_44@@73 f_78@@98) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@77) o2_44@@73 f_78@@98) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@73 f_78@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@38) o2_44@@73 f_78@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@77 ExhaleHeap@@38 Mask@@93) (IsPredicateField_14257_14258 pm_f_44@@11))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_25579) (ExhaleHeap@@39 T@PolymorphicMapType_25579) (Mask@@94 T@PolymorphicMapType_25600) (pm_f_44@@12 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@78 ExhaleHeap@@39 Mask@@94) (=> (and (HasDirectPerm_14217_14218 Mask@@94 null pm_f_44@@12) (IsPredicateField_14217_14218 pm_f_44@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@74 T@Ref) (f_78@@99 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@74 f_78@@99) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@78) o2_44@@74 f_78@@99) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@74 f_78@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@74 f_78@@99))
)) (forall ((o2_44@@75 T@Ref) (f_78@@100 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@75 f_78@@100) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@75 f_78@@100) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@75 f_78@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@75 f_78@@100))
))) (forall ((o2_44@@76 T@Ref) (f_78@@101 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@76 f_78@@101) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@78) o2_44@@76 f_78@@101) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@76 f_78@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@76 f_78@@101))
))) (forall ((o2_44@@77 T@Ref) (f_78@@102 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@77 f_78@@102) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@78) o2_44@@77 f_78@@102) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@77 f_78@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@77 f_78@@102))
))) (forall ((o2_44@@78 T@Ref) (f_78@@103 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@78 f_78@@103) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@78) o2_44@@78 f_78@@103) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@78 f_78@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@78 f_78@@103))
))) (forall ((o2_44@@79 T@Ref) (f_78@@104 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@79 f_78@@104) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@79 f_78@@104) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@79 f_78@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@79 f_78@@104))
))) (forall ((o2_44@@80 T@Ref) (f_78@@105 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@80 f_78@@105) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@80 f_78@@105) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@80 f_78@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@80 f_78@@105))
))) (forall ((o2_44@@81 T@Ref) (f_78@@106 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@81 f_78@@106) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@78) o2_44@@81 f_78@@106) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@81 f_78@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@81 f_78@@106))
))) (forall ((o2_44@@82 T@Ref) (f_78@@107 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@82 f_78@@107) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@78) o2_44@@82 f_78@@107) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@82 f_78@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@82 f_78@@107))
))) (forall ((o2_44@@83 T@Ref) (f_78@@108 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@83 f_78@@108) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) o2_44@@83 f_78@@108) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@83 f_78@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@83 f_78@@108))
))) (forall ((o2_44@@84 T@Ref) (f_78@@109 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@84 f_78@@109) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@84 f_78@@109) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@84 f_78@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@84 f_78@@109))
))) (forall ((o2_44@@85 T@Ref) (f_78@@110 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@85 f_78@@110) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@85 f_78@@110) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@85 f_78@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@85 f_78@@110))
))) (forall ((o2_44@@86 T@Ref) (f_78@@111 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@86 f_78@@111) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@78) o2_44@@86 f_78@@111) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@86 f_78@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@86 f_78@@111))
))) (forall ((o2_44@@87 T@Ref) (f_78@@112 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@87 f_78@@112) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@78) o2_44@@87 f_78@@112) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@87 f_78@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@87 f_78@@112))
))) (forall ((o2_44@@88 T@Ref) (f_78@@113 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@88 f_78@@113) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@78) o2_44@@88 f_78@@113) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@88 f_78@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@88 f_78@@113))
))) (forall ((o2_44@@89 T@Ref) (f_78@@114 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@89 f_78@@114) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@89 f_78@@114) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@89 f_78@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@89 f_78@@114))
))) (forall ((o2_44@@90 T@Ref) (f_78@@115 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@90 f_78@@115) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@90 f_78@@115) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@90 f_78@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@90 f_78@@115))
))) (forall ((o2_44@@91 T@Ref) (f_78@@116 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@91 f_78@@116) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@78) o2_44@@91 f_78@@116) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@91 f_78@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@91 f_78@@116))
))) (forall ((o2_44@@92 T@Ref) (f_78@@117 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@92 f_78@@117) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@78) o2_44@@92 f_78@@117) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@92 f_78@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@92 f_78@@117))
))) (forall ((o2_44@@93 T@Ref) (f_78@@118 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@93 f_78@@118) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@78) o2_44@@93 f_78@@118) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@93 f_78@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@93 f_78@@118))
))) (forall ((o2_44@@94 T@Ref) (f_78@@119 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@94 f_78@@119) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@78) o2_44@@94 f_78@@119) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@94 f_78@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@94 f_78@@119))
))) (forall ((o2_44@@95 T@Ref) (f_78@@120 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@95 f_78@@120) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@78) o2_44@@95 f_78@@120) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@95 f_78@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@95 f_78@@120))
))) (forall ((o2_44@@96 T@Ref) (f_78@@121 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@96 f_78@@121) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@78) o2_44@@96 f_78@@121) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@96 f_78@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@96 f_78@@121))
))) (forall ((o2_44@@97 T@Ref) (f_78@@122 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@97 f_78@@122) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@78) o2_44@@97 f_78@@122) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@97 f_78@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@97 f_78@@122))
))) (forall ((o2_44@@98 T@Ref) (f_78@@123 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@78) null (PredicateMaskField_14217 pm_f_44@@12))) o2_44@@98 f_78@@123) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@78) o2_44@@98 f_78@@123) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@98 f_78@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@39) o2_44@@98 f_78@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@78 ExhaleHeap@@39 Mask@@94) (IsPredicateField_14217_14218 pm_f_44@@12))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_25579) (ExhaleHeap@@40 T@PolymorphicMapType_25579) (Mask@@95 T@PolymorphicMapType_25600) (pm_f_44@@13 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@79 ExhaleHeap@@40 Mask@@95) (=> (and (HasDirectPerm_14127_14218 Mask@@95 null pm_f_44@@13) (IsPredicateField_14127_92945 pm_f_44@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@99 T@Ref) (f_78@@124 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@99 f_78@@124) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@79) o2_44@@99 f_78@@124) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@99 f_78@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@99 f_78@@124))
)) (forall ((o2_44@@100 T@Ref) (f_78@@125 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@100 f_78@@125) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@100 f_78@@125) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@100 f_78@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@100 f_78@@125))
))) (forall ((o2_44@@101 T@Ref) (f_78@@126 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@101 f_78@@126) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@79) o2_44@@101 f_78@@126) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@101 f_78@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@101 f_78@@126))
))) (forall ((o2_44@@102 T@Ref) (f_78@@127 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@102 f_78@@127) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@79) o2_44@@102 f_78@@127) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@102 f_78@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@102 f_78@@127))
))) (forall ((o2_44@@103 T@Ref) (f_78@@128 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@103 f_78@@128) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) o2_44@@103 f_78@@128) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@103 f_78@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@103 f_78@@128))
))) (forall ((o2_44@@104 T@Ref) (f_78@@129 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@104 f_78@@129) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@104 f_78@@129) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@104 f_78@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@104 f_78@@129))
))) (forall ((o2_44@@105 T@Ref) (f_78@@130 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@105 f_78@@130) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@105 f_78@@130) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@105 f_78@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@105 f_78@@130))
))) (forall ((o2_44@@106 T@Ref) (f_78@@131 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@106 f_78@@131) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@79) o2_44@@106 f_78@@131) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@106 f_78@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@106 f_78@@131))
))) (forall ((o2_44@@107 T@Ref) (f_78@@132 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@107 f_78@@132) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@79) o2_44@@107 f_78@@132) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@107 f_78@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@107 f_78@@132))
))) (forall ((o2_44@@108 T@Ref) (f_78@@133 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@108 f_78@@133) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@79) o2_44@@108 f_78@@133) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@108 f_78@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@108 f_78@@133))
))) (forall ((o2_44@@109 T@Ref) (f_78@@134 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@109 f_78@@134) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@109 f_78@@134) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@109 f_78@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@109 f_78@@134))
))) (forall ((o2_44@@110 T@Ref) (f_78@@135 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@110 f_78@@135) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@110 f_78@@135) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@110 f_78@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@110 f_78@@135))
))) (forall ((o2_44@@111 T@Ref) (f_78@@136 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@111 f_78@@136) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@79) o2_44@@111 f_78@@136) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@111 f_78@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@111 f_78@@136))
))) (forall ((o2_44@@112 T@Ref) (f_78@@137 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@112 f_78@@137) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@79) o2_44@@112 f_78@@137) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@112 f_78@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@112 f_78@@137))
))) (forall ((o2_44@@113 T@Ref) (f_78@@138 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@113 f_78@@138) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@79) o2_44@@113 f_78@@138) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@113 f_78@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@113 f_78@@138))
))) (forall ((o2_44@@114 T@Ref) (f_78@@139 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@114 f_78@@139) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@114 f_78@@139) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@114 f_78@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@114 f_78@@139))
))) (forall ((o2_44@@115 T@Ref) (f_78@@140 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@115 f_78@@140) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@115 f_78@@140) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@115 f_78@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@115 f_78@@140))
))) (forall ((o2_44@@116 T@Ref) (f_78@@141 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@116 f_78@@141) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@79) o2_44@@116 f_78@@141) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@116 f_78@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@116 f_78@@141))
))) (forall ((o2_44@@117 T@Ref) (f_78@@142 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@117 f_78@@142) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@79) o2_44@@117 f_78@@142) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@117 f_78@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@117 f_78@@142))
))) (forall ((o2_44@@118 T@Ref) (f_78@@143 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@118 f_78@@143) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@79) o2_44@@118 f_78@@143) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@118 f_78@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@118 f_78@@143))
))) (forall ((o2_44@@119 T@Ref) (f_78@@144 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@119 f_78@@144) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@79) o2_44@@119 f_78@@144) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@119 f_78@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@119 f_78@@144))
))) (forall ((o2_44@@120 T@Ref) (f_78@@145 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@120 f_78@@145) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@79) o2_44@@120 f_78@@145) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@120 f_78@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@120 f_78@@145))
))) (forall ((o2_44@@121 T@Ref) (f_78@@146 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@121 f_78@@146) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@79) o2_44@@121 f_78@@146) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@121 f_78@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@121 f_78@@146))
))) (forall ((o2_44@@122 T@Ref) (f_78@@147 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@122 f_78@@147) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@79) o2_44@@122 f_78@@147) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@122 f_78@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@122 f_78@@147))
))) (forall ((o2_44@@123 T@Ref) (f_78@@148 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@79) null (PredicateMaskField_14127 pm_f_44@@13))) o2_44@@123 f_78@@148) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@79) o2_44@@123 f_78@@148) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@123 f_78@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@40) o2_44@@123 f_78@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@79 ExhaleHeap@@40 Mask@@95) (IsPredicateField_14127_92945 pm_f_44@@13))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_25579) (ExhaleHeap@@41 T@PolymorphicMapType_25579) (Mask@@96 T@PolymorphicMapType_25600) (pm_f_44@@14 T@Field_51826_51827) ) (!  (=> (IdenticalOnKnownLocations Heap@@80 ExhaleHeap@@41 Mask@@96) (=> (and (HasDirectPerm_51826_14218 Mask@@96 null pm_f_44@@14) (IsWandField_51826_102648 pm_f_44@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@124 T@Ref) (f_78@@149 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@124 f_78@@149) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@80) o2_44@@124 f_78@@149) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@124 f_78@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@124 f_78@@149))
)) (forall ((o2_44@@125 T@Ref) (f_78@@150 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@125 f_78@@150) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@125 f_78@@150) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@125 f_78@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@125 f_78@@150))
))) (forall ((o2_44@@126 T@Ref) (f_78@@151 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@126 f_78@@151) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@80) o2_44@@126 f_78@@151) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@126 f_78@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@126 f_78@@151))
))) (forall ((o2_44@@127 T@Ref) (f_78@@152 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@127 f_78@@152) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@80) o2_44@@127 f_78@@152) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@127 f_78@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@127 f_78@@152))
))) (forall ((o2_44@@128 T@Ref) (f_78@@153 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@128 f_78@@153) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@80) o2_44@@128 f_78@@153) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@128 f_78@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@128 f_78@@153))
))) (forall ((o2_44@@129 T@Ref) (f_78@@154 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@129 f_78@@154) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@129 f_78@@154) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@129 f_78@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@129 f_78@@154))
))) (forall ((o2_44@@130 T@Ref) (f_78@@155 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@130 f_78@@155) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@130 f_78@@155) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@130 f_78@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@130 f_78@@155))
))) (forall ((o2_44@@131 T@Ref) (f_78@@156 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@131 f_78@@156) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@80) o2_44@@131 f_78@@156) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@131 f_78@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@131 f_78@@156))
))) (forall ((o2_44@@132 T@Ref) (f_78@@157 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@132 f_78@@157) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@80) o2_44@@132 f_78@@157) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@132 f_78@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@132 f_78@@157))
))) (forall ((o2_44@@133 T@Ref) (f_78@@158 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@133 f_78@@158) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@80) o2_44@@133 f_78@@158) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@133 f_78@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@133 f_78@@158))
))) (forall ((o2_44@@134 T@Ref) (f_78@@159 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@134 f_78@@159) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@134 f_78@@159) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@134 f_78@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@134 f_78@@159))
))) (forall ((o2_44@@135 T@Ref) (f_78@@160 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@135 f_78@@160) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@135 f_78@@160) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@135 f_78@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@135 f_78@@160))
))) (forall ((o2_44@@136 T@Ref) (f_78@@161 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@136 f_78@@161) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@80) o2_44@@136 f_78@@161) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@136 f_78@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@136 f_78@@161))
))) (forall ((o2_44@@137 T@Ref) (f_78@@162 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@137 f_78@@162) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@80) o2_44@@137 f_78@@162) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@137 f_78@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@137 f_78@@162))
))) (forall ((o2_44@@138 T@Ref) (f_78@@163 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@138 f_78@@163) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@80) o2_44@@138 f_78@@163) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@138 f_78@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@138 f_78@@163))
))) (forall ((o2_44@@139 T@Ref) (f_78@@164 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@139 f_78@@164) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@139 f_78@@164) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@139 f_78@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@139 f_78@@164))
))) (forall ((o2_44@@140 T@Ref) (f_78@@165 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@140 f_78@@165) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@140 f_78@@165) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@140 f_78@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@140 f_78@@165))
))) (forall ((o2_44@@141 T@Ref) (f_78@@166 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@141 f_78@@166) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@80) o2_44@@141 f_78@@166) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@141 f_78@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@141 f_78@@166))
))) (forall ((o2_44@@142 T@Ref) (f_78@@167 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@142 f_78@@167) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@80) o2_44@@142 f_78@@167) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@142 f_78@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@142 f_78@@167))
))) (forall ((o2_44@@143 T@Ref) (f_78@@168 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@143 f_78@@168) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) o2_44@@143 f_78@@168) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@143 f_78@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@143 f_78@@168))
))) (forall ((o2_44@@144 T@Ref) (f_78@@169 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@144 f_78@@169) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@80) o2_44@@144 f_78@@169) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@144 f_78@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@144 f_78@@169))
))) (forall ((o2_44@@145 T@Ref) (f_78@@170 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@145 f_78@@170) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@80) o2_44@@145 f_78@@170) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@145 f_78@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@145 f_78@@170))
))) (forall ((o2_44@@146 T@Ref) (f_78@@171 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@146 f_78@@171) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@80) o2_44@@146 f_78@@171) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@146 f_78@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@146 f_78@@171))
))) (forall ((o2_44@@147 T@Ref) (f_78@@172 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@147 f_78@@172) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@80) o2_44@@147 f_78@@172) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@147 f_78@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@147 f_78@@172))
))) (forall ((o2_44@@148 T@Ref) (f_78@@173 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@80) null (WandMaskField_51826 pm_f_44@@14))) o2_44@@148 f_78@@173) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@80) o2_44@@148 f_78@@173) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@148 f_78@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@41) o2_44@@148 f_78@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@80 ExhaleHeap@@41 Mask@@96) (IsWandField_51826_102648 pm_f_44@@14))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_25579) (ExhaleHeap@@42 T@PolymorphicMapType_25579) (Mask@@97 T@PolymorphicMapType_25600) (pm_f_44@@15 T@Field_52762_52763) ) (!  (=> (IdenticalOnKnownLocations Heap@@81 ExhaleHeap@@42 Mask@@97) (=> (and (HasDirectPerm_14312_14313 Mask@@97 null pm_f_44@@15) (IsWandField_14312_102291 pm_f_44@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@149 T@Ref) (f_78@@174 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@149 f_78@@174) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@81) o2_44@@149 f_78@@174) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@149 f_78@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@149 f_78@@174))
)) (forall ((o2_44@@150 T@Ref) (f_78@@175 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@150 f_78@@175) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@150 f_78@@175) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@150 f_78@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@150 f_78@@175))
))) (forall ((o2_44@@151 T@Ref) (f_78@@176 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@151 f_78@@176) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@81) o2_44@@151 f_78@@176) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@151 f_78@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@151 f_78@@176))
))) (forall ((o2_44@@152 T@Ref) (f_78@@177 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@152 f_78@@177) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@81) o2_44@@152 f_78@@177) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@152 f_78@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@152 f_78@@177))
))) (forall ((o2_44@@153 T@Ref) (f_78@@178 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@153 f_78@@178) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@81) o2_44@@153 f_78@@178) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@153 f_78@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@153 f_78@@178))
))) (forall ((o2_44@@154 T@Ref) (f_78@@179 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@154 f_78@@179) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@154 f_78@@179) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@154 f_78@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@154 f_78@@179))
))) (forall ((o2_44@@155 T@Ref) (f_78@@180 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@155 f_78@@180) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@155 f_78@@180) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@155 f_78@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@155 f_78@@180))
))) (forall ((o2_44@@156 T@Ref) (f_78@@181 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@156 f_78@@181) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@81) o2_44@@156 f_78@@181) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@156 f_78@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@156 f_78@@181))
))) (forall ((o2_44@@157 T@Ref) (f_78@@182 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@157 f_78@@182) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@81) o2_44@@157 f_78@@182) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@157 f_78@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@157 f_78@@182))
))) (forall ((o2_44@@158 T@Ref) (f_78@@183 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@158 f_78@@183) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@81) o2_44@@158 f_78@@183) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@158 f_78@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@158 f_78@@183))
))) (forall ((o2_44@@159 T@Ref) (f_78@@184 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@159 f_78@@184) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@159 f_78@@184) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@159 f_78@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@159 f_78@@184))
))) (forall ((o2_44@@160 T@Ref) (f_78@@185 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@160 f_78@@185) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@160 f_78@@185) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@160 f_78@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@160 f_78@@185))
))) (forall ((o2_44@@161 T@Ref) (f_78@@186 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@161 f_78@@186) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@81) o2_44@@161 f_78@@186) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@161 f_78@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@161 f_78@@186))
))) (forall ((o2_44@@162 T@Ref) (f_78@@187 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@162 f_78@@187) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@81) o2_44@@162 f_78@@187) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@162 f_78@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@162 f_78@@187))
))) (forall ((o2_44@@163 T@Ref) (f_78@@188 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@163 f_78@@188) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@81) o2_44@@163 f_78@@188) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@163 f_78@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@163 f_78@@188))
))) (forall ((o2_44@@164 T@Ref) (f_78@@189 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@164 f_78@@189) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@164 f_78@@189) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@164 f_78@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@164 f_78@@189))
))) (forall ((o2_44@@165 T@Ref) (f_78@@190 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@165 f_78@@190) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@165 f_78@@190) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@165 f_78@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@165 f_78@@190))
))) (forall ((o2_44@@166 T@Ref) (f_78@@191 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@166 f_78@@191) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@81) o2_44@@166 f_78@@191) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@166 f_78@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@166 f_78@@191))
))) (forall ((o2_44@@167 T@Ref) (f_78@@192 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@167 f_78@@192) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@81) o2_44@@167 f_78@@192) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@167 f_78@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@167 f_78@@192))
))) (forall ((o2_44@@168 T@Ref) (f_78@@193 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@168 f_78@@193) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@81) o2_44@@168 f_78@@193) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@168 f_78@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@168 f_78@@193))
))) (forall ((o2_44@@169 T@Ref) (f_78@@194 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@169 f_78@@194) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@81) o2_44@@169 f_78@@194) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@169 f_78@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@169 f_78@@194))
))) (forall ((o2_44@@170 T@Ref) (f_78@@195 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@170 f_78@@195) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@81) o2_44@@170 f_78@@195) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@170 f_78@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@170 f_78@@195))
))) (forall ((o2_44@@171 T@Ref) (f_78@@196 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@171 f_78@@196) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@81) o2_44@@171 f_78@@196) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@171 f_78@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@171 f_78@@196))
))) (forall ((o2_44@@172 T@Ref) (f_78@@197 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@172 f_78@@197) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@81) o2_44@@172 f_78@@197) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@172 f_78@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@172 f_78@@197))
))) (forall ((o2_44@@173 T@Ref) (f_78@@198 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) null (WandMaskField_14312 pm_f_44@@15))) o2_44@@173 f_78@@198) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@81) o2_44@@173 f_78@@198) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@173 f_78@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@42) o2_44@@173 f_78@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@81 ExhaleHeap@@42 Mask@@97) (IsWandField_14312_102291 pm_f_44@@15))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_25579) (ExhaleHeap@@43 T@PolymorphicMapType_25579) (Mask@@98 T@PolymorphicMapType_25600) (pm_f_44@@16 T@Field_50596_50597) ) (!  (=> (IdenticalOnKnownLocations Heap@@82 ExhaleHeap@@43 Mask@@98) (=> (and (HasDirectPerm_14257_14258 Mask@@98 null pm_f_44@@16) (IsWandField_14257_101934 pm_f_44@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@174 T@Ref) (f_78@@199 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@174 f_78@@199) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@82) o2_44@@174 f_78@@199) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@174 f_78@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@174 f_78@@199))
)) (forall ((o2_44@@175 T@Ref) (f_78@@200 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@175 f_78@@200) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@175 f_78@@200) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@175 f_78@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@175 f_78@@200))
))) (forall ((o2_44@@176 T@Ref) (f_78@@201 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@176 f_78@@201) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@82) o2_44@@176 f_78@@201) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@176 f_78@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@176 f_78@@201))
))) (forall ((o2_44@@177 T@Ref) (f_78@@202 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@177 f_78@@202) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@82) o2_44@@177 f_78@@202) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@177 f_78@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@177 f_78@@202))
))) (forall ((o2_44@@178 T@Ref) (f_78@@203 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@178 f_78@@203) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@82) o2_44@@178 f_78@@203) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@178 f_78@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@178 f_78@@203))
))) (forall ((o2_44@@179 T@Ref) (f_78@@204 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@179 f_78@@204) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@179 f_78@@204) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@179 f_78@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@179 f_78@@204))
))) (forall ((o2_44@@180 T@Ref) (f_78@@205 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@180 f_78@@205) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@180 f_78@@205) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@180 f_78@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@180 f_78@@205))
))) (forall ((o2_44@@181 T@Ref) (f_78@@206 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@181 f_78@@206) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@82) o2_44@@181 f_78@@206) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@181 f_78@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@181 f_78@@206))
))) (forall ((o2_44@@182 T@Ref) (f_78@@207 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@182 f_78@@207) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@82) o2_44@@182 f_78@@207) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@182 f_78@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@182 f_78@@207))
))) (forall ((o2_44@@183 T@Ref) (f_78@@208 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@183 f_78@@208) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@82) o2_44@@183 f_78@@208) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@183 f_78@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@183 f_78@@208))
))) (forall ((o2_44@@184 T@Ref) (f_78@@209 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@184 f_78@@209) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@184 f_78@@209) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@184 f_78@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@184 f_78@@209))
))) (forall ((o2_44@@185 T@Ref) (f_78@@210 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@185 f_78@@210) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@185 f_78@@210) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@185 f_78@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@185 f_78@@210))
))) (forall ((o2_44@@186 T@Ref) (f_78@@211 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@186 f_78@@211) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@82) o2_44@@186 f_78@@211) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@186 f_78@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@186 f_78@@211))
))) (forall ((o2_44@@187 T@Ref) (f_78@@212 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@187 f_78@@212) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@82) o2_44@@187 f_78@@212) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@187 f_78@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@187 f_78@@212))
))) (forall ((o2_44@@188 T@Ref) (f_78@@213 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@188 f_78@@213) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) o2_44@@188 f_78@@213) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@188 f_78@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@188 f_78@@213))
))) (forall ((o2_44@@189 T@Ref) (f_78@@214 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@189 f_78@@214) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@189 f_78@@214) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@189 f_78@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@189 f_78@@214))
))) (forall ((o2_44@@190 T@Ref) (f_78@@215 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@190 f_78@@215) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@190 f_78@@215) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@190 f_78@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@190 f_78@@215))
))) (forall ((o2_44@@191 T@Ref) (f_78@@216 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@191 f_78@@216) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@82) o2_44@@191 f_78@@216) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@191 f_78@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@191 f_78@@216))
))) (forall ((o2_44@@192 T@Ref) (f_78@@217 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@192 f_78@@217) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@82) o2_44@@192 f_78@@217) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@192 f_78@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@192 f_78@@217))
))) (forall ((o2_44@@193 T@Ref) (f_78@@218 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@193 f_78@@218) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@82) o2_44@@193 f_78@@218) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@193 f_78@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@193 f_78@@218))
))) (forall ((o2_44@@194 T@Ref) (f_78@@219 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@194 f_78@@219) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@82) o2_44@@194 f_78@@219) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@194 f_78@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@194 f_78@@219))
))) (forall ((o2_44@@195 T@Ref) (f_78@@220 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@195 f_78@@220) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@82) o2_44@@195 f_78@@220) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@195 f_78@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@195 f_78@@220))
))) (forall ((o2_44@@196 T@Ref) (f_78@@221 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@196 f_78@@221) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@82) o2_44@@196 f_78@@221) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@196 f_78@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@196 f_78@@221))
))) (forall ((o2_44@@197 T@Ref) (f_78@@222 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@197 f_78@@222) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@82) o2_44@@197 f_78@@222) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@197 f_78@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@197 f_78@@222))
))) (forall ((o2_44@@198 T@Ref) (f_78@@223 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@82) null (WandMaskField_14257 pm_f_44@@16))) o2_44@@198 f_78@@223) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@82) o2_44@@198 f_78@@223) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@198 f_78@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@43) o2_44@@198 f_78@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@82 ExhaleHeap@@43 Mask@@98) (IsWandField_14257_101934 pm_f_44@@16))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_25579) (ExhaleHeap@@44 T@PolymorphicMapType_25579) (Mask@@99 T@PolymorphicMapType_25600) (pm_f_44@@17 T@Field_32195_32196) ) (!  (=> (IdenticalOnKnownLocations Heap@@83 ExhaleHeap@@44 Mask@@99) (=> (and (HasDirectPerm_14217_14218 Mask@@99 null pm_f_44@@17) (IsWandField_14217_101577 pm_f_44@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@199 T@Ref) (f_78@@224 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@199 f_78@@224) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@83) o2_44@@199 f_78@@224) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@199 f_78@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@199 f_78@@224))
)) (forall ((o2_44@@200 T@Ref) (f_78@@225 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@200 f_78@@225) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@200 f_78@@225) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@200 f_78@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@200 f_78@@225))
))) (forall ((o2_44@@201 T@Ref) (f_78@@226 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@201 f_78@@226) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@83) o2_44@@201 f_78@@226) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@201 f_78@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@201 f_78@@226))
))) (forall ((o2_44@@202 T@Ref) (f_78@@227 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@202 f_78@@227) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@83) o2_44@@202 f_78@@227) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@202 f_78@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@202 f_78@@227))
))) (forall ((o2_44@@203 T@Ref) (f_78@@228 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@203 f_78@@228) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@83) o2_44@@203 f_78@@228) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@203 f_78@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@203 f_78@@228))
))) (forall ((o2_44@@204 T@Ref) (f_78@@229 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@204 f_78@@229) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@204 f_78@@229) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@204 f_78@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@204 f_78@@229))
))) (forall ((o2_44@@205 T@Ref) (f_78@@230 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@205 f_78@@230) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@205 f_78@@230) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@205 f_78@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@205 f_78@@230))
))) (forall ((o2_44@@206 T@Ref) (f_78@@231 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@206 f_78@@231) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@83) o2_44@@206 f_78@@231) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@206 f_78@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@206 f_78@@231))
))) (forall ((o2_44@@207 T@Ref) (f_78@@232 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@207 f_78@@232) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@83) o2_44@@207 f_78@@232) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@207 f_78@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@207 f_78@@232))
))) (forall ((o2_44@@208 T@Ref) (f_78@@233 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@208 f_78@@233) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) o2_44@@208 f_78@@233) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@208 f_78@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@208 f_78@@233))
))) (forall ((o2_44@@209 T@Ref) (f_78@@234 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@209 f_78@@234) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@209 f_78@@234) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@209 f_78@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@209 f_78@@234))
))) (forall ((o2_44@@210 T@Ref) (f_78@@235 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@210 f_78@@235) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@210 f_78@@235) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@210 f_78@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@210 f_78@@235))
))) (forall ((o2_44@@211 T@Ref) (f_78@@236 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@211 f_78@@236) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@83) o2_44@@211 f_78@@236) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@211 f_78@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@211 f_78@@236))
))) (forall ((o2_44@@212 T@Ref) (f_78@@237 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@212 f_78@@237) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@83) o2_44@@212 f_78@@237) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@212 f_78@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@212 f_78@@237))
))) (forall ((o2_44@@213 T@Ref) (f_78@@238 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@213 f_78@@238) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@83) o2_44@@213 f_78@@238) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@213 f_78@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@213 f_78@@238))
))) (forall ((o2_44@@214 T@Ref) (f_78@@239 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@214 f_78@@239) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@214 f_78@@239) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@214 f_78@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@214 f_78@@239))
))) (forall ((o2_44@@215 T@Ref) (f_78@@240 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@215 f_78@@240) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@215 f_78@@240) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@215 f_78@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@215 f_78@@240))
))) (forall ((o2_44@@216 T@Ref) (f_78@@241 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@216 f_78@@241) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@83) o2_44@@216 f_78@@241) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@216 f_78@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@216 f_78@@241))
))) (forall ((o2_44@@217 T@Ref) (f_78@@242 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@217 f_78@@242) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@83) o2_44@@217 f_78@@242) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@217 f_78@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@217 f_78@@242))
))) (forall ((o2_44@@218 T@Ref) (f_78@@243 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@218 f_78@@243) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@83) o2_44@@218 f_78@@243) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@218 f_78@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@218 f_78@@243))
))) (forall ((o2_44@@219 T@Ref) (f_78@@244 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@219 f_78@@244) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@83) o2_44@@219 f_78@@244) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@219 f_78@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@219 f_78@@244))
))) (forall ((o2_44@@220 T@Ref) (f_78@@245 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@220 f_78@@245) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@83) o2_44@@220 f_78@@245) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@220 f_78@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@220 f_78@@245))
))) (forall ((o2_44@@221 T@Ref) (f_78@@246 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@221 f_78@@246) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@83) o2_44@@221 f_78@@246) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@221 f_78@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@221 f_78@@246))
))) (forall ((o2_44@@222 T@Ref) (f_78@@247 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@222 f_78@@247) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@83) o2_44@@222 f_78@@247) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@222 f_78@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@222 f_78@@247))
))) (forall ((o2_44@@223 T@Ref) (f_78@@248 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@83) null (WandMaskField_14217 pm_f_44@@17))) o2_44@@223 f_78@@248) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@83) o2_44@@223 f_78@@248) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@223 f_78@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@44) o2_44@@223 f_78@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@83 ExhaleHeap@@44 Mask@@99) (IsWandField_14217_101577 pm_f_44@@17))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_25579) (ExhaleHeap@@45 T@PolymorphicMapType_25579) (Mask@@100 T@PolymorphicMapType_25600) (pm_f_44@@18 T@Field_14127_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@84 ExhaleHeap@@45 Mask@@100) (=> (and (HasDirectPerm_14127_14218 Mask@@100 null pm_f_44@@18) (IsWandField_14127_101220 pm_f_44@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_44@@224 T@Ref) (f_78@@249 T@Field_25652_25653) ) (!  (=> (select (|PolymorphicMapType_26128_14127_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@224 f_78@@249) (= (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| Heap@@84) o2_44@@224 f_78@@249) (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@224 f_78@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13805_13806#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@224 f_78@@249))
)) (forall ((o2_44@@225 T@Ref) (f_78@@250 T@Field_31894_3421) ) (!  (=> (select (|PolymorphicMapType_26128_14130_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@225 f_78@@250) (= (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@225 f_78@@250) (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@225 f_78@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14130_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@225 f_78@@250))
))) (forall ((o2_44@@226 T@Ref) (f_78@@251 T@Field_25639_53) ) (!  (=> (select (|PolymorphicMapType_26128_14127_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@226 f_78@@251) (= (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| Heap@@84) o2_44@@226 f_78@@251) (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@226 f_78@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_13802_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@226 f_78@@251))
))) (forall ((o2_44@@227 T@Ref) (f_78@@252 T@Field_14127_14218) ) (!  (=> (select (|PolymorphicMapType_26128_14127_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@227 f_78@@252) (= (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| Heap@@84) o2_44@@227 f_78@@252) (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@227 f_78@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@227 f_78@@252))
))) (forall ((o2_44@@228 T@Ref) (f_78@@253 T@Field_14127_34819) ) (!  (=> (select (|PolymorphicMapType_26128_14127_95377#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@228 f_78@@253) (= (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) o2_44@@228 f_78@@253) (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@228 f_78@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@228 f_78@@253))
))) (forall ((o2_44@@229 T@Ref) (f_78@@254 T@Field_14217_14128) ) (!  (=> (select (|PolymorphicMapType_26128_32195_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@229 f_78@@254) (= (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@229 f_78@@254) (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@229 f_78@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@229 f_78@@254))
))) (forall ((o2_44@@230 T@Ref) (f_78@@255 T@Field_14217_3421) ) (!  (=> (select (|PolymorphicMapType_26128_32195_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@230 f_78@@255) (= (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@230 f_78@@255) (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@230 f_78@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@230 f_78@@255))
))) (forall ((o2_44@@231 T@Ref) (f_78@@256 T@Field_14217_53) ) (!  (=> (select (|PolymorphicMapType_26128_32195_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@231 f_78@@256) (= (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| Heap@@84) o2_44@@231 f_78@@256) (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@231 f_78@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@231 f_78@@256))
))) (forall ((o2_44@@232 T@Ref) (f_78@@257 T@Field_32195_32196) ) (!  (=> (select (|PolymorphicMapType_26128_32195_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@232 f_78@@257) (= (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| Heap@@84) o2_44@@232 f_78@@257) (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@232 f_78@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14217_14218#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@232 f_78@@257))
))) (forall ((o2_44@@233 T@Ref) (f_78@@258 T@Field_34814_34819) ) (!  (=> (select (|PolymorphicMapType_26128_32195_96425#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@233 f_78@@258) (= (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| Heap@@84) o2_44@@233 f_78@@258) (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@233 f_78@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14221_41468#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@233 f_78@@258))
))) (forall ((o2_44@@234 T@Ref) (f_78@@259 T@Field_14257_14128) ) (!  (=> (select (|PolymorphicMapType_26128_50596_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@234 f_78@@259) (= (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@234 f_78@@259) (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@234 f_78@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@234 f_78@@259))
))) (forall ((o2_44@@235 T@Ref) (f_78@@260 T@Field_14257_3421) ) (!  (=> (select (|PolymorphicMapType_26128_50596_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@235 f_78@@260) (= (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@235 f_78@@260) (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@235 f_78@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@235 f_78@@260))
))) (forall ((o2_44@@236 T@Ref) (f_78@@261 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_26128_50596_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@236 f_78@@261) (= (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| Heap@@84) o2_44@@236 f_78@@261) (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@236 f_78@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@236 f_78@@261))
))) (forall ((o2_44@@237 T@Ref) (f_78@@262 T@Field_50596_50597) ) (!  (=> (select (|PolymorphicMapType_26128_50596_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@237 f_78@@262) (= (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| Heap@@84) o2_44@@237 f_78@@262) (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@237 f_78@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14257_14258#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@237 f_78@@262))
))) (forall ((o2_44@@238 T@Ref) (f_78@@263 T@Field_50609_50614) ) (!  (=> (select (|PolymorphicMapType_26128_50596_97473#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@238 f_78@@263) (= (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| Heap@@84) o2_44@@238 f_78@@263) (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@238 f_78@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14261_65673#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@238 f_78@@263))
))) (forall ((o2_44@@239 T@Ref) (f_78@@264 T@Field_51826_14128) ) (!  (=> (select (|PolymorphicMapType_26128_51826_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@239 f_78@@264) (= (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@239 f_78@@264) (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@239 f_78@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@239 f_78@@264))
))) (forall ((o2_44@@240 T@Ref) (f_78@@265 T@Field_51826_3421) ) (!  (=> (select (|PolymorphicMapType_26128_51826_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@240 f_78@@265) (= (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@240 f_78@@265) (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@240 f_78@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@240 f_78@@265))
))) (forall ((o2_44@@241 T@Ref) (f_78@@266 T@Field_51826_53) ) (!  (=> (select (|PolymorphicMapType_26128_51826_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@241 f_78@@266) (= (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| Heap@@84) o2_44@@241 f_78@@266) (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@241 f_78@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_51826_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@241 f_78@@266))
))) (forall ((o2_44@@242 T@Ref) (f_78@@267 T@Field_51826_51827) ) (!  (=> (select (|PolymorphicMapType_26128_51826_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@242 f_78@@267) (= (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| Heap@@84) o2_44@@242 f_78@@267) (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@242 f_78@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14285_14286#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@242 f_78@@267))
))) (forall ((o2_44@@243 T@Ref) (f_78@@268 T@Field_51839_51844) ) (!  (=> (select (|PolymorphicMapType_26128_51826_98521#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@243 f_78@@268) (= (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| Heap@@84) o2_44@@243 f_78@@268) (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@243 f_78@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14289_73596#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@243 f_78@@268))
))) (forall ((o2_44@@244 T@Ref) (f_78@@269 T@Field_14312_14128) ) (!  (=> (select (|PolymorphicMapType_26128_52762_14128#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@244 f_78@@269) (= (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| Heap@@84) o2_44@@244 f_78@@269) (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@244 f_78@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14128#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@244 f_78@@269))
))) (forall ((o2_44@@245 T@Ref) (f_78@@270 T@Field_14312_3421) ) (!  (=> (select (|PolymorphicMapType_26128_52762_3421#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@245 f_78@@270) (= (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| Heap@@84) o2_44@@245 f_78@@270) (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@245 f_78@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_3421#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@245 f_78@@270))
))) (forall ((o2_44@@246 T@Ref) (f_78@@271 T@Field_14312_53) ) (!  (=> (select (|PolymorphicMapType_26128_52762_53#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@246 f_78@@271) (= (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| Heap@@84) o2_44@@246 f_78@@271) (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@246 f_78@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_53#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@246 f_78@@271))
))) (forall ((o2_44@@247 T@Ref) (f_78@@272 T@Field_52762_52763) ) (!  (=> (select (|PolymorphicMapType_26128_52762_32196#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@247 f_78@@272) (= (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| Heap@@84) o2_44@@247 f_78@@272) (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@247 f_78@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14312_14313#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@247 f_78@@272))
))) (forall ((o2_44@@248 T@Ref) (f_78@@273 T@Field_52776_52781) ) (!  (=> (select (|PolymorphicMapType_26128_52762_99569#PolymorphicMapType_26128| (select (|PolymorphicMapType_25579_14127_88287#PolymorphicMapType_25579| Heap@@84) null (WandMaskField_14127 pm_f_44@@18))) o2_44@@248 f_78@@273) (= (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| Heap@@84) o2_44@@248 f_78@@273) (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@248 f_78@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25579_14318_80262#PolymorphicMapType_25579| ExhaleHeap@@45) o2_44@@248 f_78@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@84 ExhaleHeap@@45 Mask@@100) (IsWandField_14127_101220 pm_f_44@@18))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.320:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

