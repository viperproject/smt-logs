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
(declare-sort T@Field_3925_53 0)
(declare-sort T@Field_3938_3939 0)
(declare-sort T@Field_7498_7499 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3925_7499 0)
(declare-sort T@Field_3925_8011 0)
(declare-sort T@Field_7498_53 0)
(declare-sort T@Field_7498_3939 0)
(declare-sort T@Field_8006_8011 0)
(declare-sort T@Field_8522_53 0)
(declare-sort T@Field_8522_3939 0)
(declare-sort T@Field_8522_8523 0)
(declare-sort T@Field_8534_8539 0)
(declare-datatypes ((T@PolymorphicMapType_3886 0)) (((PolymorphicMapType_3886 (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| (Array T@Ref T@Field_7498_7499 Real)) (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| (Array T@Ref T@Field_8522_8523 Real)) (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| (Array T@Ref T@Field_7498_53 Real)) (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| (Array T@Ref T@Field_7498_3939 Real)) (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| (Array T@Ref T@Field_8006_8011 Real)) (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| (Array T@Ref T@Field_8522_53 Real)) (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| (Array T@Ref T@Field_8522_3939 Real)) (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| (Array T@Ref T@Field_8534_8539 Real)) (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| (Array T@Ref T@Field_3925_7499 Real)) (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| (Array T@Ref T@Field_3925_53 Real)) (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| (Array T@Ref T@Field_3938_3939 Real)) (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| (Array T@Ref T@Field_3925_8011 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4414 0)) (((PolymorphicMapType_4414 (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| (Array T@Ref T@Field_3925_53 Bool)) (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| (Array T@Ref T@Field_3938_3939 Bool)) (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| (Array T@Ref T@Field_3925_7499 Bool)) (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| (Array T@Ref T@Field_3925_8011 Bool)) (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| (Array T@Ref T@Field_7498_53 Bool)) (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| (Array T@Ref T@Field_7498_3939 Bool)) (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| (Array T@Ref T@Field_7498_7499 Bool)) (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| (Array T@Ref T@Field_8006_8011 Bool)) (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| (Array T@Ref T@Field_8522_53 Bool)) (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| (Array T@Ref T@Field_8522_3939 Bool)) (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| (Array T@Ref T@Field_8522_8523 Bool)) (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| (Array T@Ref T@Field_8534_8539 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3865 0)) (((PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| (Array T@Ref T@Field_3925_53 Bool)) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| (Array T@Ref T@Field_3938_3939 T@Ref)) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| (Array T@Ref T@Field_7498_7499 T@FrameType)) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| (Array T@Ref T@Field_3925_7499 T@FrameType)) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| (Array T@Ref T@Field_3925_8011 T@PolymorphicMapType_4414)) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| (Array T@Ref T@Field_7498_53 Bool)) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| (Array T@Ref T@Field_7498_3939 T@Ref)) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| (Array T@Ref T@Field_8006_8011 T@PolymorphicMapType_4414)) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| (Array T@Ref T@Field_8522_53 Bool)) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| (Array T@Ref T@Field_8522_3939 T@Ref)) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| (Array T@Ref T@Field_8522_8523 T@FrameType)) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| (Array T@Ref T@Field_8534_8539 T@PolymorphicMapType_4414)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3865 T@PolymorphicMapType_3865) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3865 T@PolymorphicMapType_3865) Bool)
(declare-fun state (T@PolymorphicMapType_3865 T@PolymorphicMapType_3886) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3886) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4414)
(declare-fun P1 (T@Ref) T@Field_7498_7499)
(declare-fun IsPredicateField_2220_2221 (T@Field_7498_7499) Bool)
(declare-fun P2 (Int) T@Field_8522_8523)
(declare-fun IsPredicateField_2241_2242 (T@Field_8522_8523) Bool)
(declare-sort T@SnapDomainType 0)
(declare-fun |loopkup'| (T@PolymorphicMapType_3865 T@Ref) T@SnapDomainType)
(declare-fun dummyFunction_2213 (T@SnapDomainType) Bool)
(declare-fun |loopkup#triggerStateless| (T@Ref) T@SnapDomainType)
(declare-fun |P1#trigger_2220| (T@PolymorphicMapType_3865 T@Field_7498_7499) Bool)
(declare-fun |P1#everUsed_2220| (T@Field_7498_7499) Bool)
(declare-fun |P2#trigger_2241| (T@PolymorphicMapType_3865 T@Field_8522_8523) Bool)
(declare-fun |P2#everUsed_2241| (T@Field_8522_8523) Bool)
(declare-fun loopkup (T@PolymorphicMapType_3865 T@Ref) T@SnapDomainType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3865 T@PolymorphicMapType_3865 T@PolymorphicMapType_3886) Bool)
(declare-fun HasDirectPerm_8522_7499 (T@PolymorphicMapType_3886 T@Ref T@Field_8522_8523) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2241 (T@Field_8522_8523) T@Field_8534_8539)
(declare-fun HasDirectPerm_7498_7499 (T@PolymorphicMapType_3886 T@Ref T@Field_7498_7499) Bool)
(declare-fun PredicateMaskField_2220 (T@Field_7498_7499) T@Field_8006_8011)
(declare-fun IsPredicateField_3925_13338 (T@Field_3925_7499) Bool)
(declare-fun HasDirectPerm_3925_7499 (T@PolymorphicMapType_3886 T@Ref T@Field_3925_7499) Bool)
(declare-fun PredicateMaskField_3925 (T@Field_3925_7499) T@Field_3925_8011)
(declare-fun IsWandField_8522_18452 (T@Field_8522_8523) Bool)
(declare-fun WandMaskField_8522 (T@Field_8522_8523) T@Field_8534_8539)
(declare-fun IsWandField_7498_18095 (T@Field_7498_7499) Bool)
(declare-fun WandMaskField_7498 (T@Field_7498_7499) T@Field_8006_8011)
(declare-fun IsWandField_3925_17738 (T@Field_3925_7499) Bool)
(declare-fun WandMaskField_3925 (T@Field_3925_7499) T@Field_3925_8011)
(declare-fun |P1#sm| (T@Ref) T@Field_8006_8011)
(declare-fun |P2#sm| (Int) T@Field_8534_8539)
(declare-fun dummyHeap () T@PolymorphicMapType_3865)
(declare-fun ZeroMask () T@PolymorphicMapType_3886)
(declare-fun $allocated () T@Field_3925_53)
(declare-fun InsidePredicate_8522_8522 (T@Field_8522_8523 T@FrameType T@Field_8522_8523 T@FrameType) Bool)
(declare-fun InsidePredicate_7498_7498 (T@Field_7498_7499 T@FrameType T@Field_7498_7499 T@FrameType) Bool)
(declare-fun InsidePredicate_3925_3925 (T@Field_3925_7499 T@FrameType T@Field_3925_7499 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3925_26969 (T@Field_3925_8011) Bool)
(declare-fun IsWandField_3925_26985 (T@Field_3925_8011) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3925_3939 (T@Field_3938_3939) Bool)
(declare-fun IsWandField_3925_3939 (T@Field_3938_3939) Bool)
(declare-fun IsPredicateField_3925_53 (T@Field_3925_53) Bool)
(declare-fun IsWandField_3925_53 (T@Field_3925_53) Bool)
(declare-fun IsPredicateField_2241_26306 (T@Field_8534_8539) Bool)
(declare-fun IsWandField_2241_26322 (T@Field_8534_8539) Bool)
(declare-fun IsPredicateField_2241_3939 (T@Field_8522_3939) Bool)
(declare-fun IsWandField_2241_3939 (T@Field_8522_3939) Bool)
(declare-fun IsPredicateField_2241_53 (T@Field_8522_53) Bool)
(declare-fun IsWandField_2241_53 (T@Field_8522_53) Bool)
(declare-fun IsPredicateField_2220_25643 (T@Field_8006_8011) Bool)
(declare-fun IsWandField_2220_25659 (T@Field_8006_8011) Bool)
(declare-fun IsPredicateField_2220_3939 (T@Field_7498_3939) Bool)
(declare-fun IsWandField_2220_3939 (T@Field_7498_3939) Bool)
(declare-fun IsPredicateField_2220_53 (T@Field_7498_53) Bool)
(declare-fun IsWandField_2220_53 (T@Field_7498_53) Bool)
(declare-fun HasDirectPerm_8522_13050 (T@PolymorphicMapType_3886 T@Ref T@Field_8534_8539) Bool)
(declare-fun HasDirectPerm_8522_3939 (T@PolymorphicMapType_3886 T@Ref T@Field_8522_3939) Bool)
(declare-fun HasDirectPerm_8522_53 (T@PolymorphicMapType_3886 T@Ref T@Field_8522_53) Bool)
(declare-fun HasDirectPerm_7498_12093 (T@PolymorphicMapType_3886 T@Ref T@Field_8006_8011) Bool)
(declare-fun HasDirectPerm_7498_3939 (T@PolymorphicMapType_3886 T@Ref T@Field_7498_3939) Bool)
(declare-fun HasDirectPerm_7498_53 (T@PolymorphicMapType_3886 T@Ref T@Field_7498_53) Bool)
(declare-fun HasDirectPerm_3925_11153 (T@PolymorphicMapType_3886 T@Ref T@Field_3925_8011) Bool)
(declare-fun HasDirectPerm_3925_3939 (T@PolymorphicMapType_3886 T@Ref T@Field_3938_3939) Bool)
(declare-fun HasDirectPerm_3925_53 (T@PolymorphicMapType_3886 T@Ref T@Field_3925_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3886 T@PolymorphicMapType_3886 T@PolymorphicMapType_3886) Bool)
(declare-fun |loopkup#frame| (T@FrameType T@Ref) T@SnapDomainType)
(declare-fun getPredWandId_2220_2221 (T@Field_7498_7499) Int)
(declare-fun getPredWandId_2241_2242 (T@Field_8522_8523) Int)
(declare-fun InsidePredicate_8522_7498 (T@Field_8522_8523 T@FrameType T@Field_7498_7499 T@FrameType) Bool)
(declare-fun InsidePredicate_8522_3925 (T@Field_8522_8523 T@FrameType T@Field_3925_7499 T@FrameType) Bool)
(declare-fun InsidePredicate_7498_8522 (T@Field_7498_7499 T@FrameType T@Field_8522_8523 T@FrameType) Bool)
(declare-fun InsidePredicate_7498_3925 (T@Field_7498_7499 T@FrameType T@Field_3925_7499 T@FrameType) Bool)
(declare-fun InsidePredicate_3925_8522 (T@Field_3925_7499 T@FrameType T@Field_8522_8523 T@FrameType) Bool)
(declare-fun InsidePredicate_3925_7498 (T@Field_3925_7499 T@FrameType T@Field_7498_7499 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3865) (Heap1 T@PolymorphicMapType_3865) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3865) (Mask T@PolymorphicMapType_3886) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3865) (Heap1@@0 T@PolymorphicMapType_3865) (Heap2 T@PolymorphicMapType_3865) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8534_8539) ) (!  (not (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8522_8523) ) (!  (not (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8522_3939) ) (!  (not (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8522_53) ) (!  (not (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8006_8011) ) (!  (not (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7498_7499) ) (!  (not (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7498_3939) ) (!  (not (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7498_53) ) (!  (not (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_3925_8011) ) (!  (not (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_3925_7499) ) (!  (not (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3938_3939) ) (!  (not (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3925_53) ) (!  (not (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((address T@Ref) ) (! (IsPredicateField_2220_2221 (P1 address))
 :qid |stdinbpl.266:15|
 :skolemid |26|
 :pattern ( (P1 address))
)))
(assert (forall ((index Int) ) (! (IsPredicateField_2241_2242 (P2 index))
 :qid |stdinbpl.301:15|
 :skolemid |32|
 :pattern ( (P2 index))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3865) (address@@0 T@Ref) ) (! (dummyFunction_2213 (|loopkup#triggerStateless| address@@0))
 :qid |stdinbpl.215:15|
 :skolemid |23|
 :pattern ( (|loopkup'| Heap@@0 address@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3865) (address@@1 T@Ref) ) (! (|P1#everUsed_2220| (P1 address@@1))
 :qid |stdinbpl.285:15|
 :skolemid |30|
 :pattern ( (|P1#trigger_2220| Heap@@1 (P1 address@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3865) (index@@0 Int) ) (! (|P2#everUsed_2241| (P2 index@@0))
 :qid |stdinbpl.320:15|
 :skolemid |36|
 :pattern ( (|P2#trigger_2241| Heap@@2 (P2 index@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3865) (address@@2 T@Ref) ) (!  (and (= (loopkup Heap@@3 address@@2) (|loopkup'| Heap@@3 address@@2)) (dummyFunction_2213 (|loopkup#triggerStateless| address@@2)))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (loopkup Heap@@3 address@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3865) (ExhaleHeap T@PolymorphicMapType_3865) (Mask@@0 T@PolymorphicMapType_3886) (pm_f_26 T@Field_8522_8523) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8522_7499 Mask@@0 null pm_f_26) (IsPredicateField_2241_2242 pm_f_26)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_3925_53) ) (!  (=> (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26 f_51) (= (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@4) o2_26 f_51) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_3938_3939) ) (!  (=> (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@4) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_3925_7499) ) (!  (=> (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@4) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_3925_8011) ) (!  (=> (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@4) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_7498_53) ) (!  (=> (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@4) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap) o2_26@@3 f_51@@3))
))) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_7498_3939) ) (!  (=> (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@4) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_7498_7499) ) (!  (=> (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@4) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_8006_8011) ) (!  (=> (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@4) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap) o2_26@@6 f_51@@6))
))) (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@4) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap) o2_26@@7 f_51@@7))
))) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_8522_3939) ) (!  (=> (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@4) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap) o2_26@@8 f_51@@8))
))) (forall ((o2_26@@9 T@Ref) (f_51@@9 T@Field_8522_8523) ) (!  (=> (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@9 f_51@@9) (= (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@4) o2_26@@9 f_51@@9) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap) o2_26@@9 f_51@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap) o2_26@@9 f_51@@9))
))) (forall ((o2_26@@10 T@Ref) (f_51@@10 T@Field_8534_8539) ) (!  (=> (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) null (PredicateMaskField_2241 pm_f_26))) o2_26@@10 f_51@@10) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@4) o2_26@@10 f_51@@10) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap) o2_26@@10 f_51@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap) o2_26@@10 f_51@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_2241_2242 pm_f_26))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3865) (ExhaleHeap@@0 T@PolymorphicMapType_3865) (Mask@@1 T@PolymorphicMapType_3886) (pm_f_26@@0 T@Field_7498_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7498_7499 Mask@@1 null pm_f_26@@0) (IsPredicateField_2220_2221 pm_f_26@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@11 T@Ref) (f_51@@11 T@Field_3925_53) ) (!  (=> (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@11 f_51@@11) (= (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@5) o2_26@@11 f_51@@11) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@11 f_51@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@11 f_51@@11))
)) (forall ((o2_26@@12 T@Ref) (f_51@@12 T@Field_3938_3939) ) (!  (=> (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@12 f_51@@12) (= (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@5) o2_26@@12 f_51@@12) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@12 f_51@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@12 f_51@@12))
))) (forall ((o2_26@@13 T@Ref) (f_51@@13 T@Field_3925_7499) ) (!  (=> (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@13 f_51@@13) (= (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@5) o2_26@@13 f_51@@13) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@13 f_51@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@13 f_51@@13))
))) (forall ((o2_26@@14 T@Ref) (f_51@@14 T@Field_3925_8011) ) (!  (=> (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@14 f_51@@14) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@5) o2_26@@14 f_51@@14) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@14 f_51@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@14 f_51@@14))
))) (forall ((o2_26@@15 T@Ref) (f_51@@15 T@Field_7498_53) ) (!  (=> (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@15 f_51@@15) (= (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@5) o2_26@@15 f_51@@15) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@15 f_51@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@15 f_51@@15))
))) (forall ((o2_26@@16 T@Ref) (f_51@@16 T@Field_7498_3939) ) (!  (=> (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@16 f_51@@16) (= (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@5) o2_26@@16 f_51@@16) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@16 f_51@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@16 f_51@@16))
))) (forall ((o2_26@@17 T@Ref) (f_51@@17 T@Field_7498_7499) ) (!  (=> (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@17 f_51@@17) (= (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@5) o2_26@@17 f_51@@17) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@17 f_51@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@17 f_51@@17))
))) (forall ((o2_26@@18 T@Ref) (f_51@@18 T@Field_8006_8011) ) (!  (=> (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@18 f_51@@18) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) o2_26@@18 f_51@@18) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@18 f_51@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@18 f_51@@18))
))) (forall ((o2_26@@19 T@Ref) (f_51@@19 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@19 f_51@@19) (= (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@5) o2_26@@19 f_51@@19) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@19 f_51@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@19 f_51@@19))
))) (forall ((o2_26@@20 T@Ref) (f_51@@20 T@Field_8522_3939) ) (!  (=> (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@20 f_51@@20) (= (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@5) o2_26@@20 f_51@@20) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@20 f_51@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@20 f_51@@20))
))) (forall ((o2_26@@21 T@Ref) (f_51@@21 T@Field_8522_8523) ) (!  (=> (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@21 f_51@@21) (= (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@5) o2_26@@21 f_51@@21) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@21 f_51@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@21 f_51@@21))
))) (forall ((o2_26@@22 T@Ref) (f_51@@22 T@Field_8534_8539) ) (!  (=> (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@5) null (PredicateMaskField_2220 pm_f_26@@0))) o2_26@@22 f_51@@22) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@5) o2_26@@22 f_51@@22) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@22 f_51@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@0) o2_26@@22 f_51@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2220_2221 pm_f_26@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3865) (ExhaleHeap@@1 T@PolymorphicMapType_3865) (Mask@@2 T@PolymorphicMapType_3886) (pm_f_26@@1 T@Field_3925_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3925_7499 Mask@@2 null pm_f_26@@1) (IsPredicateField_3925_13338 pm_f_26@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@23 T@Ref) (f_51@@23 T@Field_3925_53) ) (!  (=> (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@23 f_51@@23) (= (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@6) o2_26@@23 f_51@@23) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@23 f_51@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@23 f_51@@23))
)) (forall ((o2_26@@24 T@Ref) (f_51@@24 T@Field_3938_3939) ) (!  (=> (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@24 f_51@@24) (= (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@6) o2_26@@24 f_51@@24) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@24 f_51@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@24 f_51@@24))
))) (forall ((o2_26@@25 T@Ref) (f_51@@25 T@Field_3925_7499) ) (!  (=> (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@25 f_51@@25) (= (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@6) o2_26@@25 f_51@@25) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@25 f_51@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@25 f_51@@25))
))) (forall ((o2_26@@26 T@Ref) (f_51@@26 T@Field_3925_8011) ) (!  (=> (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@26 f_51@@26) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) o2_26@@26 f_51@@26) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@26 f_51@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@26 f_51@@26))
))) (forall ((o2_26@@27 T@Ref) (f_51@@27 T@Field_7498_53) ) (!  (=> (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@27 f_51@@27) (= (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@6) o2_26@@27 f_51@@27) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@27 f_51@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@27 f_51@@27))
))) (forall ((o2_26@@28 T@Ref) (f_51@@28 T@Field_7498_3939) ) (!  (=> (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@28 f_51@@28) (= (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@6) o2_26@@28 f_51@@28) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@28 f_51@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@28 f_51@@28))
))) (forall ((o2_26@@29 T@Ref) (f_51@@29 T@Field_7498_7499) ) (!  (=> (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@29 f_51@@29) (= (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@6) o2_26@@29 f_51@@29) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@29 f_51@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@29 f_51@@29))
))) (forall ((o2_26@@30 T@Ref) (f_51@@30 T@Field_8006_8011) ) (!  (=> (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@30 f_51@@30) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@6) o2_26@@30 f_51@@30) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@30 f_51@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@30 f_51@@30))
))) (forall ((o2_26@@31 T@Ref) (f_51@@31 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@31 f_51@@31) (= (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@6) o2_26@@31 f_51@@31) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@31 f_51@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@31 f_51@@31))
))) (forall ((o2_26@@32 T@Ref) (f_51@@32 T@Field_8522_3939) ) (!  (=> (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@32 f_51@@32) (= (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@6) o2_26@@32 f_51@@32) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@32 f_51@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@32 f_51@@32))
))) (forall ((o2_26@@33 T@Ref) (f_51@@33 T@Field_8522_8523) ) (!  (=> (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@33 f_51@@33) (= (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@6) o2_26@@33 f_51@@33) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@33 f_51@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@33 f_51@@33))
))) (forall ((o2_26@@34 T@Ref) (f_51@@34 T@Field_8534_8539) ) (!  (=> (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@6) null (PredicateMaskField_3925 pm_f_26@@1))) o2_26@@34 f_51@@34) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@6) o2_26@@34 f_51@@34) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@34 f_51@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@1) o2_26@@34 f_51@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3925_13338 pm_f_26@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3865) (ExhaleHeap@@2 T@PolymorphicMapType_3865) (Mask@@3 T@PolymorphicMapType_3886) (pm_f_26@@2 T@Field_8522_8523) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8522_7499 Mask@@3 null pm_f_26@@2) (IsWandField_8522_18452 pm_f_26@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@35 T@Ref) (f_51@@35 T@Field_3925_53) ) (!  (=> (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@35 f_51@@35) (= (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@7) o2_26@@35 f_51@@35) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@35 f_51@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@35 f_51@@35))
)) (forall ((o2_26@@36 T@Ref) (f_51@@36 T@Field_3938_3939) ) (!  (=> (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@36 f_51@@36) (= (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@7) o2_26@@36 f_51@@36) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@36 f_51@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@36 f_51@@36))
))) (forall ((o2_26@@37 T@Ref) (f_51@@37 T@Field_3925_7499) ) (!  (=> (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@37 f_51@@37) (= (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@7) o2_26@@37 f_51@@37) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@37 f_51@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@37 f_51@@37))
))) (forall ((o2_26@@38 T@Ref) (f_51@@38 T@Field_3925_8011) ) (!  (=> (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@38 f_51@@38) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@7) o2_26@@38 f_51@@38) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@38 f_51@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@38 f_51@@38))
))) (forall ((o2_26@@39 T@Ref) (f_51@@39 T@Field_7498_53) ) (!  (=> (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@39 f_51@@39) (= (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@7) o2_26@@39 f_51@@39) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@39 f_51@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@39 f_51@@39))
))) (forall ((o2_26@@40 T@Ref) (f_51@@40 T@Field_7498_3939) ) (!  (=> (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@40 f_51@@40) (= (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@7) o2_26@@40 f_51@@40) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@40 f_51@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@40 f_51@@40))
))) (forall ((o2_26@@41 T@Ref) (f_51@@41 T@Field_7498_7499) ) (!  (=> (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@41 f_51@@41) (= (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@7) o2_26@@41 f_51@@41) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@41 f_51@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@41 f_51@@41))
))) (forall ((o2_26@@42 T@Ref) (f_51@@42 T@Field_8006_8011) ) (!  (=> (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@42 f_51@@42) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@7) o2_26@@42 f_51@@42) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@42 f_51@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@42 f_51@@42))
))) (forall ((o2_26@@43 T@Ref) (f_51@@43 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@43 f_51@@43) (= (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@7) o2_26@@43 f_51@@43) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@43 f_51@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@43 f_51@@43))
))) (forall ((o2_26@@44 T@Ref) (f_51@@44 T@Field_8522_3939) ) (!  (=> (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@44 f_51@@44) (= (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@7) o2_26@@44 f_51@@44) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@44 f_51@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@44 f_51@@44))
))) (forall ((o2_26@@45 T@Ref) (f_51@@45 T@Field_8522_8523) ) (!  (=> (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@45 f_51@@45) (= (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@7) o2_26@@45 f_51@@45) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@45 f_51@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@45 f_51@@45))
))) (forall ((o2_26@@46 T@Ref) (f_51@@46 T@Field_8534_8539) ) (!  (=> (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) null (WandMaskField_8522 pm_f_26@@2))) o2_26@@46 f_51@@46) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@7) o2_26@@46 f_51@@46) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@46 f_51@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@2) o2_26@@46 f_51@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_8522_18452 pm_f_26@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3865) (ExhaleHeap@@3 T@PolymorphicMapType_3865) (Mask@@4 T@PolymorphicMapType_3886) (pm_f_26@@3 T@Field_7498_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7498_7499 Mask@@4 null pm_f_26@@3) (IsWandField_7498_18095 pm_f_26@@3)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@47 T@Ref) (f_51@@47 T@Field_3925_53) ) (!  (=> (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@47 f_51@@47) (= (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@8) o2_26@@47 f_51@@47) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@47 f_51@@47)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@47 f_51@@47))
)) (forall ((o2_26@@48 T@Ref) (f_51@@48 T@Field_3938_3939) ) (!  (=> (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@48 f_51@@48) (= (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@8) o2_26@@48 f_51@@48) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@48 f_51@@48)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@48 f_51@@48))
))) (forall ((o2_26@@49 T@Ref) (f_51@@49 T@Field_3925_7499) ) (!  (=> (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@49 f_51@@49) (= (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@8) o2_26@@49 f_51@@49) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@49 f_51@@49)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@49 f_51@@49))
))) (forall ((o2_26@@50 T@Ref) (f_51@@50 T@Field_3925_8011) ) (!  (=> (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@50 f_51@@50) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@8) o2_26@@50 f_51@@50) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@50 f_51@@50)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@50 f_51@@50))
))) (forall ((o2_26@@51 T@Ref) (f_51@@51 T@Field_7498_53) ) (!  (=> (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@51 f_51@@51) (= (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@8) o2_26@@51 f_51@@51) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@51 f_51@@51)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@51 f_51@@51))
))) (forall ((o2_26@@52 T@Ref) (f_51@@52 T@Field_7498_3939) ) (!  (=> (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@52 f_51@@52) (= (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@8) o2_26@@52 f_51@@52) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@52 f_51@@52)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@52 f_51@@52))
))) (forall ((o2_26@@53 T@Ref) (f_51@@53 T@Field_7498_7499) ) (!  (=> (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@53 f_51@@53) (= (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@8) o2_26@@53 f_51@@53) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@53 f_51@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@53 f_51@@53))
))) (forall ((o2_26@@54 T@Ref) (f_51@@54 T@Field_8006_8011) ) (!  (=> (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@54 f_51@@54) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) o2_26@@54 f_51@@54) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@54 f_51@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@54 f_51@@54))
))) (forall ((o2_26@@55 T@Ref) (f_51@@55 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@55 f_51@@55) (= (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@8) o2_26@@55 f_51@@55) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@55 f_51@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@55 f_51@@55))
))) (forall ((o2_26@@56 T@Ref) (f_51@@56 T@Field_8522_3939) ) (!  (=> (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@56 f_51@@56) (= (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@8) o2_26@@56 f_51@@56) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@56 f_51@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@56 f_51@@56))
))) (forall ((o2_26@@57 T@Ref) (f_51@@57 T@Field_8522_8523) ) (!  (=> (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@57 f_51@@57) (= (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@8) o2_26@@57 f_51@@57) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@57 f_51@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@57 f_51@@57))
))) (forall ((o2_26@@58 T@Ref) (f_51@@58 T@Field_8534_8539) ) (!  (=> (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@8) null (WandMaskField_7498 pm_f_26@@3))) o2_26@@58 f_51@@58) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@8) o2_26@@58 f_51@@58) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@58 f_51@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@3) o2_26@@58 f_51@@58))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsWandField_7498_18095 pm_f_26@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3865) (ExhaleHeap@@4 T@PolymorphicMapType_3865) (Mask@@5 T@PolymorphicMapType_3886) (pm_f_26@@4 T@Field_3925_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3925_7499 Mask@@5 null pm_f_26@@4) (IsWandField_3925_17738 pm_f_26@@4)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@59 T@Ref) (f_51@@59 T@Field_3925_53) ) (!  (=> (select (|PolymorphicMapType_4414_3925_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@59 f_51@@59) (= (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@9) o2_26@@59 f_51@@59) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@59 f_51@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@59 f_51@@59))
)) (forall ((o2_26@@60 T@Ref) (f_51@@60 T@Field_3938_3939) ) (!  (=> (select (|PolymorphicMapType_4414_3925_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@60 f_51@@60) (= (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@9) o2_26@@60 f_51@@60) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@60 f_51@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@60 f_51@@60))
))) (forall ((o2_26@@61 T@Ref) (f_51@@61 T@Field_3925_7499) ) (!  (=> (select (|PolymorphicMapType_4414_3925_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@61 f_51@@61) (= (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@9) o2_26@@61 f_51@@61) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@61 f_51@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@61 f_51@@61))
))) (forall ((o2_26@@62 T@Ref) (f_51@@62 T@Field_3925_8011) ) (!  (=> (select (|PolymorphicMapType_4414_3925_14949#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@62 f_51@@62) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) o2_26@@62 f_51@@62) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@62 f_51@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@62 f_51@@62))
))) (forall ((o2_26@@63 T@Ref) (f_51@@63 T@Field_7498_53) ) (!  (=> (select (|PolymorphicMapType_4414_7498_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@63 f_51@@63) (= (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@9) o2_26@@63 f_51@@63) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@63 f_51@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@63 f_51@@63))
))) (forall ((o2_26@@64 T@Ref) (f_51@@64 T@Field_7498_3939) ) (!  (=> (select (|PolymorphicMapType_4414_7498_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@64 f_51@@64) (= (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@9) o2_26@@64 f_51@@64) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@64 f_51@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@64 f_51@@64))
))) (forall ((o2_26@@65 T@Ref) (f_51@@65 T@Field_7498_7499) ) (!  (=> (select (|PolymorphicMapType_4414_7498_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@65 f_51@@65) (= (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@9) o2_26@@65 f_51@@65) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@65 f_51@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@65 f_51@@65))
))) (forall ((o2_26@@66 T@Ref) (f_51@@66 T@Field_8006_8011) ) (!  (=> (select (|PolymorphicMapType_4414_7498_15799#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@66 f_51@@66) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@9) o2_26@@66 f_51@@66) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@66 f_51@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@66 f_51@@66))
))) (forall ((o2_26@@67 T@Ref) (f_51@@67 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_4414_8522_53#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@67 f_51@@67) (= (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@9) o2_26@@67 f_51@@67) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@67 f_51@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@67 f_51@@67))
))) (forall ((o2_26@@68 T@Ref) (f_51@@68 T@Field_8522_3939) ) (!  (=> (select (|PolymorphicMapType_4414_8522_3939#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@68 f_51@@68) (= (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@9) o2_26@@68 f_51@@68) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@68 f_51@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@68 f_51@@68))
))) (forall ((o2_26@@69 T@Ref) (f_51@@69 T@Field_8522_8523) ) (!  (=> (select (|PolymorphicMapType_4414_8522_7499#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@69 f_51@@69) (= (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@9) o2_26@@69 f_51@@69) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@69 f_51@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@69 f_51@@69))
))) (forall ((o2_26@@70 T@Ref) (f_51@@70 T@Field_8534_8539) ) (!  (=> (select (|PolymorphicMapType_4414_8522_16649#PolymorphicMapType_4414| (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@9) null (WandMaskField_3925 pm_f_26@@4))) o2_26@@70 f_51@@70) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@9) o2_26@@70 f_51@@70) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@70 f_51@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@4) o2_26@@70 f_51@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsWandField_3925_17738 pm_f_26@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3865) (ExhaleHeap@@5 T@PolymorphicMapType_3865) (Mask@@6 T@PolymorphicMapType_3886) (pm_f_26@@5 T@Field_8522_8523) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8522_7499 Mask@@6 null pm_f_26@@5) (IsPredicateField_2241_2242 pm_f_26@@5)) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@10) null (PredicateMaskField_2241 pm_f_26@@5)) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@5) null (PredicateMaskField_2241 pm_f_26@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsPredicateField_2241_2242 pm_f_26@@5) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@5) null (PredicateMaskField_2241 pm_f_26@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3865) (ExhaleHeap@@6 T@PolymorphicMapType_3865) (Mask@@7 T@PolymorphicMapType_3886) (pm_f_26@@6 T@Field_7498_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7498_7499 Mask@@7 null pm_f_26@@6) (IsPredicateField_2220_2221 pm_f_26@@6)) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@11) null (PredicateMaskField_2220 pm_f_26@@6)) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@6) null (PredicateMaskField_2220 pm_f_26@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsPredicateField_2220_2221 pm_f_26@@6) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@6) null (PredicateMaskField_2220 pm_f_26@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3865) (ExhaleHeap@@7 T@PolymorphicMapType_3865) (Mask@@8 T@PolymorphicMapType_3886) (pm_f_26@@7 T@Field_3925_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_3925_7499 Mask@@8 null pm_f_26@@7) (IsPredicateField_3925_13338 pm_f_26@@7)) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@12) null (PredicateMaskField_3925 pm_f_26@@7)) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@7) null (PredicateMaskField_3925 pm_f_26@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (IsPredicateField_3925_13338 pm_f_26@@7) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@7) null (PredicateMaskField_3925 pm_f_26@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3865) (ExhaleHeap@@8 T@PolymorphicMapType_3865) (Mask@@9 T@PolymorphicMapType_3886) (pm_f_26@@8 T@Field_8522_8523) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_8522_7499 Mask@@9 null pm_f_26@@8) (IsWandField_8522_18452 pm_f_26@@8)) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@13) null (WandMaskField_8522 pm_f_26@@8)) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@8) null (WandMaskField_8522 pm_f_26@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (IsWandField_8522_18452 pm_f_26@@8) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@8) null (WandMaskField_8522 pm_f_26@@8)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3865) (ExhaleHeap@@9 T@PolymorphicMapType_3865) (Mask@@10 T@PolymorphicMapType_3886) (pm_f_26@@9 T@Field_7498_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7498_7499 Mask@@10 null pm_f_26@@9) (IsWandField_7498_18095 pm_f_26@@9)) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@14) null (WandMaskField_7498 pm_f_26@@9)) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@9) null (WandMaskField_7498 pm_f_26@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (IsWandField_7498_18095 pm_f_26@@9) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@9) null (WandMaskField_7498 pm_f_26@@9)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3865) (ExhaleHeap@@10 T@PolymorphicMapType_3865) (Mask@@11 T@PolymorphicMapType_3886) (pm_f_26@@10 T@Field_3925_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_3925_7499 Mask@@11 null pm_f_26@@10) (IsWandField_3925_17738 pm_f_26@@10)) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@15) null (WandMaskField_3925 pm_f_26@@10)) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@10) null (WandMaskField_3925 pm_f_26@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (IsWandField_3925_17738 pm_f_26@@10) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@10) null (WandMaskField_3925 pm_f_26@@10)))
)))
(assert (forall ((address@@3 T@Ref) (address2 T@Ref) ) (!  (=> (= (P1 address@@3) (P1 address2)) (= address@@3 address2))
 :qid |stdinbpl.276:15|
 :skolemid |28|
 :pattern ( (P1 address@@3) (P1 address2))
)))
(assert (forall ((address@@4 T@Ref) (address2@@0 T@Ref) ) (!  (=> (= (|P1#sm| address@@4) (|P1#sm| address2@@0)) (= address@@4 address2@@0))
 :qid |stdinbpl.280:15|
 :skolemid |29|
 :pattern ( (|P1#sm| address@@4) (|P1#sm| address2@@0))
)))
(assert (forall ((index@@1 Int) (index2 Int) ) (!  (=> (= (P2 index@@1) (P2 index2)) (= index@@1 index2))
 :qid |stdinbpl.311:15|
 :skolemid |34|
 :pattern ( (P2 index@@1) (P2 index2))
)))
(assert (forall ((index@@2 Int) (index2@@0 Int) ) (!  (=> (= (|P2#sm| index@@2) (|P2#sm| index2@@0)) (= index@@2 index2@@0))
 :qid |stdinbpl.315:15|
 :skolemid |35|
 :pattern ( (|P2#sm| index@@2) (|P2#sm| index2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3865) (ExhaleHeap@@11 T@PolymorphicMapType_3865) (Mask@@12 T@PolymorphicMapType_3886) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@16) o_38 $allocated) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@11) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@11) o_38 $allocated))
)))
(assert (forall ((p T@Field_8522_8523) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8522_8522 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8522_8522 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7498_7499) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7498_7498 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7498_7498 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_3925_7499) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_3925_3925 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3925_3925 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3865) (ExhaleHeap@@12 T@PolymorphicMapType_3865) (Mask@@13 T@PolymorphicMapType_3886) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@17 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3886) (o_2@@11 T@Ref) (f_4@@11 T@Field_3925_8011) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3925_26969 f_4@@11))) (not (IsWandField_3925_26985 f_4@@11))) (<= (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3886) (o_2@@12 T@Ref) (f_4@@12 T@Field_3938_3939) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3925_3939 f_4@@12))) (not (IsWandField_3925_3939 f_4@@12))) (<= (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3886) (o_2@@13 T@Ref) (f_4@@13 T@Field_3925_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3925_53 f_4@@13))) (not (IsWandField_3925_53 f_4@@13))) (<= (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3886) (o_2@@14 T@Ref) (f_4@@14 T@Field_3925_7499) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3925_13338 f_4@@14))) (not (IsWandField_3925_17738 f_4@@14))) (<= (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3886) (o_2@@15 T@Ref) (f_4@@15 T@Field_8534_8539) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2241_26306 f_4@@15))) (not (IsWandField_2241_26322 f_4@@15))) (<= (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3886) (o_2@@16 T@Ref) (f_4@@16 T@Field_8522_3939) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2241_3939 f_4@@16))) (not (IsWandField_2241_3939 f_4@@16))) (<= (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3886) (o_2@@17 T@Ref) (f_4@@17 T@Field_8522_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2241_53 f_4@@17))) (not (IsWandField_2241_53 f_4@@17))) (<= (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3886) (o_2@@18 T@Ref) (f_4@@18 T@Field_8522_8523) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2241_2242 f_4@@18))) (not (IsWandField_8522_18452 f_4@@18))) (<= (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3886) (o_2@@19 T@Ref) (f_4@@19 T@Field_8006_8011) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| Mask@@22) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2220_25643 f_4@@19))) (not (IsWandField_2220_25659 f_4@@19))) (<= (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| Mask@@22) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| Mask@@22) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3886) (o_2@@20 T@Ref) (f_4@@20 T@Field_7498_3939) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| Mask@@23) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_2220_3939 f_4@@20))) (not (IsWandField_2220_3939 f_4@@20))) (<= (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| Mask@@23) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| Mask@@23) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3886) (o_2@@21 T@Ref) (f_4@@21 T@Field_7498_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| Mask@@24) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_2220_53 f_4@@21))) (not (IsWandField_2220_53 f_4@@21))) (<= (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| Mask@@24) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| Mask@@24) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3886) (o_2@@22 T@Ref) (f_4@@22 T@Field_7498_7499) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| Mask@@25) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_2220_2221 f_4@@22))) (not (IsWandField_7498_18095 f_4@@22))) (<= (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| Mask@@25) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| Mask@@25) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_3886) (o_2@@23 T@Ref) (f_4@@23 T@Field_8534_8539) ) (! (= (HasDirectPerm_8522_13050 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_13050 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_3886) (o_2@@24 T@Ref) (f_4@@24 T@Field_8522_8523) ) (! (= (HasDirectPerm_8522_7499 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_7499 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_3886) (o_2@@25 T@Ref) (f_4@@25 T@Field_8522_3939) ) (! (= (HasDirectPerm_8522_3939 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_3939 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_3886) (o_2@@26 T@Ref) (f_4@@26 T@Field_8522_53) ) (! (= (HasDirectPerm_8522_53 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_53 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_3886) (o_2@@27 T@Ref) (f_4@@27 T@Field_8006_8011) ) (! (= (HasDirectPerm_7498_12093 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7498_12093 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_3886) (o_2@@28 T@Ref) (f_4@@28 T@Field_7498_7499) ) (! (= (HasDirectPerm_7498_7499 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7498_7499 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_3886) (o_2@@29 T@Ref) (f_4@@29 T@Field_7498_3939) ) (! (= (HasDirectPerm_7498_3939 Mask@@32 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| Mask@@32) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7498_3939 Mask@@32 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_3886) (o_2@@30 T@Ref) (f_4@@30 T@Field_7498_53) ) (! (= (HasDirectPerm_7498_53 Mask@@33 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| Mask@@33) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7498_53 Mask@@33 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_3886) (o_2@@31 T@Ref) (f_4@@31 T@Field_3925_8011) ) (! (= (HasDirectPerm_3925_11153 Mask@@34 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| Mask@@34) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3925_11153 Mask@@34 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_3886) (o_2@@32 T@Ref) (f_4@@32 T@Field_3925_7499) ) (! (= (HasDirectPerm_3925_7499 Mask@@35 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| Mask@@35) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3925_7499 Mask@@35 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_3886) (o_2@@33 T@Ref) (f_4@@33 T@Field_3938_3939) ) (! (= (HasDirectPerm_3925_3939 Mask@@36 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| Mask@@36) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3925_3939 Mask@@36 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_3886) (o_2@@34 T@Ref) (f_4@@34 T@Field_3925_53) ) (! (= (HasDirectPerm_3925_53 Mask@@37 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| Mask@@37) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3925_53 Mask@@37 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3865) (ExhaleHeap@@13 T@PolymorphicMapType_3865) (Mask@@38 T@PolymorphicMapType_3886) (o_38@@0 T@Ref) (f_51@@71 T@Field_8534_8539) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_8522_13050 Mask@@38 o_38@@0 f_51@@71) (= (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@18) o_38@@0 f_51@@71) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@13) o_38@@0 f_51@@71))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| ExhaleHeap@@13) o_38@@0 f_51@@71))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3865) (ExhaleHeap@@14 T@PolymorphicMapType_3865) (Mask@@39 T@PolymorphicMapType_3886) (o_38@@1 T@Ref) (f_51@@72 T@Field_8522_8523) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_8522_7499 Mask@@39 o_38@@1 f_51@@72) (= (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@19) o_38@@1 f_51@@72) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@14) o_38@@1 f_51@@72))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| ExhaleHeap@@14) o_38@@1 f_51@@72))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3865) (ExhaleHeap@@15 T@PolymorphicMapType_3865) (Mask@@40 T@PolymorphicMapType_3886) (o_38@@2 T@Ref) (f_51@@73 T@Field_8522_3939) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_8522_3939 Mask@@40 o_38@@2 f_51@@73) (= (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@20) o_38@@2 f_51@@73) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@15) o_38@@2 f_51@@73))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| ExhaleHeap@@15) o_38@@2 f_51@@73))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3865) (ExhaleHeap@@16 T@PolymorphicMapType_3865) (Mask@@41 T@PolymorphicMapType_3886) (o_38@@3 T@Ref) (f_51@@74 T@Field_8522_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_8522_53 Mask@@41 o_38@@3 f_51@@74) (= (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@21) o_38@@3 f_51@@74) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@16) o_38@@3 f_51@@74))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| ExhaleHeap@@16) o_38@@3 f_51@@74))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3865) (ExhaleHeap@@17 T@PolymorphicMapType_3865) (Mask@@42 T@PolymorphicMapType_3886) (o_38@@4 T@Ref) (f_51@@75 T@Field_8006_8011) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_7498_12093 Mask@@42 o_38@@4 f_51@@75) (= (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@22) o_38@@4 f_51@@75) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@17) o_38@@4 f_51@@75))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| ExhaleHeap@@17) o_38@@4 f_51@@75))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3865) (ExhaleHeap@@18 T@PolymorphicMapType_3865) (Mask@@43 T@PolymorphicMapType_3886) (o_38@@5 T@Ref) (f_51@@76 T@Field_7498_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_7498_7499 Mask@@43 o_38@@5 f_51@@76) (= (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@23) o_38@@5 f_51@@76) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@18) o_38@@5 f_51@@76))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| ExhaleHeap@@18) o_38@@5 f_51@@76))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3865) (ExhaleHeap@@19 T@PolymorphicMapType_3865) (Mask@@44 T@PolymorphicMapType_3886) (o_38@@6 T@Ref) (f_51@@77 T@Field_7498_3939) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_7498_3939 Mask@@44 o_38@@6 f_51@@77) (= (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@24) o_38@@6 f_51@@77) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@19) o_38@@6 f_51@@77))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| ExhaleHeap@@19) o_38@@6 f_51@@77))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3865) (ExhaleHeap@@20 T@PolymorphicMapType_3865) (Mask@@45 T@PolymorphicMapType_3886) (o_38@@7 T@Ref) (f_51@@78 T@Field_7498_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_7498_53 Mask@@45 o_38@@7 f_51@@78) (= (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@25) o_38@@7 f_51@@78) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@20) o_38@@7 f_51@@78))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| ExhaleHeap@@20) o_38@@7 f_51@@78))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3865) (ExhaleHeap@@21 T@PolymorphicMapType_3865) (Mask@@46 T@PolymorphicMapType_3886) (o_38@@8 T@Ref) (f_51@@79 T@Field_3925_8011) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@46) (=> (HasDirectPerm_3925_11153 Mask@@46 o_38@@8 f_51@@79) (= (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@26) o_38@@8 f_51@@79) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@21) o_38@@8 f_51@@79))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@46) (select (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| ExhaleHeap@@21) o_38@@8 f_51@@79))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_3865) (ExhaleHeap@@22 T@PolymorphicMapType_3865) (Mask@@47 T@PolymorphicMapType_3886) (o_38@@9 T@Ref) (f_51@@80 T@Field_3925_7499) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@47) (=> (HasDirectPerm_3925_7499 Mask@@47 o_38@@9 f_51@@80) (= (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@27) o_38@@9 f_51@@80) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@22) o_38@@9 f_51@@80))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@47) (select (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| ExhaleHeap@@22) o_38@@9 f_51@@80))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_3865) (ExhaleHeap@@23 T@PolymorphicMapType_3865) (Mask@@48 T@PolymorphicMapType_3886) (o_38@@10 T@Ref) (f_51@@81 T@Field_3938_3939) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@48) (=> (HasDirectPerm_3925_3939 Mask@@48 o_38@@10 f_51@@81) (= (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@28) o_38@@10 f_51@@81) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@23) o_38@@10 f_51@@81))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@48) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| ExhaleHeap@@23) o_38@@10 f_51@@81))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_3865) (ExhaleHeap@@24 T@PolymorphicMapType_3865) (Mask@@49 T@PolymorphicMapType_3886) (o_38@@11 T@Ref) (f_51@@82 T@Field_3925_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@49) (=> (HasDirectPerm_3925_53 Mask@@49 o_38@@11 f_51@@82) (= (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@29) o_38@@11 f_51@@82) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@24) o_38@@11 f_51@@82))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@49) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| ExhaleHeap@@24) o_38@@11 f_51@@82))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_3925_8011) ) (! (= (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3938_3939) ) (! (= (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_3925_53) ) (! (= (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_3925_7499) ) (! (= (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_8534_8539) ) (! (= (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_8522_3939) ) (! (= (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_8522_53) ) (! (= (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_8522_8523) ) (! (= (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_8006_8011) ) (! (= (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_7498_3939) ) (! (= (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_7498_53) ) (! (= (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_7498_7499) ) (! (= (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3886) (SummandMask1 T@PolymorphicMapType_3886) (SummandMask2 T@PolymorphicMapType_3886) (o_2@@47 T@Ref) (f_4@@47 T@Field_3925_8011) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3886_3925_24202#PolymorphicMapType_3886| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3886) (SummandMask1@@0 T@PolymorphicMapType_3886) (SummandMask2@@0 T@PolymorphicMapType_3886) (o_2@@48 T@Ref) (f_4@@48 T@Field_3938_3939) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3886_3925_3939#PolymorphicMapType_3886| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3886) (SummandMask1@@1 T@PolymorphicMapType_3886) (SummandMask2@@1 T@PolymorphicMapType_3886) (o_2@@49 T@Ref) (f_4@@49 T@Field_3925_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3886_3925_53#PolymorphicMapType_3886| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3886) (SummandMask1@@2 T@PolymorphicMapType_3886) (SummandMask2@@2 T@PolymorphicMapType_3886) (o_2@@50 T@Ref) (f_4@@50 T@Field_3925_7499) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3886_3925_2221#PolymorphicMapType_3886| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3886) (SummandMask1@@3 T@PolymorphicMapType_3886) (SummandMask2@@3 T@PolymorphicMapType_3886) (o_2@@51 T@Ref) (f_4@@51 T@Field_8534_8539) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3886_2241_23856#PolymorphicMapType_3886| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3886) (SummandMask1@@4 T@PolymorphicMapType_3886) (SummandMask2@@4 T@PolymorphicMapType_3886) (o_2@@52 T@Ref) (f_4@@52 T@Field_8522_3939) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3886_2241_3939#PolymorphicMapType_3886| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3886) (SummandMask1@@5 T@PolymorphicMapType_3886) (SummandMask2@@5 T@PolymorphicMapType_3886) (o_2@@53 T@Ref) (f_4@@53 T@Field_8522_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3886_2241_53#PolymorphicMapType_3886| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3886) (SummandMask1@@6 T@PolymorphicMapType_3886) (SummandMask2@@6 T@PolymorphicMapType_3886) (o_2@@54 T@Ref) (f_4@@54 T@Field_8522_8523) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3886_2241_2242#PolymorphicMapType_3886| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_3886) (SummandMask1@@7 T@PolymorphicMapType_3886) (SummandMask2@@7 T@PolymorphicMapType_3886) (o_2@@55 T@Ref) (f_4@@55 T@Field_8006_8011) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3886_2220_23525#PolymorphicMapType_3886| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_3886) (SummandMask1@@8 T@PolymorphicMapType_3886) (SummandMask2@@8 T@PolymorphicMapType_3886) (o_2@@56 T@Ref) (f_4@@56 T@Field_7498_3939) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3886_2220_3939#PolymorphicMapType_3886| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_3886) (SummandMask1@@9 T@PolymorphicMapType_3886) (SummandMask2@@9 T@PolymorphicMapType_3886) (o_2@@57 T@Ref) (f_4@@57 T@Field_7498_53) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3886_2220_53#PolymorphicMapType_3886| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_3886) (SummandMask1@@10 T@PolymorphicMapType_3886) (SummandMask2@@10 T@PolymorphicMapType_3886) (o_2@@58 T@Ref) (f_4@@58 T@Field_7498_7499) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3886_2220_2221#PolymorphicMapType_3886| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_3865) (Mask@@50 T@PolymorphicMapType_3886) (address@@5 T@Ref) ) (!  (=> (state Heap@@30 Mask@@50) (= (|loopkup'| Heap@@30 address@@5) (|loopkup#frame| (select (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@30) null (P1 address@@5)) address@@5)))
 :qid |stdinbpl.222:15|
 :skolemid |24|
 :pattern ( (state Heap@@30 Mask@@50) (|loopkup'| Heap@@30 address@@5))
)))
(assert (forall ((address@@6 T@Ref) ) (! (= (getPredWandId_2220_2221 (P1 address@@6)) 0)
 :qid |stdinbpl.270:15|
 :skolemid |27|
 :pattern ( (P1 address@@6))
)))
(assert (forall ((index@@3 Int) ) (! (= (getPredWandId_2241_2242 (P2 index@@3)) 1)
 :qid |stdinbpl.305:15|
 :skolemid |33|
 :pattern ( (P2 index@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_3865) (o_56 T@Ref) (f_22 T@Field_8534_8539) (v T@PolymorphicMapType_4414) ) (! (succHeap Heap@@31 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@31) (store (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@31) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@31) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@31) (store (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@31) o_56 f_22 v)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_3865) (o_56@@0 T@Ref) (f_22@@0 T@Field_8522_8523) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@32) (store (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@32) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@32) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@32) (store (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@32) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_3865) (o_56@@1 T@Ref) (f_22@@1 T@Field_8522_3939) (v@@1 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@33) (store (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@33) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@33) (store (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@33) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@33) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_3865) (o_56@@2 T@Ref) (f_22@@2 T@Field_8522_53) (v@@2 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@34) (store (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@34) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@34) (store (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@34) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@34) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_3865) (o_56@@3 T@Ref) (f_22@@3 T@Field_8006_8011) (v@@3 T@PolymorphicMapType_4414) ) (! (succHeap Heap@@35 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@35) (store (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@35) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@35) (store (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@35) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@35) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_3865) (o_56@@4 T@Ref) (f_22@@4 T@Field_7498_7499) (v@@4 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@36) (store (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@36) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@36) (store (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@36) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@36) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_3865) (o_56@@5 T@Ref) (f_22@@5 T@Field_7498_3939) (v@@5 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@37) (store (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@37) o_56@@5 f_22@@5 v@@5) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@37) (store (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@37) o_56@@5 f_22@@5 v@@5) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@37) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_3865) (o_56@@6 T@Ref) (f_22@@6 T@Field_7498_53) (v@@6 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@38) (store (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@38) o_56@@6 f_22@@6 v@@6) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@38) (store (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@38) o_56@@6 f_22@@6 v@@6) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@38) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_3865) (o_56@@7 T@Ref) (f_22@@7 T@Field_3925_8011) (v@@7 T@PolymorphicMapType_4414) ) (! (succHeap Heap@@39 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@39) (store (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@39) o_56@@7 f_22@@7 v@@7) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@39) (store (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@39) o_56@@7 f_22@@7 v@@7) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@39) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_3865) (o_56@@8 T@Ref) (f_22@@8 T@Field_3925_7499) (v@@8 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@40) (store (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@40) o_56@@8 f_22@@8 v@@8) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@40) (store (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@40) o_56@@8 f_22@@8 v@@8) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@40) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_3865) (o_56@@9 T@Ref) (f_22@@9 T@Field_3938_3939) (v@@9 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@41) (store (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@41) o_56@@9 f_22@@9 v@@9) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@41) (store (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@41) o_56@@9 f_22@@9 v@@9) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@41) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_3865) (o_56@@10 T@Ref) (f_22@@10 T@Field_3925_53) (v@@10 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_3865 (store (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@42) o_56@@10 f_22@@10 v@@10) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3865 (store (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@42) o_56@@10 f_22@@10 v@@10) (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_2220_2221#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_3925_7499#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_3925_11195#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_7498_53#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_7498_3939#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_7498_12135#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_53#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_3939#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_7499#PolymorphicMapType_3865| Heap@@42) (|PolymorphicMapType_3865_8522_13092#PolymorphicMapType_3865| Heap@@42)))
)))
(assert (forall ((address@@7 T@Ref) ) (! (= (PredicateMaskField_2220 (P1 address@@7)) (|P1#sm| address@@7))
 :qid |stdinbpl.262:15|
 :skolemid |25|
 :pattern ( (PredicateMaskField_2220 (P1 address@@7)))
)))
(assert (forall ((index@@4 Int) ) (! (= (PredicateMaskField_2241 (P2 index@@4)) (|P2#sm| index@@4))
 :qid |stdinbpl.297:15|
 :skolemid |31|
 :pattern ( (PredicateMaskField_2241 (P2 index@@4)))
)))
(assert (forall ((o_56@@11 T@Ref) (f_3 T@Field_3938_3939) (Heap@@43 T@PolymorphicMapType_3865) ) (!  (=> (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@43) o_56@@11 $allocated) (select (|PolymorphicMapType_3865_2065_53#PolymorphicMapType_3865| Heap@@43) (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@43) o_56@@11 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3865_2068_2069#PolymorphicMapType_3865| Heap@@43) o_56@@11 f_3))
)))
(assert (forall ((p@@3 T@Field_8522_8523) (v_1@@2 T@FrameType) (q T@Field_8522_8523) (w@@2 T@FrameType) (r T@Field_8522_8523) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8522 p@@3 v_1@@2 q w@@2) (InsidePredicate_8522_8522 q w@@2 r u)) (InsidePredicate_8522_8522 p@@3 v_1@@2 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8522 p@@3 v_1@@2 q w@@2) (InsidePredicate_8522_8522 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_8522_8523) (v_1@@3 T@FrameType) (q@@0 T@Field_8522_8523) (w@@3 T@FrameType) (r@@0 T@Field_7498_7499) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8522 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8522_7498 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_8522_7498 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8522 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8522_7498 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_8522_8523) (v_1@@4 T@FrameType) (q@@1 T@Field_8522_8523) (w@@4 T@FrameType) (r@@1 T@Field_3925_7499) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8522 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8522_3925 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_8522_3925 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8522 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8522_3925 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_8522_8523) (v_1@@5 T@FrameType) (q@@2 T@Field_7498_7499) (w@@5 T@FrameType) (r@@2 T@Field_8522_8523) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_7498 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7498_8522 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_8522_8522 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_7498 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7498_8522 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_8522_8523) (v_1@@6 T@FrameType) (q@@3 T@Field_7498_7499) (w@@6 T@FrameType) (r@@3 T@Field_7498_7499) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_7498 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7498_7498 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_8522_7498 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_7498 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7498_7498 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_8522_8523) (v_1@@7 T@FrameType) (q@@4 T@Field_7498_7499) (w@@7 T@FrameType) (r@@4 T@Field_3925_7499) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_7498 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7498_3925 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_8522_3925 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_7498 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7498_3925 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_8522_8523) (v_1@@8 T@FrameType) (q@@5 T@Field_3925_7499) (w@@8 T@FrameType) (r@@5 T@Field_8522_8523) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_3925 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3925_8522 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_8522_8522 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_3925 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3925_8522 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_8522_8523) (v_1@@9 T@FrameType) (q@@6 T@Field_3925_7499) (w@@9 T@FrameType) (r@@6 T@Field_7498_7499) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_3925 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3925_7498 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_8522_7498 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_3925 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3925_7498 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_8522_8523) (v_1@@10 T@FrameType) (q@@7 T@Field_3925_7499) (w@@10 T@FrameType) (r@@7 T@Field_3925_7499) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_3925 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3925_3925 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_8522_3925 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_3925 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3925_3925 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_7498_7499) (v_1@@11 T@FrameType) (q@@8 T@Field_8522_8523) (w@@11 T@FrameType) (r@@8 T@Field_8522_8523) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_8522 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8522_8522 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_7498_8522 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_8522 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8522_8522 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_7498_7499) (v_1@@12 T@FrameType) (q@@9 T@Field_8522_8523) (w@@12 T@FrameType) (r@@9 T@Field_7498_7499) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_8522 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8522_7498 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_7498_7498 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_8522 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8522_7498 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_7498_7499) (v_1@@13 T@FrameType) (q@@10 T@Field_8522_8523) (w@@13 T@FrameType) (r@@10 T@Field_3925_7499) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_8522 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8522_3925 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_7498_3925 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_8522 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8522_3925 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_7498_7499) (v_1@@14 T@FrameType) (q@@11 T@Field_7498_7499) (w@@14 T@FrameType) (r@@11 T@Field_8522_8523) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_7498 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7498_8522 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_7498_8522 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_7498 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7498_8522 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_7498_7499) (v_1@@15 T@FrameType) (q@@12 T@Field_7498_7499) (w@@15 T@FrameType) (r@@12 T@Field_7498_7499) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_7498 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7498_7498 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_7498_7498 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_7498 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7498_7498 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_7498_7499) (v_1@@16 T@FrameType) (q@@13 T@Field_7498_7499) (w@@16 T@FrameType) (r@@13 T@Field_3925_7499) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_7498 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7498_3925 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_7498_3925 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_7498 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7498_3925 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_7498_7499) (v_1@@17 T@FrameType) (q@@14 T@Field_3925_7499) (w@@17 T@FrameType) (r@@14 T@Field_8522_8523) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_3925 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3925_8522 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_7498_8522 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_3925 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3925_8522 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_7498_7499) (v_1@@18 T@FrameType) (q@@15 T@Field_3925_7499) (w@@18 T@FrameType) (r@@15 T@Field_7498_7499) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_3925 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3925_7498 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_7498_7498 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_3925 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3925_7498 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_7498_7499) (v_1@@19 T@FrameType) (q@@16 T@Field_3925_7499) (w@@19 T@FrameType) (r@@16 T@Field_3925_7499) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_7498_3925 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3925_3925 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_7498_3925 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7498_3925 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3925_3925 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_3925_7499) (v_1@@20 T@FrameType) (q@@17 T@Field_8522_8523) (w@@20 T@FrameType) (r@@17 T@Field_8522_8523) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_8522 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8522_8522 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_3925_8522 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_8522 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8522_8522 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_3925_7499) (v_1@@21 T@FrameType) (q@@18 T@Field_8522_8523) (w@@21 T@FrameType) (r@@18 T@Field_7498_7499) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_8522 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8522_7498 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_3925_7498 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_8522 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8522_7498 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_3925_7499) (v_1@@22 T@FrameType) (q@@19 T@Field_8522_8523) (w@@22 T@FrameType) (r@@19 T@Field_3925_7499) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_8522 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8522_3925 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_3925_3925 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_8522 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8522_3925 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_3925_7499) (v_1@@23 T@FrameType) (q@@20 T@Field_7498_7499) (w@@23 T@FrameType) (r@@20 T@Field_8522_8523) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_7498 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7498_8522 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_3925_8522 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_7498 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7498_8522 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_3925_7499) (v_1@@24 T@FrameType) (q@@21 T@Field_7498_7499) (w@@24 T@FrameType) (r@@21 T@Field_7498_7499) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_7498 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7498_7498 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_3925_7498 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_7498 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7498_7498 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_3925_7499) (v_1@@25 T@FrameType) (q@@22 T@Field_7498_7499) (w@@25 T@FrameType) (r@@22 T@Field_3925_7499) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_7498 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7498_3925 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_3925_3925 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_7498 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7498_3925 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_3925_7499) (v_1@@26 T@FrameType) (q@@23 T@Field_3925_7499) (w@@26 T@FrameType) (r@@23 T@Field_8522_8523) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_3925 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3925_8522 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_3925_8522 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_3925 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3925_8522 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_3925_7499) (v_1@@27 T@FrameType) (q@@24 T@Field_3925_7499) (w@@27 T@FrameType) (r@@24 T@Field_7498_7499) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_3925 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3925_7498 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_3925_7498 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_3925 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3925_7498 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_3925_7499) (v_1@@28 T@FrameType) (q@@25 T@Field_3925_7499) (w@@28 T@FrameType) (r@@25 T@Field_3925_7499) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_3925_3925 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3925_3925 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_3925_3925 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3925_3925 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3925_3925 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |loopkup#definedness|)
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
