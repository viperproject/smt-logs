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
(declare-sort T@Field_23993_53 0)
(declare-sort T@Field_24006_24007 0)
(declare-sort T@Field_27957_1548 0)
(declare-sort T@Field_12136_30019 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12136_30037 0)
(declare-sort T@Field_30018_1548 0)
(declare-sort T@Field_30018_53 0)
(declare-sort T@Field_30018_24007 0)
(declare-sort T@Field_30018_30019 0)
(declare-sort T@Field_30032_30037 0)
(declare-sort T@Field_30711_1548 0)
(declare-sort T@Field_30711_53 0)
(declare-sort T@Field_30711_24007 0)
(declare-sort T@Field_30711_30712 0)
(declare-sort T@Field_30725_30730 0)
(declare-datatypes ((T@PolymorphicMapType_23954 0)) (((PolymorphicMapType_23954 (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| (Array T@Ref T@Field_27957_1548 Real)) (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_30712 Real)) (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_30019 Real)) (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| (Array T@Ref T@Field_12136_30019 Real)) (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| (Array T@Ref T@Field_23993_53 Real)) (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| (Array T@Ref T@Field_24006_24007 Real)) (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| (Array T@Ref T@Field_12136_30037 Real)) (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_1548 Real)) (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_53 Real)) (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_24007 Real)) (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| (Array T@Ref T@Field_30725_30730 Real)) (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_1548 Real)) (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_53 Real)) (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_24007 Real)) (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| (Array T@Ref T@Field_30032_30037 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24482 0)) (((PolymorphicMapType_24482 (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (Array T@Ref T@Field_23993_53 Bool)) (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (Array T@Ref T@Field_24006_24007 Bool)) (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (Array T@Ref T@Field_27957_1548 Bool)) (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (Array T@Ref T@Field_12136_30019 Bool)) (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (Array T@Ref T@Field_12136_30037 Bool)) (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_53 Bool)) (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_24007 Bool)) (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_1548 Bool)) (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_30019 Bool)) (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (Array T@Ref T@Field_30032_30037 Bool)) (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_53 Bool)) (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_24007 Bool)) (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_1548 Bool)) (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_30712 Bool)) (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (Array T@Ref T@Field_30725_30730 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23933 0)) (((PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| (Array T@Ref T@Field_23993_53 Bool)) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| (Array T@Ref T@Field_24006_24007 T@Ref)) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| (Array T@Ref T@Field_27957_1548 Int)) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| (Array T@Ref T@Field_12136_30019 T@FrameType)) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| (Array T@Ref T@Field_12136_30037 T@PolymorphicMapType_24482)) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_1548 Int)) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_53 Bool)) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_24007 T@Ref)) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_30019 T@FrameType)) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| (Array T@Ref T@Field_30032_30037 T@PolymorphicMapType_24482)) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_1548 Int)) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_53 Bool)) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_24007 T@Ref)) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_30712 T@FrameType)) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| (Array T@Ref T@Field_30725_30730 T@PolymorphicMapType_24482)) ) ) ))
(declare-fun $allocated () T@Field_23993_53)
(declare-fun History__x_hist_value () T@Field_27957_1548)
(declare-fun History__x_hist_mode () T@Field_27957_1548)
(declare-fun History__x_hist_init () T@Field_27957_1548)
(declare-fun History__x_hist_act () T@Field_27957_1548)
(declare-fun succHeap (T@PolymorphicMapType_23933 T@PolymorphicMapType_23933) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_23933 T@PolymorphicMapType_23933) Bool)
(declare-fun state (T@PolymorphicMapType_23933 T@PolymorphicMapType_23954) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_23954) Bool)
(declare-sort T@ProcessDomainType 0)
(declare-fun History__hist_do_incr (T@Ref Real T@ProcessDomainType) T@Field_30018_30019)
(declare-fun IsPredicateField_12191_12192 (T@Field_30018_30019) Bool)
(declare-fun History__hist_idle (T@Ref Real T@ProcessDomainType) T@Field_30711_30712)
(declare-fun IsPredicateField_12233_12234 (T@Field_30711_30712) Bool)
(declare-fun |History__hist_do_incr#trigger_12191| (T@PolymorphicMapType_23933 T@Field_30018_30019) Bool)
(declare-fun |History__hist_do_incr#everUsed_12191| (T@Field_30018_30019) Bool)
(declare-fun |History__hist_idle#trigger_12233| (T@PolymorphicMapType_23933 T@Field_30711_30712) Bool)
(declare-fun |History__hist_idle#everUsed_12233| (T@Field_30711_30712) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_24482)
(declare-fun getPredWandId_12191_12192 (T@Field_30018_30019) Int)
(declare-fun getPredWandId_12233_12234 (T@Field_30711_30712) Int)
(declare-fun |History__free_get_x'| (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun dummyFunction_1786 (Int) Bool)
(declare-fun |History__free_get_x#triggerStateless| (T@Ref) Int)
(declare-fun |History__hist_get_x'| (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun |History__hist_get_x#triggerStateless| (T@Ref) Int)
(declare-fun PredicateMaskField_12191 (T@Field_30018_30019) T@Field_30032_30037)
(declare-fun |History__hist_do_incr#sm| (T@Ref Real T@ProcessDomainType) T@Field_30032_30037)
(declare-fun PredicateMaskField_12233 (T@Field_30711_30712) T@Field_30725_30730)
(declare-fun |History__hist_idle#sm| (T@Ref Real T@ProcessDomainType) T@Field_30725_30730)
(declare-fun History__free_get_x (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun History__hist_get_x (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_23933 T@PolymorphicMapType_23933 T@PolymorphicMapType_23954) Bool)
(declare-fun null () T@Ref)
(declare-fun HasDirectPerm_30711_30019 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_30712) Bool)
(declare-fun HasDirectPerm_30018_30019 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_30019) Bool)
(declare-fun IsPredicateField_12136_80907 (T@Field_12136_30019) Bool)
(declare-fun PredicateMaskField_12136 (T@Field_12136_30019) T@Field_12136_30037)
(declare-fun HasDirectPerm_12136_30019 (T@PolymorphicMapType_23954 T@Ref T@Field_12136_30019) Bool)
(declare-fun IsWandField_30711_86615 (T@Field_30711_30712) Bool)
(declare-fun WandMaskField_30711 (T@Field_30711_30712) T@Field_30725_30730)
(declare-fun IsWandField_30018_86258 (T@Field_30018_30019) Bool)
(declare-fun WandMaskField_30018 (T@Field_30018_30019) T@Field_30032_30037)
(declare-fun IsWandField_12136_85901 (T@Field_12136_30019) Bool)
(declare-fun WandMaskField_12136 (T@Field_12136_30019) T@Field_12136_30037)
(declare-fun dummyHeap () T@PolymorphicMapType_23933)
(declare-fun ZeroMask () T@PolymorphicMapType_23954)
(declare-fun InsidePredicate_30711_30711 (T@Field_30711_30712 T@FrameType T@Field_30711_30712 T@FrameType) Bool)
(declare-fun InsidePredicate_30018_30018 (T@Field_30018_30019 T@FrameType T@Field_30018_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_23993_23993 (T@Field_12136_30019 T@FrameType T@Field_12136_30019 T@FrameType) Bool)
(declare-fun IsPredicateField_12136_1548 (T@Field_27957_1548) Bool)
(declare-fun IsWandField_12136_1548 (T@Field_27957_1548) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12191_96933 (T@Field_30032_30037) Bool)
(declare-fun IsWandField_12191_96949 (T@Field_30032_30037) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12191_24007 (T@Field_30018_24007) Bool)
(declare-fun IsWandField_12191_24007 (T@Field_30018_24007) Bool)
(declare-fun IsPredicateField_12191_53 (T@Field_30018_53) Bool)
(declare-fun IsWandField_12191_53 (T@Field_30018_53) Bool)
(declare-fun IsPredicateField_12191_1548 (T@Field_30018_1548) Bool)
(declare-fun IsWandField_12191_1548 (T@Field_30018_1548) Bool)
(declare-fun IsPredicateField_12233_96102 (T@Field_30725_30730) Bool)
(declare-fun IsWandField_12233_96118 (T@Field_30725_30730) Bool)
(declare-fun IsPredicateField_12233_24007 (T@Field_30711_24007) Bool)
(declare-fun IsWandField_12233_24007 (T@Field_30711_24007) Bool)
(declare-fun IsPredicateField_12233_53 (T@Field_30711_53) Bool)
(declare-fun IsWandField_12233_53 (T@Field_30711_53) Bool)
(declare-fun IsPredicateField_12233_1548 (T@Field_30711_1548) Bool)
(declare-fun IsWandField_12233_1548 (T@Field_30711_1548) Bool)
(declare-fun IsPredicateField_12136_95271 (T@Field_12136_30037) Bool)
(declare-fun IsWandField_12136_95287 (T@Field_12136_30037) Bool)
(declare-fun IsPredicateField_12136_24007 (T@Field_24006_24007) Bool)
(declare-fun IsWandField_12136_24007 (T@Field_24006_24007) Bool)
(declare-fun IsPredicateField_12136_53 (T@Field_23993_53) Bool)
(declare-fun IsWandField_12136_53 (T@Field_23993_53) Bool)
(declare-fun p_seq (T@ProcessDomainType T@ProcessDomainType) T@ProcessDomainType)
(declare-fun p_single (Int) T@ProcessDomainType)
(declare-fun HasDirectPerm_30711_80619 (T@PolymorphicMapType_23954 T@Ref T@Field_30725_30730) Bool)
(declare-fun HasDirectPerm_30711_24007 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_24007) Bool)
(declare-fun HasDirectPerm_30711_53 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_53) Bool)
(declare-fun HasDirectPerm_30711_1548 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_1548) Bool)
(declare-fun HasDirectPerm_30018_79441 (T@PolymorphicMapType_23954 T@Ref T@Field_30032_30037) Bool)
(declare-fun HasDirectPerm_30018_24007 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_24007) Bool)
(declare-fun HasDirectPerm_30018_53 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_53) Bool)
(declare-fun HasDirectPerm_30018_1548 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_1548) Bool)
(declare-fun HasDirectPerm_12136_78263 (T@PolymorphicMapType_23954 T@Ref T@Field_12136_30037) Bool)
(declare-fun HasDirectPerm_12136_24007 (T@PolymorphicMapType_23954 T@Ref T@Field_24006_24007) Bool)
(declare-fun HasDirectPerm_12136_53 (T@PolymorphicMapType_23954 T@Ref T@Field_23993_53) Bool)
(declare-fun HasDirectPerm_12136_1548 (T@PolymorphicMapType_23954 T@Ref T@Field_27957_1548) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun p_incr () T@ProcessDomainType)
(declare-fun p_empty () T@ProcessDomainType)
(declare-fun sumMask (T@PolymorphicMapType_23954 T@PolymorphicMapType_23954 T@PolymorphicMapType_23954) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun p_merge (T@ProcessDomainType T@ProcessDomainType) T@ProcessDomainType)
(declare-fun |History__free_get_x#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1548 (Int) T@FrameType)
(declare-fun |History__hist_get_x#frame| (T@FrameType T@Ref) Int)
(declare-fun p_dual (Int Int) T@ProcessDomainType)
(declare-fun InsidePredicate_30711_30018 (T@Field_30711_30712 T@FrameType T@Field_30018_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_30711_23993 (T@Field_30711_30712 T@FrameType T@Field_12136_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_30018_30711 (T@Field_30018_30019 T@FrameType T@Field_30711_30712 T@FrameType) Bool)
(declare-fun InsidePredicate_30018_23993 (T@Field_30018_30019 T@FrameType T@Field_12136_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_23993_30711 (T@Field_12136_30019 T@FrameType T@Field_30711_30712 T@FrameType) Bool)
(declare-fun InsidePredicate_23993_30018 (T@Field_12136_30019 T@FrameType T@Field_30018_30019 T@FrameType) Bool)
(assert (distinct History__x_hist_value History__x_hist_mode History__x_hist_init History__x_hist_act)
)
(assert (forall ((Heap0 T@PolymorphicMapType_23933) (Heap1 T@PolymorphicMapType_23933) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_23933) (Mask T@PolymorphicMapType_23954) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_23933) (Heap1@@0 T@PolymorphicMapType_23933) (Heap2 T@PolymorphicMapType_23933) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((diz T@Ref) (frac Real) (proc T@ProcessDomainType) ) (! (IsPredicateField_12191_12192 (History__hist_do_incr diz frac proc))
 :qid |stdinbpl.425:15|
 :skolemid |41|
 :pattern ( (History__hist_do_incr diz frac proc))
)))
(assert (forall ((diz@@0 T@Ref) (frac@@0 Real) (proc@@0 T@ProcessDomainType) ) (! (IsPredicateField_12233_12234 (History__hist_idle diz@@0 frac@@0 proc@@0))
 :qid |stdinbpl.460:15|
 :skolemid |47|
 :pattern ( (History__hist_idle diz@@0 frac@@0 proc@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_23933) (diz@@1 T@Ref) (frac@@1 Real) (proc@@1 T@ProcessDomainType) ) (! (|History__hist_do_incr#everUsed_12191| (History__hist_do_incr diz@@1 frac@@1 proc@@1))
 :qid |stdinbpl.444:15|
 :skolemid |45|
 :pattern ( (|History__hist_do_incr#trigger_12191| Heap@@0 (History__hist_do_incr diz@@1 frac@@1 proc@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_23933) (diz@@2 T@Ref) (frac@@2 Real) (proc@@2 T@ProcessDomainType) ) (! (|History__hist_idle#everUsed_12233| (History__hist_idle diz@@2 frac@@2 proc@@2))
 :qid |stdinbpl.479:15|
 :skolemid |51|
 :pattern ( (|History__hist_idle#trigger_12233| Heap@@1 (History__hist_idle diz@@2 frac@@2 proc@@2)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30725_30730) ) (!  (not (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_30711_30712) ) (!  (not (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_30711_1548) ) (!  (not (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_30711_24007) ) (!  (not (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_30711_53) ) (!  (not (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_30032_30037) ) (!  (not (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_30018_30019) ) (!  (not (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_30018_1548) ) (!  (not (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_30018_24007) ) (!  (not (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_30018_53) ) (!  (not (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_12136_30037) ) (!  (not (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_12136_30019) ) (!  (not (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_27957_1548) ) (!  (not (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_24006_24007) ) (!  (not (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_23993_53) ) (!  (not (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((diz@@3 T@Ref) (frac@@3 Real) (proc@@3 T@ProcessDomainType) ) (! (= (getPredWandId_12191_12192 (History__hist_do_incr diz@@3 frac@@3 proc@@3)) 0)
 :qid |stdinbpl.429:15|
 :skolemid |42|
 :pattern ( (History__hist_do_incr diz@@3 frac@@3 proc@@3))
)))
(assert (forall ((diz@@4 T@Ref) (frac@@4 Real) (proc@@4 T@ProcessDomainType) ) (! (= (getPredWandId_12233_12234 (History__hist_idle diz@@4 frac@@4 proc@@4)) 1)
 :qid |stdinbpl.464:15|
 :skolemid |48|
 :pattern ( (History__hist_idle diz@@4 frac@@4 proc@@4))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_23933) (diz@@5 T@Ref) ) (! (dummyFunction_1786 (|History__free_get_x#triggerStateless| diz@@5))
 :qid |stdinbpl.287:15|
 :skolemid |33|
 :pattern ( (|History__free_get_x'| Heap@@2 diz@@5))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_23933) (diz@@6 T@Ref) ) (! (dummyFunction_1786 (|History__hist_get_x#triggerStateless| diz@@6))
 :qid |stdinbpl.356:15|
 :skolemid |37|
 :pattern ( (|History__hist_get_x'| Heap@@3 diz@@6))
)))
(assert (forall ((diz@@7 T@Ref) (frac@@5 Real) (proc@@5 T@ProcessDomainType) ) (! (= (PredicateMaskField_12191 (History__hist_do_incr diz@@7 frac@@5 proc@@5)) (|History__hist_do_incr#sm| diz@@7 frac@@5 proc@@5))
 :qid |stdinbpl.421:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_12191 (History__hist_do_incr diz@@7 frac@@5 proc@@5)))
)))
(assert (forall ((diz@@8 T@Ref) (frac@@6 Real) (proc@@6 T@ProcessDomainType) ) (! (= (PredicateMaskField_12233 (History__hist_idle diz@@8 frac@@6 proc@@6)) (|History__hist_idle#sm| diz@@8 frac@@6 proc@@6))
 :qid |stdinbpl.456:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_12233 (History__hist_idle diz@@8 frac@@6 proc@@6)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_23933) (diz@@9 T@Ref) ) (!  (and (= (History__free_get_x Heap@@4 diz@@9) (|History__free_get_x'| Heap@@4 diz@@9)) (dummyFunction_1786 (|History__free_get_x#triggerStateless| diz@@9)))
 :qid |stdinbpl.283:15|
 :skolemid |32|
 :pattern ( (History__free_get_x Heap@@4 diz@@9))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_23933) (diz@@10 T@Ref) ) (!  (and (= (History__hist_get_x Heap@@5 diz@@10) (|History__hist_get_x'| Heap@@5 diz@@10)) (dummyFunction_1786 (|History__hist_get_x#triggerStateless| diz@@10)))
 :qid |stdinbpl.352:15|
 :skolemid |36|
 :pattern ( (History__hist_get_x Heap@@5 diz@@10))
)))
(assert (forall ((diz@@11 T@Ref) (frac@@7 Real) (proc@@7 T@ProcessDomainType) (diz2 T@Ref) (frac2 Real) (proc2 T@ProcessDomainType) ) (!  (=> (= (History__hist_do_incr diz@@11 frac@@7 proc@@7) (History__hist_do_incr diz2 frac2 proc2)) (and (= diz@@11 diz2) (and (= frac@@7 frac2) (= proc@@7 proc2))))
 :qid |stdinbpl.435:15|
 :skolemid |43|
 :pattern ( (History__hist_do_incr diz@@11 frac@@7 proc@@7) (History__hist_do_incr diz2 frac2 proc2))
)))
(assert (forall ((diz@@12 T@Ref) (frac@@8 Real) (proc@@8 T@ProcessDomainType) (diz2@@0 T@Ref) (frac2@@0 Real) (proc2@@0 T@ProcessDomainType) ) (!  (=> (= (|History__hist_do_incr#sm| diz@@12 frac@@8 proc@@8) (|History__hist_do_incr#sm| diz2@@0 frac2@@0 proc2@@0)) (and (= diz@@12 diz2@@0) (and (= frac@@8 frac2@@0) (= proc@@8 proc2@@0))))
 :qid |stdinbpl.439:15|
 :skolemid |44|
 :pattern ( (|History__hist_do_incr#sm| diz@@12 frac@@8 proc@@8) (|History__hist_do_incr#sm| diz2@@0 frac2@@0 proc2@@0))
)))
(assert (forall ((diz@@13 T@Ref) (frac@@9 Real) (proc@@9 T@ProcessDomainType) (diz2@@1 T@Ref) (frac2@@1 Real) (proc2@@1 T@ProcessDomainType) ) (!  (=> (= (History__hist_idle diz@@13 frac@@9 proc@@9) (History__hist_idle diz2@@1 frac2@@1 proc2@@1)) (and (= diz@@13 diz2@@1) (and (= frac@@9 frac2@@1) (= proc@@9 proc2@@1))))
 :qid |stdinbpl.470:15|
 :skolemid |49|
 :pattern ( (History__hist_idle diz@@13 frac@@9 proc@@9) (History__hist_idle diz2@@1 frac2@@1 proc2@@1))
)))
(assert (forall ((diz@@14 T@Ref) (frac@@10 Real) (proc@@10 T@ProcessDomainType) (diz2@@2 T@Ref) (frac2@@2 Real) (proc2@@2 T@ProcessDomainType) ) (!  (=> (= (|History__hist_idle#sm| diz@@14 frac@@10 proc@@10) (|History__hist_idle#sm| diz2@@2 frac2@@2 proc2@@2)) (and (= diz@@14 diz2@@2) (and (= frac@@10 frac2@@2) (= proc@@10 proc2@@2))))
 :qid |stdinbpl.474:15|
 :skolemid |50|
 :pattern ( (|History__hist_idle#sm| diz@@14 frac@@10 proc@@10) (|History__hist_idle#sm| diz2@@2 frac2@@2 proc2@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_23933) (ExhaleHeap T@PolymorphicMapType_23933) (Mask@@0 T@PolymorphicMapType_23954) (pm_f T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_30711_30019 Mask@@0 null pm_f) (IsPredicateField_12233_12234 pm_f)) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@6) null (PredicateMaskField_12233 pm_f)) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap) null (PredicateMaskField_12233 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_12233_12234 pm_f) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap) null (PredicateMaskField_12233 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_23933) (ExhaleHeap@@0 T@PolymorphicMapType_23933) (Mask@@1 T@PolymorphicMapType_23954) (pm_f@@0 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_30018_30019 Mask@@1 null pm_f@@0) (IsPredicateField_12191_12192 pm_f@@0)) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@7) null (PredicateMaskField_12191 pm_f@@0)) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@0) null (PredicateMaskField_12191 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_12191_12192 pm_f@@0) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@0) null (PredicateMaskField_12191 pm_f@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_23933) (ExhaleHeap@@1 T@PolymorphicMapType_23933) (Mask@@2 T@PolymorphicMapType_23954) (pm_f@@1 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12136_30019 Mask@@2 null pm_f@@1) (IsPredicateField_12136_80907 pm_f@@1)) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@8) null (PredicateMaskField_12136 pm_f@@1)) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@1) null (PredicateMaskField_12136 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_12136_80907 pm_f@@1) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@1) null (PredicateMaskField_12136 pm_f@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_23933) (ExhaleHeap@@2 T@PolymorphicMapType_23933) (Mask@@3 T@PolymorphicMapType_23954) (pm_f@@2 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_30711_30019 Mask@@3 null pm_f@@2) (IsWandField_30711_86615 pm_f@@2)) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@9) null (WandMaskField_30711 pm_f@@2)) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@2) null (WandMaskField_30711 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsWandField_30711_86615 pm_f@@2) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@2) null (WandMaskField_30711 pm_f@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_23933) (ExhaleHeap@@3 T@PolymorphicMapType_23933) (Mask@@4 T@PolymorphicMapType_23954) (pm_f@@3 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_30018_30019 Mask@@4 null pm_f@@3) (IsWandField_30018_86258 pm_f@@3)) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@10) null (WandMaskField_30018 pm_f@@3)) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@3) null (WandMaskField_30018 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsWandField_30018_86258 pm_f@@3) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@3) null (WandMaskField_30018 pm_f@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_23933) (ExhaleHeap@@4 T@PolymorphicMapType_23933) (Mask@@5 T@PolymorphicMapType_23954) (pm_f@@4 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_12136_30019 Mask@@5 null pm_f@@4) (IsWandField_12136_85901 pm_f@@4)) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@11) null (WandMaskField_12136 pm_f@@4)) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@4) null (WandMaskField_12136 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_12136_85901 pm_f@@4) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@4) null (WandMaskField_12136 pm_f@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_23933) (ExhaleHeap@@5 T@PolymorphicMapType_23933) (Mask@@6 T@PolymorphicMapType_23954) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@12) o_1 $allocated) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_30711_30712) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_30711_30711 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30711_30711 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_30018_30019) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_30018_30018 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30018_30018 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_12136_30019) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_23993_23993 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23993_23993 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_value)))
(assert  (not (IsWandField_12136_1548 History__x_hist_value)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_mode)))
(assert  (not (IsWandField_12136_1548 History__x_hist_mode)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_init)))
(assert  (not (IsWandField_12136_1548 History__x_hist_init)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_act)))
(assert  (not (IsWandField_12136_1548 History__x_hist_act)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_23933) (ExhaleHeap@@6 T@PolymorphicMapType_23933) (Mask@@7 T@PolymorphicMapType_23954) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@13 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_23954) (o_2@@14 T@Ref) (f_4@@14 T@Field_30032_30037) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12191_96933 f_4@@14))) (not (IsWandField_12191_96949 f_4@@14))) (<= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_23954) (o_2@@15 T@Ref) (f_4@@15 T@Field_30018_24007) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12191_24007 f_4@@15))) (not (IsWandField_12191_24007 f_4@@15))) (<= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_23954) (o_2@@16 T@Ref) (f_4@@16 T@Field_30018_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_12191_53 f_4@@16))) (not (IsWandField_12191_53 f_4@@16))) (<= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_23954) (o_2@@17 T@Ref) (f_4@@17 T@Field_30018_30019) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_12191_12192 f_4@@17))) (not (IsWandField_30018_86258 f_4@@17))) (<= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_23954) (o_2@@18 T@Ref) (f_4@@18 T@Field_30018_1548) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12191_1548 f_4@@18))) (not (IsWandField_12191_1548 f_4@@18))) (<= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_23954) (o_2@@19 T@Ref) (f_4@@19 T@Field_30725_30730) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12233_96102 f_4@@19))) (not (IsWandField_12233_96118 f_4@@19))) (<= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_23954) (o_2@@20 T@Ref) (f_4@@20 T@Field_30711_24007) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_12233_24007 f_4@@20))) (not (IsWandField_12233_24007 f_4@@20))) (<= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_23954) (o_2@@21 T@Ref) (f_4@@21 T@Field_30711_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_12233_53 f_4@@21))) (not (IsWandField_12233_53 f_4@@21))) (<= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_23954) (o_2@@22 T@Ref) (f_4@@22 T@Field_30711_30712) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_12233_12234 f_4@@22))) (not (IsWandField_30711_86615 f_4@@22))) (<= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_23954) (o_2@@23 T@Ref) (f_4@@23 T@Field_30711_1548) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_12233_1548 f_4@@23))) (not (IsWandField_12233_1548 f_4@@23))) (<= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_23954) (o_2@@24 T@Ref) (f_4@@24 T@Field_12136_30037) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_12136_95271 f_4@@24))) (not (IsWandField_12136_95287 f_4@@24))) (<= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_23954) (o_2@@25 T@Ref) (f_4@@25 T@Field_24006_24007) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_12136_24007 f_4@@25))) (not (IsWandField_12136_24007 f_4@@25))) (<= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_23954) (o_2@@26 T@Ref) (f_4@@26 T@Field_23993_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_12136_53 f_4@@26))) (not (IsWandField_12136_53 f_4@@26))) (<= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_23954) (o_2@@27 T@Ref) (f_4@@27 T@Field_12136_30019) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_12136_80907 f_4@@27))) (not (IsWandField_12136_85901 f_4@@27))) (<= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_23954) (o_2@@28 T@Ref) (f_4@@28 T@Field_27957_1548) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_12136_1548 f_4@@28))) (not (IsWandField_12136_1548 f_4@@28))) (<= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((m_17 Int) (n Int) ) (! (= (p_seq (p_single m_17) (p_single n)) (p_single (+ m_17 n)))
 :qid |stdinbpl.254:15|
 :skolemid |31|
 :pattern ( (p_seq (p_single m_17) (p_single n)))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_23954) (o_2@@29 T@Ref) (f_4@@29 T@Field_30725_30730) ) (! (= (HasDirectPerm_30711_80619 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_80619 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_23954) (o_2@@30 T@Ref) (f_4@@30 T@Field_30711_30712) ) (! (= (HasDirectPerm_30711_30019 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_30019 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_23954) (o_2@@31 T@Ref) (f_4@@31 T@Field_30711_24007) ) (! (= (HasDirectPerm_30711_24007 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_24007 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_23954) (o_2@@32 T@Ref) (f_4@@32 T@Field_30711_53) ) (! (= (HasDirectPerm_30711_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_23954) (o_2@@33 T@Ref) (f_4@@33 T@Field_30711_1548) ) (! (= (HasDirectPerm_30711_1548 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_1548 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_23954) (o_2@@34 T@Ref) (f_4@@34 T@Field_30032_30037) ) (! (= (HasDirectPerm_30018_79441 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_79441 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_23954) (o_2@@35 T@Ref) (f_4@@35 T@Field_30018_30019) ) (! (= (HasDirectPerm_30018_30019 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_30019 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_23954) (o_2@@36 T@Ref) (f_4@@36 T@Field_30018_24007) ) (! (= (HasDirectPerm_30018_24007 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_24007 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_23954) (o_2@@37 T@Ref) (f_4@@37 T@Field_30018_53) ) (! (= (HasDirectPerm_30018_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_23954) (o_2@@38 T@Ref) (f_4@@38 T@Field_30018_1548) ) (! (= (HasDirectPerm_30018_1548 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_1548 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_23954) (o_2@@39 T@Ref) (f_4@@39 T@Field_12136_30037) ) (! (= (HasDirectPerm_12136_78263 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_78263 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_23954) (o_2@@40 T@Ref) (f_4@@40 T@Field_12136_30019) ) (! (= (HasDirectPerm_12136_30019 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_30019 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_23954) (o_2@@41 T@Ref) (f_4@@41 T@Field_24006_24007) ) (! (= (HasDirectPerm_12136_24007 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_24007 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_23954) (o_2@@42 T@Ref) (f_4@@42 T@Field_23993_53) ) (! (= (HasDirectPerm_12136_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_23954) (o_2@@43 T@Ref) (f_4@@43 T@Field_27957_1548) ) (! (= (HasDirectPerm_12136_1548 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_1548 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_23933) (ExhaleHeap@@7 T@PolymorphicMapType_23933) (Mask@@38 T@PolymorphicMapType_23954) (o_1@@0 T@Ref) (f_2 T@Field_30725_30730) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_30711_80619 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@14) o_1@@0 f_2) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_23933) (ExhaleHeap@@8 T@PolymorphicMapType_23933) (Mask@@39 T@PolymorphicMapType_23954) (o_1@@1 T@Ref) (f_2@@0 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_30711_30019 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@15) o_1@@1 f_2@@0) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_23933) (ExhaleHeap@@9 T@PolymorphicMapType_23933) (Mask@@40 T@PolymorphicMapType_23954) (o_1@@2 T@Ref) (f_2@@1 T@Field_30711_24007) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_30711_24007 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@16) o_1@@2 f_2@@1) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_23933) (ExhaleHeap@@10 T@PolymorphicMapType_23933) (Mask@@41 T@PolymorphicMapType_23954) (o_1@@3 T@Ref) (f_2@@2 T@Field_30711_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_30711_53 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@17) o_1@@3 f_2@@2) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_23933) (ExhaleHeap@@11 T@PolymorphicMapType_23933) (Mask@@42 T@PolymorphicMapType_23954) (o_1@@4 T@Ref) (f_2@@3 T@Field_30711_1548) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_30711_1548 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@18) o_1@@4 f_2@@3) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_23933) (ExhaleHeap@@12 T@PolymorphicMapType_23933) (Mask@@43 T@PolymorphicMapType_23954) (o_1@@5 T@Ref) (f_2@@4 T@Field_30032_30037) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_30018_79441 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@19) o_1@@5 f_2@@4) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_23933) (ExhaleHeap@@13 T@PolymorphicMapType_23933) (Mask@@44 T@PolymorphicMapType_23954) (o_1@@6 T@Ref) (f_2@@5 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_30018_30019 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@20) o_1@@6 f_2@@5) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_23933) (ExhaleHeap@@14 T@PolymorphicMapType_23933) (Mask@@45 T@PolymorphicMapType_23954) (o_1@@7 T@Ref) (f_2@@6 T@Field_30018_24007) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_30018_24007 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@21) o_1@@7 f_2@@6) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_23933) (ExhaleHeap@@15 T@PolymorphicMapType_23933) (Mask@@46 T@PolymorphicMapType_23954) (o_1@@8 T@Ref) (f_2@@7 T@Field_30018_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_30018_53 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@22) o_1@@8 f_2@@7) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_23933) (ExhaleHeap@@16 T@PolymorphicMapType_23933) (Mask@@47 T@PolymorphicMapType_23954) (o_1@@9 T@Ref) (f_2@@8 T@Field_30018_1548) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_30018_1548 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@23) o_1@@9 f_2@@8) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_23933) (ExhaleHeap@@17 T@PolymorphicMapType_23933) (Mask@@48 T@PolymorphicMapType_23954) (o_1@@10 T@Ref) (f_2@@9 T@Field_12136_30037) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_12136_78263 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@24) o_1@@10 f_2@@9) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_23933) (ExhaleHeap@@18 T@PolymorphicMapType_23933) (Mask@@49 T@PolymorphicMapType_23954) (o_1@@11 T@Ref) (f_2@@10 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_12136_30019 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@25) o_1@@11 f_2@@10) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_23933) (ExhaleHeap@@19 T@PolymorphicMapType_23933) (Mask@@50 T@PolymorphicMapType_23954) (o_1@@12 T@Ref) (f_2@@11 T@Field_24006_24007) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_12136_24007 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@26) o_1@@12 f_2@@11) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_23933) (ExhaleHeap@@20 T@PolymorphicMapType_23933) (Mask@@51 T@PolymorphicMapType_23954) (o_1@@13 T@Ref) (f_2@@12 T@Field_23993_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_12136_53 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@27) o_1@@13 f_2@@12) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_23933) (ExhaleHeap@@21 T@PolymorphicMapType_23933) (Mask@@52 T@PolymorphicMapType_23954) (o_1@@14 T@Ref) (f_2@@13 T@Field_27957_1548) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_12136_1548 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@28) o_1@@14 f_2@@13) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((p1_2 T@ProcessDomainType) ) (! (forall ((p2_1 T@ProcessDomainType) ) (! (forall ((p3_1 T@ProcessDomainType) ) (! (= (p_seq (p_seq p1_2 p2_1) p3_1) (p_seq p1_2 (p_seq p2_1 p3_1)))
 :qid |stdinbpl.228:13|
 :skolemid |25|
 :pattern ( (p_seq (p_seq p1_2 p2_1) p3_1))
 :pattern ( (p_seq p1_2 (p_seq p2_1 p3_1)))
))
 :qid |stdinbpl.226:11|
 :skolemid |26|
 :pattern ( (p_seq p1_2 p2_1))
))
 :qid |stdinbpl.224:15|
 :skolemid |27|
)))
(assert (forall ((n@@0 Int) ) (! (= (ite (> n@@0 0) (p_seq p_incr (p_single (- n@@0 1))) p_empty) (p_single n@@0))
 :qid |stdinbpl.236:15|
 :skolemid |28|
 :pattern ( (p_single n@@0))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_30032_30037) ) (! (= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_30018_24007) ) (! (= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_30018_53) ) (! (= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_30018_30019) ) (! (= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_30018_1548) ) (! (= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_30725_30730) ) (! (= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_30711_24007) ) (! (= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_30711_53) ) (! (= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_30711_30712) ) (! (= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_30711_1548) ) (! (= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_12136_30037) ) (! (= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_24006_24007) ) (! (= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_23993_53) ) (! (= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_12136_30019) ) (! (= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_27957_1548) ) (! (= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_23954) (SummandMask1 T@PolymorphicMapType_23954) (SummandMask2 T@PolymorphicMapType_23954) (o_2@@59 T@Ref) (f_4@@59 T@Field_30032_30037) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_23954) (SummandMask1@@0 T@PolymorphicMapType_23954) (SummandMask2@@0 T@PolymorphicMapType_23954) (o_2@@60 T@Ref) (f_4@@60 T@Field_30018_24007) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_23954) (SummandMask1@@1 T@PolymorphicMapType_23954) (SummandMask2@@1 T@PolymorphicMapType_23954) (o_2@@61 T@Ref) (f_4@@61 T@Field_30018_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_23954) (SummandMask1@@2 T@PolymorphicMapType_23954) (SummandMask2@@2 T@PolymorphicMapType_23954) (o_2@@62 T@Ref) (f_4@@62 T@Field_30018_30019) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_23954) (SummandMask1@@3 T@PolymorphicMapType_23954) (SummandMask2@@3 T@PolymorphicMapType_23954) (o_2@@63 T@Ref) (f_4@@63 T@Field_30018_1548) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_23954) (SummandMask1@@4 T@PolymorphicMapType_23954) (SummandMask2@@4 T@PolymorphicMapType_23954) (o_2@@64 T@Ref) (f_4@@64 T@Field_30725_30730) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_23954) (SummandMask1@@5 T@PolymorphicMapType_23954) (SummandMask2@@5 T@PolymorphicMapType_23954) (o_2@@65 T@Ref) (f_4@@65 T@Field_30711_24007) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_23954) (SummandMask1@@6 T@PolymorphicMapType_23954) (SummandMask2@@6 T@PolymorphicMapType_23954) (o_2@@66 T@Ref) (f_4@@66 T@Field_30711_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_23954) (SummandMask1@@7 T@PolymorphicMapType_23954) (SummandMask2@@7 T@PolymorphicMapType_23954) (o_2@@67 T@Ref) (f_4@@67 T@Field_30711_30712) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_23954) (SummandMask1@@8 T@PolymorphicMapType_23954) (SummandMask2@@8 T@PolymorphicMapType_23954) (o_2@@68 T@Ref) (f_4@@68 T@Field_30711_1548) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_23954) (SummandMask1@@9 T@PolymorphicMapType_23954) (SummandMask2@@9 T@PolymorphicMapType_23954) (o_2@@69 T@Ref) (f_4@@69 T@Field_12136_30037) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_23954) (SummandMask1@@10 T@PolymorphicMapType_23954) (SummandMask2@@10 T@PolymorphicMapType_23954) (o_2@@70 T@Ref) (f_4@@70 T@Field_24006_24007) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_23954) (SummandMask1@@11 T@PolymorphicMapType_23954) (SummandMask2@@11 T@PolymorphicMapType_23954) (o_2@@71 T@Ref) (f_4@@71 T@Field_23993_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_23954) (SummandMask1@@12 T@PolymorphicMapType_23954) (SummandMask2@@12 T@PolymorphicMapType_23954) (o_2@@72 T@Ref) (f_4@@72 T@Field_12136_30019) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_23954) (SummandMask1@@13 T@PolymorphicMapType_23954) (SummandMask2@@13 T@PolymorphicMapType_23954) (o_2@@73 T@Ref) (f_4@@73 T@Field_27957_1548) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_23933) (ExhaleHeap@@22 T@PolymorphicMapType_23933) (Mask@@53 T@PolymorphicMapType_23954) (pm_f@@5 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_30711_30019 Mask@@53 null pm_f@@5) (IsPredicateField_12233_12234 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@29) o2 f_2@@14) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@29) o2@@0 f_2@@15) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@29) o2@@1 f_2@@16) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@29) o2@@2 f_2@@17) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@29) o2@@3 f_2@@18) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@29) o2@@4 f_2@@19) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@29) o2@@5 f_2@@20) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@29) o2@@6 f_2@@21) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@29) o2@@7 f_2@@22) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@29) o2@@8 f_2@@23) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@29) o2@@9 f_2@@24) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@29) o2@@10 f_2@@25) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@29) o2@@11 f_2@@26) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@29) o2@@12 f_2@@27) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) o2@@13 f_2@@28) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@53) (IsPredicateField_12233_12234 pm_f@@5))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_23933) (ExhaleHeap@@23 T@PolymorphicMapType_23933) (Mask@@54 T@PolymorphicMapType_23954) (pm_f@@6 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_30018_30019 Mask@@54 null pm_f@@6) (IsPredicateField_12191_12192 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@30) o2@@14 f_2@@29) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@30) o2@@15 f_2@@30) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@30) o2@@16 f_2@@31) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@30) o2@@17 f_2@@32) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@30) o2@@18 f_2@@33) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@30) o2@@19 f_2@@34) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@30) o2@@20 f_2@@35) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@30) o2@@21 f_2@@36) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@30) o2@@22 f_2@@37) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) o2@@23 f_2@@38) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@30) o2@@24 f_2@@39) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@30) o2@@25 f_2@@40) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@30) o2@@26 f_2@@41) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@30) o2@@27 f_2@@42) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@30) o2@@28 f_2@@43) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@54) (IsPredicateField_12191_12192 pm_f@@6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_23933) (ExhaleHeap@@24 T@PolymorphicMapType_23933) (Mask@@55 T@PolymorphicMapType_23954) (pm_f@@7 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_12136_30019 Mask@@55 null pm_f@@7) (IsPredicateField_12136_80907 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@31) o2@@29 f_2@@44) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@31) o2@@30 f_2@@45) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@31) o2@@31 f_2@@46) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@31) o2@@32 f_2@@47) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) o2@@33 f_2@@48) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@31) o2@@34 f_2@@49) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@31) o2@@35 f_2@@50) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@31) o2@@36 f_2@@51) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@31) o2@@37 f_2@@52) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@31) o2@@38 f_2@@53) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@31) o2@@39 f_2@@54) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@31) o2@@40 f_2@@55) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@31) o2@@41 f_2@@56) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@31) o2@@42 f_2@@57) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@31) o2@@43 f_2@@58) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@55) (IsPredicateField_12136_80907 pm_f@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_23933) (ExhaleHeap@@25 T@PolymorphicMapType_23933) (Mask@@56 T@PolymorphicMapType_23954) (pm_f@@8 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_30711_30019 Mask@@56 null pm_f@@8) (IsWandField_30711_86615 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@32) o2@@44 f_2@@59) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@32) o2@@45 f_2@@60) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@32) o2@@46 f_2@@61) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@32) o2@@47 f_2@@62) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@32) o2@@48 f_2@@63) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@32) o2@@49 f_2@@64) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@32) o2@@50 f_2@@65) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@32) o2@@51 f_2@@66) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@32) o2@@52 f_2@@67) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@32) o2@@53 f_2@@68) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@32) o2@@54 f_2@@69) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@32) o2@@55 f_2@@70) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@32) o2@@56 f_2@@71) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@32) o2@@57 f_2@@72) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) o2@@58 f_2@@73) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@56) (IsWandField_30711_86615 pm_f@@8))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_23933) (ExhaleHeap@@26 T@PolymorphicMapType_23933) (Mask@@57 T@PolymorphicMapType_23954) (pm_f@@9 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_30018_30019 Mask@@57 null pm_f@@9) (IsWandField_30018_86258 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@33) o2@@59 f_2@@74) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@33) o2@@60 f_2@@75) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@33) o2@@61 f_2@@76) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@33) o2@@62 f_2@@77) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@33) o2@@63 f_2@@78) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@33) o2@@64 f_2@@79) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@33) o2@@65 f_2@@80) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@33) o2@@66 f_2@@81) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@33) o2@@67 f_2@@82) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) o2@@68 f_2@@83) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@33) o2@@69 f_2@@84) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@33) o2@@70 f_2@@85) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@33) o2@@71 f_2@@86) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@33) o2@@72 f_2@@87) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@33) o2@@73 f_2@@88) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@57) (IsWandField_30018_86258 pm_f@@9))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_23933) (ExhaleHeap@@27 T@PolymorphicMapType_23933) (Mask@@58 T@PolymorphicMapType_23954) (pm_f@@10 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_12136_30019 Mask@@58 null pm_f@@10) (IsWandField_12136_85901 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@34) o2@@74 f_2@@89) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@34) o2@@75 f_2@@90) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@34) o2@@76 f_2@@91) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@34) o2@@77 f_2@@92) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) o2@@78 f_2@@93) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@34) o2@@79 f_2@@94) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@34) o2@@80 f_2@@95) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@34) o2@@81 f_2@@96) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@34) o2@@82 f_2@@97) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@34) o2@@83 f_2@@98) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@34) o2@@84 f_2@@99) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@34) o2@@85 f_2@@100) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@34) o2@@86 f_2@@101) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@34) o2@@87 f_2@@102) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@34) o2@@88 f_2@@103) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@58) (IsWandField_12136_85901 pm_f@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_23933) (Mask@@59 T@PolymorphicMapType_23954) (diz@@15 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@59) (< AssumeFunctionsAbove 0)) (=> (not (= diz@@15 null)) (= (History__free_get_x Heap@@35 diz@@15) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@35) diz@@15 History__x_hist_value))))
 :qid |stdinbpl.293:15|
 :skolemid |34|
 :pattern ( (state Heap@@35 Mask@@59) (History__free_get_x Heap@@35 diz@@15))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_23933) (Mask@@60 T@PolymorphicMapType_23954) (diz@@16 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@60) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@16 null)) (= (History__hist_get_x Heap@@36 diz@@16) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@36) diz@@16 History__x_hist_value))))
 :qid |stdinbpl.362:15|
 :skolemid |38|
 :pattern ( (state Heap@@36 Mask@@60) (History__hist_get_x Heap@@36 diz@@16))
)))
(assert (forall ((p_1 T@ProcessDomainType) ) (! (= (p_merge p_empty p_1) p_1)
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (p_merge p_empty p_1))
)))
(assert (forall ((p_1@@0 T@ProcessDomainType) ) (! (= (p_seq p_empty p_1@@0) p_1@@0)
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (p_seq p_empty p_1@@0))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_23933) (Mask@@61 T@PolymorphicMapType_23954) (diz@@17 T@Ref) ) (!  (=> (state Heap@@37 Mask@@61) (= (|History__free_get_x'| Heap@@37 diz@@17) (|History__free_get_x#frame| (FrameFragment_1548 (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@37) diz@@17 History__x_hist_value)) diz@@17)))
 :qid |stdinbpl.300:15|
 :skolemid |35|
 :pattern ( (state Heap@@37 Mask@@61) (|History__free_get_x'| Heap@@37 diz@@17))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_23933) (Mask@@62 T@PolymorphicMapType_23954) (diz@@18 T@Ref) ) (!  (=> (state Heap@@38 Mask@@62) (= (|History__hist_get_x'| Heap@@38 diz@@18) (|History__hist_get_x#frame| (FrameFragment_1548 (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@38) diz@@18 History__x_hist_value)) diz@@18)))
 :qid |stdinbpl.369:15|
 :skolemid |39|
 :pattern ( (state Heap@@38 Mask@@62) (|History__hist_get_x'| Heap@@38 diz@@18))
)))
(assert (forall ((p_1@@1 T@ProcessDomainType) ) (! (= (p_seq p_1@@1 p_empty) p_1@@1)
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (p_seq p_1@@1 p_empty))
)))
(assert (forall ((n@@1 Int) ) (! (= (p_single n@@1) (ite (> n@@1 0) (p_seq (p_single (- n@@1 1)) p_incr) p_empty))
 :qid |stdinbpl.248:15|
 :skolemid |30|
 :pattern ( (p_single n@@1))
)))
(assert (forall ((n@@2 Int) (m_17@@0 Int) ) (! (= (p_merge (p_single n@@2) (p_single m_17@@0)) (p_dual n@@2 m_17@@0))
 :qid |stdinbpl.242:15|
 :skolemid |29|
 :pattern ( (p_dual n@@2 m_17@@0))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_23933) (o T@Ref) (f_3 T@Field_30725_30730) (v T@PolymorphicMapType_24482) ) (! (succHeap Heap@@39 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@39) (store (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@39) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@39) (store (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@39) o f_3 v)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_23933) (o@@0 T@Ref) (f_3@@0 T@Field_30711_30712) (v@@0 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@40) (store (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@40) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@40) (store (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@40) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_23933) (o@@1 T@Ref) (f_3@@1 T@Field_30711_1548) (v@@1 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@41) (store (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@41) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@41) (store (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@41) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_23933) (o@@2 T@Ref) (f_3@@2 T@Field_30711_24007) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@42) (store (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@42) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@42) (store (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@42) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_23933) (o@@3 T@Ref) (f_3@@3 T@Field_30711_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@43) (store (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@43) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@43) (store (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@43) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_23933) (o@@4 T@Ref) (f_3@@4 T@Field_30032_30037) (v@@4 T@PolymorphicMapType_24482) ) (! (succHeap Heap@@44 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@44) (store (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@44) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@44) (store (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@44) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_23933) (o@@5 T@Ref) (f_3@@5 T@Field_30018_30019) (v@@5 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@45) (store (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@45) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@45) (store (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@45) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_23933) (o@@6 T@Ref) (f_3@@6 T@Field_30018_1548) (v@@6 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@46) (store (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@46) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@46) (store (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@46) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_23933) (o@@7 T@Ref) (f_3@@7 T@Field_30018_24007) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@47) (store (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@47) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@47) (store (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@47) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_23933) (o@@8 T@Ref) (f_3@@8 T@Field_30018_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@48) (store (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@48) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@48) (store (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@48) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_23933) (o@@9 T@Ref) (f_3@@9 T@Field_12136_30037) (v@@9 T@PolymorphicMapType_24482) ) (! (succHeap Heap@@49 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@49) (store (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@49) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@49) (store (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@49) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_23933) (o@@10 T@Ref) (f_3@@10 T@Field_12136_30019) (v@@10 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@50) (store (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@50) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@50) (store (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@50) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_23933) (o@@11 T@Ref) (f_3@@11 T@Field_27957_1548) (v@@11 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@51) (store (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@51) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@51) (store (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@51) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_23933) (o@@12 T@Ref) (f_3@@12 T@Field_24006_24007) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@52) (store (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@52) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@52) (store (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@52) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_23933) (o@@13 T@Ref) (f_3@@13 T@Field_23993_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_23933 (store (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@53) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (store (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@53) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@53)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_24006_24007) (Heap@@54 T@PolymorphicMapType_23933) ) (!  (=> (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@54) o@@14 $allocated) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@54) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@54) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@54) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_30711_30712) (v_1@@2 T@FrameType) (q T@Field_30711_30712) (w@@2 T@FrameType) (r T@Field_30711_30712) (u T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30711 p@@3 v_1@@2 q w@@2) (InsidePredicate_30711_30711 q w@@2 r u)) (InsidePredicate_30711_30711 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30711 p@@3 v_1@@2 q w@@2) (InsidePredicate_30711_30711 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_30711_30712) (v_1@@3 T@FrameType) (q@@0 T@Field_30711_30712) (w@@3 T@FrameType) (r@@0 T@Field_30018_30019) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30711 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30711_30018 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_30711_30018 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30711 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30711_30018 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_30711_30712) (v_1@@4 T@FrameType) (q@@1 T@Field_30711_30712) (w@@4 T@FrameType) (r@@1 T@Field_12136_30019) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30711 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30711_23993 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_30711_23993 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30711 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30711_23993 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_30711_30712) (v_1@@5 T@FrameType) (q@@2 T@Field_30018_30019) (w@@5 T@FrameType) (r@@2 T@Field_30711_30712) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30018 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_30018_30711 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_30711_30711 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30018 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_30018_30711 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_30711_30712) (v_1@@6 T@FrameType) (q@@3 T@Field_30018_30019) (w@@6 T@FrameType) (r@@3 T@Field_30018_30019) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30018 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_30018_30018 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_30711_30018 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30018 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_30018_30018 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_30711_30712) (v_1@@7 T@FrameType) (q@@4 T@Field_30018_30019) (w@@7 T@FrameType) (r@@4 T@Field_12136_30019) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30018 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_30018_23993 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_30711_23993 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30018 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_30018_23993 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_30711_30712) (v_1@@8 T@FrameType) (q@@5 T@Field_12136_30019) (w@@8 T@FrameType) (r@@5 T@Field_30711_30712) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_23993 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_23993_30711 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_30711_30711 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_23993 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_23993_30711 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_30711_30712) (v_1@@9 T@FrameType) (q@@6 T@Field_12136_30019) (w@@9 T@FrameType) (r@@6 T@Field_30018_30019) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_23993 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_23993_30018 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_30711_30018 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_23993 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_23993_30018 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_30711_30712) (v_1@@10 T@FrameType) (q@@7 T@Field_12136_30019) (w@@10 T@FrameType) (r@@7 T@Field_12136_30019) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_23993 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_23993_23993 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_30711_23993 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_23993 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_23993_23993 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_30018_30019) (v_1@@11 T@FrameType) (q@@8 T@Field_30711_30712) (w@@11 T@FrameType) (r@@8 T@Field_30711_30712) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30711 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30711_30711 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_30018_30711 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30711 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30711_30711 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_30018_30019) (v_1@@12 T@FrameType) (q@@9 T@Field_30711_30712) (w@@12 T@FrameType) (r@@9 T@Field_30018_30019) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30711 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30711_30018 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_30018_30018 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30711 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30711_30018 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_30018_30019) (v_1@@13 T@FrameType) (q@@10 T@Field_30711_30712) (w@@13 T@FrameType) (r@@10 T@Field_12136_30019) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30711 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30711_23993 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_30018_23993 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30711 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30711_23993 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_30018_30019) (v_1@@14 T@FrameType) (q@@11 T@Field_30018_30019) (w@@14 T@FrameType) (r@@11 T@Field_30711_30712) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30018 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_30018_30711 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_30018_30711 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30018 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_30018_30711 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_30018_30019) (v_1@@15 T@FrameType) (q@@12 T@Field_30018_30019) (w@@15 T@FrameType) (r@@12 T@Field_30018_30019) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30018 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_30018_30018 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_30018_30018 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30018 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_30018_30018 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_30018_30019) (v_1@@16 T@FrameType) (q@@13 T@Field_30018_30019) (w@@16 T@FrameType) (r@@13 T@Field_12136_30019) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30018 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_30018_23993 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_30018_23993 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30018 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_30018_23993 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_30018_30019) (v_1@@17 T@FrameType) (q@@14 T@Field_12136_30019) (w@@17 T@FrameType) (r@@14 T@Field_30711_30712) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_23993 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_23993_30711 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_30018_30711 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_23993 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_23993_30711 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_30018_30019) (v_1@@18 T@FrameType) (q@@15 T@Field_12136_30019) (w@@18 T@FrameType) (r@@15 T@Field_30018_30019) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_23993 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_23993_30018 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_30018_30018 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_23993 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_23993_30018 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_30018_30019) (v_1@@19 T@FrameType) (q@@16 T@Field_12136_30019) (w@@19 T@FrameType) (r@@16 T@Field_12136_30019) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_23993 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_23993_23993 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_30018_23993 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_23993 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_23993_23993 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_12136_30019) (v_1@@20 T@FrameType) (q@@17 T@Field_30711_30712) (w@@20 T@FrameType) (r@@17 T@Field_30711_30712) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30711 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30711_30711 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_23993_30711 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30711 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30711_30711 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_12136_30019) (v_1@@21 T@FrameType) (q@@18 T@Field_30711_30712) (w@@21 T@FrameType) (r@@18 T@Field_30018_30019) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30711 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30711_30018 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_23993_30018 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30711 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30711_30018 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_12136_30019) (v_1@@22 T@FrameType) (q@@19 T@Field_30711_30712) (w@@22 T@FrameType) (r@@19 T@Field_12136_30019) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30711 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30711_23993 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_23993_23993 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30711 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30711_23993 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_12136_30019) (v_1@@23 T@FrameType) (q@@20 T@Field_30018_30019) (w@@23 T@FrameType) (r@@20 T@Field_30711_30712) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30018 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_30018_30711 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_23993_30711 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30018 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_30018_30711 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_12136_30019) (v_1@@24 T@FrameType) (q@@21 T@Field_30018_30019) (w@@24 T@FrameType) (r@@21 T@Field_30018_30019) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30018 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_30018_30018 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_23993_30018 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30018 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_30018_30018 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_12136_30019) (v_1@@25 T@FrameType) (q@@22 T@Field_30018_30019) (w@@25 T@FrameType) (r@@22 T@Field_12136_30019) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30018 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_30018_23993 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_23993_23993 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30018 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_30018_23993 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_12136_30019) (v_1@@26 T@FrameType) (q@@23 T@Field_12136_30019) (w@@26 T@FrameType) (r@@23 T@Field_30711_30712) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_23993 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_23993_30711 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_23993_30711 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_23993 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_23993_30711 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_12136_30019) (v_1@@27 T@FrameType) (q@@24 T@Field_12136_30019) (w@@27 T@FrameType) (r@@24 T@Field_30018_30019) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_23993 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_23993_30018 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_23993_30018 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_23993 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_23993_30018 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_12136_30019) (v_1@@28 T@FrameType) (q@@25 T@Field_12136_30019) (w@@28 T@FrameType) (r@@25 T@Field_12136_30019) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_23993 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_23993_23993 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_23993_23993 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_23993 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_23993_23993 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id History__merge)
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
 (=> (= (ControlFlow 0 0) 4) true)
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
(declare-sort T@Field_23993_53 0)
(declare-sort T@Field_24006_24007 0)
(declare-sort T@Field_27957_1548 0)
(declare-sort T@Field_12136_30019 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12136_30037 0)
(declare-sort T@Field_30018_1548 0)
(declare-sort T@Field_30018_53 0)
(declare-sort T@Field_30018_24007 0)
(declare-sort T@Field_30018_30019 0)
(declare-sort T@Field_30032_30037 0)
(declare-sort T@Field_30711_1548 0)
(declare-sort T@Field_30711_53 0)
(declare-sort T@Field_30711_24007 0)
(declare-sort T@Field_30711_30712 0)
(declare-sort T@Field_30725_30730 0)
(declare-datatypes ((T@PolymorphicMapType_23954 0)) (((PolymorphicMapType_23954 (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| (Array T@Ref T@Field_27957_1548 Real)) (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_30712 Real)) (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_30019 Real)) (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| (Array T@Ref T@Field_12136_30019 Real)) (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| (Array T@Ref T@Field_23993_53 Real)) (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| (Array T@Ref T@Field_24006_24007 Real)) (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| (Array T@Ref T@Field_12136_30037 Real)) (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_1548 Real)) (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_53 Real)) (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| (Array T@Ref T@Field_30711_24007 Real)) (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| (Array T@Ref T@Field_30725_30730 Real)) (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_1548 Real)) (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_53 Real)) (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| (Array T@Ref T@Field_30018_24007 Real)) (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| (Array T@Ref T@Field_30032_30037 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24482 0)) (((PolymorphicMapType_24482 (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (Array T@Ref T@Field_23993_53 Bool)) (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (Array T@Ref T@Field_24006_24007 Bool)) (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (Array T@Ref T@Field_27957_1548 Bool)) (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (Array T@Ref T@Field_12136_30019 Bool)) (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (Array T@Ref T@Field_12136_30037 Bool)) (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_53 Bool)) (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_24007 Bool)) (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_1548 Bool)) (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (Array T@Ref T@Field_30018_30019 Bool)) (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (Array T@Ref T@Field_30032_30037 Bool)) (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_53 Bool)) (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_24007 Bool)) (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_1548 Bool)) (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (Array T@Ref T@Field_30711_30712 Bool)) (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (Array T@Ref T@Field_30725_30730 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23933 0)) (((PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| (Array T@Ref T@Field_23993_53 Bool)) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| (Array T@Ref T@Field_24006_24007 T@Ref)) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| (Array T@Ref T@Field_27957_1548 Int)) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| (Array T@Ref T@Field_12136_30019 T@FrameType)) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| (Array T@Ref T@Field_12136_30037 T@PolymorphicMapType_24482)) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_1548 Int)) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_53 Bool)) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_24007 T@Ref)) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| (Array T@Ref T@Field_30018_30019 T@FrameType)) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| (Array T@Ref T@Field_30032_30037 T@PolymorphicMapType_24482)) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_1548 Int)) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_53 Bool)) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_24007 T@Ref)) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| (Array T@Ref T@Field_30711_30712 T@FrameType)) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| (Array T@Ref T@Field_30725_30730 T@PolymorphicMapType_24482)) ) ) ))
(declare-fun $allocated () T@Field_23993_53)
(declare-fun History__x_hist_value () T@Field_27957_1548)
(declare-fun History__x_hist_mode () T@Field_27957_1548)
(declare-fun History__x_hist_init () T@Field_27957_1548)
(declare-fun History__x_hist_act () T@Field_27957_1548)
(declare-fun succHeap (T@PolymorphicMapType_23933 T@PolymorphicMapType_23933) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_23933 T@PolymorphicMapType_23933) Bool)
(declare-fun state (T@PolymorphicMapType_23933 T@PolymorphicMapType_23954) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_23954) Bool)
(declare-sort T@ProcessDomainType 0)
(declare-fun History__hist_do_incr (T@Ref Real T@ProcessDomainType) T@Field_30018_30019)
(declare-fun IsPredicateField_12191_12192 (T@Field_30018_30019) Bool)
(declare-fun History__hist_idle (T@Ref Real T@ProcessDomainType) T@Field_30711_30712)
(declare-fun IsPredicateField_12233_12234 (T@Field_30711_30712) Bool)
(declare-fun |History__hist_do_incr#trigger_12191| (T@PolymorphicMapType_23933 T@Field_30018_30019) Bool)
(declare-fun |History__hist_do_incr#everUsed_12191| (T@Field_30018_30019) Bool)
(declare-fun |History__hist_idle#trigger_12233| (T@PolymorphicMapType_23933 T@Field_30711_30712) Bool)
(declare-fun |History__hist_idle#everUsed_12233| (T@Field_30711_30712) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_24482)
(declare-fun getPredWandId_12191_12192 (T@Field_30018_30019) Int)
(declare-fun getPredWandId_12233_12234 (T@Field_30711_30712) Int)
(declare-fun |History__free_get_x'| (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun dummyFunction_1786 (Int) Bool)
(declare-fun |History__free_get_x#triggerStateless| (T@Ref) Int)
(declare-fun |History__hist_get_x'| (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun |History__hist_get_x#triggerStateless| (T@Ref) Int)
(declare-fun PredicateMaskField_12191 (T@Field_30018_30019) T@Field_30032_30037)
(declare-fun |History__hist_do_incr#sm| (T@Ref Real T@ProcessDomainType) T@Field_30032_30037)
(declare-fun PredicateMaskField_12233 (T@Field_30711_30712) T@Field_30725_30730)
(declare-fun |History__hist_idle#sm| (T@Ref Real T@ProcessDomainType) T@Field_30725_30730)
(declare-fun History__free_get_x (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun History__hist_get_x (T@PolymorphicMapType_23933 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_23933 T@PolymorphicMapType_23933 T@PolymorphicMapType_23954) Bool)
(declare-fun null () T@Ref)
(declare-fun HasDirectPerm_30711_30019 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_30712) Bool)
(declare-fun HasDirectPerm_30018_30019 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_30019) Bool)
(declare-fun IsPredicateField_12136_80907 (T@Field_12136_30019) Bool)
(declare-fun PredicateMaskField_12136 (T@Field_12136_30019) T@Field_12136_30037)
(declare-fun HasDirectPerm_12136_30019 (T@PolymorphicMapType_23954 T@Ref T@Field_12136_30019) Bool)
(declare-fun IsWandField_30711_86615 (T@Field_30711_30712) Bool)
(declare-fun WandMaskField_30711 (T@Field_30711_30712) T@Field_30725_30730)
(declare-fun IsWandField_30018_86258 (T@Field_30018_30019) Bool)
(declare-fun WandMaskField_30018 (T@Field_30018_30019) T@Field_30032_30037)
(declare-fun IsWandField_12136_85901 (T@Field_12136_30019) Bool)
(declare-fun WandMaskField_12136 (T@Field_12136_30019) T@Field_12136_30037)
(declare-fun dummyHeap () T@PolymorphicMapType_23933)
(declare-fun ZeroMask () T@PolymorphicMapType_23954)
(declare-fun InsidePredicate_30711_30711 (T@Field_30711_30712 T@FrameType T@Field_30711_30712 T@FrameType) Bool)
(declare-fun InsidePredicate_30018_30018 (T@Field_30018_30019 T@FrameType T@Field_30018_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_23993_23993 (T@Field_12136_30019 T@FrameType T@Field_12136_30019 T@FrameType) Bool)
(declare-fun IsPredicateField_12136_1548 (T@Field_27957_1548) Bool)
(declare-fun IsWandField_12136_1548 (T@Field_27957_1548) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12191_96933 (T@Field_30032_30037) Bool)
(declare-fun IsWandField_12191_96949 (T@Field_30032_30037) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12191_24007 (T@Field_30018_24007) Bool)
(declare-fun IsWandField_12191_24007 (T@Field_30018_24007) Bool)
(declare-fun IsPredicateField_12191_53 (T@Field_30018_53) Bool)
(declare-fun IsWandField_12191_53 (T@Field_30018_53) Bool)
(declare-fun IsPredicateField_12191_1548 (T@Field_30018_1548) Bool)
(declare-fun IsWandField_12191_1548 (T@Field_30018_1548) Bool)
(declare-fun IsPredicateField_12233_96102 (T@Field_30725_30730) Bool)
(declare-fun IsWandField_12233_96118 (T@Field_30725_30730) Bool)
(declare-fun IsPredicateField_12233_24007 (T@Field_30711_24007) Bool)
(declare-fun IsWandField_12233_24007 (T@Field_30711_24007) Bool)
(declare-fun IsPredicateField_12233_53 (T@Field_30711_53) Bool)
(declare-fun IsWandField_12233_53 (T@Field_30711_53) Bool)
(declare-fun IsPredicateField_12233_1548 (T@Field_30711_1548) Bool)
(declare-fun IsWandField_12233_1548 (T@Field_30711_1548) Bool)
(declare-fun IsPredicateField_12136_95271 (T@Field_12136_30037) Bool)
(declare-fun IsWandField_12136_95287 (T@Field_12136_30037) Bool)
(declare-fun IsPredicateField_12136_24007 (T@Field_24006_24007) Bool)
(declare-fun IsWandField_12136_24007 (T@Field_24006_24007) Bool)
(declare-fun IsPredicateField_12136_53 (T@Field_23993_53) Bool)
(declare-fun IsWandField_12136_53 (T@Field_23993_53) Bool)
(declare-fun p_seq (T@ProcessDomainType T@ProcessDomainType) T@ProcessDomainType)
(declare-fun p_single (Int) T@ProcessDomainType)
(declare-fun HasDirectPerm_30711_80619 (T@PolymorphicMapType_23954 T@Ref T@Field_30725_30730) Bool)
(declare-fun HasDirectPerm_30711_24007 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_24007) Bool)
(declare-fun HasDirectPerm_30711_53 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_53) Bool)
(declare-fun HasDirectPerm_30711_1548 (T@PolymorphicMapType_23954 T@Ref T@Field_30711_1548) Bool)
(declare-fun HasDirectPerm_30018_79441 (T@PolymorphicMapType_23954 T@Ref T@Field_30032_30037) Bool)
(declare-fun HasDirectPerm_30018_24007 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_24007) Bool)
(declare-fun HasDirectPerm_30018_53 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_53) Bool)
(declare-fun HasDirectPerm_30018_1548 (T@PolymorphicMapType_23954 T@Ref T@Field_30018_1548) Bool)
(declare-fun HasDirectPerm_12136_78263 (T@PolymorphicMapType_23954 T@Ref T@Field_12136_30037) Bool)
(declare-fun HasDirectPerm_12136_24007 (T@PolymorphicMapType_23954 T@Ref T@Field_24006_24007) Bool)
(declare-fun HasDirectPerm_12136_53 (T@PolymorphicMapType_23954 T@Ref T@Field_23993_53) Bool)
(declare-fun HasDirectPerm_12136_1548 (T@PolymorphicMapType_23954 T@Ref T@Field_27957_1548) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun p_incr () T@ProcessDomainType)
(declare-fun p_empty () T@ProcessDomainType)
(declare-fun sumMask (T@PolymorphicMapType_23954 T@PolymorphicMapType_23954 T@PolymorphicMapType_23954) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun p_merge (T@ProcessDomainType T@ProcessDomainType) T@ProcessDomainType)
(declare-fun |History__free_get_x#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1548 (Int) T@FrameType)
(declare-fun |History__hist_get_x#frame| (T@FrameType T@Ref) Int)
(declare-fun p_dual (Int Int) T@ProcessDomainType)
(declare-fun InsidePredicate_30711_30018 (T@Field_30711_30712 T@FrameType T@Field_30018_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_30711_23993 (T@Field_30711_30712 T@FrameType T@Field_12136_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_30018_30711 (T@Field_30018_30019 T@FrameType T@Field_30711_30712 T@FrameType) Bool)
(declare-fun InsidePredicate_30018_23993 (T@Field_30018_30019 T@FrameType T@Field_12136_30019 T@FrameType) Bool)
(declare-fun InsidePredicate_23993_30711 (T@Field_12136_30019 T@FrameType T@Field_30711_30712 T@FrameType) Bool)
(declare-fun InsidePredicate_23993_30018 (T@Field_12136_30019 T@FrameType T@Field_30018_30019 T@FrameType) Bool)
(assert (distinct History__x_hist_value History__x_hist_mode History__x_hist_init History__x_hist_act)
)
(assert (forall ((Heap0 T@PolymorphicMapType_23933) (Heap1 T@PolymorphicMapType_23933) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_23933) (Mask T@PolymorphicMapType_23954) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_23933) (Heap1@@0 T@PolymorphicMapType_23933) (Heap2 T@PolymorphicMapType_23933) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((diz T@Ref) (frac Real) (proc T@ProcessDomainType) ) (! (IsPredicateField_12191_12192 (History__hist_do_incr diz frac proc))
 :qid |stdinbpl.425:15|
 :skolemid |41|
 :pattern ( (History__hist_do_incr diz frac proc))
)))
(assert (forall ((diz@@0 T@Ref) (frac@@0 Real) (proc@@0 T@ProcessDomainType) ) (! (IsPredicateField_12233_12234 (History__hist_idle diz@@0 frac@@0 proc@@0))
 :qid |stdinbpl.460:15|
 :skolemid |47|
 :pattern ( (History__hist_idle diz@@0 frac@@0 proc@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_23933) (diz@@1 T@Ref) (frac@@1 Real) (proc@@1 T@ProcessDomainType) ) (! (|History__hist_do_incr#everUsed_12191| (History__hist_do_incr diz@@1 frac@@1 proc@@1))
 :qid |stdinbpl.444:15|
 :skolemid |45|
 :pattern ( (|History__hist_do_incr#trigger_12191| Heap@@0 (History__hist_do_incr diz@@1 frac@@1 proc@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_23933) (diz@@2 T@Ref) (frac@@2 Real) (proc@@2 T@ProcessDomainType) ) (! (|History__hist_idle#everUsed_12233| (History__hist_idle diz@@2 frac@@2 proc@@2))
 :qid |stdinbpl.479:15|
 :skolemid |51|
 :pattern ( (|History__hist_idle#trigger_12233| Heap@@1 (History__hist_idle diz@@2 frac@@2 proc@@2)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30725_30730) ) (!  (not (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_30711_30712) ) (!  (not (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_30711_1548) ) (!  (not (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_30711_24007) ) (!  (not (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_30711_53) ) (!  (not (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_30032_30037) ) (!  (not (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_30018_30019) ) (!  (not (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_30018_1548) ) (!  (not (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_30018_24007) ) (!  (not (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_30018_53) ) (!  (not (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_12136_30037) ) (!  (not (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_12136_30019) ) (!  (not (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_27957_1548) ) (!  (not (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_24006_24007) ) (!  (not (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_23993_53) ) (!  (not (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((diz@@3 T@Ref) (frac@@3 Real) (proc@@3 T@ProcessDomainType) ) (! (= (getPredWandId_12191_12192 (History__hist_do_incr diz@@3 frac@@3 proc@@3)) 0)
 :qid |stdinbpl.429:15|
 :skolemid |42|
 :pattern ( (History__hist_do_incr diz@@3 frac@@3 proc@@3))
)))
(assert (forall ((diz@@4 T@Ref) (frac@@4 Real) (proc@@4 T@ProcessDomainType) ) (! (= (getPredWandId_12233_12234 (History__hist_idle diz@@4 frac@@4 proc@@4)) 1)
 :qid |stdinbpl.464:15|
 :skolemid |48|
 :pattern ( (History__hist_idle diz@@4 frac@@4 proc@@4))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_23933) (diz@@5 T@Ref) ) (! (dummyFunction_1786 (|History__free_get_x#triggerStateless| diz@@5))
 :qid |stdinbpl.287:15|
 :skolemid |33|
 :pattern ( (|History__free_get_x'| Heap@@2 diz@@5))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_23933) (diz@@6 T@Ref) ) (! (dummyFunction_1786 (|History__hist_get_x#triggerStateless| diz@@6))
 :qid |stdinbpl.356:15|
 :skolemid |37|
 :pattern ( (|History__hist_get_x'| Heap@@3 diz@@6))
)))
(assert (forall ((diz@@7 T@Ref) (frac@@5 Real) (proc@@5 T@ProcessDomainType) ) (! (= (PredicateMaskField_12191 (History__hist_do_incr diz@@7 frac@@5 proc@@5)) (|History__hist_do_incr#sm| diz@@7 frac@@5 proc@@5))
 :qid |stdinbpl.421:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_12191 (History__hist_do_incr diz@@7 frac@@5 proc@@5)))
)))
(assert (forall ((diz@@8 T@Ref) (frac@@6 Real) (proc@@6 T@ProcessDomainType) ) (! (= (PredicateMaskField_12233 (History__hist_idle diz@@8 frac@@6 proc@@6)) (|History__hist_idle#sm| diz@@8 frac@@6 proc@@6))
 :qid |stdinbpl.456:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_12233 (History__hist_idle diz@@8 frac@@6 proc@@6)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_23933) (diz@@9 T@Ref) ) (!  (and (= (History__free_get_x Heap@@4 diz@@9) (|History__free_get_x'| Heap@@4 diz@@9)) (dummyFunction_1786 (|History__free_get_x#triggerStateless| diz@@9)))
 :qid |stdinbpl.283:15|
 :skolemid |32|
 :pattern ( (History__free_get_x Heap@@4 diz@@9))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_23933) (diz@@10 T@Ref) ) (!  (and (= (History__hist_get_x Heap@@5 diz@@10) (|History__hist_get_x'| Heap@@5 diz@@10)) (dummyFunction_1786 (|History__hist_get_x#triggerStateless| diz@@10)))
 :qid |stdinbpl.352:15|
 :skolemid |36|
 :pattern ( (History__hist_get_x Heap@@5 diz@@10))
)))
(assert (forall ((diz@@11 T@Ref) (frac@@7 Real) (proc@@7 T@ProcessDomainType) (diz2 T@Ref) (frac2 Real) (proc2 T@ProcessDomainType) ) (!  (=> (= (History__hist_do_incr diz@@11 frac@@7 proc@@7) (History__hist_do_incr diz2 frac2 proc2)) (and (= diz@@11 diz2) (and (= frac@@7 frac2) (= proc@@7 proc2))))
 :qid |stdinbpl.435:15|
 :skolemid |43|
 :pattern ( (History__hist_do_incr diz@@11 frac@@7 proc@@7) (History__hist_do_incr diz2 frac2 proc2))
)))
(assert (forall ((diz@@12 T@Ref) (frac@@8 Real) (proc@@8 T@ProcessDomainType) (diz2@@0 T@Ref) (frac2@@0 Real) (proc2@@0 T@ProcessDomainType) ) (!  (=> (= (|History__hist_do_incr#sm| diz@@12 frac@@8 proc@@8) (|History__hist_do_incr#sm| diz2@@0 frac2@@0 proc2@@0)) (and (= diz@@12 diz2@@0) (and (= frac@@8 frac2@@0) (= proc@@8 proc2@@0))))
 :qid |stdinbpl.439:15|
 :skolemid |44|
 :pattern ( (|History__hist_do_incr#sm| diz@@12 frac@@8 proc@@8) (|History__hist_do_incr#sm| diz2@@0 frac2@@0 proc2@@0))
)))
(assert (forall ((diz@@13 T@Ref) (frac@@9 Real) (proc@@9 T@ProcessDomainType) (diz2@@1 T@Ref) (frac2@@1 Real) (proc2@@1 T@ProcessDomainType) ) (!  (=> (= (History__hist_idle diz@@13 frac@@9 proc@@9) (History__hist_idle diz2@@1 frac2@@1 proc2@@1)) (and (= diz@@13 diz2@@1) (and (= frac@@9 frac2@@1) (= proc@@9 proc2@@1))))
 :qid |stdinbpl.470:15|
 :skolemid |49|
 :pattern ( (History__hist_idle diz@@13 frac@@9 proc@@9) (History__hist_idle diz2@@1 frac2@@1 proc2@@1))
)))
(assert (forall ((diz@@14 T@Ref) (frac@@10 Real) (proc@@10 T@ProcessDomainType) (diz2@@2 T@Ref) (frac2@@2 Real) (proc2@@2 T@ProcessDomainType) ) (!  (=> (= (|History__hist_idle#sm| diz@@14 frac@@10 proc@@10) (|History__hist_idle#sm| diz2@@2 frac2@@2 proc2@@2)) (and (= diz@@14 diz2@@2) (and (= frac@@10 frac2@@2) (= proc@@10 proc2@@2))))
 :qid |stdinbpl.474:15|
 :skolemid |50|
 :pattern ( (|History__hist_idle#sm| diz@@14 frac@@10 proc@@10) (|History__hist_idle#sm| diz2@@2 frac2@@2 proc2@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_23933) (ExhaleHeap T@PolymorphicMapType_23933) (Mask@@0 T@PolymorphicMapType_23954) (pm_f T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_30711_30019 Mask@@0 null pm_f) (IsPredicateField_12233_12234 pm_f)) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@6) null (PredicateMaskField_12233 pm_f)) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap) null (PredicateMaskField_12233 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_12233_12234 pm_f) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap) null (PredicateMaskField_12233 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_23933) (ExhaleHeap@@0 T@PolymorphicMapType_23933) (Mask@@1 T@PolymorphicMapType_23954) (pm_f@@0 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_30018_30019 Mask@@1 null pm_f@@0) (IsPredicateField_12191_12192 pm_f@@0)) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@7) null (PredicateMaskField_12191 pm_f@@0)) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@0) null (PredicateMaskField_12191 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_12191_12192 pm_f@@0) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@0) null (PredicateMaskField_12191 pm_f@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_23933) (ExhaleHeap@@1 T@PolymorphicMapType_23933) (Mask@@2 T@PolymorphicMapType_23954) (pm_f@@1 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12136_30019 Mask@@2 null pm_f@@1) (IsPredicateField_12136_80907 pm_f@@1)) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@8) null (PredicateMaskField_12136 pm_f@@1)) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@1) null (PredicateMaskField_12136 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_12136_80907 pm_f@@1) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@1) null (PredicateMaskField_12136 pm_f@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_23933) (ExhaleHeap@@2 T@PolymorphicMapType_23933) (Mask@@3 T@PolymorphicMapType_23954) (pm_f@@2 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_30711_30019 Mask@@3 null pm_f@@2) (IsWandField_30711_86615 pm_f@@2)) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@9) null (WandMaskField_30711 pm_f@@2)) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@2) null (WandMaskField_30711 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsWandField_30711_86615 pm_f@@2) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@2) null (WandMaskField_30711 pm_f@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_23933) (ExhaleHeap@@3 T@PolymorphicMapType_23933) (Mask@@4 T@PolymorphicMapType_23954) (pm_f@@3 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_30018_30019 Mask@@4 null pm_f@@3) (IsWandField_30018_86258 pm_f@@3)) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@10) null (WandMaskField_30018 pm_f@@3)) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@3) null (WandMaskField_30018 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsWandField_30018_86258 pm_f@@3) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@3) null (WandMaskField_30018 pm_f@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_23933) (ExhaleHeap@@4 T@PolymorphicMapType_23933) (Mask@@5 T@PolymorphicMapType_23954) (pm_f@@4 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_12136_30019 Mask@@5 null pm_f@@4) (IsWandField_12136_85901 pm_f@@4)) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@11) null (WandMaskField_12136 pm_f@@4)) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@4) null (WandMaskField_12136 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_12136_85901 pm_f@@4) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@4) null (WandMaskField_12136 pm_f@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_23933) (ExhaleHeap@@5 T@PolymorphicMapType_23933) (Mask@@6 T@PolymorphicMapType_23954) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@12) o_1 $allocated) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_30711_30712) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_30711_30711 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30711_30711 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_30018_30019) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_30018_30018 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30018_30018 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_12136_30019) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_23993_23993 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23993_23993 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_value)))
(assert  (not (IsWandField_12136_1548 History__x_hist_value)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_mode)))
(assert  (not (IsWandField_12136_1548 History__x_hist_mode)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_init)))
(assert  (not (IsWandField_12136_1548 History__x_hist_init)))
(assert  (not (IsPredicateField_12136_1548 History__x_hist_act)))
(assert  (not (IsWandField_12136_1548 History__x_hist_act)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_23933) (ExhaleHeap@@6 T@PolymorphicMapType_23933) (Mask@@7 T@PolymorphicMapType_23954) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@13 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_23954) (o_2@@14 T@Ref) (f_4@@14 T@Field_30032_30037) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12191_96933 f_4@@14))) (not (IsWandField_12191_96949 f_4@@14))) (<= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_23954) (o_2@@15 T@Ref) (f_4@@15 T@Field_30018_24007) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12191_24007 f_4@@15))) (not (IsWandField_12191_24007 f_4@@15))) (<= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_23954) (o_2@@16 T@Ref) (f_4@@16 T@Field_30018_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_12191_53 f_4@@16))) (not (IsWandField_12191_53 f_4@@16))) (<= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_23954) (o_2@@17 T@Ref) (f_4@@17 T@Field_30018_30019) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_12191_12192 f_4@@17))) (not (IsWandField_30018_86258 f_4@@17))) (<= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_23954) (o_2@@18 T@Ref) (f_4@@18 T@Field_30018_1548) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12191_1548 f_4@@18))) (not (IsWandField_12191_1548 f_4@@18))) (<= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_23954) (o_2@@19 T@Ref) (f_4@@19 T@Field_30725_30730) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12233_96102 f_4@@19))) (not (IsWandField_12233_96118 f_4@@19))) (<= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_23954) (o_2@@20 T@Ref) (f_4@@20 T@Field_30711_24007) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_12233_24007 f_4@@20))) (not (IsWandField_12233_24007 f_4@@20))) (<= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_23954) (o_2@@21 T@Ref) (f_4@@21 T@Field_30711_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_12233_53 f_4@@21))) (not (IsWandField_12233_53 f_4@@21))) (<= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_23954) (o_2@@22 T@Ref) (f_4@@22 T@Field_30711_30712) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_12233_12234 f_4@@22))) (not (IsWandField_30711_86615 f_4@@22))) (<= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_23954) (o_2@@23 T@Ref) (f_4@@23 T@Field_30711_1548) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_12233_1548 f_4@@23))) (not (IsWandField_12233_1548 f_4@@23))) (<= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_23954) (o_2@@24 T@Ref) (f_4@@24 T@Field_12136_30037) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_12136_95271 f_4@@24))) (not (IsWandField_12136_95287 f_4@@24))) (<= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_23954) (o_2@@25 T@Ref) (f_4@@25 T@Field_24006_24007) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_12136_24007 f_4@@25))) (not (IsWandField_12136_24007 f_4@@25))) (<= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_23954) (o_2@@26 T@Ref) (f_4@@26 T@Field_23993_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_12136_53 f_4@@26))) (not (IsWandField_12136_53 f_4@@26))) (<= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_23954) (o_2@@27 T@Ref) (f_4@@27 T@Field_12136_30019) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_12136_80907 f_4@@27))) (not (IsWandField_12136_85901 f_4@@27))) (<= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_23954) (o_2@@28 T@Ref) (f_4@@28 T@Field_27957_1548) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_12136_1548 f_4@@28))) (not (IsWandField_12136_1548 f_4@@28))) (<= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((m_17 Int) (n Int) ) (! (= (p_seq (p_single m_17) (p_single n)) (p_single (+ m_17 n)))
 :qid |stdinbpl.254:15|
 :skolemid |31|
 :pattern ( (p_seq (p_single m_17) (p_single n)))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_23954) (o_2@@29 T@Ref) (f_4@@29 T@Field_30725_30730) ) (! (= (HasDirectPerm_30711_80619 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_80619 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_23954) (o_2@@30 T@Ref) (f_4@@30 T@Field_30711_30712) ) (! (= (HasDirectPerm_30711_30019 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_30019 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_23954) (o_2@@31 T@Ref) (f_4@@31 T@Field_30711_24007) ) (! (= (HasDirectPerm_30711_24007 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_24007 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_23954) (o_2@@32 T@Ref) (f_4@@32 T@Field_30711_53) ) (! (= (HasDirectPerm_30711_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_23954) (o_2@@33 T@Ref) (f_4@@33 T@Field_30711_1548) ) (! (= (HasDirectPerm_30711_1548 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30711_1548 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_23954) (o_2@@34 T@Ref) (f_4@@34 T@Field_30032_30037) ) (! (= (HasDirectPerm_30018_79441 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_79441 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_23954) (o_2@@35 T@Ref) (f_4@@35 T@Field_30018_30019) ) (! (= (HasDirectPerm_30018_30019 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_30019 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_23954) (o_2@@36 T@Ref) (f_4@@36 T@Field_30018_24007) ) (! (= (HasDirectPerm_30018_24007 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_24007 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_23954) (o_2@@37 T@Ref) (f_4@@37 T@Field_30018_53) ) (! (= (HasDirectPerm_30018_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_23954) (o_2@@38 T@Ref) (f_4@@38 T@Field_30018_1548) ) (! (= (HasDirectPerm_30018_1548 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30018_1548 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_23954) (o_2@@39 T@Ref) (f_4@@39 T@Field_12136_30037) ) (! (= (HasDirectPerm_12136_78263 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_78263 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_23954) (o_2@@40 T@Ref) (f_4@@40 T@Field_12136_30019) ) (! (= (HasDirectPerm_12136_30019 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_30019 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_23954) (o_2@@41 T@Ref) (f_4@@41 T@Field_24006_24007) ) (! (= (HasDirectPerm_12136_24007 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_24007 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_23954) (o_2@@42 T@Ref) (f_4@@42 T@Field_23993_53) ) (! (= (HasDirectPerm_12136_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_23954) (o_2@@43 T@Ref) (f_4@@43 T@Field_27957_1548) ) (! (= (HasDirectPerm_12136_1548 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12136_1548 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_23933) (ExhaleHeap@@7 T@PolymorphicMapType_23933) (Mask@@38 T@PolymorphicMapType_23954) (o_1@@0 T@Ref) (f_2 T@Field_30725_30730) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_30711_80619 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@14) o_1@@0 f_2) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_23933) (ExhaleHeap@@8 T@PolymorphicMapType_23933) (Mask@@39 T@PolymorphicMapType_23954) (o_1@@1 T@Ref) (f_2@@0 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_30711_30019 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@15) o_1@@1 f_2@@0) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_23933) (ExhaleHeap@@9 T@PolymorphicMapType_23933) (Mask@@40 T@PolymorphicMapType_23954) (o_1@@2 T@Ref) (f_2@@1 T@Field_30711_24007) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_30711_24007 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@16) o_1@@2 f_2@@1) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_23933) (ExhaleHeap@@10 T@PolymorphicMapType_23933) (Mask@@41 T@PolymorphicMapType_23954) (o_1@@3 T@Ref) (f_2@@2 T@Field_30711_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_30711_53 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@17) o_1@@3 f_2@@2) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_23933) (ExhaleHeap@@11 T@PolymorphicMapType_23933) (Mask@@42 T@PolymorphicMapType_23954) (o_1@@4 T@Ref) (f_2@@3 T@Field_30711_1548) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_30711_1548 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@18) o_1@@4 f_2@@3) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_23933) (ExhaleHeap@@12 T@PolymorphicMapType_23933) (Mask@@43 T@PolymorphicMapType_23954) (o_1@@5 T@Ref) (f_2@@4 T@Field_30032_30037) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_30018_79441 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@19) o_1@@5 f_2@@4) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_23933) (ExhaleHeap@@13 T@PolymorphicMapType_23933) (Mask@@44 T@PolymorphicMapType_23954) (o_1@@6 T@Ref) (f_2@@5 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_30018_30019 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@20) o_1@@6 f_2@@5) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_23933) (ExhaleHeap@@14 T@PolymorphicMapType_23933) (Mask@@45 T@PolymorphicMapType_23954) (o_1@@7 T@Ref) (f_2@@6 T@Field_30018_24007) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_30018_24007 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@21) o_1@@7 f_2@@6) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_23933) (ExhaleHeap@@15 T@PolymorphicMapType_23933) (Mask@@46 T@PolymorphicMapType_23954) (o_1@@8 T@Ref) (f_2@@7 T@Field_30018_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_30018_53 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@22) o_1@@8 f_2@@7) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_23933) (ExhaleHeap@@16 T@PolymorphicMapType_23933) (Mask@@47 T@PolymorphicMapType_23954) (o_1@@9 T@Ref) (f_2@@8 T@Field_30018_1548) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_30018_1548 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@23) o_1@@9 f_2@@8) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_23933) (ExhaleHeap@@17 T@PolymorphicMapType_23933) (Mask@@48 T@PolymorphicMapType_23954) (o_1@@10 T@Ref) (f_2@@9 T@Field_12136_30037) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_12136_78263 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@24) o_1@@10 f_2@@9) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_23933) (ExhaleHeap@@18 T@PolymorphicMapType_23933) (Mask@@49 T@PolymorphicMapType_23954) (o_1@@11 T@Ref) (f_2@@10 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_12136_30019 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@25) o_1@@11 f_2@@10) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_23933) (ExhaleHeap@@19 T@PolymorphicMapType_23933) (Mask@@50 T@PolymorphicMapType_23954) (o_1@@12 T@Ref) (f_2@@11 T@Field_24006_24007) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_12136_24007 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@26) o_1@@12 f_2@@11) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_23933) (ExhaleHeap@@20 T@PolymorphicMapType_23933) (Mask@@51 T@PolymorphicMapType_23954) (o_1@@13 T@Ref) (f_2@@12 T@Field_23993_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_12136_53 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@27) o_1@@13 f_2@@12) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_23933) (ExhaleHeap@@21 T@PolymorphicMapType_23933) (Mask@@52 T@PolymorphicMapType_23954) (o_1@@14 T@Ref) (f_2@@13 T@Field_27957_1548) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_12136_1548 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@28) o_1@@14 f_2@@13) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((p1_2 T@ProcessDomainType) ) (! (forall ((p2_1 T@ProcessDomainType) ) (! (forall ((p3_1 T@ProcessDomainType) ) (! (= (p_seq (p_seq p1_2 p2_1) p3_1) (p_seq p1_2 (p_seq p2_1 p3_1)))
 :qid |stdinbpl.228:13|
 :skolemid |25|
 :pattern ( (p_seq (p_seq p1_2 p2_1) p3_1))
 :pattern ( (p_seq p1_2 (p_seq p2_1 p3_1)))
))
 :qid |stdinbpl.226:11|
 :skolemid |26|
 :pattern ( (p_seq p1_2 p2_1))
))
 :qid |stdinbpl.224:15|
 :skolemid |27|
)))
(assert (forall ((n@@0 Int) ) (! (= (ite (> n@@0 0) (p_seq p_incr (p_single (- n@@0 1))) p_empty) (p_single n@@0))
 :qid |stdinbpl.236:15|
 :skolemid |28|
 :pattern ( (p_single n@@0))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_30032_30037) ) (! (= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_30018_24007) ) (! (= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_30018_53) ) (! (= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_30018_30019) ) (! (= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_30018_1548) ) (! (= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_30725_30730) ) (! (= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_30711_24007) ) (! (= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_30711_53) ) (! (= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_30711_30712) ) (! (= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_30711_1548) ) (! (= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_12136_30037) ) (! (= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_24006_24007) ) (! (= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_23993_53) ) (! (= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_12136_30019) ) (! (= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_27957_1548) ) (! (= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_23954) (SummandMask1 T@PolymorphicMapType_23954) (SummandMask2 T@PolymorphicMapType_23954) (o_2@@59 T@Ref) (f_4@@59 T@Field_30032_30037) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23954_12191_93478#PolymorphicMapType_23954| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_23954) (SummandMask1@@0 T@PolymorphicMapType_23954) (SummandMask2@@0 T@PolymorphicMapType_23954) (o_2@@60 T@Ref) (f_4@@60 T@Field_30018_24007) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23954_12191_24007#PolymorphicMapType_23954| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_23954) (SummandMask1@@1 T@PolymorphicMapType_23954) (SummandMask2@@1 T@PolymorphicMapType_23954) (o_2@@61 T@Ref) (f_4@@61 T@Field_30018_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23954_12191_53#PolymorphicMapType_23954| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_23954) (SummandMask1@@2 T@PolymorphicMapType_23954) (SummandMask2@@2 T@PolymorphicMapType_23954) (o_2@@62 T@Ref) (f_4@@62 T@Field_30018_30019) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23954_12191_12192#PolymorphicMapType_23954| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_23954) (SummandMask1@@3 T@PolymorphicMapType_23954) (SummandMask2@@3 T@PolymorphicMapType_23954) (o_2@@63 T@Ref) (f_4@@63 T@Field_30018_1548) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23954_12191_1548#PolymorphicMapType_23954| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_23954) (SummandMask1@@4 T@PolymorphicMapType_23954) (SummandMask2@@4 T@PolymorphicMapType_23954) (o_2@@64 T@Ref) (f_4@@64 T@Field_30725_30730) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_23954_12233_93067#PolymorphicMapType_23954| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_23954) (SummandMask1@@5 T@PolymorphicMapType_23954) (SummandMask2@@5 T@PolymorphicMapType_23954) (o_2@@65 T@Ref) (f_4@@65 T@Field_30711_24007) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_23954_12233_24007#PolymorphicMapType_23954| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_23954) (SummandMask1@@6 T@PolymorphicMapType_23954) (SummandMask2@@6 T@PolymorphicMapType_23954) (o_2@@66 T@Ref) (f_4@@66 T@Field_30711_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_23954_12233_53#PolymorphicMapType_23954| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_23954) (SummandMask1@@7 T@PolymorphicMapType_23954) (SummandMask2@@7 T@PolymorphicMapType_23954) (o_2@@67 T@Ref) (f_4@@67 T@Field_30711_30712) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_23954_12233_12234#PolymorphicMapType_23954| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_23954) (SummandMask1@@8 T@PolymorphicMapType_23954) (SummandMask2@@8 T@PolymorphicMapType_23954) (o_2@@68 T@Ref) (f_4@@68 T@Field_30711_1548) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_23954_12233_1548#PolymorphicMapType_23954| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_23954) (SummandMask1@@9 T@PolymorphicMapType_23954) (SummandMask2@@9 T@PolymorphicMapType_23954) (o_2@@69 T@Ref) (f_4@@69 T@Field_12136_30037) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_23954_12136_92656#PolymorphicMapType_23954| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_23954) (SummandMask1@@10 T@PolymorphicMapType_23954) (SummandMask2@@10 T@PolymorphicMapType_23954) (o_2@@70 T@Ref) (f_4@@70 T@Field_24006_24007) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_23954_12136_24007#PolymorphicMapType_23954| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_23954) (SummandMask1@@11 T@PolymorphicMapType_23954) (SummandMask2@@11 T@PolymorphicMapType_23954) (o_2@@71 T@Ref) (f_4@@71 T@Field_23993_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_23954_12136_53#PolymorphicMapType_23954| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_23954) (SummandMask1@@12 T@PolymorphicMapType_23954) (SummandMask2@@12 T@PolymorphicMapType_23954) (o_2@@72 T@Ref) (f_4@@72 T@Field_12136_30019) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_23954_12136_12234#PolymorphicMapType_23954| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_23954) (SummandMask1@@13 T@PolymorphicMapType_23954) (SummandMask2@@13 T@PolymorphicMapType_23954) (o_2@@73 T@Ref) (f_4@@73 T@Field_27957_1548) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_23954_12136_1548#PolymorphicMapType_23954| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_23933) (ExhaleHeap@@22 T@PolymorphicMapType_23933) (Mask@@53 T@PolymorphicMapType_23954) (pm_f@@5 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_30711_30019 Mask@@53 null pm_f@@5) (IsPredicateField_12233_12234 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@29) o2 f_2@@14) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@29) o2@@0 f_2@@15) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@29) o2@@1 f_2@@16) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@29) o2@@2 f_2@@17) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@29) o2@@3 f_2@@18) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@29) o2@@4 f_2@@19) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@29) o2@@5 f_2@@20) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@29) o2@@6 f_2@@21) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@29) o2@@7 f_2@@22) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@29) o2@@8 f_2@@23) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@29) o2@@9 f_2@@24) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@29) o2@@10 f_2@@25) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@29) o2@@11 f_2@@26) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@29) o2@@12 f_2@@27) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) null (PredicateMaskField_12233 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@29) o2@@13 f_2@@28) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@53) (IsPredicateField_12233_12234 pm_f@@5))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_23933) (ExhaleHeap@@23 T@PolymorphicMapType_23933) (Mask@@54 T@PolymorphicMapType_23954) (pm_f@@6 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_30018_30019 Mask@@54 null pm_f@@6) (IsPredicateField_12191_12192 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@30) o2@@14 f_2@@29) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@30) o2@@15 f_2@@30) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@30) o2@@16 f_2@@31) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@30) o2@@17 f_2@@32) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@30) o2@@18 f_2@@33) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@30) o2@@19 f_2@@34) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@30) o2@@20 f_2@@35) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@30) o2@@21 f_2@@36) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@30) o2@@22 f_2@@37) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) o2@@23 f_2@@38) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@30) o2@@24 f_2@@39) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@30) o2@@25 f_2@@40) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@30) o2@@26 f_2@@41) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@30) o2@@27 f_2@@42) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@30) null (PredicateMaskField_12191 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@30) o2@@28 f_2@@43) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@54) (IsPredicateField_12191_12192 pm_f@@6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_23933) (ExhaleHeap@@24 T@PolymorphicMapType_23933) (Mask@@55 T@PolymorphicMapType_23954) (pm_f@@7 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_12136_30019 Mask@@55 null pm_f@@7) (IsPredicateField_12136_80907 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@31) o2@@29 f_2@@44) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@31) o2@@30 f_2@@45) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@31) o2@@31 f_2@@46) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@31) o2@@32 f_2@@47) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) o2@@33 f_2@@48) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@31) o2@@34 f_2@@49) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@31) o2@@35 f_2@@50) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@31) o2@@36 f_2@@51) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@31) o2@@37 f_2@@52) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@31) o2@@38 f_2@@53) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@31) o2@@39 f_2@@54) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@31) o2@@40 f_2@@55) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@31) o2@@41 f_2@@56) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@31) o2@@42 f_2@@57) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@31) null (PredicateMaskField_12136 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@31) o2@@43 f_2@@58) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@55) (IsPredicateField_12136_80907 pm_f@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_23933) (ExhaleHeap@@25 T@PolymorphicMapType_23933) (Mask@@56 T@PolymorphicMapType_23954) (pm_f@@8 T@Field_30711_30712) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_30711_30019 Mask@@56 null pm_f@@8) (IsWandField_30711_86615 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@32) o2@@44 f_2@@59) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@32) o2@@45 f_2@@60) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@32) o2@@46 f_2@@61) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@32) o2@@47 f_2@@62) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@32) o2@@48 f_2@@63) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@32) o2@@49 f_2@@64) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@32) o2@@50 f_2@@65) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@32) o2@@51 f_2@@66) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@32) o2@@52 f_2@@67) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@32) o2@@53 f_2@@68) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@32) o2@@54 f_2@@69) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@32) o2@@55 f_2@@70) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@32) o2@@56 f_2@@71) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@32) o2@@57 f_2@@72) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) null (WandMaskField_30711 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@32) o2@@58 f_2@@73) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@56) (IsWandField_30711_86615 pm_f@@8))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_23933) (ExhaleHeap@@26 T@PolymorphicMapType_23933) (Mask@@57 T@PolymorphicMapType_23954) (pm_f@@9 T@Field_30018_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_30018_30019 Mask@@57 null pm_f@@9) (IsWandField_30018_86258 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@33) o2@@59 f_2@@74) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@33) o2@@60 f_2@@75) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@33) o2@@61 f_2@@76) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@33) o2@@62 f_2@@77) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@33) o2@@63 f_2@@78) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@33) o2@@64 f_2@@79) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@33) o2@@65 f_2@@80) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@33) o2@@66 f_2@@81) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@33) o2@@67 f_2@@82) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) o2@@68 f_2@@83) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@33) o2@@69 f_2@@84) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@33) o2@@70 f_2@@85) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@33) o2@@71 f_2@@86) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@33) o2@@72 f_2@@87) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@33) null (WandMaskField_30018 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@33) o2@@73 f_2@@88) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@57) (IsWandField_30018_86258 pm_f@@9))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_23933) (ExhaleHeap@@27 T@PolymorphicMapType_23933) (Mask@@58 T@PolymorphicMapType_23954) (pm_f@@10 T@Field_12136_30019) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_12136_30019 Mask@@58 null pm_f@@10) (IsWandField_12136_85901 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_23993_53) ) (!  (=> (select (|PolymorphicMapType_24482_23993_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@34) o2@@74 f_2@@89) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_24006_24007) ) (!  (=> (select (|PolymorphicMapType_24482_23993_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@34) o2@@75 f_2@@90) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_27957_1548) ) (!  (=> (select (|PolymorphicMapType_24482_23993_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@34) o2@@76 f_2@@91) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_12136_30019) ) (!  (=> (select (|PolymorphicMapType_24482_23993_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@34) o2@@77 f_2@@92) (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_12136_30037) ) (!  (=> (select (|PolymorphicMapType_24482_23993_82716#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) o2@@78 f_2@@93) (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_30018_53) ) (!  (=> (select (|PolymorphicMapType_24482_30018_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@34) o2@@79 f_2@@94) (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_30018_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30018_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@34) o2@@80 f_2@@95) (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_30018_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30018_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@34) o2@@81 f_2@@96) (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_30018_30019) ) (!  (=> (select (|PolymorphicMapType_24482_30018_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@34) o2@@82 f_2@@97) (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_30032_30037) ) (!  (=> (select (|PolymorphicMapType_24482_30018_83764#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@34) o2@@83 f_2@@98) (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_30711_53) ) (!  (=> (select (|PolymorphicMapType_24482_30711_53#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@34) o2@@84 f_2@@99) (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_30711_24007) ) (!  (=> (select (|PolymorphicMapType_24482_30711_24007#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@34) o2@@85 f_2@@100) (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_30711_1548) ) (!  (=> (select (|PolymorphicMapType_24482_30711_1548#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@34) o2@@86 f_2@@101) (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_30711_30712) ) (!  (=> (select (|PolymorphicMapType_24482_30711_30019#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@34) o2@@87 f_2@@102) (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_30725_30730) ) (!  (=> (select (|PolymorphicMapType_24482_30711_84812#PolymorphicMapType_24482| (select (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@34) null (WandMaskField_12136 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@34) o2@@88 f_2@@103) (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@58) (IsWandField_12136_85901 pm_f@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_23933) (Mask@@59 T@PolymorphicMapType_23954) (diz@@15 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@59) (< AssumeFunctionsAbove 0)) (=> (not (= diz@@15 null)) (= (History__free_get_x Heap@@35 diz@@15) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@35) diz@@15 History__x_hist_value))))
 :qid |stdinbpl.293:15|
 :skolemid |34|
 :pattern ( (state Heap@@35 Mask@@59) (History__free_get_x Heap@@35 diz@@15))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_23933) (Mask@@60 T@PolymorphicMapType_23954) (diz@@16 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@60) (< AssumeFunctionsAbove 1)) (=> (not (= diz@@16 null)) (= (History__hist_get_x Heap@@36 diz@@16) (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@36) diz@@16 History__x_hist_value))))
 :qid |stdinbpl.362:15|
 :skolemid |38|
 :pattern ( (state Heap@@36 Mask@@60) (History__hist_get_x Heap@@36 diz@@16))
)))
(assert (forall ((p_1 T@ProcessDomainType) ) (! (= (p_merge p_empty p_1) p_1)
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (p_merge p_empty p_1))
)))
(assert (forall ((p_1@@0 T@ProcessDomainType) ) (! (= (p_seq p_empty p_1@@0) p_1@@0)
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (p_seq p_empty p_1@@0))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_23933) (Mask@@61 T@PolymorphicMapType_23954) (diz@@17 T@Ref) ) (!  (=> (state Heap@@37 Mask@@61) (= (|History__free_get_x'| Heap@@37 diz@@17) (|History__free_get_x#frame| (FrameFragment_1548 (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@37) diz@@17 History__x_hist_value)) diz@@17)))
 :qid |stdinbpl.300:15|
 :skolemid |35|
 :pattern ( (state Heap@@37 Mask@@61) (|History__free_get_x'| Heap@@37 diz@@17))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_23933) (Mask@@62 T@PolymorphicMapType_23954) (diz@@18 T@Ref) ) (!  (=> (state Heap@@38 Mask@@62) (= (|History__hist_get_x'| Heap@@38 diz@@18) (|History__hist_get_x#frame| (FrameFragment_1548 (select (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@38) diz@@18 History__x_hist_value)) diz@@18)))
 :qid |stdinbpl.369:15|
 :skolemid |39|
 :pattern ( (state Heap@@38 Mask@@62) (|History__hist_get_x'| Heap@@38 diz@@18))
)))
(assert (forall ((p_1@@1 T@ProcessDomainType) ) (! (= (p_seq p_1@@1 p_empty) p_1@@1)
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (p_seq p_1@@1 p_empty))
)))
(assert (forall ((n@@1 Int) ) (! (= (p_single n@@1) (ite (> n@@1 0) (p_seq (p_single (- n@@1 1)) p_incr) p_empty))
 :qid |stdinbpl.248:15|
 :skolemid |30|
 :pattern ( (p_single n@@1))
)))
(assert (forall ((n@@2 Int) (m_17@@0 Int) ) (! (= (p_merge (p_single n@@2) (p_single m_17@@0)) (p_dual n@@2 m_17@@0))
 :qid |stdinbpl.242:15|
 :skolemid |29|
 :pattern ( (p_dual n@@2 m_17@@0))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_23933) (o T@Ref) (f_3 T@Field_30725_30730) (v T@PolymorphicMapType_24482) ) (! (succHeap Heap@@39 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@39) (store (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@39) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@39) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@39) (store (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@39) o f_3 v)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_23933) (o@@0 T@Ref) (f_3@@0 T@Field_30711_30712) (v@@0 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@40) (store (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@40) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@40) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@40) (store (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@40) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_23933) (o@@1 T@Ref) (f_3@@1 T@Field_30711_1548) (v@@1 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@41) (store (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@41) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@41) (store (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@41) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@41) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_23933) (o@@2 T@Ref) (f_3@@2 T@Field_30711_24007) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@42) (store (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@42) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@42) (store (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@42) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@42) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_23933) (o@@3 T@Ref) (f_3@@3 T@Field_30711_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@43) (store (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@43) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@43) (store (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@43) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@43) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_23933) (o@@4 T@Ref) (f_3@@4 T@Field_30032_30037) (v@@4 T@PolymorphicMapType_24482) ) (! (succHeap Heap@@44 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@44) (store (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@44) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@44) (store (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@44) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@44) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_23933) (o@@5 T@Ref) (f_3@@5 T@Field_30018_30019) (v@@5 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@45) (store (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@45) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@45) (store (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@45) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@45) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_23933) (o@@6 T@Ref) (f_3@@6 T@Field_30018_1548) (v@@6 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@46) (store (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@46) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@46) (store (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@46) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@46) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_23933) (o@@7 T@Ref) (f_3@@7 T@Field_30018_24007) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@47) (store (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@47) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@47) (store (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@47) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@47) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_23933) (o@@8 T@Ref) (f_3@@8 T@Field_30018_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@48) (store (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@48) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@48) (store (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@48) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@48) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_23933) (o@@9 T@Ref) (f_3@@9 T@Field_12136_30037) (v@@9 T@PolymorphicMapType_24482) ) (! (succHeap Heap@@49 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@49) (store (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@49) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@49) (store (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@49) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@49) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_23933) (o@@10 T@Ref) (f_3@@10 T@Field_12136_30019) (v@@10 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@50) (store (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@50) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@50) (store (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@50) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@50) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_23933) (o@@11 T@Ref) (f_3@@11 T@Field_27957_1548) (v@@11 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@51) (store (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@51) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@51) (store (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@51) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@51) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_23933) (o@@12 T@Ref) (f_3@@12 T@Field_24006_24007) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@52) (store (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@52) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@52) (store (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@52) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@52) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_23933) (o@@13 T@Ref) (f_3@@13 T@Field_23993_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_23933 (store (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@53) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23933 (store (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@53) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_12136_78305#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30018_79483#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_1548#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_53#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_24007#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_30019#PolymorphicMapType_23933| Heap@@53) (|PolymorphicMapType_23933_30711_80661#PolymorphicMapType_23933| Heap@@53)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_24006_24007) (Heap@@54 T@PolymorphicMapType_23933) ) (!  (=> (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@54) o@@14 $allocated) (select (|PolymorphicMapType_23933_11947_53#PolymorphicMapType_23933| Heap@@54) (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@54) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_23933_11950_11951#PolymorphicMapType_23933| Heap@@54) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_30711_30712) (v_1@@2 T@FrameType) (q T@Field_30711_30712) (w@@2 T@FrameType) (r T@Field_30711_30712) (u T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30711 p@@3 v_1@@2 q w@@2) (InsidePredicate_30711_30711 q w@@2 r u)) (InsidePredicate_30711_30711 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30711 p@@3 v_1@@2 q w@@2) (InsidePredicate_30711_30711 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_30711_30712) (v_1@@3 T@FrameType) (q@@0 T@Field_30711_30712) (w@@3 T@FrameType) (r@@0 T@Field_30018_30019) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30711 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30711_30018 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_30711_30018 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30711 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30711_30018 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_30711_30712) (v_1@@4 T@FrameType) (q@@1 T@Field_30711_30712) (w@@4 T@FrameType) (r@@1 T@Field_12136_30019) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30711 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30711_23993 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_30711_23993 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30711 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30711_23993 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_30711_30712) (v_1@@5 T@FrameType) (q@@2 T@Field_30018_30019) (w@@5 T@FrameType) (r@@2 T@Field_30711_30712) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30018 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_30018_30711 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_30711_30711 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30018 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_30018_30711 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_30711_30712) (v_1@@6 T@FrameType) (q@@3 T@Field_30018_30019) (w@@6 T@FrameType) (r@@3 T@Field_30018_30019) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30018 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_30018_30018 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_30711_30018 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30018 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_30018_30018 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_30711_30712) (v_1@@7 T@FrameType) (q@@4 T@Field_30018_30019) (w@@7 T@FrameType) (r@@4 T@Field_12136_30019) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_30018 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_30018_23993 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_30711_23993 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_30018 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_30018_23993 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_30711_30712) (v_1@@8 T@FrameType) (q@@5 T@Field_12136_30019) (w@@8 T@FrameType) (r@@5 T@Field_30711_30712) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_23993 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_23993_30711 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_30711_30711 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_23993 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_23993_30711 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_30711_30712) (v_1@@9 T@FrameType) (q@@6 T@Field_12136_30019) (w@@9 T@FrameType) (r@@6 T@Field_30018_30019) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_23993 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_23993_30018 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_30711_30018 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_23993 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_23993_30018 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_30711_30712) (v_1@@10 T@FrameType) (q@@7 T@Field_12136_30019) (w@@10 T@FrameType) (r@@7 T@Field_12136_30019) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_30711_23993 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_23993_23993 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_30711_23993 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30711_23993 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_23993_23993 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_30018_30019) (v_1@@11 T@FrameType) (q@@8 T@Field_30711_30712) (w@@11 T@FrameType) (r@@8 T@Field_30711_30712) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30711 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30711_30711 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_30018_30711 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30711 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30711_30711 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_30018_30019) (v_1@@12 T@FrameType) (q@@9 T@Field_30711_30712) (w@@12 T@FrameType) (r@@9 T@Field_30018_30019) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30711 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30711_30018 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_30018_30018 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30711 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30711_30018 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_30018_30019) (v_1@@13 T@FrameType) (q@@10 T@Field_30711_30712) (w@@13 T@FrameType) (r@@10 T@Field_12136_30019) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30711 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30711_23993 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_30018_23993 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30711 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30711_23993 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_30018_30019) (v_1@@14 T@FrameType) (q@@11 T@Field_30018_30019) (w@@14 T@FrameType) (r@@11 T@Field_30711_30712) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30018 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_30018_30711 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_30018_30711 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30018 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_30018_30711 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_30018_30019) (v_1@@15 T@FrameType) (q@@12 T@Field_30018_30019) (w@@15 T@FrameType) (r@@12 T@Field_30018_30019) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30018 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_30018_30018 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_30018_30018 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30018 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_30018_30018 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_30018_30019) (v_1@@16 T@FrameType) (q@@13 T@Field_30018_30019) (w@@16 T@FrameType) (r@@13 T@Field_12136_30019) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_30018 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_30018_23993 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_30018_23993 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_30018 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_30018_23993 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_30018_30019) (v_1@@17 T@FrameType) (q@@14 T@Field_12136_30019) (w@@17 T@FrameType) (r@@14 T@Field_30711_30712) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_23993 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_23993_30711 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_30018_30711 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_23993 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_23993_30711 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_30018_30019) (v_1@@18 T@FrameType) (q@@15 T@Field_12136_30019) (w@@18 T@FrameType) (r@@15 T@Field_30018_30019) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_23993 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_23993_30018 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_30018_30018 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_23993 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_23993_30018 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_30018_30019) (v_1@@19 T@FrameType) (q@@16 T@Field_12136_30019) (w@@19 T@FrameType) (r@@16 T@Field_12136_30019) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_30018_23993 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_23993_23993 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_30018_23993 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30018_23993 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_23993_23993 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_12136_30019) (v_1@@20 T@FrameType) (q@@17 T@Field_30711_30712) (w@@20 T@FrameType) (r@@17 T@Field_30711_30712) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30711 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30711_30711 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_23993_30711 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30711 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30711_30711 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_12136_30019) (v_1@@21 T@FrameType) (q@@18 T@Field_30711_30712) (w@@21 T@FrameType) (r@@18 T@Field_30018_30019) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30711 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30711_30018 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_23993_30018 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30711 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30711_30018 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_12136_30019) (v_1@@22 T@FrameType) (q@@19 T@Field_30711_30712) (w@@22 T@FrameType) (r@@19 T@Field_12136_30019) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30711 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30711_23993 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_23993_23993 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30711 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30711_23993 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_12136_30019) (v_1@@23 T@FrameType) (q@@20 T@Field_30018_30019) (w@@23 T@FrameType) (r@@20 T@Field_30711_30712) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30018 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_30018_30711 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_23993_30711 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30018 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_30018_30711 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_12136_30019) (v_1@@24 T@FrameType) (q@@21 T@Field_30018_30019) (w@@24 T@FrameType) (r@@21 T@Field_30018_30019) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30018 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_30018_30018 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_23993_30018 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30018 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_30018_30018 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_12136_30019) (v_1@@25 T@FrameType) (q@@22 T@Field_30018_30019) (w@@25 T@FrameType) (r@@22 T@Field_12136_30019) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_30018 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_30018_23993 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_23993_23993 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_30018 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_30018_23993 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_12136_30019) (v_1@@26 T@FrameType) (q@@23 T@Field_12136_30019) (w@@26 T@FrameType) (r@@23 T@Field_30711_30712) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_23993 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_23993_30711 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_23993_30711 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_23993 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_23993_30711 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_12136_30019) (v_1@@27 T@FrameType) (q@@24 T@Field_12136_30019) (w@@27 T@FrameType) (r@@24 T@Field_30018_30019) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_23993 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_23993_30018 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_23993_30018 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_23993 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_23993_30018 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_12136_30019) (v_1@@28 T@FrameType) (q@@25 T@Field_12136_30019) (w@@28 T@FrameType) (r@@25 T@Field_12136_30019) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_23993_23993 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_23993_23993 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_23993_23993 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23993_23993 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_23993_23993 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

