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
(declare-sort T@Field_19242_53 0)
(declare-sort T@Field_19255_19256 0)
(declare-sort T@Field_22754_22755 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22707_1721 0)
(declare-sort T@Field_22767_22772 0)
(declare-sort T@Field_12611_1721 0)
(declare-sort T@Field_12611_53 0)
(declare-sort T@Field_12611_19256 0)
(declare-sort T@Field_12608_12612 0)
(declare-sort T@Field_12608_22772 0)
(declare-datatypes ((T@PolymorphicMapType_19203 0)) (((PolymorphicMapType_19203 (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| (Array T@Ref T@Field_22707_1721 Real)) (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| (Array T@Ref T@Field_22754_22755 Real)) (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| (Array T@Ref T@Field_12608_12612 Real)) (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| (Array T@Ref T@Field_19242_53 Real)) (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| (Array T@Ref T@Field_19255_19256 Real)) (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| (Array T@Ref T@Field_12608_22772 Real)) (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| (Array T@Ref T@Field_12611_1721 Real)) (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| (Array T@Ref T@Field_12611_53 Real)) (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| (Array T@Ref T@Field_12611_19256 Real)) (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| (Array T@Ref T@Field_22767_22772 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19731 0)) (((PolymorphicMapType_19731 (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (Array T@Ref T@Field_22707_1721 Bool)) (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (Array T@Ref T@Field_19242_53 Bool)) (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (Array T@Ref T@Field_19255_19256 Bool)) (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (Array T@Ref T@Field_12608_12612 Bool)) (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (Array T@Ref T@Field_12608_22772 Bool)) (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (Array T@Ref T@Field_12611_1721 Bool)) (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (Array T@Ref T@Field_12611_53 Bool)) (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (Array T@Ref T@Field_12611_19256 Bool)) (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (Array T@Ref T@Field_22754_22755 Bool)) (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (Array T@Ref T@Field_22767_22772 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19182 0)) (((PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| (Array T@Ref T@Field_19242_53 Bool)) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| (Array T@Ref T@Field_19255_19256 T@Ref)) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| (Array T@Ref T@Field_22754_22755 T@FrameType)) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| (Array T@Ref T@Field_22707_1721 Int)) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| (Array T@Ref T@Field_22767_22772 T@PolymorphicMapType_19731)) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| (Array T@Ref T@Field_12611_1721 Int)) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| (Array T@Ref T@Field_12611_53 Bool)) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| (Array T@Ref T@Field_12611_19256 T@Ref)) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| (Array T@Ref T@Field_12608_12612 T@FrameType)) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| (Array T@Ref T@Field_12608_22772 T@PolymorphicMapType_19731)) ) ) ))
(declare-fun $allocated () T@Field_19242_53)
(declare-fun val () T@Field_22707_1721)
(declare-fun succHeap (T@PolymorphicMapType_19182 T@PolymorphicMapType_19182) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19182 T@PolymorphicMapType_19182) Bool)
(declare-fun state (T@PolymorphicMapType_19182 T@PolymorphicMapType_19203) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_19203) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19731)
(declare-sort T@IArrayDomainType 0)
(declare-fun access (T@IArrayDomainType Int) T@Field_22754_22755)
(declare-fun IsPredicateField_12611_12612 (T@Field_22754_22755) Bool)
(declare-fun |access#trigger_12611| (T@PolymorphicMapType_19182 T@Field_22754_22755) Bool)
(declare-fun |access#everUsed_12611| (T@Field_22754_22755) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19182 T@PolymorphicMapType_19182 T@PolymorphicMapType_19203) Bool)
(declare-fun IsPredicateField_12608_62811 (T@Field_12608_12612) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12608 (T@Field_12608_12612) T@Field_12608_22772)
(declare-fun HasDirectPerm_12608_12612 (T@PolymorphicMapType_19203 T@Ref T@Field_12608_12612) Bool)
(declare-fun PredicateMaskField_12611 (T@Field_22754_22755) T@Field_22767_22772)
(declare-fun HasDirectPerm_12611_12612 (T@PolymorphicMapType_19203 T@Ref T@Field_22754_22755) Bool)
(declare-fun IsWandField_12608_66171 (T@Field_12608_12612) Bool)
(declare-fun WandMaskField_12608 (T@Field_12608_12612) T@Field_12608_22772)
(declare-fun IsWandField_12611_65814 (T@Field_22754_22755) Bool)
(declare-fun WandMaskField_12611 (T@Field_22754_22755) T@Field_22767_22772)
(declare-fun |access#sm| (T@IArrayDomainType Int) T@Field_22767_22772)
(declare-fun dummyHeap () T@PolymorphicMapType_19182)
(declare-fun ZeroMask () T@PolymorphicMapType_19203)
(declare-fun InsidePredicate_22754_22754 (T@Field_22754_22755 T@FrameType T@Field_22754_22755 T@FrameType) Bool)
(declare-fun InsidePredicate_19242_19242 (T@Field_12608_12612 T@FrameType T@Field_12608_12612 T@FrameType) Bool)
(declare-fun IsPredicateField_12608_1721 (T@Field_22707_1721) Bool)
(declare-fun IsWandField_12608_1721 (T@Field_22707_1721) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12611_73103 (T@Field_22767_22772) Bool)
(declare-fun IsWandField_12611_73119 (T@Field_22767_22772) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12611_19256 (T@Field_12611_19256) Bool)
(declare-fun IsWandField_12611_19256 (T@Field_12611_19256) Bool)
(declare-fun IsPredicateField_12611_53 (T@Field_12611_53) Bool)
(declare-fun IsWandField_12611_53 (T@Field_12611_53) Bool)
(declare-fun IsPredicateField_12611_1721 (T@Field_12611_1721) Bool)
(declare-fun IsWandField_12611_1721 (T@Field_12611_1721) Bool)
(declare-fun IsPredicateField_12608_72272 (T@Field_12608_22772) Bool)
(declare-fun IsWandField_12608_72288 (T@Field_12608_22772) Bool)
(declare-fun IsPredicateField_12608_19256 (T@Field_19255_19256) Bool)
(declare-fun IsWandField_12608_19256 (T@Field_19255_19256) Bool)
(declare-fun IsPredicateField_12608_53 (T@Field_19242_53) Bool)
(declare-fun IsWandField_12608_53 (T@Field_19242_53) Bool)
(declare-fun HasDirectPerm_12608_62198 (T@PolymorphicMapType_19203 T@Ref T@Field_12608_22772) Bool)
(declare-fun HasDirectPerm_12608_19256 (T@PolymorphicMapType_19203 T@Ref T@Field_19255_19256) Bool)
(declare-fun HasDirectPerm_12608_53 (T@PolymorphicMapType_19203 T@Ref T@Field_19242_53) Bool)
(declare-fun HasDirectPerm_12608_1721 (T@PolymorphicMapType_19203 T@Ref T@Field_22707_1721) Bool)
(declare-fun HasDirectPerm_12611_61125 (T@PolymorphicMapType_19203 T@Ref T@Field_22767_22772) Bool)
(declare-fun HasDirectPerm_12611_19256 (T@PolymorphicMapType_19203 T@Ref T@Field_12611_19256) Bool)
(declare-fun HasDirectPerm_12611_53 (T@PolymorphicMapType_19203 T@Ref T@Field_12611_53) Bool)
(declare-fun HasDirectPerm_12611_1721 (T@PolymorphicMapType_19203 T@Ref T@Field_12611_1721) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_19203 T@PolymorphicMapType_19203 T@PolymorphicMapType_19203) Bool)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun getPredWandId_12611_12612 (T@Field_22754_22755) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun InsidePredicate_22754_19242 (T@Field_22754_22755 T@FrameType T@Field_12608_12612 T@FrameType) Bool)
(declare-fun InsidePredicate_19242_22754 (T@Field_12608_12612 T@FrameType T@Field_22754_22755 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_19182) (Heap1 T@PolymorphicMapType_19182) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_19182) (Mask T@PolymorphicMapType_19203) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19182) (Heap1@@0 T@PolymorphicMapType_19182) (Heap2 T@PolymorphicMapType_19182) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22767_22772) ) (!  (not (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22754_22755) ) (!  (not (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12611_19256) ) (!  (not (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12611_53) ) (!  (not (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12611_1721) ) (!  (not (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12608_22772) ) (!  (not (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12608_12612) ) (!  (not (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19255_19256) ) (!  (not (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_19242_53) ) (!  (not (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_22707_1721) ) (!  (not (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@IArrayDomainType) (i Int) ) (! (IsPredicateField_12611_12612 (access a_2 i))
 :qid |stdinbpl.283:15|
 :skolemid |25|
 :pattern ( (access a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19182) (a_2@@0 T@IArrayDomainType) (i@@0 Int) ) (! (|access#everUsed_12611| (access a_2@@0 i@@0))
 :qid |stdinbpl.302:15|
 :skolemid |29|
 :pattern ( (|access#trigger_12611| Heap@@0 (access a_2@@0 i@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19182) (ExhaleHeap T@PolymorphicMapType_19182) (Mask@@0 T@PolymorphicMapType_19203) (pm_f_18 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12608_12612 Mask@@0 null pm_f_18) (IsPredicateField_12608_62811 pm_f_18)) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@1) null (PredicateMaskField_12608 pm_f_18)) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap) null (PredicateMaskField_12608 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_12608_62811 pm_f_18) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap) null (PredicateMaskField_12608 pm_f_18)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19182) (ExhaleHeap@@0 T@PolymorphicMapType_19182) (Mask@@1 T@PolymorphicMapType_19203) (pm_f_18@@0 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12611_12612 Mask@@1 null pm_f_18@@0) (IsPredicateField_12611_12612 pm_f_18@@0)) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@2) null (PredicateMaskField_12611 pm_f_18@@0)) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@0) null (PredicateMaskField_12611 pm_f_18@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_12611_12612 pm_f_18@@0) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@0) null (PredicateMaskField_12611 pm_f_18@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19182) (ExhaleHeap@@1 T@PolymorphicMapType_19182) (Mask@@2 T@PolymorphicMapType_19203) (pm_f_18@@1 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12608_12612 Mask@@2 null pm_f_18@@1) (IsWandField_12608_66171 pm_f_18@@1)) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@3) null (WandMaskField_12608 pm_f_18@@1)) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@1) null (WandMaskField_12608 pm_f_18@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_12608_66171 pm_f_18@@1) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@1) null (WandMaskField_12608 pm_f_18@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19182) (ExhaleHeap@@2 T@PolymorphicMapType_19182) (Mask@@3 T@PolymorphicMapType_19203) (pm_f_18@@2 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12611_12612 Mask@@3 null pm_f_18@@2) (IsWandField_12611_65814 pm_f_18@@2)) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@4) null (WandMaskField_12611 pm_f_18@@2)) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@2) null (WandMaskField_12611 pm_f_18@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_12611_65814 pm_f_18@@2) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@2) null (WandMaskField_12611 pm_f_18@@2)))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@1 Int) (a2 T@IArrayDomainType) (i2 Int) ) (!  (=> (= (access a_2@@1 i@@1) (access a2 i2)) (and (= a_2@@1 a2) (= i@@1 i2)))
 :qid |stdinbpl.293:15|
 :skolemid |27|
 :pattern ( (access a_2@@1 i@@1) (access a2 i2))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@2 Int) (a2@@0 T@IArrayDomainType) (i2@@0 Int) ) (!  (=> (= (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2@@0)) (and (= a_2@@2 a2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.297:15|
 :skolemid |28|
 :pattern ( (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19182) (ExhaleHeap@@3 T@PolymorphicMapType_19182) (Mask@@4 T@PolymorphicMapType_19203) (pm_f_18@@3 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12608_12612 Mask@@4 null pm_f_18@@3) (IsPredicateField_12608_62811 pm_f_18@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18 f_21) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@5) o2_18 f_21) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@5) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@5) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@5) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@3 f_21@@3))
))) (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@5) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@4 f_21@@4))
))) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@5) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@5) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@5) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_18@@3))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@5) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@3) o2_18@@8 f_21@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_12608_62811 pm_f_18@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19182) (ExhaleHeap@@4 T@PolymorphicMapType_19182) (Mask@@5 T@PolymorphicMapType_19203) (pm_f_18@@4 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_12611_12612 Mask@@5 null pm_f_18@@4) (IsPredicateField_12611_12612 pm_f_18@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@9 T@Ref) (f_21@@9 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@9 f_21@@9) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@6) o2_18@@9 f_21@@9) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@9 f_21@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@9 f_21@@9))
)) (forall ((o2_18@@10 T@Ref) (f_21@@10 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@10 f_21@@10) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@6) o2_18@@10 f_21@@10) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@10 f_21@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@10 f_21@@10))
))) (forall ((o2_18@@11 T@Ref) (f_21@@11 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@11 f_21@@11) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@6) o2_18@@11 f_21@@11) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@11 f_21@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@11 f_21@@11))
))) (forall ((o2_18@@12 T@Ref) (f_21@@12 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@12 f_21@@12) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@6) o2_18@@12 f_21@@12) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@12 f_21@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@12 f_21@@12))
))) (forall ((o2_18@@13 T@Ref) (f_21@@13 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@13 f_21@@13) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@6) o2_18@@13 f_21@@13) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@13 f_21@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@13 f_21@@13))
))) (forall ((o2_18@@14 T@Ref) (f_21@@14 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@14 f_21@@14) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@6) o2_18@@14 f_21@@14) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@14 f_21@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@14 f_21@@14))
))) (forall ((o2_18@@15 T@Ref) (f_21@@15 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@15 f_21@@15) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@6) o2_18@@15 f_21@@15) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@15 f_21@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@15 f_21@@15))
))) (forall ((o2_18@@16 T@Ref) (f_21@@16 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@16 f_21@@16) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@6) o2_18@@16 f_21@@16) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@16 f_21@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@16 f_21@@16))
))) (forall ((o2_18@@17 T@Ref) (f_21@@17 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@17 f_21@@17) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@6) o2_18@@17 f_21@@17) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@17 f_21@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@17 f_21@@17))
))) (forall ((o2_18@@18 T@Ref) (f_21@@18 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_18@@4))) o2_18@@18 f_21@@18) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) o2_18@@18 f_21@@18) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@18 f_21@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@4) o2_18@@18 f_21@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_12611_12612 pm_f_18@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19182) (ExhaleHeap@@5 T@PolymorphicMapType_19182) (Mask@@6 T@PolymorphicMapType_19203) (pm_f_18@@5 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12608_12612 Mask@@6 null pm_f_18@@5) (IsWandField_12608_66171 pm_f_18@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@19 T@Ref) (f_21@@19 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@19 f_21@@19) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@7) o2_18@@19 f_21@@19) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@19 f_21@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@19 f_21@@19))
)) (forall ((o2_18@@20 T@Ref) (f_21@@20 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@20 f_21@@20) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@7) o2_18@@20 f_21@@20) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@20 f_21@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@20 f_21@@20))
))) (forall ((o2_18@@21 T@Ref) (f_21@@21 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@21 f_21@@21) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@7) o2_18@@21 f_21@@21) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@21 f_21@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@21 f_21@@21))
))) (forall ((o2_18@@22 T@Ref) (f_21@@22 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@22 f_21@@22) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@7) o2_18@@22 f_21@@22) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@22 f_21@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@22 f_21@@22))
))) (forall ((o2_18@@23 T@Ref) (f_21@@23 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@23 f_21@@23) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) o2_18@@23 f_21@@23) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@23 f_21@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@23 f_21@@23))
))) (forall ((o2_18@@24 T@Ref) (f_21@@24 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@24 f_21@@24) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@7) o2_18@@24 f_21@@24) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@24 f_21@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@24 f_21@@24))
))) (forall ((o2_18@@25 T@Ref) (f_21@@25 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@25 f_21@@25) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@7) o2_18@@25 f_21@@25) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@25 f_21@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@25 f_21@@25))
))) (forall ((o2_18@@26 T@Ref) (f_21@@26 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@26 f_21@@26) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@7) o2_18@@26 f_21@@26) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@26 f_21@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@26 f_21@@26))
))) (forall ((o2_18@@27 T@Ref) (f_21@@27 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@27 f_21@@27) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@7) o2_18@@27 f_21@@27) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@27 f_21@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@27 f_21@@27))
))) (forall ((o2_18@@28 T@Ref) (f_21@@28 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_18@@5))) o2_18@@28 f_21@@28) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@7) o2_18@@28 f_21@@28) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@28 f_21@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@5) o2_18@@28 f_21@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_12608_66171 pm_f_18@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19182) (ExhaleHeap@@6 T@PolymorphicMapType_19182) (Mask@@7 T@PolymorphicMapType_19203) (pm_f_18@@6 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_12611_12612 Mask@@7 null pm_f_18@@6) (IsWandField_12611_65814 pm_f_18@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@29 T@Ref) (f_21@@29 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@29 f_21@@29) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@8) o2_18@@29 f_21@@29) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@29 f_21@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@29 f_21@@29))
)) (forall ((o2_18@@30 T@Ref) (f_21@@30 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@30 f_21@@30) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@8) o2_18@@30 f_21@@30) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@30 f_21@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@30 f_21@@30))
))) (forall ((o2_18@@31 T@Ref) (f_21@@31 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@31 f_21@@31) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@8) o2_18@@31 f_21@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@31 f_21@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@31 f_21@@31))
))) (forall ((o2_18@@32 T@Ref) (f_21@@32 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@32 f_21@@32) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@8) o2_18@@32 f_21@@32) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@32 f_21@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@32 f_21@@32))
))) (forall ((o2_18@@33 T@Ref) (f_21@@33 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@33 f_21@@33) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@8) o2_18@@33 f_21@@33) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@33 f_21@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@33 f_21@@33))
))) (forall ((o2_18@@34 T@Ref) (f_21@@34 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@34 f_21@@34) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@8) o2_18@@34 f_21@@34) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@34 f_21@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@34 f_21@@34))
))) (forall ((o2_18@@35 T@Ref) (f_21@@35 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@35 f_21@@35) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@8) o2_18@@35 f_21@@35) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@35 f_21@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@35 f_21@@35))
))) (forall ((o2_18@@36 T@Ref) (f_21@@36 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@36 f_21@@36) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@8) o2_18@@36 f_21@@36) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@36 f_21@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@36 f_21@@36))
))) (forall ((o2_18@@37 T@Ref) (f_21@@37 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@37 f_21@@37) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@8) o2_18@@37 f_21@@37) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@37 f_21@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@37 f_21@@37))
))) (forall ((o2_18@@38 T@Ref) (f_21@@38 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_18@@6))) o2_18@@38 f_21@@38) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) o2_18@@38 f_21@@38) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@38 f_21@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@6) o2_18@@38 f_21@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_12611_65814 pm_f_18@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19182) (ExhaleHeap@@7 T@PolymorphicMapType_19182) (Mask@@8 T@PolymorphicMapType_19203) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@9) o_39 $allocated) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@7) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@7) o_39 $allocated))
)))
(assert (forall ((p T@Field_22754_22755) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22754_22754 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22754_22754 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12608_12612) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19242_19242 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.228:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19242_19242 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_12608_1721 val)))
(assert  (not (IsWandField_12608_1721 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19182) (ExhaleHeap@@8 T@PolymorphicMapType_19182) (Mask@@9 T@PolymorphicMapType_19203) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_19203) (o_2@@9 T@Ref) (f_4@@9 T@Field_22767_22772) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_12611_73103 f_4@@9))) (not (IsWandField_12611_73119 f_4@@9))) (<= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_19203) (o_2@@10 T@Ref) (f_4@@10 T@Field_12611_19256) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_12611_19256 f_4@@10))) (not (IsWandField_12611_19256 f_4@@10))) (<= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_19203) (o_2@@11 T@Ref) (f_4@@11 T@Field_12611_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12611_53 f_4@@11))) (not (IsWandField_12611_53 f_4@@11))) (<= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_19203) (o_2@@12 T@Ref) (f_4@@12 T@Field_22754_22755) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12611_12612 f_4@@12))) (not (IsWandField_12611_65814 f_4@@12))) (<= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_19203) (o_2@@13 T@Ref) (f_4@@13 T@Field_12611_1721) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_12611_1721 f_4@@13))) (not (IsWandField_12611_1721 f_4@@13))) (<= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_19203) (o_2@@14 T@Ref) (f_4@@14 T@Field_12608_22772) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_12608_72272 f_4@@14))) (not (IsWandField_12608_72288 f_4@@14))) (<= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_19203) (o_2@@15 T@Ref) (f_4@@15 T@Field_19255_19256) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_12608_19256 f_4@@15))) (not (IsWandField_12608_19256 f_4@@15))) (<= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_19203) (o_2@@16 T@Ref) (f_4@@16 T@Field_19242_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_12608_53 f_4@@16))) (not (IsWandField_12608_53 f_4@@16))) (<= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19203) (o_2@@17 T@Ref) (f_4@@17 T@Field_12608_12612) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_12608_62811 f_4@@17))) (not (IsWandField_12608_66171 f_4@@17))) (<= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_19203) (o_2@@18 T@Ref) (f_4@@18 T@Field_22707_1721) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_12608_1721 f_4@@18))) (not (IsWandField_12608_1721 f_4@@18))) (<= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_19203) (o_2@@19 T@Ref) (f_4@@19 T@Field_12608_22772) ) (! (= (HasDirectPerm_12608_62198 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12608_62198 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_19203) (o_2@@20 T@Ref) (f_4@@20 T@Field_19255_19256) ) (! (= (HasDirectPerm_12608_19256 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12608_19256 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_19203) (o_2@@21 T@Ref) (f_4@@21 T@Field_19242_53) ) (! (= (HasDirectPerm_12608_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12608_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_19203) (o_2@@22 T@Ref) (f_4@@22 T@Field_22707_1721) ) (! (= (HasDirectPerm_12608_1721 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12608_1721 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_19203) (o_2@@23 T@Ref) (f_4@@23 T@Field_12608_12612) ) (! (= (HasDirectPerm_12608_12612 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12608_12612 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_19203) (o_2@@24 T@Ref) (f_4@@24 T@Field_22767_22772) ) (! (= (HasDirectPerm_12611_61125 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12611_61125 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_19203) (o_2@@25 T@Ref) (f_4@@25 T@Field_12611_19256) ) (! (= (HasDirectPerm_12611_19256 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12611_19256 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_19203) (o_2@@26 T@Ref) (f_4@@26 T@Field_12611_53) ) (! (= (HasDirectPerm_12611_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12611_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_19203) (o_2@@27 T@Ref) (f_4@@27 T@Field_12611_1721) ) (! (= (HasDirectPerm_12611_1721 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12611_1721 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_19203) (o_2@@28 T@Ref) (f_4@@28 T@Field_22754_22755) ) (! (= (HasDirectPerm_12611_12612 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12611_12612 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19182) (ExhaleHeap@@9 T@PolymorphicMapType_19182) (Mask@@30 T@PolymorphicMapType_19203) (o_39@@0 T@Ref) (f_21@@39 T@Field_12608_22772) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_12608_62198 Mask@@30 o_39@@0 f_21@@39) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@11) o_39@@0 f_21@@39) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@9) o_39@@0 f_21@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@9) o_39@@0 f_21@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19182) (ExhaleHeap@@10 T@PolymorphicMapType_19182) (Mask@@31 T@PolymorphicMapType_19203) (o_39@@1 T@Ref) (f_21@@40 T@Field_19255_19256) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_12608_19256 Mask@@31 o_39@@1 f_21@@40) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@12) o_39@@1 f_21@@40) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@10) o_39@@1 f_21@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@10) o_39@@1 f_21@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19182) (ExhaleHeap@@11 T@PolymorphicMapType_19182) (Mask@@32 T@PolymorphicMapType_19203) (o_39@@2 T@Ref) (f_21@@41 T@Field_19242_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_12608_53 Mask@@32 o_39@@2 f_21@@41) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@13) o_39@@2 f_21@@41) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@11) o_39@@2 f_21@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@11) o_39@@2 f_21@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19182) (ExhaleHeap@@12 T@PolymorphicMapType_19182) (Mask@@33 T@PolymorphicMapType_19203) (o_39@@3 T@Ref) (f_21@@42 T@Field_22707_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_12608_1721 Mask@@33 o_39@@3 f_21@@42) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@14) o_39@@3 f_21@@42) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@12) o_39@@3 f_21@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@12) o_39@@3 f_21@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19182) (ExhaleHeap@@13 T@PolymorphicMapType_19182) (Mask@@34 T@PolymorphicMapType_19203) (o_39@@4 T@Ref) (f_21@@43 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_12608_12612 Mask@@34 o_39@@4 f_21@@43) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@15) o_39@@4 f_21@@43) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@13) o_39@@4 f_21@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@13) o_39@@4 f_21@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19182) (ExhaleHeap@@14 T@PolymorphicMapType_19182) (Mask@@35 T@PolymorphicMapType_19203) (o_39@@5 T@Ref) (f_21@@44 T@Field_22767_22772) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_12611_61125 Mask@@35 o_39@@5 f_21@@44) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@16) o_39@@5 f_21@@44) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@14) o_39@@5 f_21@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@14) o_39@@5 f_21@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19182) (ExhaleHeap@@15 T@PolymorphicMapType_19182) (Mask@@36 T@PolymorphicMapType_19203) (o_39@@6 T@Ref) (f_21@@45 T@Field_12611_19256) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_12611_19256 Mask@@36 o_39@@6 f_21@@45) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@17) o_39@@6 f_21@@45) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@15) o_39@@6 f_21@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@15) o_39@@6 f_21@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19182) (ExhaleHeap@@16 T@PolymorphicMapType_19182) (Mask@@37 T@PolymorphicMapType_19203) (o_39@@7 T@Ref) (f_21@@46 T@Field_12611_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_12611_53 Mask@@37 o_39@@7 f_21@@46) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@18) o_39@@7 f_21@@46) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@16) o_39@@7 f_21@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@16) o_39@@7 f_21@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19182) (ExhaleHeap@@17 T@PolymorphicMapType_19182) (Mask@@38 T@PolymorphicMapType_19203) (o_39@@8 T@Ref) (f_21@@47 T@Field_12611_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_12611_1721 Mask@@38 o_39@@8 f_21@@47) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@19) o_39@@8 f_21@@47) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@17) o_39@@8 f_21@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@17) o_39@@8 f_21@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19182) (ExhaleHeap@@18 T@PolymorphicMapType_19182) (Mask@@39 T@PolymorphicMapType_19203) (o_39@@9 T@Ref) (f_21@@48 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_12611_12612 Mask@@39 o_39@@9 f_21@@48) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@20) o_39@@9 f_21@@48) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@18) o_39@@9 f_21@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@18) o_39@@9 f_21@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_22767_22772) ) (! (= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12611_19256) ) (! (= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_12611_53) ) (! (= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_22754_22755) ) (! (= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_12611_1721) ) (! (= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12608_22772) ) (! (= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_19255_19256) ) (! (= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_19242_53) ) (! (= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_12608_12612) ) (! (= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_22707_1721) ) (! (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19203) (SummandMask1 T@PolymorphicMapType_19203) (SummandMask2 T@PolymorphicMapType_19203) (o_2@@39 T@Ref) (f_4@@39 T@Field_22767_22772) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19203) (SummandMask1@@0 T@PolymorphicMapType_19203) (SummandMask2@@0 T@PolymorphicMapType_19203) (o_2@@40 T@Ref) (f_4@@40 T@Field_12611_19256) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19203) (SummandMask1@@1 T@PolymorphicMapType_19203) (SummandMask2@@1 T@PolymorphicMapType_19203) (o_2@@41 T@Ref) (f_4@@41 T@Field_12611_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19203) (SummandMask1@@2 T@PolymorphicMapType_19203) (SummandMask2@@2 T@PolymorphicMapType_19203) (o_2@@42 T@Ref) (f_4@@42 T@Field_22754_22755) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19203) (SummandMask1@@3 T@PolymorphicMapType_19203) (SummandMask2@@3 T@PolymorphicMapType_19203) (o_2@@43 T@Ref) (f_4@@43 T@Field_12611_1721) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_19203) (SummandMask1@@4 T@PolymorphicMapType_19203) (SummandMask2@@4 T@PolymorphicMapType_19203) (o_2@@44 T@Ref) (f_4@@44 T@Field_12608_22772) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_19203) (SummandMask1@@5 T@PolymorphicMapType_19203) (SummandMask2@@5 T@PolymorphicMapType_19203) (o_2@@45 T@Ref) (f_4@@45 T@Field_19255_19256) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_19203) (SummandMask1@@6 T@PolymorphicMapType_19203) (SummandMask2@@6 T@PolymorphicMapType_19203) (o_2@@46 T@Ref) (f_4@@46 T@Field_19242_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_19203) (SummandMask1@@7 T@PolymorphicMapType_19203) (SummandMask2@@7 T@PolymorphicMapType_19203) (o_2@@47 T@Ref) (f_4@@47 T@Field_12608_12612) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_19203) (SummandMask1@@8 T@PolymorphicMapType_19203) (SummandMask2@@8 T@PolymorphicMapType_19203) (o_2@@48 T@Ref) (f_4@@48 T@Field_22707_1721) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len a_2@@3) 0)
 :qid |stdinbpl.259:15|
 :skolemid |23|
 :pattern ( (len a_2@@3))
)))
(assert (forall ((a_2@@4 T@IArrayDomainType) (i@@3 Int) ) (! (= (getPredWandId_12611_12612 (access a_2@@4 i@@3)) 0)
 :qid |stdinbpl.287:15|
 :skolemid |26|
 :pattern ( (access a_2@@4 i@@3))
)))
(assert (forall ((a_2@@5 T@IArrayDomainType) (i@@4 Int) ) (! (= (PredicateMaskField_12611 (access a_2@@5 i@@4)) (|access#sm| a_2@@5 i@@4))
 :qid |stdinbpl.279:15|
 :skolemid |24|
 :pattern ( (PredicateMaskField_12611 (access a_2@@5 i@@4)))
)))
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@5 Int) ) (!  (and (= (first_1 (loc a_2@@6 i@@5)) a_2@@6) (= (second_1 (loc a_2@@6 i@@5)) i@@5))
 :qid |stdinbpl.253:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19182) (o_38 T@Ref) (f_23 T@Field_22767_22772) (v T@PolymorphicMapType_19731) ) (! (succHeap Heap@@21 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@21) (store (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@21) o_38 f_23 v) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@21) (store (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@21) o_38 f_23 v) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19182) (o_38@@0 T@Ref) (f_23@@0 T@Field_12611_1721) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@22) (store (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@22) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@22) (store (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@22) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19182) (o_38@@1 T@Ref) (f_23@@1 T@Field_22754_22755) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@23) (store (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@23) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@23) (store (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@23) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19182) (o_38@@2 T@Ref) (f_23@@2 T@Field_12611_19256) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@24) (store (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@24) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@24) (store (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@24) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19182) (o_38@@3 T@Ref) (f_23@@3 T@Field_12611_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@25) (store (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@25) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@25) (store (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@25) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19182) (o_38@@4 T@Ref) (f_23@@4 T@Field_12608_22772) (v@@4 T@PolymorphicMapType_19731) ) (! (succHeap Heap@@26 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@26) (store (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@26) o_38@@4 f_23@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@26) (store (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@26) o_38@@4 f_23@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19182) (o_38@@5 T@Ref) (f_23@@5 T@Field_22707_1721) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@27) (store (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@27) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@27) (store (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@27) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19182) (o_38@@6 T@Ref) (f_23@@6 T@Field_12608_12612) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@28) (store (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@28) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@28) (store (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@28) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19182) (o_38@@7 T@Ref) (f_23@@7 T@Field_19255_19256) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@29) (store (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@29) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@29) (store (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@29) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19182) (o_38@@8 T@Ref) (f_23@@8 T@Field_19242_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_19182 (store (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@30) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (store (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@30) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@30)))
)))
(assert (forall ((o_38@@9 T@Ref) (f_51 T@Field_19255_19256) (Heap@@31 T@PolymorphicMapType_19182) ) (!  (=> (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@31) o_38@@9 $allocated) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@31) o_38@@9 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@31) o_38@@9 f_51))
)))
(assert (forall ((p@@2 T@Field_22754_22755) (v_1@@1 T@FrameType) (q T@Field_22754_22755) (w@@1 T@FrameType) (r T@Field_22754_22755) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22754_22754 p@@2 v_1@@1 q w@@1) (InsidePredicate_22754_22754 q w@@1 r u)) (InsidePredicate_22754_22754 p@@2 v_1@@1 r u))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22754_22754 p@@2 v_1@@1 q w@@1) (InsidePredicate_22754_22754 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_22754_22755) (v_1@@2 T@FrameType) (q@@0 T@Field_22754_22755) (w@@2 T@FrameType) (r@@0 T@Field_12608_12612) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22754_22754 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22754_19242 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_22754_19242 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22754_22754 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22754_19242 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_22754_22755) (v_1@@3 T@FrameType) (q@@1 T@Field_12608_12612) (w@@3 T@FrameType) (r@@1 T@Field_22754_22755) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22754_19242 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_19242_22754 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_22754_22754 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22754_19242 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_19242_22754 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_22754_22755) (v_1@@4 T@FrameType) (q@@2 T@Field_12608_12612) (w@@4 T@FrameType) (r@@2 T@Field_12608_12612) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22754_19242 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_19242_19242 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_22754_19242 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22754_19242 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_19242_19242 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12608_12612) (v_1@@5 T@FrameType) (q@@3 T@Field_22754_22755) (w@@5 T@FrameType) (r@@3 T@Field_22754_22755) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_19242_22754 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22754_22754 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_19242_22754 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19242_22754 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22754_22754 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12608_12612) (v_1@@6 T@FrameType) (q@@4 T@Field_22754_22755) (w@@6 T@FrameType) (r@@4 T@Field_12608_12612) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_19242_22754 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22754_19242 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_19242_19242 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19242_22754 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22754_19242 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12608_12612) (v_1@@7 T@FrameType) (q@@5 T@Field_12608_12612) (w@@7 T@FrameType) (r@@5 T@Field_22754_22755) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_19242_19242 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_19242_22754 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_19242_22754 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19242_19242 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_19242_22754 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12608_12612) (v_1@@8 T@FrameType) (q@@6 T@Field_12608_12612) (w@@8 T@FrameType) (r@@6 T@Field_12608_12612) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_19242_19242 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_19242_19242 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_19242_19242 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19242_19242 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_19242_19242 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun j_4 () Int)
(declare-fun a_2@@7 () T@IArrayDomainType)
(declare-fun i@@6 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_19203)
(declare-fun QPMask@4 () T@PolymorphicMapType_19203)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_19182)
(declare-fun j_7_1 () Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_19182)
(declare-fun Heap@1 () T@PolymorphicMapType_19182)
(declare-fun Mask@0 () T@PolymorphicMapType_19203)
(declare-fun neverTriggered13 (Int) Bool)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_19203)
(declare-fun Heap@0 () T@PolymorphicMapType_19182)
(declare-fun arg_i@0 () Int)
(declare-fun neverTriggered14 (Int) Bool)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_19203)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_19182)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_19203)
(declare-fun k () Int)
(declare-fun newVal () Int)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(set-info :boogie-vc-id setVal2)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon8_correct true))
(let ((anon21_Else_correct  (=> (and (not (and (>= j_4 0) (and (< j_4 (len a_2@@7)) (< j_4 i@@6)))) (= (ControlFlow 0 27) 23)) anon8_correct)))
(let ((anon21_Then_correct  (=> (and (>= j_4 0) (and (< j_4 (len a_2@@7)) (< j_4 i@@6))) (and (=> (= (ControlFlow 0 24) (- 0 26)) (HasDirectPerm_12608_1721 QPMask@0 (loc a_2@@7 j_4) val)) (=> (HasDirectPerm_12608_1721 QPMask@0 (loc a_2@@7 j_4) val) (and (=> (= (ControlFlow 0 24) (- 0 25)) (HasDirectPerm_12608_1721 QPMask@4 (loc a_2@@7 j_4) val)) (=> (HasDirectPerm_12608_1721 QPMask@4 (loc a_2@@7 j_4) val) (=> (= (ControlFlow 0 24) 23) anon8_correct))))))))
(let ((anon20_Else_correct true))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (forall ((j_3 Int) (j_3_1 Int) ) (!  (=> (and (and (and (and (not (= j_3 j_3_1)) (and (>= j_3 0) (< j_3 (len a_2@@7)))) (and (>= j_3_1 0) (< j_3_1 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_3) (loc a_2@@7 j_3_1))))
 :qid |stdinbpl.1438:15|
 :skolemid |100|
))) (=> (forall ((j_3@@0 Int) (j_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_3@@0 j_3_1@@0)) (and (>= j_3@@0 0) (< j_3@@0 (len a_2@@7)))) (and (>= j_3_1@@0 0) (< j_3_1@@0 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_3@@0) (loc a_2@@7 j_3_1@@0))))
 :qid |stdinbpl.1438:15|
 :skolemid |100|
)) (=> (and (and (forall ((j_3@@1 Int) ) (!  (=> (and (and (>= j_3@@1 0) (< j_3@@1 (len a_2@@7))) (< NoPerm FullPerm)) (and (qpRange12 (loc a_2@@7 j_3@@1)) (= (invRecv12 (loc a_2@@7 j_3@@1)) j_3@@1)))
 :qid |stdinbpl.1444:22|
 :skolemid |101|
 :pattern ( (loc a_2@@7 j_3@@1))
 :pattern ( (loc a_2@@7 j_3@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (>= (invRecv12 o_9) 0) (< (invRecv12 o_9) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange12 o_9)) (= (loc a_2@@7 (invRecv12 o_9)) o_9))
 :qid |stdinbpl.1448:22|
 :skolemid |102|
 :pattern ( (invRecv12 o_9))
))) (and (forall ((j_3@@2 Int) ) (!  (=> (and (>= j_3@@2 0) (< j_3@@2 (len a_2@@7))) (not (= (loc a_2@@7 j_3@@2) null)))
 :qid |stdinbpl.1454:22|
 :skolemid |103|
 :pattern ( (loc a_2@@7 j_3@@2))
 :pattern ( (loc a_2@@7 j_3@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (>= (invRecv12 o_9@@0) 0) (< (invRecv12 o_9@@0) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange12 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@7 (invRecv12 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@4) o_9@@0 val) (+ (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (>= (invRecv12 o_9@@0) 0) (< (invRecv12 o_9@@0) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange12 o_9@@0))) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@4) o_9@@0 val) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.1460:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@4) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_19242_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@4) o_9@@1 f_5)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@4) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_19255_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@4) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@4) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_22707_1721) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@4) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@4) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_12608_12612) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@4) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@4) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_12608_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@4) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@4) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_12611_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ZeroMask) o_9@@6 f_5@@4) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@4) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ZeroMask) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@4) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_12611_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ZeroMask) o_9@@7 f_5@@5) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@4) o_9@@7 f_5@@5)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ZeroMask) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@4) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_12611_1721) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ZeroMask) o_9@@8 f_5@@6) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@4) o_9@@8 f_5@@6)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ZeroMask) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@4) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_22754_22755) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) o_9@@9 f_5@@7) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@4) o_9@@9 f_5@@7)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@4) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_22767_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ZeroMask) o_9@@10 f_5@@8) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@4) o_9@@10 f_5@@8)))
 :qid |stdinbpl.1464:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ZeroMask) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@4) o_9@@10 f_5@@8))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 28) 22) anon20_Else_correct) (=> (= (ControlFlow 0 28) 24) anon21_Then_correct)) (=> (= (ControlFlow 0 28) 27) anon21_Else_correct))))))))
(let ((anon19_Then_correct true))
(let ((anon18_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (>= i@@6 0)) (and (< i@@6 (len a_2@@7)) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 30) 21) anon19_Then_correct) (=> (= (ControlFlow 0 30) 28) anon19_Else_correct)))))
(let ((anon15_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (>= j_7_1 0) (and (< j_7_1 (len a_2@@7)) (< j_7_1 i@@6)))) (= (ControlFlow 0 6) 3)) anon15_correct)))
(let ((anon24_Then_correct  (=> (and (>= j_7_1 0) (and (< j_7_1 (len a_2@@7)) (< j_7_1 i@@6))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@32) (loc a_2@@7 j_7_1) val) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@1) (loc a_2@@7 j_7_1) val))) (=> (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@32) (loc a_2@@7 j_7_1) val) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@1) (loc a_2@@7 j_7_1) val)) (=> (= (ControlFlow 0 4) 3) anon15_correct))))))
(let ((anon23_Else_correct true))
(let ((anon12_correct  (=> (state Heap@1 Mask@0) (and (=> (= (ControlFlow 0 7) (- 0 11)) (>= i@@6 0)) (=> (>= i@@6 0) (and (=> (= (ControlFlow 0 7) (- 0 10)) (< i@@6 (len a_2@@7))) (=> (< i@@6 (len a_2@@7)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (forall ((j_6_2 Int) (j_6_3 Int) ) (!  (=> (and (and (and (and (not (= j_6_2 j_6_3)) (and (>= j_6_2 0) (< j_6_2 (len a_2@@7)))) (and (>= j_6_3 0) (< j_6_3 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_6_2) (loc a_2@@7 j_6_3))))
 :qid |stdinbpl.1638:17|
 :skolemid |120|
 :pattern ( (neverTriggered13 j_6_2) (neverTriggered13 j_6_3))
))) (=> (forall ((j_6_2@@0 Int) (j_6_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_6_2@@0 j_6_3@@0)) (and (>= j_6_2@@0 0) (< j_6_2@@0 (len a_2@@7)))) (and (>= j_6_3@@0 0) (< j_6_3@@0 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_6_2@@0) (loc a_2@@7 j_6_3@@0))))
 :qid |stdinbpl.1638:17|
 :skolemid |120|
 :pattern ( (neverTriggered13 j_6_2@@0) (neverTriggered13 j_6_3@@0))
)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((j_6_2@@1 Int) ) (!  (=> (and (>= j_6_2@@1 0) (< j_6_2@@1 (len a_2@@7))) (>= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@0) (loc a_2@@7 j_6_2@@1) val) FullPerm))
 :qid |stdinbpl.1645:17|
 :skolemid |121|
 :pattern ( (loc a_2@@7 j_6_2@@1))
 :pattern ( (loc a_2@@7 j_6_2@@1))
))) (=> (forall ((j_6_2@@2 Int) ) (!  (=> (and (>= j_6_2@@2 0) (< j_6_2@@2 (len a_2@@7))) (>= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@0) (loc a_2@@7 j_6_2@@2) val) FullPerm))
 :qid |stdinbpl.1645:17|
 :skolemid |121|
 :pattern ( (loc a_2@@7 j_6_2@@2))
 :pattern ( (loc a_2@@7 j_6_2@@2))
)) (=> (forall ((j_6_2@@3 Int) ) (!  (=> (and (and (>= j_6_2@@3 0) (< j_6_2@@3 (len a_2@@7))) (< NoPerm FullPerm)) (and (qpRange13 (loc a_2@@7 j_6_2@@3)) (= (invRecv13 (loc a_2@@7 j_6_2@@3)) j_6_2@@3)))
 :qid |stdinbpl.1651:22|
 :skolemid |122|
 :pattern ( (loc a_2@@7 j_6_2@@3))
 :pattern ( (loc a_2@@7 j_6_2@@3))
)) (=> (and (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (>= (invRecv13 o_9@@11) 0) (< (invRecv13 o_9@@11) (len a_2@@7))) (and (< NoPerm FullPerm) (qpRange13 o_9@@11))) (= (loc a_2@@7 (invRecv13 o_9@@11)) o_9@@11))
 :qid |stdinbpl.1655:22|
 :skolemid |123|
 :pattern ( (invRecv13 o_9@@11))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (>= (invRecv13 o_9@@12) 0) (< (invRecv13 o_9@@12) (len a_2@@7))) (and (< NoPerm FullPerm) (qpRange13 o_9@@12))) (and (= (loc a_2@@7 (invRecv13 o_9@@12)) o_9@@12) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@3) o_9@@12 val) (- (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@0) o_9@@12 val) FullPerm)))) (=> (not (and (and (>= (invRecv13 o_9@@12) 0) (< (invRecv13 o_9@@12) (len a_2@@7))) (and (< NoPerm FullPerm) (qpRange13 o_9@@12)))) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@3) o_9@@12 val) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@0) o_9@@12 val))))
 :qid |stdinbpl.1661:22|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@3) o_9@@12 val))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_19242_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@0) o_9@@13 f_5@@9) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@3) o_9@@13 f_5@@9)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@3) o_9@@13 f_5@@9))
)) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_19255_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@0) o_9@@14 f_5@@10) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@3) o_9@@14 f_5@@10)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@3) o_9@@14 f_5@@10))
))) (forall ((o_9@@15 T@Ref) (f_5@@11 T@Field_22707_1721) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@0) o_9@@15 f_5@@11) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@3) o_9@@15 f_5@@11)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@3) o_9@@15 f_5@@11))
))) (forall ((o_9@@16 T@Ref) (f_5@@12 T@Field_12608_12612) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@0) o_9@@16 f_5@@12) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@3) o_9@@16 f_5@@12)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@3) o_9@@16 f_5@@12))
))) (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_12608_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@0) o_9@@17 f_5@@13) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@3) o_9@@17 f_5@@13)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@3) o_9@@17 f_5@@13))
))) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_12611_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@0) o_9@@18 f_5@@14) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@3) o_9@@18 f_5@@14)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@3) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_12611_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@0) o_9@@19 f_5@@15) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@3) o_9@@19 f_5@@15)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@3) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_12611_1721) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@0) o_9@@20 f_5@@16) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@3) o_9@@20 f_5@@16)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@3) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_22754_22755) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@0) o_9@@21 f_5@@17) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@3) o_9@@21 f_5@@17)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@3) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_22767_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@0) o_9@@22 f_5@@18) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@3) o_9@@22 f_5@@18)))
 :qid |stdinbpl.1667:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@3) o_9@@22 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 7) 2) anon23_Else_correct) (=> (= (ControlFlow 0 7) 4) anon24_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon24_Else_correct))))))))))))))))
(let ((anon22_Else_correct  (=> (and (and (<= (len a_2@@7) (+ i@@6 2)) (= Mask@0 QPMask@0)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 18) 7))) anon12_correct)))
(let ((anon22_Then_correct  (=> (and (< (+ i@@6 2) (len a_2@@7)) (= arg_i@0 (+ i@@6 1))) (and (=> (= (ControlFlow 0 12) (- 0 17)) (>= arg_i@0 0)) (=> (>= arg_i@0 0) (and (=> (= (ControlFlow 0 12) (- 0 16)) (< arg_i@0 (len a_2@@7))) (=> (< arg_i@0 (len a_2@@7)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (forall ((j_9_1 Int) (j_9_2 Int) ) (!  (=> (and (and (and (and (not (= j_9_1 j_9_2)) (and (>= j_9_1 0) (< j_9_1 (len a_2@@7)))) (and (>= j_9_2 0) (< j_9_2 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_9_1) (loc a_2@@7 j_9_2))))
 :qid |stdinbpl.1539:23|
 :skolemid |107|
 :pattern ( (neverTriggered14 j_9_1) (neverTriggered14 j_9_2))
))) (=> (forall ((j_9_1@@0 Int) (j_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_9_1@@0 j_9_2@@0)) (and (>= j_9_1@@0 0) (< j_9_1@@0 (len a_2@@7)))) (and (>= j_9_2@@0 0) (< j_9_2@@0 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_9_1@@0) (loc a_2@@7 j_9_2@@0))))
 :qid |stdinbpl.1539:23|
 :skolemid |107|
 :pattern ( (neverTriggered14 j_9_1@@0) (neverTriggered14 j_9_2@@0))
)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (forall ((j_9_1@@1 Int) ) (!  (=> (and (>= j_9_1@@1 0) (< j_9_1@@1 (len a_2@@7))) (>= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) (loc a_2@@7 j_9_1@@1) val) FullPerm))
 :qid |stdinbpl.1546:23|
 :skolemid |108|
 :pattern ( (loc a_2@@7 j_9_1@@1))
 :pattern ( (loc a_2@@7 j_9_1@@1))
))) (=> (forall ((j_9_1@@2 Int) ) (!  (=> (and (>= j_9_1@@2 0) (< j_9_1@@2 (len a_2@@7))) (>= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) (loc a_2@@7 j_9_1@@2) val) FullPerm))
 :qid |stdinbpl.1546:23|
 :skolemid |108|
 :pattern ( (loc a_2@@7 j_9_1@@2))
 :pattern ( (loc a_2@@7 j_9_1@@2))
)) (=> (forall ((j_9_1@@3 Int) ) (!  (=> (and (and (>= j_9_1@@3 0) (< j_9_1@@3 (len a_2@@7))) (< NoPerm FullPerm)) (and (qpRange14 (loc a_2@@7 j_9_1@@3)) (= (invRecv14 (loc a_2@@7 j_9_1@@3)) j_9_1@@3)))
 :qid |stdinbpl.1552:28|
 :skolemid |109|
 :pattern ( (loc a_2@@7 j_9_1@@3))
 :pattern ( (loc a_2@@7 j_9_1@@3))
)) (=> (and (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (>= (invRecv14 o_9@@23) 0) (< (invRecv14 o_9@@23) (len a_2@@7))) (and (< NoPerm FullPerm) (qpRange14 o_9@@23))) (= (loc a_2@@7 (invRecv14 o_9@@23)) o_9@@23))
 :qid |stdinbpl.1556:28|
 :skolemid |110|
 :pattern ( (invRecv14 o_9@@23))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (>= (invRecv14 o_9@@24) 0) (< (invRecv14 o_9@@24) (len a_2@@7))) (and (< NoPerm FullPerm) (qpRange14 o_9@@24))) (and (= (loc a_2@@7 (invRecv14 o_9@@24)) o_9@@24) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@24 val) (- (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@24 val) FullPerm)))) (=> (not (and (and (>= (invRecv14 o_9@@24) 0) (< (invRecv14 o_9@@24) (len a_2@@7))) (and (< NoPerm FullPerm) (qpRange14 o_9@@24)))) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@24 val) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@24 val))))
 :qid |stdinbpl.1562:28|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@24 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@19 T@Field_19242_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@0) o_9@@25 f_5@@19) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@1) o_9@@25 f_5@@19)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@1) o_9@@25 f_5@@19))
)) (forall ((o_9@@26 T@Ref) (f_5@@20 T@Field_19255_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@0) o_9@@26 f_5@@20) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@1) o_9@@26 f_5@@20)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@1) o_9@@26 f_5@@20))
))) (forall ((o_9@@27 T@Ref) (f_5@@21 T@Field_22707_1721) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@27 f_5@@21) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@27 f_5@@21)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@27 f_5@@21))
))) (forall ((o_9@@28 T@Ref) (f_5@@22 T@Field_12608_12612) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@0) o_9@@28 f_5@@22) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@1) o_9@@28 f_5@@22)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@1) o_9@@28 f_5@@22))
))) (forall ((o_9@@29 T@Ref) (f_5@@23 T@Field_12608_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@0) o_9@@29 f_5@@23) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@1) o_9@@29 f_5@@23)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@1) o_9@@29 f_5@@23))
))) (forall ((o_9@@30 T@Ref) (f_5@@24 T@Field_12611_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@0) o_9@@30 f_5@@24) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@1) o_9@@30 f_5@@24)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@1) o_9@@30 f_5@@24))
))) (forall ((o_9@@31 T@Ref) (f_5@@25 T@Field_12611_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@0) o_9@@31 f_5@@25) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@1) o_9@@31 f_5@@25)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@1) o_9@@31 f_5@@25))
))) (forall ((o_9@@32 T@Ref) (f_5@@26 T@Field_12611_1721) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@0) o_9@@32 f_5@@26) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@1) o_9@@32 f_5@@26)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@1) o_9@@32 f_5@@26))
))) (forall ((o_9@@33 T@Ref) (f_5@@27 T@Field_22754_22755) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@0) o_9@@33 f_5@@27) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@1) o_9@@33 f_5@@27)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@1) o_9@@33 f_5@@27))
))) (forall ((o_9@@34 T@Ref) (f_5@@28 T@Field_22767_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@0) o_9@@34 f_5@@28) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@1) o_9@@34 f_5@@28)))
 :qid |stdinbpl.1568:35|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@1) o_9@@34 f_5@@28))
))) (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 QPMask@1)) (and (>= arg_i@0 0) (< arg_i@0 (len a_2@@7)))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((j_10_2 Int) (j_10_3 Int) ) (!  (=> (and (and (and (and (not (= j_10_2 j_10_3)) (and (>= j_10_2 0) (< j_10_2 (len a_2@@7)))) (and (>= j_10_3 0) (< j_10_3 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_10_2) (loc a_2@@7 j_10_3))))
 :qid |stdinbpl.1583:21|
 :skolemid |113|
))) (=> (forall ((j_10_2@@0 Int) (j_10_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_10_2@@0 j_10_3@@0)) (and (>= j_10_2@@0 0) (< j_10_2@@0 (len a_2@@7)))) (and (>= j_10_3@@0 0) (< j_10_3@@0 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_10_2@@0) (loc a_2@@7 j_10_3@@0))))
 :qid |stdinbpl.1583:21|
 :skolemid |113|
)) (=> (and (and (forall ((j_10_2@@1 Int) ) (!  (=> (and (and (>= j_10_2@@1 0) (< j_10_2@@1 (len a_2@@7))) (< NoPerm FullPerm)) (and (qpRange15 (loc a_2@@7 j_10_2@@1)) (= (invRecv15 (loc a_2@@7 j_10_2@@1)) j_10_2@@1)))
 :qid |stdinbpl.1589:28|
 :skolemid |114|
 :pattern ( (loc a_2@@7 j_10_2@@1))
 :pattern ( (loc a_2@@7 j_10_2@@1))
)) (forall ((o_9@@35 T@Ref) ) (!  (=> (and (and (and (>= (invRecv15 o_9@@35) 0) (< (invRecv15 o_9@@35) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange15 o_9@@35)) (= (loc a_2@@7 (invRecv15 o_9@@35)) o_9@@35))
 :qid |stdinbpl.1593:28|
 :skolemid |115|
 :pattern ( (invRecv15 o_9@@35))
))) (and (forall ((j_10_2@@2 Int) ) (!  (=> (and (>= j_10_2@@2 0) (< j_10_2@@2 (len a_2@@7))) (not (= (loc a_2@@7 j_10_2@@2) null)))
 :qid |stdinbpl.1599:28|
 :skolemid |116|
 :pattern ( (loc a_2@@7 j_10_2@@2))
 :pattern ( (loc a_2@@7 j_10_2@@2))
)) (forall ((o_9@@36 T@Ref) ) (!  (and (=> (and (and (and (>= (invRecv15 o_9@@36) 0) (< (invRecv15 o_9@@36) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange15 o_9@@36)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@7 (invRecv15 o_9@@36)) o_9@@36)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@2) o_9@@36 val) (+ (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@36 val) FullPerm)))) (=> (not (and (and (and (>= (invRecv15 o_9@@36) 0) (< (invRecv15 o_9@@36) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange15 o_9@@36))) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@2) o_9@@36 val) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@36 val))))
 :qid |stdinbpl.1605:28|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@2) o_9@@36 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@37 T@Ref) (f_5@@29 T@Field_19242_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@1) o_9@@37 f_5@@29) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@2) o_9@@37 f_5@@29)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@1) o_9@@37 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@2) o_9@@37 f_5@@29))
)) (forall ((o_9@@38 T@Ref) (f_5@@30 T@Field_19255_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@1) o_9@@38 f_5@@30) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@2) o_9@@38 f_5@@30)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@1) o_9@@38 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@2) o_9@@38 f_5@@30))
))) (forall ((o_9@@39 T@Ref) (f_5@@31 T@Field_22707_1721) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@39 f_5@@31) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@2) o_9@@39 f_5@@31)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@1) o_9@@39 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@2) o_9@@39 f_5@@31))
))) (forall ((o_9@@40 T@Ref) (f_5@@32 T@Field_12608_12612) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@1) o_9@@40 f_5@@32) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@2) o_9@@40 f_5@@32)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@1) o_9@@40 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@2) o_9@@40 f_5@@32))
))) (forall ((o_9@@41 T@Ref) (f_5@@33 T@Field_12608_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@1) o_9@@41 f_5@@33) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@2) o_9@@41 f_5@@33)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@1) o_9@@41 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@2) o_9@@41 f_5@@33))
))) (forall ((o_9@@42 T@Ref) (f_5@@34 T@Field_12611_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@1) o_9@@42 f_5@@34) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@2) o_9@@42 f_5@@34)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@1) o_9@@42 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@2) o_9@@42 f_5@@34))
))) (forall ((o_9@@43 T@Ref) (f_5@@35 T@Field_12611_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@1) o_9@@43 f_5@@35) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@2) o_9@@43 f_5@@35)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@1) o_9@@43 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@2) o_9@@43 f_5@@35))
))) (forall ((o_9@@44 T@Ref) (f_5@@36 T@Field_12611_1721) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@1) o_9@@44 f_5@@36) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@2) o_9@@44 f_5@@36)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@1) o_9@@44 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@2) o_9@@44 f_5@@36))
))) (forall ((o_9@@45 T@Ref) (f_5@@37 T@Field_22754_22755) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@1) o_9@@45 f_5@@37) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@2) o_9@@45 f_5@@37)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@1) o_9@@45 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@2) o_9@@45 f_5@@37))
))) (forall ((o_9@@46 T@Ref) (f_5@@38 T@Field_22767_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@1) o_9@@46 f_5@@38) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@2) o_9@@46 f_5@@38)))
 :qid |stdinbpl.1609:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@1) o_9@@46 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@2) o_9@@46 f_5@@38))
))) (state ExhaleHeap@0 QPMask@2)) (and (forall ((j_11_1 Int) ) (!  (=> (and (>= j_11_1 0) (and (< j_11_1 (len a_2@@7)) (< j_11_1 arg_i@0))) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@0) (loc a_2@@7 j_11_1) val) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@0) (loc a_2@@7 j_11_1) val)))
 :qid |stdinbpl.1615:26|
 :skolemid |119|
 :pattern ( (loc a_2@@7 j_11_1))
)) (state ExhaleHeap@0 QPMask@2))) (and (and (state ExhaleHeap@0 QPMask@2) (= Mask@0 QPMask@2)) (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 12) 7)))) anon12_correct))))))))))))))))))
(let ((anon18_Else_correct  (=> (and (and (>= k 0) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (< k (len a_2@@7)))) (=> (and (and (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (= (mod k 2) 0) (state Heap@@32 QPMask@0))) (and (and (state Heap@@32 QPMask@0) (not (= k i@@6))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= FullPerm (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) (loc a_2@@7 i@@6) val))) (=> (= FullPerm (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) (loc a_2@@7 i@@6) val)) (=> (and (= Heap@0 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@32) (store (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@32) (loc a_2@@7 i@@6) val newVal) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@32))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 19) 12) anon22_Then_correct) (=> (= (ControlFlow 0 19) 18) anon22_Else_correct)))))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (>= j_1 0) (< j_1 (len a_2@@7)))) (and (>= j_1_1 0) (< j_1_1 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_1) (loc a_2@@7 j_1_1))))
 :qid |stdinbpl.1384:15|
 :skolemid |94|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (>= j_1@@0 0) (< j_1@@0 (len a_2@@7)))) (and (>= j_1_1@@0 0) (< j_1_1@@0 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 j_1@@0) (loc a_2@@7 j_1_1@@0))))
 :qid |stdinbpl.1384:15|
 :skolemid |94|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (and (>= j_1@@1 0) (< j_1@@1 (len a_2@@7))) (< NoPerm FullPerm)) (and (qpRange11 (loc a_2@@7 j_1@@1)) (= (invRecv11 (loc a_2@@7 j_1@@1)) j_1@@1)))
 :qid |stdinbpl.1390:22|
 :skolemid |95|
 :pattern ( (loc a_2@@7 j_1@@1))
 :pattern ( (loc a_2@@7 j_1@@1))
)) (forall ((o_9@@47 T@Ref) ) (!  (=> (and (and (and (>= (invRecv11 o_9@@47) 0) (< (invRecv11 o_9@@47) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange11 o_9@@47)) (= (loc a_2@@7 (invRecv11 o_9@@47)) o_9@@47))
 :qid |stdinbpl.1394:22|
 :skolemid |96|
 :pattern ( (invRecv11 o_9@@47))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (and (>= j_1@@2 0) (< j_1@@2 (len a_2@@7))) (not (= (loc a_2@@7 j_1@@2) null)))
 :qid |stdinbpl.1400:22|
 :skolemid |97|
 :pattern ( (loc a_2@@7 j_1@@2))
 :pattern ( (loc a_2@@7 j_1@@2))
)) (forall ((o_9@@48 T@Ref) ) (!  (and (=> (and (and (and (>= (invRecv11 o_9@@48) 0) (< (invRecv11 o_9@@48) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange11 o_9@@48)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@7 (invRecv11 o_9@@48)) o_9@@48)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@48 val) (+ (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@48 val) FullPerm)))) (=> (not (and (and (and (>= (invRecv11 o_9@@48) 0) (< (invRecv11 o_9@@48) (len a_2@@7))) (< NoPerm FullPerm)) (qpRange11 o_9@@48))) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@48 val) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@48 val))))
 :qid |stdinbpl.1406:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@48 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@49 T@Ref) (f_5@@39 T@Field_19242_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ZeroMask) o_9@@49 f_5@@39) (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@0) o_9@@49 f_5@@39)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ZeroMask) o_9@@49 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| QPMask@0) o_9@@49 f_5@@39))
)) (forall ((o_9@@50 T@Ref) (f_5@@40 T@Field_19255_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ZeroMask) o_9@@50 f_5@@40) (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@0) o_9@@50 f_5@@40)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ZeroMask) o_9@@50 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| QPMask@0) o_9@@50 f_5@@40))
))) (forall ((o_9@@51 T@Ref) (f_5@@41 T@Field_22707_1721) ) (!  (=> (not (= f_5@@41 val)) (= (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@51 f_5@@41) (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@51 f_5@@41)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) o_9@@51 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| QPMask@0) o_9@@51 f_5@@41))
))) (forall ((o_9@@52 T@Ref) (f_5@@42 T@Field_12608_12612) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ZeroMask) o_9@@52 f_5@@42) (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@0) o_9@@52 f_5@@42)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ZeroMask) o_9@@52 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| QPMask@0) o_9@@52 f_5@@42))
))) (forall ((o_9@@53 T@Ref) (f_5@@43 T@Field_12608_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ZeroMask) o_9@@53 f_5@@43) (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@0) o_9@@53 f_5@@43)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ZeroMask) o_9@@53 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| QPMask@0) o_9@@53 f_5@@43))
))) (forall ((o_9@@54 T@Ref) (f_5@@44 T@Field_12611_53) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ZeroMask) o_9@@54 f_5@@44) (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@0) o_9@@54 f_5@@44)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ZeroMask) o_9@@54 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| QPMask@0) o_9@@54 f_5@@44))
))) (forall ((o_9@@55 T@Ref) (f_5@@45 T@Field_12611_19256) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ZeroMask) o_9@@55 f_5@@45) (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@0) o_9@@55 f_5@@45)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ZeroMask) o_9@@55 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| QPMask@0) o_9@@55 f_5@@45))
))) (forall ((o_9@@56 T@Ref) (f_5@@46 T@Field_12611_1721) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ZeroMask) o_9@@56 f_5@@46) (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@0) o_9@@56 f_5@@46)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ZeroMask) o_9@@56 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| QPMask@0) o_9@@56 f_5@@46))
))) (forall ((o_9@@57 T@Ref) (f_5@@47 T@Field_22754_22755) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) o_9@@57 f_5@@47) (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@0) o_9@@57 f_5@@47)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) o_9@@57 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| QPMask@0) o_9@@57 f_5@@47))
))) (forall ((o_9@@58 T@Ref) (f_5@@48 T@Field_22767_22772) ) (!  (=> true (= (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ZeroMask) o_9@@58 f_5@@48) (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@0) o_9@@58 f_5@@48)))
 :qid |stdinbpl.1410:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ZeroMask) o_9@@58 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| QPMask@0) o_9@@58 f_5@@48))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 31) 30) anon18_Then_correct) (=> (= (ControlFlow 0 31) 19) anon18_Else_correct))))))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and AssumePermUpperBound (>= i@@6 0)) (and (< i@@6 (len a_2@@7)) (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 33) 1) anon17_Then_correct) (=> (= (ControlFlow 0 33) 31) anon17_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 34) 33) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
