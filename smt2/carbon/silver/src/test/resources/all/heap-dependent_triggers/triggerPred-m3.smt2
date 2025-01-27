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
(declare-sort T@Field_8814_53 0)
(declare-sort T@Field_8827_8828 0)
(declare-sort T@Field_15041_15042 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14994_3259 0)
(declare-sort T@Field_15054_15059 0)
(declare-sort T@Field_5374_53 0)
(declare-sort T@Field_5374_8828 0)
(declare-sort T@Field_5374_3259 0)
(declare-sort T@Field_8814_5375 0)
(declare-sort T@Field_8814_15059 0)
(declare-datatypes ((T@PolymorphicMapType_8775 0)) (((PolymorphicMapType_8775 (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| (Array T@Ref T@Field_14994_3259 Real)) (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| (Array T@Ref T@Field_15041_15042 Real)) (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| (Array T@Ref T@Field_8814_5375 Real)) (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| (Array T@Ref T@Field_8814_53 Real)) (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| (Array T@Ref T@Field_8827_8828 Real)) (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| (Array T@Ref T@Field_8814_15059 Real)) (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| (Array T@Ref T@Field_5374_3259 Real)) (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| (Array T@Ref T@Field_5374_53 Real)) (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| (Array T@Ref T@Field_5374_8828 Real)) (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| (Array T@Ref T@Field_15054_15059 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9303 0)) (((PolymorphicMapType_9303 (|PolymorphicMapType_9303_5371_3259#PolymorphicMapType_9303| (Array T@Ref T@Field_14994_3259 Bool)) (|PolymorphicMapType_9303_5371_53#PolymorphicMapType_9303| (Array T@Ref T@Field_8814_53 Bool)) (|PolymorphicMapType_9303_5371_8828#PolymorphicMapType_9303| (Array T@Ref T@Field_8827_8828 Bool)) (|PolymorphicMapType_9303_5371_15042#PolymorphicMapType_9303| (Array T@Ref T@Field_8814_5375 Bool)) (|PolymorphicMapType_9303_5371_26808#PolymorphicMapType_9303| (Array T@Ref T@Field_8814_15059 Bool)) (|PolymorphicMapType_9303_15041_3259#PolymorphicMapType_9303| (Array T@Ref T@Field_5374_3259 Bool)) (|PolymorphicMapType_9303_15041_53#PolymorphicMapType_9303| (Array T@Ref T@Field_5374_53 Bool)) (|PolymorphicMapType_9303_15041_8828#PolymorphicMapType_9303| (Array T@Ref T@Field_5374_8828 Bool)) (|PolymorphicMapType_9303_15041_15042#PolymorphicMapType_9303| (Array T@Ref T@Field_15041_15042 Bool)) (|PolymorphicMapType_9303_15041_27856#PolymorphicMapType_9303| (Array T@Ref T@Field_15054_15059 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8754 0)) (((PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| (Array T@Ref T@Field_8814_53 Bool)) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| (Array T@Ref T@Field_8827_8828 T@Ref)) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| (Array T@Ref T@Field_15041_15042 T@FrameType)) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| (Array T@Ref T@Field_14994_3259 Int)) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| (Array T@Ref T@Field_15054_15059 T@PolymorphicMapType_9303)) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| (Array T@Ref T@Field_5374_53 Bool)) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| (Array T@Ref T@Field_5374_8828 T@Ref)) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| (Array T@Ref T@Field_5374_3259 Int)) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| (Array T@Ref T@Field_8814_5375 T@FrameType)) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| (Array T@Ref T@Field_8814_15059 T@PolymorphicMapType_9303)) ) ) ))
(declare-fun $allocated () T@Field_8814_53)
(declare-fun f_7 () T@Field_14994_3259)
(declare-fun succHeap (T@PolymorphicMapType_8754 T@PolymorphicMapType_8754) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8754 T@PolymorphicMapType_8754) Bool)
(declare-fun state (T@PolymorphicMapType_8754 T@PolymorphicMapType_8775) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8775) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9303)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun p_2 (T@Ref) T@Field_15041_15042)
(declare-fun IsPredicateField_5374_5375 (T@Field_15041_15042) Bool)
(declare-fun |p#trigger_5374| (T@PolymorphicMapType_8754 T@Field_15041_15042) Bool)
(declare-fun |p#everUsed_5374| (T@Field_15041_15042) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8754 T@PolymorphicMapType_8754 T@PolymorphicMapType_8775) Bool)
(declare-fun IsPredicateField_8814_25661 (T@Field_8814_5375) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8814 (T@Field_8814_5375) T@Field_8814_15059)
(declare-fun HasDirectPerm_8814_5375 (T@PolymorphicMapType_8775 T@Ref T@Field_8814_5375) Bool)
(declare-fun PredicateMaskField_5374 (T@Field_15041_15042) T@Field_15054_15059)
(declare-fun HasDirectPerm_5374_5375 (T@PolymorphicMapType_8775 T@Ref T@Field_15041_15042) Bool)
(declare-fun IsWandField_8814_29021 (T@Field_8814_5375) Bool)
(declare-fun WandMaskField_8814 (T@Field_8814_5375) T@Field_8814_15059)
(declare-fun IsWandField_5374_28664 (T@Field_15041_15042) Bool)
(declare-fun WandMaskField_5374 (T@Field_15041_15042) T@Field_15054_15059)
(declare-fun |p#sm| (T@Ref) T@Field_15054_15059)
(declare-fun dummyHeap () T@PolymorphicMapType_8754)
(declare-fun ZeroMask () T@PolymorphicMapType_8775)
(declare-fun InsidePredicate_15041_15041 (T@Field_15041_15042 T@FrameType T@Field_15041_15042 T@FrameType) Bool)
(declare-fun InsidePredicate_8814_8814 (T@Field_8814_5375 T@FrameType T@Field_8814_5375 T@FrameType) Bool)
(declare-fun IsPredicateField_5371_3259 (T@Field_14994_3259) Bool)
(declare-fun IsWandField_5371_3259 (T@Field_14994_3259) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5374_35953 (T@Field_15054_15059) Bool)
(declare-fun IsWandField_5374_35969 (T@Field_15054_15059) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5374_8828 (T@Field_5374_8828) Bool)
(declare-fun IsWandField_5374_8828 (T@Field_5374_8828) Bool)
(declare-fun IsPredicateField_5374_53 (T@Field_5374_53) Bool)
(declare-fun IsWandField_5374_53 (T@Field_5374_53) Bool)
(declare-fun IsPredicateField_5374_3259 (T@Field_5374_3259) Bool)
(declare-fun IsWandField_5374_3259 (T@Field_5374_3259) Bool)
(declare-fun IsPredicateField_5371_35122 (T@Field_8814_15059) Bool)
(declare-fun IsWandField_5371_35138 (T@Field_8814_15059) Bool)
(declare-fun IsPredicateField_5371_8828 (T@Field_8827_8828) Bool)
(declare-fun IsWandField_5371_8828 (T@Field_8827_8828) Bool)
(declare-fun IsPredicateField_5371_53 (T@Field_8814_53) Bool)
(declare-fun IsWandField_5371_53 (T@Field_8814_53) Bool)
(declare-fun HasDirectPerm_8814_25048 (T@PolymorphicMapType_8775 T@Ref T@Field_8814_15059) Bool)
(declare-fun HasDirectPerm_8814_3259 (T@PolymorphicMapType_8775 T@Ref T@Field_14994_3259) Bool)
(declare-fun HasDirectPerm_8814_8828 (T@PolymorphicMapType_8775 T@Ref T@Field_8827_8828) Bool)
(declare-fun HasDirectPerm_8814_53 (T@PolymorphicMapType_8775 T@Ref T@Field_8814_53) Bool)
(declare-fun HasDirectPerm_5374_23955 (T@PolymorphicMapType_8775 T@Ref T@Field_15054_15059) Bool)
(declare-fun HasDirectPerm_5374_3259 (T@PolymorphicMapType_8775 T@Ref T@Field_5374_3259) Bool)
(declare-fun HasDirectPerm_5374_8828 (T@PolymorphicMapType_8775 T@Ref T@Field_5374_8828) Bool)
(declare-fun HasDirectPerm_5374_53 (T@PolymorphicMapType_8775 T@Ref T@Field_5374_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8775 T@PolymorphicMapType_8775 T@PolymorphicMapType_8775) Bool)
(declare-fun getPredWandId_5374_5375 (T@Field_15041_15042) Int)
(declare-fun InsidePredicate_15041_8814 (T@Field_15041_15042 T@FrameType T@Field_8814_5375 T@FrameType) Bool)
(declare-fun InsidePredicate_8814_15041 (T@Field_8814_5375 T@FrameType T@Field_15041_15042 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8754) (Heap1 T@PolymorphicMapType_8754) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8754) (Mask T@PolymorphicMapType_8775) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8754) (Heap1@@0 T@PolymorphicMapType_8754) (Heap2 T@PolymorphicMapType_8754) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15054_15059) ) (!  (not (select (|PolymorphicMapType_9303_15041_27856#PolymorphicMapType_9303| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_15041_27856#PolymorphicMapType_9303| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15041_15042) ) (!  (not (select (|PolymorphicMapType_9303_15041_15042#PolymorphicMapType_9303| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_15041_15042#PolymorphicMapType_9303| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5374_8828) ) (!  (not (select (|PolymorphicMapType_9303_15041_8828#PolymorphicMapType_9303| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_15041_8828#PolymorphicMapType_9303| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5374_53) ) (!  (not (select (|PolymorphicMapType_9303_15041_53#PolymorphicMapType_9303| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_15041_53#PolymorphicMapType_9303| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5374_3259) ) (!  (not (select (|PolymorphicMapType_9303_15041_3259#PolymorphicMapType_9303| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_15041_3259#PolymorphicMapType_9303| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8814_15059) ) (!  (not (select (|PolymorphicMapType_9303_5371_26808#PolymorphicMapType_9303| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_5371_26808#PolymorphicMapType_9303| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8814_5375) ) (!  (not (select (|PolymorphicMapType_9303_5371_15042#PolymorphicMapType_9303| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_5371_15042#PolymorphicMapType_9303| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8827_8828) ) (!  (not (select (|PolymorphicMapType_9303_5371_8828#PolymorphicMapType_9303| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_5371_8828#PolymorphicMapType_9303| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8814_53) ) (!  (not (select (|PolymorphicMapType_9303_5371_53#PolymorphicMapType_9303| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_5371_53#PolymorphicMapType_9303| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14994_3259) ) (!  (not (select (|PolymorphicMapType_9303_5371_3259#PolymorphicMapType_9303| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9303_5371_3259#PolymorphicMapType_9303| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_5374_5375 (p_2 x))
 :qid |stdinbpl.407:15|
 :skolemid |83|
 :pattern ( (p_2 x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8754) (x@@0 T@Ref) ) (! (|p#everUsed_5374| (p_2 x@@0))
 :qid |stdinbpl.426:15|
 :skolemid |87|
 :pattern ( (|p#trigger_5374| Heap@@0 (p_2 x@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8754) (ExhaleHeap T@PolymorphicMapType_8754) (Mask@@0 T@PolymorphicMapType_8775) (pm_f_32 T@Field_8814_5375) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8814_5375 Mask@@0 null pm_f_32) (IsPredicateField_8814_25661 pm_f_32)) (= (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@1) null (PredicateMaskField_8814 pm_f_32)) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap) null (PredicateMaskField_8814 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_8814_25661 pm_f_32) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap) null (PredicateMaskField_8814 pm_f_32)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8754) (ExhaleHeap@@0 T@PolymorphicMapType_8754) (Mask@@1 T@PolymorphicMapType_8775) (pm_f_32@@0 T@Field_15041_15042) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5374_5375 Mask@@1 null pm_f_32@@0) (IsPredicateField_5374_5375 pm_f_32@@0)) (= (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@2) null (PredicateMaskField_5374 pm_f_32@@0)) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@0) null (PredicateMaskField_5374 pm_f_32@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5374_5375 pm_f_32@@0) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@0) null (PredicateMaskField_5374 pm_f_32@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8754) (ExhaleHeap@@1 T@PolymorphicMapType_8754) (Mask@@2 T@PolymorphicMapType_8775) (pm_f_32@@1 T@Field_8814_5375) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8814_5375 Mask@@2 null pm_f_32@@1) (IsWandField_8814_29021 pm_f_32@@1)) (= (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@3) null (WandMaskField_8814 pm_f_32@@1)) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@1) null (WandMaskField_8814 pm_f_32@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_8814_29021 pm_f_32@@1) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@1) null (WandMaskField_8814 pm_f_32@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8754) (ExhaleHeap@@2 T@PolymorphicMapType_8754) (Mask@@3 T@PolymorphicMapType_8775) (pm_f_32@@2 T@Field_15041_15042) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5374_5375 Mask@@3 null pm_f_32@@2) (IsWandField_5374_28664 pm_f_32@@2)) (= (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@4) null (WandMaskField_5374 pm_f_32@@2)) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@2) null (WandMaskField_5374 pm_f_32@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5374_28664 pm_f_32@@2) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@2) null (WandMaskField_5374 pm_f_32@@2)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (p_2 x@@1) (p_2 x2)) (= x@@1 x2))
 :qid |stdinbpl.417:15|
 :skolemid |85|
 :pattern ( (p_2 x@@1) (p_2 x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|p#sm| x@@2) (|p#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.421:15|
 :skolemid |86|
 :pattern ( (|p#sm| x@@2) (|p#sm| x2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8754) (ExhaleHeap@@3 T@PolymorphicMapType_8754) (Mask@@4 T@PolymorphicMapType_8775) (pm_f_32@@3 T@Field_8814_5375) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8814_5375 Mask@@4 null pm_f_32@@3) (IsPredicateField_8814_25661 pm_f_32@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_14994_3259) ) (!  (=> (select (|PolymorphicMapType_9303_5371_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32 f_54) (= (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@5) o2_32 f_54) (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_8814_53) ) (!  (=> (select (|PolymorphicMapType_9303_5371_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@5) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_8827_8828) ) (!  (=> (select (|PolymorphicMapType_9303_5371_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@5) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_8814_5375) ) (!  (=> (select (|PolymorphicMapType_9303_5371_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@5) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_8814_15059) ) (!  (=> (select (|PolymorphicMapType_9303_5371_26808#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@3 f_54@@3))
))) (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_5374_3259) ) (!  (=> (select (|PolymorphicMapType_9303_15041_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@5) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@4 f_54@@4))
))) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_5374_53) ) (!  (=> (select (|PolymorphicMapType_9303_15041_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@5) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_5374_8828) ) (!  (=> (select (|PolymorphicMapType_9303_15041_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@5) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_15041_15042) ) (!  (=> (select (|PolymorphicMapType_9303_15041_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@5) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_15054_15059) ) (!  (=> (select (|PolymorphicMapType_9303_15041_27856#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@5) null (PredicateMaskField_8814 pm_f_32@@3))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@5) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@3) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_8814_25661 pm_f_32@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8754) (ExhaleHeap@@4 T@PolymorphicMapType_8754) (Mask@@5 T@PolymorphicMapType_8775) (pm_f_32@@4 T@Field_15041_15042) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5374_5375 Mask@@5 null pm_f_32@@4) (IsPredicateField_5374_5375 pm_f_32@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@9 T@Ref) (f_54@@9 T@Field_14994_3259) ) (!  (=> (select (|PolymorphicMapType_9303_5371_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@9 f_54@@9) (= (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@6) o2_32@@9 f_54@@9) (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@9 f_54@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@9 f_54@@9))
)) (forall ((o2_32@@10 T@Ref) (f_54@@10 T@Field_8814_53) ) (!  (=> (select (|PolymorphicMapType_9303_5371_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@10 f_54@@10) (= (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@6) o2_32@@10 f_54@@10) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@10 f_54@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@10 f_54@@10))
))) (forall ((o2_32@@11 T@Ref) (f_54@@11 T@Field_8827_8828) ) (!  (=> (select (|PolymorphicMapType_9303_5371_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@11 f_54@@11) (= (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@6) o2_32@@11 f_54@@11) (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@11 f_54@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@11 f_54@@11))
))) (forall ((o2_32@@12 T@Ref) (f_54@@12 T@Field_8814_5375) ) (!  (=> (select (|PolymorphicMapType_9303_5371_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@12 f_54@@12) (= (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@6) o2_32@@12 f_54@@12) (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@12 f_54@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@12 f_54@@12))
))) (forall ((o2_32@@13 T@Ref) (f_54@@13 T@Field_8814_15059) ) (!  (=> (select (|PolymorphicMapType_9303_5371_26808#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@13 f_54@@13) (= (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@6) o2_32@@13 f_54@@13) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@13 f_54@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@13 f_54@@13))
))) (forall ((o2_32@@14 T@Ref) (f_54@@14 T@Field_5374_3259) ) (!  (=> (select (|PolymorphicMapType_9303_15041_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@14 f_54@@14) (= (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@6) o2_32@@14 f_54@@14) (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@14 f_54@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@14 f_54@@14))
))) (forall ((o2_32@@15 T@Ref) (f_54@@15 T@Field_5374_53) ) (!  (=> (select (|PolymorphicMapType_9303_15041_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@15 f_54@@15) (= (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@6) o2_32@@15 f_54@@15) (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@15 f_54@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@15 f_54@@15))
))) (forall ((o2_32@@16 T@Ref) (f_54@@16 T@Field_5374_8828) ) (!  (=> (select (|PolymorphicMapType_9303_15041_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@16 f_54@@16) (= (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@6) o2_32@@16 f_54@@16) (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@16 f_54@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@16 f_54@@16))
))) (forall ((o2_32@@17 T@Ref) (f_54@@17 T@Field_15041_15042) ) (!  (=> (select (|PolymorphicMapType_9303_15041_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@17 f_54@@17) (= (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@6) o2_32@@17 f_54@@17) (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@17 f_54@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@17 f_54@@17))
))) (forall ((o2_32@@18 T@Ref) (f_54@@18 T@Field_15054_15059) ) (!  (=> (select (|PolymorphicMapType_9303_15041_27856#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) null (PredicateMaskField_5374 pm_f_32@@4))) o2_32@@18 f_54@@18) (= (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@6) o2_32@@18 f_54@@18) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@18 f_54@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@4) o2_32@@18 f_54@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5374_5375 pm_f_32@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8754) (ExhaleHeap@@5 T@PolymorphicMapType_8754) (Mask@@6 T@PolymorphicMapType_8775) (pm_f_32@@5 T@Field_8814_5375) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8814_5375 Mask@@6 null pm_f_32@@5) (IsWandField_8814_29021 pm_f_32@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@19 T@Ref) (f_54@@19 T@Field_14994_3259) ) (!  (=> (select (|PolymorphicMapType_9303_5371_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@19 f_54@@19) (= (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@7) o2_32@@19 f_54@@19) (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@19 f_54@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@19 f_54@@19))
)) (forall ((o2_32@@20 T@Ref) (f_54@@20 T@Field_8814_53) ) (!  (=> (select (|PolymorphicMapType_9303_5371_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@20 f_54@@20) (= (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@7) o2_32@@20 f_54@@20) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@20 f_54@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@20 f_54@@20))
))) (forall ((o2_32@@21 T@Ref) (f_54@@21 T@Field_8827_8828) ) (!  (=> (select (|PolymorphicMapType_9303_5371_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@21 f_54@@21) (= (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@7) o2_32@@21 f_54@@21) (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@21 f_54@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@21 f_54@@21))
))) (forall ((o2_32@@22 T@Ref) (f_54@@22 T@Field_8814_5375) ) (!  (=> (select (|PolymorphicMapType_9303_5371_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@22 f_54@@22) (= (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@7) o2_32@@22 f_54@@22) (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@22 f_54@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@22 f_54@@22))
))) (forall ((o2_32@@23 T@Ref) (f_54@@23 T@Field_8814_15059) ) (!  (=> (select (|PolymorphicMapType_9303_5371_26808#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@23 f_54@@23) (= (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) o2_32@@23 f_54@@23) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@23 f_54@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@23 f_54@@23))
))) (forall ((o2_32@@24 T@Ref) (f_54@@24 T@Field_5374_3259) ) (!  (=> (select (|PolymorphicMapType_9303_15041_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@24 f_54@@24) (= (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@7) o2_32@@24 f_54@@24) (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@24 f_54@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@24 f_54@@24))
))) (forall ((o2_32@@25 T@Ref) (f_54@@25 T@Field_5374_53) ) (!  (=> (select (|PolymorphicMapType_9303_15041_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@25 f_54@@25) (= (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@7) o2_32@@25 f_54@@25) (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@25 f_54@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@25 f_54@@25))
))) (forall ((o2_32@@26 T@Ref) (f_54@@26 T@Field_5374_8828) ) (!  (=> (select (|PolymorphicMapType_9303_15041_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@26 f_54@@26) (= (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@7) o2_32@@26 f_54@@26) (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@26 f_54@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@26 f_54@@26))
))) (forall ((o2_32@@27 T@Ref) (f_54@@27 T@Field_15041_15042) ) (!  (=> (select (|PolymorphicMapType_9303_15041_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@27 f_54@@27) (= (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@7) o2_32@@27 f_54@@27) (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@27 f_54@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@27 f_54@@27))
))) (forall ((o2_32@@28 T@Ref) (f_54@@28 T@Field_15054_15059) ) (!  (=> (select (|PolymorphicMapType_9303_15041_27856#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@7) null (WandMaskField_8814 pm_f_32@@5))) o2_32@@28 f_54@@28) (= (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@7) o2_32@@28 f_54@@28) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@28 f_54@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@5) o2_32@@28 f_54@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_8814_29021 pm_f_32@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8754) (ExhaleHeap@@6 T@PolymorphicMapType_8754) (Mask@@7 T@PolymorphicMapType_8775) (pm_f_32@@6 T@Field_15041_15042) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5374_5375 Mask@@7 null pm_f_32@@6) (IsWandField_5374_28664 pm_f_32@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@29 T@Ref) (f_54@@29 T@Field_14994_3259) ) (!  (=> (select (|PolymorphicMapType_9303_5371_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@29 f_54@@29) (= (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@8) o2_32@@29 f_54@@29) (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@29 f_54@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@29 f_54@@29))
)) (forall ((o2_32@@30 T@Ref) (f_54@@30 T@Field_8814_53) ) (!  (=> (select (|PolymorphicMapType_9303_5371_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@30 f_54@@30) (= (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@8) o2_32@@30 f_54@@30) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@30 f_54@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@30 f_54@@30))
))) (forall ((o2_32@@31 T@Ref) (f_54@@31 T@Field_8827_8828) ) (!  (=> (select (|PolymorphicMapType_9303_5371_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@31 f_54@@31) (= (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@8) o2_32@@31 f_54@@31) (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@31 f_54@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@31 f_54@@31))
))) (forall ((o2_32@@32 T@Ref) (f_54@@32 T@Field_8814_5375) ) (!  (=> (select (|PolymorphicMapType_9303_5371_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@32 f_54@@32) (= (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@8) o2_32@@32 f_54@@32) (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@32 f_54@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@32 f_54@@32))
))) (forall ((o2_32@@33 T@Ref) (f_54@@33 T@Field_8814_15059) ) (!  (=> (select (|PolymorphicMapType_9303_5371_26808#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@33 f_54@@33) (= (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@8) o2_32@@33 f_54@@33) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@33 f_54@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@33 f_54@@33))
))) (forall ((o2_32@@34 T@Ref) (f_54@@34 T@Field_5374_3259) ) (!  (=> (select (|PolymorphicMapType_9303_15041_3259#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@34 f_54@@34) (= (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@8) o2_32@@34 f_54@@34) (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@34 f_54@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@34 f_54@@34))
))) (forall ((o2_32@@35 T@Ref) (f_54@@35 T@Field_5374_53) ) (!  (=> (select (|PolymorphicMapType_9303_15041_53#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@35 f_54@@35) (= (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@8) o2_32@@35 f_54@@35) (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@35 f_54@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@35 f_54@@35))
))) (forall ((o2_32@@36 T@Ref) (f_54@@36 T@Field_5374_8828) ) (!  (=> (select (|PolymorphicMapType_9303_15041_8828#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@36 f_54@@36) (= (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@8) o2_32@@36 f_54@@36) (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@36 f_54@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@36 f_54@@36))
))) (forall ((o2_32@@37 T@Ref) (f_54@@37 T@Field_15041_15042) ) (!  (=> (select (|PolymorphicMapType_9303_15041_15042#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@37 f_54@@37) (= (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@8) o2_32@@37 f_54@@37) (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@37 f_54@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@37 f_54@@37))
))) (forall ((o2_32@@38 T@Ref) (f_54@@38 T@Field_15054_15059) ) (!  (=> (select (|PolymorphicMapType_9303_15041_27856#PolymorphicMapType_9303| (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) null (WandMaskField_5374 pm_f_32@@6))) o2_32@@38 f_54@@38) (= (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@8) o2_32@@38 f_54@@38) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@38 f_54@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@6) o2_32@@38 f_54@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5374_28664 pm_f_32@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8754) (ExhaleHeap@@7 T@PolymorphicMapType_8754) (Mask@@8 T@PolymorphicMapType_8775) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@9) o_55 $allocated) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@7) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@7) o_55 $allocated))
)))
(assert (forall ((p T@Field_15041_15042) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15041_15041 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15041_15041 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8814_5375) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8814_8814 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8814_8814 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5371_3259 f_7)))
(assert  (not (IsWandField_5371_3259 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8754) (ExhaleHeap@@8 T@PolymorphicMapType_8754) (Mask@@9 T@PolymorphicMapType_8775) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8775) (o_2@@9 T@Ref) (f_4@@9 T@Field_15054_15059) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5374_35953 f_4@@9))) (not (IsWandField_5374_35969 f_4@@9))) (<= (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8775) (o_2@@10 T@Ref) (f_4@@10 T@Field_5374_8828) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5374_8828 f_4@@10))) (not (IsWandField_5374_8828 f_4@@10))) (<= (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8775) (o_2@@11 T@Ref) (f_4@@11 T@Field_5374_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5374_53 f_4@@11))) (not (IsWandField_5374_53 f_4@@11))) (<= (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8775) (o_2@@12 T@Ref) (f_4@@12 T@Field_15041_15042) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5374_5375 f_4@@12))) (not (IsWandField_5374_28664 f_4@@12))) (<= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8775) (o_2@@13 T@Ref) (f_4@@13 T@Field_5374_3259) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5374_3259 f_4@@13))) (not (IsWandField_5374_3259 f_4@@13))) (<= (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8775) (o_2@@14 T@Ref) (f_4@@14 T@Field_8814_15059) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5371_35122 f_4@@14))) (not (IsWandField_5371_35138 f_4@@14))) (<= (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8775) (o_2@@15 T@Ref) (f_4@@15 T@Field_8827_8828) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5371_8828 f_4@@15))) (not (IsWandField_5371_8828 f_4@@15))) (<= (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8775) (o_2@@16 T@Ref) (f_4@@16 T@Field_8814_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5371_53 f_4@@16))) (not (IsWandField_5371_53 f_4@@16))) (<= (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8775) (o_2@@17 T@Ref) (f_4@@17 T@Field_8814_5375) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8814_25661 f_4@@17))) (not (IsWandField_8814_29021 f_4@@17))) (<= (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8775) (o_2@@18 T@Ref) (f_4@@18 T@Field_14994_3259) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5371_3259 f_4@@18))) (not (IsWandField_5371_3259 f_4@@18))) (<= (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8775) (o_2@@19 T@Ref) (f_4@@19 T@Field_8814_15059) ) (! (= (HasDirectPerm_8814_25048 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8814_25048 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8775) (o_2@@20 T@Ref) (f_4@@20 T@Field_14994_3259) ) (! (= (HasDirectPerm_8814_3259 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8814_3259 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8775) (o_2@@21 T@Ref) (f_4@@21 T@Field_8827_8828) ) (! (= (HasDirectPerm_8814_8828 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8814_8828 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8775) (o_2@@22 T@Ref) (f_4@@22 T@Field_8814_53) ) (! (= (HasDirectPerm_8814_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8814_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8775) (o_2@@23 T@Ref) (f_4@@23 T@Field_8814_5375) ) (! (= (HasDirectPerm_8814_5375 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8814_5375 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8775) (o_2@@24 T@Ref) (f_4@@24 T@Field_15054_15059) ) (! (= (HasDirectPerm_5374_23955 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5374_23955 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8775) (o_2@@25 T@Ref) (f_4@@25 T@Field_5374_3259) ) (! (= (HasDirectPerm_5374_3259 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5374_3259 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8775) (o_2@@26 T@Ref) (f_4@@26 T@Field_5374_8828) ) (! (= (HasDirectPerm_5374_8828 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5374_8828 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8775) (o_2@@27 T@Ref) (f_4@@27 T@Field_5374_53) ) (! (= (HasDirectPerm_5374_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5374_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8775) (o_2@@28 T@Ref) (f_4@@28 T@Field_15041_15042) ) (! (= (HasDirectPerm_5374_5375 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5374_5375 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8754) (ExhaleHeap@@9 T@PolymorphicMapType_8754) (Mask@@30 T@PolymorphicMapType_8775) (o_55@@0 T@Ref) (f_54@@39 T@Field_8814_15059) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_8814_25048 Mask@@30 o_55@@0 f_54@@39) (= (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@11) o_55@@0 f_54@@39) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@9) o_55@@0 f_54@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| ExhaleHeap@@9) o_55@@0 f_54@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8754) (ExhaleHeap@@10 T@PolymorphicMapType_8754) (Mask@@31 T@PolymorphicMapType_8775) (o_55@@1 T@Ref) (f_54@@40 T@Field_14994_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_8814_3259 Mask@@31 o_55@@1 f_54@@40) (= (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@12) o_55@@1 f_54@@40) (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@10) o_55@@1 f_54@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| ExhaleHeap@@10) o_55@@1 f_54@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8754) (ExhaleHeap@@11 T@PolymorphicMapType_8754) (Mask@@32 T@PolymorphicMapType_8775) (o_55@@2 T@Ref) (f_54@@41 T@Field_8827_8828) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_8814_8828 Mask@@32 o_55@@2 f_54@@41) (= (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@13) o_55@@2 f_54@@41) (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@11) o_55@@2 f_54@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| ExhaleHeap@@11) o_55@@2 f_54@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8754) (ExhaleHeap@@12 T@PolymorphicMapType_8754) (Mask@@33 T@PolymorphicMapType_8775) (o_55@@3 T@Ref) (f_54@@42 T@Field_8814_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_8814_53 Mask@@33 o_55@@3 f_54@@42) (= (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@14) o_55@@3 f_54@@42) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@12) o_55@@3 f_54@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| ExhaleHeap@@12) o_55@@3 f_54@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8754) (ExhaleHeap@@13 T@PolymorphicMapType_8754) (Mask@@34 T@PolymorphicMapType_8775) (o_55@@4 T@Ref) (f_54@@43 T@Field_8814_5375) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_8814_5375 Mask@@34 o_55@@4 f_54@@43) (= (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@15) o_55@@4 f_54@@43) (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@13) o_55@@4 f_54@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| ExhaleHeap@@13) o_55@@4 f_54@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8754) (ExhaleHeap@@14 T@PolymorphicMapType_8754) (Mask@@35 T@PolymorphicMapType_8775) (o_55@@5 T@Ref) (f_54@@44 T@Field_15054_15059) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5374_23955 Mask@@35 o_55@@5 f_54@@44) (= (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@16) o_55@@5 f_54@@44) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@14) o_55@@5 f_54@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| ExhaleHeap@@14) o_55@@5 f_54@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8754) (ExhaleHeap@@15 T@PolymorphicMapType_8754) (Mask@@36 T@PolymorphicMapType_8775) (o_55@@6 T@Ref) (f_54@@45 T@Field_5374_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5374_3259 Mask@@36 o_55@@6 f_54@@45) (= (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@17) o_55@@6 f_54@@45) (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@15) o_55@@6 f_54@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| ExhaleHeap@@15) o_55@@6 f_54@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8754) (ExhaleHeap@@16 T@PolymorphicMapType_8754) (Mask@@37 T@PolymorphicMapType_8775) (o_55@@7 T@Ref) (f_54@@46 T@Field_5374_8828) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5374_8828 Mask@@37 o_55@@7 f_54@@46) (= (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@18) o_55@@7 f_54@@46) (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@16) o_55@@7 f_54@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| ExhaleHeap@@16) o_55@@7 f_54@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8754) (ExhaleHeap@@17 T@PolymorphicMapType_8754) (Mask@@38 T@PolymorphicMapType_8775) (o_55@@8 T@Ref) (f_54@@47 T@Field_5374_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5374_53 Mask@@38 o_55@@8 f_54@@47) (= (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@19) o_55@@8 f_54@@47) (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@17) o_55@@8 f_54@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| ExhaleHeap@@17) o_55@@8 f_54@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8754) (ExhaleHeap@@18 T@PolymorphicMapType_8754) (Mask@@39 T@PolymorphicMapType_8775) (o_55@@9 T@Ref) (f_54@@48 T@Field_15041_15042) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5374_5375 Mask@@39 o_55@@9 f_54@@48) (= (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@20) o_55@@9 f_54@@48) (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@18) o_55@@9 f_54@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| ExhaleHeap@@18) o_55@@9 f_54@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_15054_15059) ) (! (= (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_5374_8828) ) (! (= (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_5374_53) ) (! (= (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_15041_15042) ) (! (= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5374_3259) ) (! (= (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_8814_15059) ) (! (= (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8827_8828) ) (! (= (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8814_53) ) (! (= (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8814_5375) ) (! (= (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14994_3259) ) (! (= (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8775) (SummandMask1 T@PolymorphicMapType_8775) (SummandMask2 T@PolymorphicMapType_8775) (o_2@@39 T@Ref) (f_4@@39 T@Field_15054_15059) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8775) (SummandMask1@@0 T@PolymorphicMapType_8775) (SummandMask2@@0 T@PolymorphicMapType_8775) (o_2@@40 T@Ref) (f_4@@40 T@Field_5374_8828) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8775) (SummandMask1@@1 T@PolymorphicMapType_8775) (SummandMask2@@1 T@PolymorphicMapType_8775) (o_2@@41 T@Ref) (f_4@@41 T@Field_5374_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8775) (SummandMask1@@2 T@PolymorphicMapType_8775) (SummandMask2@@2 T@PolymorphicMapType_8775) (o_2@@42 T@Ref) (f_4@@42 T@Field_15041_15042) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8775) (SummandMask1@@3 T@PolymorphicMapType_8775) (SummandMask2@@3 T@PolymorphicMapType_8775) (o_2@@43 T@Ref) (f_4@@43 T@Field_5374_3259) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8775) (SummandMask1@@4 T@PolymorphicMapType_8775) (SummandMask2@@4 T@PolymorphicMapType_8775) (o_2@@44 T@Ref) (f_4@@44 T@Field_8814_15059) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8775) (SummandMask1@@5 T@PolymorphicMapType_8775) (SummandMask2@@5 T@PolymorphicMapType_8775) (o_2@@45 T@Ref) (f_4@@45 T@Field_8827_8828) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8775) (SummandMask1@@6 T@PolymorphicMapType_8775) (SummandMask2@@6 T@PolymorphicMapType_8775) (o_2@@46 T@Ref) (f_4@@46 T@Field_8814_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8775) (SummandMask1@@7 T@PolymorphicMapType_8775) (SummandMask2@@7 T@PolymorphicMapType_8775) (o_2@@47 T@Ref) (f_4@@47 T@Field_8814_5375) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8775) (SummandMask1@@8 T@PolymorphicMapType_8775) (SummandMask2@@8 T@PolymorphicMapType_8775) (o_2@@48 T@Ref) (f_4@@48 T@Field_14994_3259) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_5374_5375 (p_2 x@@3)) 0)
 :qid |stdinbpl.411:15|
 :skolemid |84|
 :pattern ( (p_2 x@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8754) (o_54 T@Ref) (f_8 T@Field_15054_15059) (v T@PolymorphicMapType_9303) ) (! (succHeap Heap@@21 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@21) (store (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@21) o_54 f_8 v) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@21) (store (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@21) o_54 f_8 v) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@21) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8754) (o_54@@0 T@Ref) (f_8@@0 T@Field_5374_3259) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@22) (store (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@22) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@22) (store (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@22) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@22) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8754) (o_54@@1 T@Ref) (f_8@@1 T@Field_15041_15042) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@23) (store (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@23) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@23) (store (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@23) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@23) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8754) (o_54@@2 T@Ref) (f_8@@2 T@Field_5374_8828) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@24) (store (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@24) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@24) (store (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@24) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@24) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8754) (o_54@@3 T@Ref) (f_8@@3 T@Field_5374_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@25) (store (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@25) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@25) (store (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@25) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@25) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8754) (o_54@@4 T@Ref) (f_8@@4 T@Field_8814_15059) (v@@4 T@PolymorphicMapType_9303) ) (! (succHeap Heap@@26 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@26) (store (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@26) o_54@@4 f_8@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@26) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@26) (store (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@26) o_54@@4 f_8@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8754) (o_54@@5 T@Ref) (f_8@@5 T@Field_14994_3259) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@27) (store (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@27) o_54@@5 f_8@@5 v@@5) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@27) (store (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@27) o_54@@5 f_8@@5 v@@5) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@27) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8754) (o_54@@6 T@Ref) (f_8@@6 T@Field_8814_5375) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@28) (store (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@28) o_54@@6 f_8@@6 v@@6) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@28) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@28) (store (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@28) o_54@@6 f_8@@6 v@@6) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8754) (o_54@@7 T@Ref) (f_8@@7 T@Field_8827_8828) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@29) (store (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@29) o_54@@7 f_8@@7 v@@7) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@29) (store (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@29) o_54@@7 f_8@@7 v@@7) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@29) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8754) (o_54@@8 T@Ref) (f_8@@8 T@Field_8814_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_8754 (store (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@30) o_54@@8 f_8@@8 v@@8) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8754 (store (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@30) o_54@@8 f_8@@8 v@@8) (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5371_3259#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5378_20646#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_53#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_8828#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_5374_3259#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_8814_5375#PolymorphicMapType_8754| Heap@@30) (|PolymorphicMapType_8754_8814_25090#PolymorphicMapType_8754| Heap@@30)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_5374 (p_2 x@@4)) (|p#sm| x@@4))
 :qid |stdinbpl.403:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5374 (p_2 x@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_54@@9 T@Ref) (f_24 T@Field_8827_8828) (Heap@@31 T@PolymorphicMapType_8754) ) (!  (=> (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@31) o_54@@9 $allocated) (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@31) (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@31) o_54@@9 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8754_5073_5074#PolymorphicMapType_8754| Heap@@31) o_54@@9 f_24))
)))
(assert (forall ((p@@2 T@Field_15041_15042) (v_1@@1 T@FrameType) (q T@Field_15041_15042) (w@@1 T@FrameType) (r T@Field_15041_15042) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15041_15041 p@@2 v_1@@1 q w@@1) (InsidePredicate_15041_15041 q w@@1 r u)) (InsidePredicate_15041_15041 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15041_15041 p@@2 v_1@@1 q w@@1) (InsidePredicate_15041_15041 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_15041_15042) (v_1@@2 T@FrameType) (q@@0 T@Field_15041_15042) (w@@2 T@FrameType) (r@@0 T@Field_8814_5375) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15041_15041 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15041_8814 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_15041_8814 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15041_15041 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15041_8814 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_15041_15042) (v_1@@3 T@FrameType) (q@@1 T@Field_8814_5375) (w@@3 T@FrameType) (r@@1 T@Field_15041_15042) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15041_8814 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8814_15041 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_15041_15041 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15041_8814 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8814_15041 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_15041_15042) (v_1@@4 T@FrameType) (q@@2 T@Field_8814_5375) (w@@4 T@FrameType) (r@@2 T@Field_8814_5375) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15041_8814 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8814_8814 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_15041_8814 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15041_8814 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8814_8814 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8814_5375) (v_1@@5 T@FrameType) (q@@3 T@Field_15041_15042) (w@@5 T@FrameType) (r@@3 T@Field_15041_15042) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8814_15041 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15041_15041 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8814_15041 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8814_15041 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15041_15041 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8814_5375) (v_1@@6 T@FrameType) (q@@4 T@Field_15041_15042) (w@@6 T@FrameType) (r@@4 T@Field_8814_5375) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8814_15041 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15041_8814 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8814_8814 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8814_15041 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15041_8814 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8814_5375) (v_1@@7 T@FrameType) (q@@5 T@Field_8814_5375) (w@@7 T@FrameType) (r@@5 T@Field_15041_15042) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8814_8814 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8814_15041 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8814_15041 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8814_8814 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8814_15041 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8814_5375) (v_1@@8 T@FrameType) (q@@6 T@Field_8814_5375) (w@@8 T@FrameType) (r@@6 T@Field_8814_5375) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8814_8814 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8814_8814 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8814_8814 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8814_8814 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8814_8814 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun Heap@@32 () T@PolymorphicMapType_8754)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_8775)
(declare-fun getPredWandId_5371_3259 (T@Field_14994_3259) Int)
(declare-fun getPredWandId_5371_5375 (T@Field_8814_5375) Int)
(declare-fun getPredWandId_5371_53 (T@Field_8814_53) Int)
(declare-fun getPredWandId_5371_8828 (T@Field_8827_8828) Int)
(declare-fun getPredWandId_5371_41582 (T@Field_8814_15059) Int)
(declare-fun getPredWandId_5374_3259 (T@Field_5374_3259) Int)
(declare-fun getPredWandId_5374_53 (T@Field_5374_53) Int)
(declare-fun getPredWandId_5374_8828 (T@Field_5374_8828) Int)
(declare-fun getPredWandId_5374_42391 (T@Field_15054_15059) Int)
(declare-fun y () T@Ref)
(set-info :boogie-vc-id m3)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.735:17|
 :skolemid |100|
 :pattern ( (neverTriggered3 x_1) (neverTriggered3 x_1_1))
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.735:17|
 :skolemid |100|
 :pattern ( (neverTriggered3 x_1@@0) (neverTriggered3 x_1_1@@0))
)) (=> (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select xs x_1@@1) (< NoPerm FullPerm)) (and (= (invRecv3 x_1@@1) x_1@@1) (qpRange3 x_1@@1)))
 :qid |stdinbpl.741:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@32) null (p_2 x_1@@1)))
 :pattern ( (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ZeroMask) null (p_2 x_1@@1)))
 :pattern ( (select (|PolymorphicMapType_8754_5374_5375#PolymorphicMapType_8754| Heap@@32) null (p_2 x_1@@1)))
)) (=> (and (forall ((x_2_1 T@Ref) ) (!  (=> (and (and (select xs (invRecv3 x_2_1)) (< NoPerm FullPerm)) (qpRange3 x_2_1)) (= (invRecv3 x_2_1) x_2_1))
 :qid |stdinbpl.745:22|
 :skolemid |102|
 :pattern ( (invRecv3 x_2_1))
)) (forall ((x_2_1@@0 T@Ref) ) (!  (=> (and (and (select xs (invRecv3 x_2_1@@0)) (< NoPerm FullPerm)) (qpRange3 x_2_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv3 x_2_1@@0) x_2_1@@0)) (= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| QPMask@0) null (p_2 x_2_1@@0)) (+ (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ZeroMask) null (p_2 x_2_1@@0)) FullPerm))))
 :qid |stdinbpl.751:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| QPMask@0) null (p_2 x_2_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_14994_3259) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_5371_3259 f_5))) (not (= (getPredWandId_5371_3259 f_5) 0))) (= (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_8775_5371_3259#PolymorphicMapType_8775| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_8814_5375) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_8814_25661 f_5@@0))) (not (= (getPredWandId_5371_5375 f_5@@0) 0))) (= (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8775_5371_5375#PolymorphicMapType_8775| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_8814_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_5371_53 f_5@@1))) (not (= (getPredWandId_5371_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8775_5371_53#PolymorphicMapType_8775| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_8827_8828) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_5371_8828 f_5@@2))) (not (= (getPredWandId_5371_8828 f_5@@2) 0))) (= (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8775_5371_8828#PolymorphicMapType_8775| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_8814_15059) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_5371_35122 f_5@@3))) (not (= (getPredWandId_5371_41582 f_5@@3) 0))) (= (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8775_5371_33250#PolymorphicMapType_8775| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_5374_3259) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_5374_3259 f_5@@4))) (not (= (getPredWandId_5374_3259 f_5@@4) 0))) (= (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8775_5374_3259#PolymorphicMapType_8775| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_15041_15042) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_5374_5375 f_5@@5))) (not (= (getPredWandId_5374_5375 f_5@@5) 0))) (= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_5374_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_5374_53 f_5@@6))) (not (= (getPredWandId_5374_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8775_5374_53#PolymorphicMapType_8775| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_5374_8828) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_5374_8828 f_5@@7))) (not (= (getPredWandId_5374_8828 f_5@@7) 0))) (= (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8775_5374_8828#PolymorphicMapType_8775| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_15054_15059) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_5374_35953 f_5@@8))) (not (= (getPredWandId_5374_42391 f_5@@8) 0))) (= (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.757:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8775_5374_33661#PolymorphicMapType_8775| QPMask@0) o_9@@8 f_5@@8))
))) (and (and (and (forall ((x_2_1@@1 T@Ref) ) (!  (=> (not (and (and (select xs (invRecv3 x_2_1@@1)) (< NoPerm FullPerm)) (qpRange3 x_2_1@@1))) (= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| QPMask@0) null (p_2 x_2_1@@1)) (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| ZeroMask) null (p_2 x_2_1@@1))))
 :qid |stdinbpl.761:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| QPMask@0) null (p_2 x_2_1@@1)))
)) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (select xs y) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (= (ControlFlow 0 3) (- 0 2)))))) (= (select (|PolymorphicMapType_8775_5374_5375#PolymorphicMapType_8775| QPMask@0) null (p_2 y)) FullPerm))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_8754_5070_53#PolymorphicMapType_8754| Heap@@32) y $allocated)) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
