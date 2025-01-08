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
(declare-fun len_1 (T@IArrayDomainType) Int)
(declare-fun getPredWandId_12611_12612 (T@Field_22754_22755) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_19182) (ExhaleHeap T@PolymorphicMapType_19182) (Mask@@0 T@PolymorphicMapType_19203) (pm_f_34 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12608_12612 Mask@@0 null pm_f_34) (IsPredicateField_12608_62811 pm_f_34)) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@1) null (PredicateMaskField_12608 pm_f_34)) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap) null (PredicateMaskField_12608 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_12608_62811 pm_f_34) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap) null (PredicateMaskField_12608 pm_f_34)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19182) (ExhaleHeap@@0 T@PolymorphicMapType_19182) (Mask@@1 T@PolymorphicMapType_19203) (pm_f_34@@0 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12611_12612 Mask@@1 null pm_f_34@@0) (IsPredicateField_12611_12612 pm_f_34@@0)) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@2) null (PredicateMaskField_12611 pm_f_34@@0)) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@0) null (PredicateMaskField_12611 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_12611_12612 pm_f_34@@0) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@0) null (PredicateMaskField_12611 pm_f_34@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19182) (ExhaleHeap@@1 T@PolymorphicMapType_19182) (Mask@@2 T@PolymorphicMapType_19203) (pm_f_34@@1 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12608_12612 Mask@@2 null pm_f_34@@1) (IsWandField_12608_66171 pm_f_34@@1)) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@3) null (WandMaskField_12608 pm_f_34@@1)) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@1) null (WandMaskField_12608 pm_f_34@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_12608_66171 pm_f_34@@1) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@1) null (WandMaskField_12608 pm_f_34@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19182) (ExhaleHeap@@2 T@PolymorphicMapType_19182) (Mask@@3 T@PolymorphicMapType_19203) (pm_f_34@@2 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12611_12612 Mask@@3 null pm_f_34@@2) (IsWandField_12611_65814 pm_f_34@@2)) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@4) null (WandMaskField_12611 pm_f_34@@2)) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@2) null (WandMaskField_12611 pm_f_34@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_12611_65814 pm_f_34@@2) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@2) null (WandMaskField_12611 pm_f_34@@2)))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@1 Int) (a2 T@IArrayDomainType) (i2_1 Int) ) (!  (=> (= (access a_2@@1 i@@1) (access a2 i2_1)) (and (= a_2@@1 a2) (= i@@1 i2_1)))
 :qid |stdinbpl.293:15|
 :skolemid |27|
 :pattern ( (access a_2@@1 i@@1) (access a2 i2_1))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@2 Int) (a2@@0 T@IArrayDomainType) (i2_1@@0 Int) ) (!  (=> (= (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2_1@@0)) (and (= a_2@@2 a2@@0) (= i@@2 i2_1@@0)))
 :qid |stdinbpl.297:15|
 :skolemid |28|
 :pattern ( (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19182) (ExhaleHeap@@3 T@PolymorphicMapType_19182) (Mask@@4 T@PolymorphicMapType_19203) (pm_f_34@@3 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12608_12612 Mask@@4 null pm_f_34@@3) (IsPredicateField_12608_62811 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34 f_35) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@5) o2_34 f_35) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@5) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@5) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@5) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@3 f_35@@3))
))) (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@5) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@4 f_35@@4))
))) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@5) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@5) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@5) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@5) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_12608_62811 pm_f_34@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19182) (ExhaleHeap@@4 T@PolymorphicMapType_19182) (Mask@@5 T@PolymorphicMapType_19203) (pm_f_34@@4 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_12611_12612 Mask@@5 null pm_f_34@@4) (IsPredicateField_12611_12612 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@9 T@Ref) (f_35@@9 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@9 f_35@@9) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@6) o2_34@@9 f_35@@9) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@9 f_35@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@9 f_35@@9))
)) (forall ((o2_34@@10 T@Ref) (f_35@@10 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@10 f_35@@10) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@6) o2_34@@10 f_35@@10) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@10 f_35@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@10 f_35@@10))
))) (forall ((o2_34@@11 T@Ref) (f_35@@11 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@11 f_35@@11) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@6) o2_34@@11 f_35@@11) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@11 f_35@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@11 f_35@@11))
))) (forall ((o2_34@@12 T@Ref) (f_35@@12 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@12 f_35@@12) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@6) o2_34@@12 f_35@@12) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@12 f_35@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@12 f_35@@12))
))) (forall ((o2_34@@13 T@Ref) (f_35@@13 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@13 f_35@@13) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@6) o2_34@@13 f_35@@13) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@13 f_35@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@13 f_35@@13))
))) (forall ((o2_34@@14 T@Ref) (f_35@@14 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@14 f_35@@14) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@6) o2_34@@14 f_35@@14) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@14 f_35@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@14 f_35@@14))
))) (forall ((o2_34@@15 T@Ref) (f_35@@15 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@15 f_35@@15) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@6) o2_34@@15 f_35@@15) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@15 f_35@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@15 f_35@@15))
))) (forall ((o2_34@@16 T@Ref) (f_35@@16 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@16 f_35@@16) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@6) o2_34@@16 f_35@@16) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@16 f_35@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@16 f_35@@16))
))) (forall ((o2_34@@17 T@Ref) (f_35@@17 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@17 f_35@@17) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@6) o2_34@@17 f_35@@17) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@17 f_35@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@17 f_35@@17))
))) (forall ((o2_34@@18 T@Ref) (f_35@@18 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@18 f_35@@18) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) o2_34@@18 f_35@@18) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@18 f_35@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@18 f_35@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_12611_12612 pm_f_34@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19182) (ExhaleHeap@@5 T@PolymorphicMapType_19182) (Mask@@6 T@PolymorphicMapType_19203) (pm_f_34@@5 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12608_12612 Mask@@6 null pm_f_34@@5) (IsWandField_12608_66171 pm_f_34@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_35@@19 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@19 f_35@@19) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@7) o2_34@@19 f_35@@19) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@19 f_35@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@19 f_35@@19))
)) (forall ((o2_34@@20 T@Ref) (f_35@@20 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@20 f_35@@20) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@7) o2_34@@20 f_35@@20) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@20 f_35@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@20 f_35@@20))
))) (forall ((o2_34@@21 T@Ref) (f_35@@21 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@21 f_35@@21) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@7) o2_34@@21 f_35@@21) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@21 f_35@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@21 f_35@@21))
))) (forall ((o2_34@@22 T@Ref) (f_35@@22 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@22 f_35@@22) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@7) o2_34@@22 f_35@@22) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@22 f_35@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@22 f_35@@22))
))) (forall ((o2_34@@23 T@Ref) (f_35@@23 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@23 f_35@@23) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) o2_34@@23 f_35@@23) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@23 f_35@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@23 f_35@@23))
))) (forall ((o2_34@@24 T@Ref) (f_35@@24 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@24 f_35@@24) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@7) o2_34@@24 f_35@@24) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@24 f_35@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@24 f_35@@24))
))) (forall ((o2_34@@25 T@Ref) (f_35@@25 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@25 f_35@@25) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@7) o2_34@@25 f_35@@25) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@25 f_35@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@25 f_35@@25))
))) (forall ((o2_34@@26 T@Ref) (f_35@@26 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@26 f_35@@26) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@7) o2_34@@26 f_35@@26) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@26 f_35@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@26 f_35@@26))
))) (forall ((o2_34@@27 T@Ref) (f_35@@27 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@27 f_35@@27) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@7) o2_34@@27 f_35@@27) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@27 f_35@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@27 f_35@@27))
))) (forall ((o2_34@@28 T@Ref) (f_35@@28 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@28 f_35@@28) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@7) o2_34@@28 f_35@@28) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@28 f_35@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@28 f_35@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_12608_66171 pm_f_34@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19182) (ExhaleHeap@@6 T@PolymorphicMapType_19182) (Mask@@7 T@PolymorphicMapType_19203) (pm_f_34@@6 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_12611_12612 Mask@@7 null pm_f_34@@6) (IsWandField_12611_65814 pm_f_34@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@29 T@Ref) (f_35@@29 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@29 f_35@@29) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@8) o2_34@@29 f_35@@29) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@29 f_35@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@29 f_35@@29))
)) (forall ((o2_34@@30 T@Ref) (f_35@@30 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@30 f_35@@30) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@8) o2_34@@30 f_35@@30) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@30 f_35@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@30 f_35@@30))
))) (forall ((o2_34@@31 T@Ref) (f_35@@31 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@31 f_35@@31) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@8) o2_34@@31 f_35@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@31 f_35@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@31 f_35@@31))
))) (forall ((o2_34@@32 T@Ref) (f_35@@32 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@32 f_35@@32) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@8) o2_34@@32 f_35@@32) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@32 f_35@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@32 f_35@@32))
))) (forall ((o2_34@@33 T@Ref) (f_35@@33 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@33 f_35@@33) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@8) o2_34@@33 f_35@@33) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@33 f_35@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@33 f_35@@33))
))) (forall ((o2_34@@34 T@Ref) (f_35@@34 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@34 f_35@@34) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@8) o2_34@@34 f_35@@34) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@34 f_35@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@34 f_35@@34))
))) (forall ((o2_34@@35 T@Ref) (f_35@@35 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@35 f_35@@35) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@8) o2_34@@35 f_35@@35) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@35 f_35@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@35 f_35@@35))
))) (forall ((o2_34@@36 T@Ref) (f_35@@36 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@36 f_35@@36) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@8) o2_34@@36 f_35@@36) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@36 f_35@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@36 f_35@@36))
))) (forall ((o2_34@@37 T@Ref) (f_35@@37 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@37 f_35@@37) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@8) o2_34@@37 f_35@@37) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@37 f_35@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@37 f_35@@37))
))) (forall ((o2_34@@38 T@Ref) (f_35@@38 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@38 f_35@@38) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) o2_34@@38 f_35@@38) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@38 f_35@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@38 f_35@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_12611_65814 pm_f_34@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19182) (ExhaleHeap@@7 T@PolymorphicMapType_19182) (Mask@@8 T@PolymorphicMapType_19203) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@9) o_30 $allocated) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@7) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@7) o_30 $allocated))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_19182) (ExhaleHeap@@9 T@PolymorphicMapType_19182) (Mask@@30 T@PolymorphicMapType_19203) (o_30@@0 T@Ref) (f_35@@39 T@Field_12608_22772) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_12608_62198 Mask@@30 o_30@@0 f_35@@39) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@11) o_30@@0 f_35@@39) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@9) o_30@@0 f_35@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@9) o_30@@0 f_35@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19182) (ExhaleHeap@@10 T@PolymorphicMapType_19182) (Mask@@31 T@PolymorphicMapType_19203) (o_30@@1 T@Ref) (f_35@@40 T@Field_19255_19256) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_12608_19256 Mask@@31 o_30@@1 f_35@@40) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@12) o_30@@1 f_35@@40) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@10) o_30@@1 f_35@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@10) o_30@@1 f_35@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19182) (ExhaleHeap@@11 T@PolymorphicMapType_19182) (Mask@@32 T@PolymorphicMapType_19203) (o_30@@2 T@Ref) (f_35@@41 T@Field_19242_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_12608_53 Mask@@32 o_30@@2 f_35@@41) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@13) o_30@@2 f_35@@41) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@11) o_30@@2 f_35@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@11) o_30@@2 f_35@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19182) (ExhaleHeap@@12 T@PolymorphicMapType_19182) (Mask@@33 T@PolymorphicMapType_19203) (o_30@@3 T@Ref) (f_35@@42 T@Field_22707_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_12608_1721 Mask@@33 o_30@@3 f_35@@42) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@14) o_30@@3 f_35@@42) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@12) o_30@@3 f_35@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@12) o_30@@3 f_35@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19182) (ExhaleHeap@@13 T@PolymorphicMapType_19182) (Mask@@34 T@PolymorphicMapType_19203) (o_30@@4 T@Ref) (f_35@@43 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_12608_12612 Mask@@34 o_30@@4 f_35@@43) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@15) o_30@@4 f_35@@43) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@13) o_30@@4 f_35@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@13) o_30@@4 f_35@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19182) (ExhaleHeap@@14 T@PolymorphicMapType_19182) (Mask@@35 T@PolymorphicMapType_19203) (o_30@@5 T@Ref) (f_35@@44 T@Field_22767_22772) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_12611_61125 Mask@@35 o_30@@5 f_35@@44) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@16) o_30@@5 f_35@@44) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@14) o_30@@5 f_35@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@14) o_30@@5 f_35@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19182) (ExhaleHeap@@15 T@PolymorphicMapType_19182) (Mask@@36 T@PolymorphicMapType_19203) (o_30@@6 T@Ref) (f_35@@45 T@Field_12611_19256) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_12611_19256 Mask@@36 o_30@@6 f_35@@45) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@17) o_30@@6 f_35@@45) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@15) o_30@@6 f_35@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@15) o_30@@6 f_35@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19182) (ExhaleHeap@@16 T@PolymorphicMapType_19182) (Mask@@37 T@PolymorphicMapType_19203) (o_30@@7 T@Ref) (f_35@@46 T@Field_12611_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_12611_53 Mask@@37 o_30@@7 f_35@@46) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@18) o_30@@7 f_35@@46) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@16) o_30@@7 f_35@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@16) o_30@@7 f_35@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19182) (ExhaleHeap@@17 T@PolymorphicMapType_19182) (Mask@@38 T@PolymorphicMapType_19203) (o_30@@8 T@Ref) (f_35@@47 T@Field_12611_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_12611_1721 Mask@@38 o_30@@8 f_35@@47) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@19) o_30@@8 f_35@@47) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@17) o_30@@8 f_35@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@17) o_30@@8 f_35@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19182) (ExhaleHeap@@18 T@PolymorphicMapType_19182) (Mask@@39 T@PolymorphicMapType_19203) (o_30@@9 T@Ref) (f_35@@48 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_12611_12612 Mask@@39 o_30@@9 f_35@@48) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@20) o_30@@9 f_35@@48) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@18) o_30@@9 f_35@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@18) o_30@@9 f_35@@48))
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
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len_1 a_2@@3) 0)
 :qid |stdinbpl.259:15|
 :skolemid |23|
 :pattern ( (len_1 a_2@@3))
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
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@5 Int) ) (!  (and (= (first (loc a_2@@6 i@@5)) a_2@@6) (= (second (loc a_2@@6 i@@5)) i@@5))
 :qid |stdinbpl.253:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19182) (o_6 T@Ref) (f_16 T@Field_22767_22772) (v T@PolymorphicMapType_19731) ) (! (succHeap Heap@@21 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@21) (store (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@21) o_6 f_16 v) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@21) (store (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@21) o_6 f_16 v) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19182) (o_6@@0 T@Ref) (f_16@@0 T@Field_12611_1721) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@22) (store (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@22) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@22) (store (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@22) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19182) (o_6@@1 T@Ref) (f_16@@1 T@Field_22754_22755) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@23) (store (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@23) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@23) (store (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@23) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19182) (o_6@@2 T@Ref) (f_16@@2 T@Field_12611_19256) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@24) (store (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@24) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@24) (store (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@24) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19182) (o_6@@3 T@Ref) (f_16@@3 T@Field_12611_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@25) (store (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@25) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@25) (store (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@25) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19182) (o_6@@4 T@Ref) (f_16@@4 T@Field_12608_22772) (v@@4 T@PolymorphicMapType_19731) ) (! (succHeap Heap@@26 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@26) (store (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@26) o_6@@4 f_16@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@26) (store (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@26) o_6@@4 f_16@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19182) (o_6@@5 T@Ref) (f_16@@5 T@Field_22707_1721) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@27) (store (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@27) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@27) (store (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@27) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19182) (o_6@@6 T@Ref) (f_16@@6 T@Field_12608_12612) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@28) (store (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@28) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@28) (store (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@28) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19182) (o_6@@7 T@Ref) (f_16@@7 T@Field_19255_19256) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@29) (store (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@29) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@29) (store (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@29) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19182) (o_6@@8 T@Ref) (f_16@@8 T@Field_19242_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_19182 (store (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@30) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (store (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@30) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@30)))
)))
(assert (forall ((o_6@@9 T@Ref) (f_9 T@Field_19255_19256) (Heap@@31 T@PolymorphicMapType_19182) ) (!  (=> (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@31) o_6@@9 $allocated) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@31) o_6@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@31) o_6@@9 f_9))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_19182)
(declare-fun Mask@4 () T@PolymorphicMapType_19203)
(declare-fun a_2@@7 () T@IArrayDomainType)
(declare-fun i@@6 () Int)
(declare-fun Mask@1 () T@PolymorphicMapType_19203)
(declare-fun Mask@2 () T@PolymorphicMapType_19203)
(declare-fun Mask@3 () T@PolymorphicMapType_19203)
(declare-fun Heap@@32 () T@PolymorphicMapType_19182)
(declare-fun Heap@0 () T@PolymorphicMapType_19182)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_19203)
(declare-fun FrameFragment_12574 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1721 (Int) T@FrameType)
(set-info :boogie-vc-id readTwo)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon6_correct  (=> (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_12608_1721 Mask@4 (loc a_2@@7 i@@6) val)) (=> (HasDirectPerm_12608_1721 Mask@4 (loc a_2@@7 i@@6) val) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_12608_1721 Mask@4 (loc a_2@@7 (+ i@@6 1)) val)))))))
(let ((anon9_Else_correct  (=> (not (= (mod i@@6 2) 0)) (=> (and (= Mask@4 Mask@1) (= (ControlFlow 0 5) 2)) anon6_correct))))
(let ((anon9_Then_correct  (=> (= (mod i@@6 2) 0) (=> (and (and (and (not (= (loc a_2@@7 i@@6) null)) (= Mask@2 (PolymorphicMapType_19203 (store (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@1) (loc a_2@@7 i@@6) val (+ (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@1) (loc a_2@@7 i@@6) val) FullPerm)) (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@1) (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@1)))) (and (state Heap@1 Mask@2) (not (= (loc a_2@@7 (+ i@@6 1)) null)))) (and (and (= Mask@3 (PolymorphicMapType_19203 (store (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@2) (loc a_2@@7 (+ i@@6 1)) val (+ (select (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@2) (loc a_2@@7 (+ i@@6 1)) val) FullPerm)) (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@2) (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@2))) (state Heap@1 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 4) 2)))) anon6_correct))))
(let ((anon8_Else_correct  (=> (and (HasDirectPerm_12611_12612 Mask@1 null (access a_2@@7 i@@6)) (= Heap@1 Heap@@32)) (and (=> (= (ControlFlow 0 7) 4) anon9_Then_correct) (=> (= (ControlFlow 0 7) 5) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (not (HasDirectPerm_12611_12612 Mask@1 null (access a_2@@7 i@@6))) (=> (and (= Heap@0 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@32) (store (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@32) null (access a_2@@7 i@@6) newVersion@0) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@32) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@32))) (= Heap@1 Heap@0)) (and (=> (= (ControlFlow 0 6) 4) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct))))))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_19203 (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| Mask@0) (store (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@0) null (access a_2@@7 i@@6) (- (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@0) null (access a_2@@7 i@@6)) FullPerm)) (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| Mask@0) (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| Mask@0) (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| Mask@0) (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| Mask@0) (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| Mask@0) (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| Mask@0) (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| Mask@0) (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| Mask@0))) (and (=> (= (ControlFlow 0 8) 6) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 8)) anon2_correct)))
(let ((anon7_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@0) null (access a_2@@7 i@@6)))) (=> (<= FullPerm (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| Mask@0) null (access a_2@@7 i@@6))) (=> (= (ControlFlow 0 9) 8) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (= Mask@0 (PolymorphicMapType_19203 (|PolymorphicMapType_19203_12608_1721#PolymorphicMapType_19203| ZeroMask) (store (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) null (access a_2@@7 i@@6) (+ (select (|PolymorphicMapType_19203_12611_12612#PolymorphicMapType_19203| ZeroMask) null (access a_2@@7 i@@6)) FullPerm)) (|PolymorphicMapType_19203_12608_12612#PolymorphicMapType_19203| ZeroMask) (|PolymorphicMapType_19203_12608_53#PolymorphicMapType_19203| ZeroMask) (|PolymorphicMapType_19203_12608_19256#PolymorphicMapType_19203| ZeroMask) (|PolymorphicMapType_19203_12608_70400#PolymorphicMapType_19203| ZeroMask) (|PolymorphicMapType_19203_12611_1721#PolymorphicMapType_19203| ZeroMask) (|PolymorphicMapType_19203_12611_53#PolymorphicMapType_19203| ZeroMask) (|PolymorphicMapType_19203_12611_19256#PolymorphicMapType_19203| ZeroMask) (|PolymorphicMapType_19203_12611_70811#PolymorphicMapType_19203| ZeroMask))) (state Heap@@32 Mask@0))) (and (and (= (mod i@@6 2) 0) (state Heap@@32 Mask@0)) (and (|access#trigger_12611| Heap@@32 (access a_2@@7 i@@6)) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@32) null (access a_2@@7 i@@6)) (FrameFragment_12574 (ite (= (mod i@@6 2) 0) (CombineFrames (FrameFragment_1721 (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@32) (loc a_2@@7 i@@6) val)) (FrameFragment_1721 (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@32) (loc a_2@@7 (+ i@@6 1)) val))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 12) 9) anon7_Then_correct) (=> (= (ControlFlow 0 12) 11) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(declare-fun len_1 (T@IArrayDomainType) Int)
(declare-fun getPredWandId_12611_12612 (T@Field_22754_22755) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_19182) (ExhaleHeap T@PolymorphicMapType_19182) (Mask@@0 T@PolymorphicMapType_19203) (pm_f_34 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12608_12612 Mask@@0 null pm_f_34) (IsPredicateField_12608_62811 pm_f_34)) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@1) null (PredicateMaskField_12608 pm_f_34)) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap) null (PredicateMaskField_12608 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_12608_62811 pm_f_34) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap) null (PredicateMaskField_12608 pm_f_34)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19182) (ExhaleHeap@@0 T@PolymorphicMapType_19182) (Mask@@1 T@PolymorphicMapType_19203) (pm_f_34@@0 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12611_12612 Mask@@1 null pm_f_34@@0) (IsPredicateField_12611_12612 pm_f_34@@0)) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@2) null (PredicateMaskField_12611 pm_f_34@@0)) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@0) null (PredicateMaskField_12611 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_12611_12612 pm_f_34@@0) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@0) null (PredicateMaskField_12611 pm_f_34@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19182) (ExhaleHeap@@1 T@PolymorphicMapType_19182) (Mask@@2 T@PolymorphicMapType_19203) (pm_f_34@@1 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12608_12612 Mask@@2 null pm_f_34@@1) (IsWandField_12608_66171 pm_f_34@@1)) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@3) null (WandMaskField_12608 pm_f_34@@1)) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@1) null (WandMaskField_12608 pm_f_34@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_12608_66171 pm_f_34@@1) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@1) null (WandMaskField_12608 pm_f_34@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19182) (ExhaleHeap@@2 T@PolymorphicMapType_19182) (Mask@@3 T@PolymorphicMapType_19203) (pm_f_34@@2 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12611_12612 Mask@@3 null pm_f_34@@2) (IsWandField_12611_65814 pm_f_34@@2)) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@4) null (WandMaskField_12611 pm_f_34@@2)) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@2) null (WandMaskField_12611 pm_f_34@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_12611_65814 pm_f_34@@2) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@2) null (WandMaskField_12611 pm_f_34@@2)))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@1 Int) (a2 T@IArrayDomainType) (i2_1 Int) ) (!  (=> (= (access a_2@@1 i@@1) (access a2 i2_1)) (and (= a_2@@1 a2) (= i@@1 i2_1)))
 :qid |stdinbpl.293:15|
 :skolemid |27|
 :pattern ( (access a_2@@1 i@@1) (access a2 i2_1))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@2 Int) (a2@@0 T@IArrayDomainType) (i2_1@@0 Int) ) (!  (=> (= (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2_1@@0)) (and (= a_2@@2 a2@@0) (= i@@2 i2_1@@0)))
 :qid |stdinbpl.297:15|
 :skolemid |28|
 :pattern ( (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19182) (ExhaleHeap@@3 T@PolymorphicMapType_19182) (Mask@@4 T@PolymorphicMapType_19203) (pm_f_34@@3 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12608_12612 Mask@@4 null pm_f_34@@3) (IsPredicateField_12608_62811 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34 f_35) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@5) o2_34 f_35) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@5) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@5) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@5) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@3 f_35@@3))
))) (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@5) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@4 f_35@@4))
))) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@5) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@5) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@5) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@5) null (PredicateMaskField_12608 pm_f_34@@3))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@5) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@3) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_12608_62811 pm_f_34@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19182) (ExhaleHeap@@4 T@PolymorphicMapType_19182) (Mask@@5 T@PolymorphicMapType_19203) (pm_f_34@@4 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_12611_12612 Mask@@5 null pm_f_34@@4) (IsPredicateField_12611_12612 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@9 T@Ref) (f_35@@9 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@9 f_35@@9) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@6) o2_34@@9 f_35@@9) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@9 f_35@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@9 f_35@@9))
)) (forall ((o2_34@@10 T@Ref) (f_35@@10 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@10 f_35@@10) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@6) o2_34@@10 f_35@@10) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@10 f_35@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@10 f_35@@10))
))) (forall ((o2_34@@11 T@Ref) (f_35@@11 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@11 f_35@@11) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@6) o2_34@@11 f_35@@11) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@11 f_35@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@11 f_35@@11))
))) (forall ((o2_34@@12 T@Ref) (f_35@@12 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@12 f_35@@12) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@6) o2_34@@12 f_35@@12) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@12 f_35@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@12 f_35@@12))
))) (forall ((o2_34@@13 T@Ref) (f_35@@13 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@13 f_35@@13) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@6) o2_34@@13 f_35@@13) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@13 f_35@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@13 f_35@@13))
))) (forall ((o2_34@@14 T@Ref) (f_35@@14 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@14 f_35@@14) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@6) o2_34@@14 f_35@@14) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@14 f_35@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@14 f_35@@14))
))) (forall ((o2_34@@15 T@Ref) (f_35@@15 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@15 f_35@@15) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@6) o2_34@@15 f_35@@15) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@15 f_35@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@15 f_35@@15))
))) (forall ((o2_34@@16 T@Ref) (f_35@@16 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@16 f_35@@16) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@6) o2_34@@16 f_35@@16) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@16 f_35@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@16 f_35@@16))
))) (forall ((o2_34@@17 T@Ref) (f_35@@17 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@17 f_35@@17) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@6) o2_34@@17 f_35@@17) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@17 f_35@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@17 f_35@@17))
))) (forall ((o2_34@@18 T@Ref) (f_35@@18 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) null (PredicateMaskField_12611 pm_f_34@@4))) o2_34@@18 f_35@@18) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@6) o2_34@@18 f_35@@18) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@18 f_35@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@4) o2_34@@18 f_35@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_12611_12612 pm_f_34@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19182) (ExhaleHeap@@5 T@PolymorphicMapType_19182) (Mask@@6 T@PolymorphicMapType_19203) (pm_f_34@@5 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12608_12612 Mask@@6 null pm_f_34@@5) (IsWandField_12608_66171 pm_f_34@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_35@@19 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@19 f_35@@19) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@7) o2_34@@19 f_35@@19) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@19 f_35@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@19 f_35@@19))
)) (forall ((o2_34@@20 T@Ref) (f_35@@20 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@20 f_35@@20) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@7) o2_34@@20 f_35@@20) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@20 f_35@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@20 f_35@@20))
))) (forall ((o2_34@@21 T@Ref) (f_35@@21 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@21 f_35@@21) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@7) o2_34@@21 f_35@@21) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@21 f_35@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@21 f_35@@21))
))) (forall ((o2_34@@22 T@Ref) (f_35@@22 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@22 f_35@@22) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@7) o2_34@@22 f_35@@22) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@22 f_35@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@22 f_35@@22))
))) (forall ((o2_34@@23 T@Ref) (f_35@@23 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@23 f_35@@23) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) o2_34@@23 f_35@@23) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@23 f_35@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@23 f_35@@23))
))) (forall ((o2_34@@24 T@Ref) (f_35@@24 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@24 f_35@@24) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@7) o2_34@@24 f_35@@24) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@24 f_35@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@24 f_35@@24))
))) (forall ((o2_34@@25 T@Ref) (f_35@@25 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@25 f_35@@25) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@7) o2_34@@25 f_35@@25) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@25 f_35@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@25 f_35@@25))
))) (forall ((o2_34@@26 T@Ref) (f_35@@26 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@26 f_35@@26) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@7) o2_34@@26 f_35@@26) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@26 f_35@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@26 f_35@@26))
))) (forall ((o2_34@@27 T@Ref) (f_35@@27 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@27 f_35@@27) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@7) o2_34@@27 f_35@@27) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@27 f_35@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@27 f_35@@27))
))) (forall ((o2_34@@28 T@Ref) (f_35@@28 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@7) null (WandMaskField_12608 pm_f_34@@5))) o2_34@@28 f_35@@28) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@7) o2_34@@28 f_35@@28) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@28 f_35@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@5) o2_34@@28 f_35@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_12608_66171 pm_f_34@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19182) (ExhaleHeap@@6 T@PolymorphicMapType_19182) (Mask@@7 T@PolymorphicMapType_19203) (pm_f_34@@6 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_12611_12612 Mask@@7 null pm_f_34@@6) (IsWandField_12611_65814 pm_f_34@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@29 T@Ref) (f_35@@29 T@Field_22707_1721) ) (!  (=> (select (|PolymorphicMapType_19731_12608_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@29 f_35@@29) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@8) o2_34@@29 f_35@@29) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@29 f_35@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@29 f_35@@29))
)) (forall ((o2_34@@30 T@Ref) (f_35@@30 T@Field_19242_53) ) (!  (=> (select (|PolymorphicMapType_19731_12608_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@30 f_35@@30) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@8) o2_34@@30 f_35@@30) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@30 f_35@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@30 f_35@@30))
))) (forall ((o2_34@@31 T@Ref) (f_35@@31 T@Field_19255_19256) ) (!  (=> (select (|PolymorphicMapType_19731_12608_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@31 f_35@@31) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@8) o2_34@@31 f_35@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@31 f_35@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@31 f_35@@31))
))) (forall ((o2_34@@32 T@Ref) (f_35@@32 T@Field_12608_12612) ) (!  (=> (select (|PolymorphicMapType_19731_12608_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@32 f_35@@32) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@8) o2_34@@32 f_35@@32) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@32 f_35@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@32 f_35@@32))
))) (forall ((o2_34@@33 T@Ref) (f_35@@33 T@Field_12608_22772) ) (!  (=> (select (|PolymorphicMapType_19731_12608_63958#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@33 f_35@@33) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@8) o2_34@@33 f_35@@33) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@33 f_35@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@33 f_35@@33))
))) (forall ((o2_34@@34 T@Ref) (f_35@@34 T@Field_12611_1721) ) (!  (=> (select (|PolymorphicMapType_19731_22754_1721#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@34 f_35@@34) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@8) o2_34@@34 f_35@@34) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@34 f_35@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@34 f_35@@34))
))) (forall ((o2_34@@35 T@Ref) (f_35@@35 T@Field_12611_53) ) (!  (=> (select (|PolymorphicMapType_19731_22754_53#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@35 f_35@@35) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@8) o2_34@@35 f_35@@35) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@35 f_35@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@35 f_35@@35))
))) (forall ((o2_34@@36 T@Ref) (f_35@@36 T@Field_12611_19256) ) (!  (=> (select (|PolymorphicMapType_19731_22754_19256#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@36 f_35@@36) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@8) o2_34@@36 f_35@@36) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@36 f_35@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@36 f_35@@36))
))) (forall ((o2_34@@37 T@Ref) (f_35@@37 T@Field_22754_22755) ) (!  (=> (select (|PolymorphicMapType_19731_22754_22755#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@37 f_35@@37) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@8) o2_34@@37 f_35@@37) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@37 f_35@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@37 f_35@@37))
))) (forall ((o2_34@@38 T@Ref) (f_35@@38 T@Field_22767_22772) ) (!  (=> (select (|PolymorphicMapType_19731_22754_65006#PolymorphicMapType_19731| (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) null (WandMaskField_12611 pm_f_34@@6))) o2_34@@38 f_35@@38) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@8) o2_34@@38 f_35@@38) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@38 f_35@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@6) o2_34@@38 f_35@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_12611_65814 pm_f_34@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19182) (ExhaleHeap@@7 T@PolymorphicMapType_19182) (Mask@@8 T@PolymorphicMapType_19203) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@9) o_30 $allocated) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@7) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@7) o_30 $allocated))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_19182) (ExhaleHeap@@9 T@PolymorphicMapType_19182) (Mask@@30 T@PolymorphicMapType_19203) (o_30@@0 T@Ref) (f_35@@39 T@Field_12608_22772) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_12608_62198 Mask@@30 o_30@@0 f_35@@39) (= (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@11) o_30@@0 f_35@@39) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@9) o_30@@0 f_35@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| ExhaleHeap@@9) o_30@@0 f_35@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19182) (ExhaleHeap@@10 T@PolymorphicMapType_19182) (Mask@@31 T@PolymorphicMapType_19203) (o_30@@1 T@Ref) (f_35@@40 T@Field_19255_19256) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_12608_19256 Mask@@31 o_30@@1 f_35@@40) (= (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@12) o_30@@1 f_35@@40) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@10) o_30@@1 f_35@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| ExhaleHeap@@10) o_30@@1 f_35@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19182) (ExhaleHeap@@11 T@PolymorphicMapType_19182) (Mask@@32 T@PolymorphicMapType_19203) (o_30@@2 T@Ref) (f_35@@41 T@Field_19242_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_12608_53 Mask@@32 o_30@@2 f_35@@41) (= (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@13) o_30@@2 f_35@@41) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@11) o_30@@2 f_35@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| ExhaleHeap@@11) o_30@@2 f_35@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19182) (ExhaleHeap@@12 T@PolymorphicMapType_19182) (Mask@@33 T@PolymorphicMapType_19203) (o_30@@3 T@Ref) (f_35@@42 T@Field_22707_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_12608_1721 Mask@@33 o_30@@3 f_35@@42) (= (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@14) o_30@@3 f_35@@42) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@12) o_30@@3 f_35@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| ExhaleHeap@@12) o_30@@3 f_35@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19182) (ExhaleHeap@@13 T@PolymorphicMapType_19182) (Mask@@34 T@PolymorphicMapType_19203) (o_30@@4 T@Ref) (f_35@@43 T@Field_12608_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_12608_12612 Mask@@34 o_30@@4 f_35@@43) (= (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@15) o_30@@4 f_35@@43) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@13) o_30@@4 f_35@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| ExhaleHeap@@13) o_30@@4 f_35@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19182) (ExhaleHeap@@14 T@PolymorphicMapType_19182) (Mask@@35 T@PolymorphicMapType_19203) (o_30@@5 T@Ref) (f_35@@44 T@Field_22767_22772) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_12611_61125 Mask@@35 o_30@@5 f_35@@44) (= (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@16) o_30@@5 f_35@@44) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@14) o_30@@5 f_35@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| ExhaleHeap@@14) o_30@@5 f_35@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19182) (ExhaleHeap@@15 T@PolymorphicMapType_19182) (Mask@@36 T@PolymorphicMapType_19203) (o_30@@6 T@Ref) (f_35@@45 T@Field_12611_19256) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_12611_19256 Mask@@36 o_30@@6 f_35@@45) (= (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@17) o_30@@6 f_35@@45) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@15) o_30@@6 f_35@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| ExhaleHeap@@15) o_30@@6 f_35@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19182) (ExhaleHeap@@16 T@PolymorphicMapType_19182) (Mask@@37 T@PolymorphicMapType_19203) (o_30@@7 T@Ref) (f_35@@46 T@Field_12611_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_12611_53 Mask@@37 o_30@@7 f_35@@46) (= (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@18) o_30@@7 f_35@@46) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@16) o_30@@7 f_35@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| ExhaleHeap@@16) o_30@@7 f_35@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19182) (ExhaleHeap@@17 T@PolymorphicMapType_19182) (Mask@@38 T@PolymorphicMapType_19203) (o_30@@8 T@Ref) (f_35@@47 T@Field_12611_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_12611_1721 Mask@@38 o_30@@8 f_35@@47) (= (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@19) o_30@@8 f_35@@47) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@17) o_30@@8 f_35@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| ExhaleHeap@@17) o_30@@8 f_35@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19182) (ExhaleHeap@@18 T@PolymorphicMapType_19182) (Mask@@39 T@PolymorphicMapType_19203) (o_30@@9 T@Ref) (f_35@@48 T@Field_22754_22755) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_12611_12612 Mask@@39 o_30@@9 f_35@@48) (= (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@20) o_30@@9 f_35@@48) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@18) o_30@@9 f_35@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| ExhaleHeap@@18) o_30@@9 f_35@@48))
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
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len_1 a_2@@3) 0)
 :qid |stdinbpl.259:15|
 :skolemid |23|
 :pattern ( (len_1 a_2@@3))
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
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@5 Int) ) (!  (and (= (first (loc a_2@@6 i@@5)) a_2@@6) (= (second (loc a_2@@6 i@@5)) i@@5))
 :qid |stdinbpl.253:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19182) (o_6 T@Ref) (f_16 T@Field_22767_22772) (v T@PolymorphicMapType_19731) ) (! (succHeap Heap@@21 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@21) (store (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@21) o_6 f_16 v) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@21) (store (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@21) o_6 f_16 v) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@21) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19182) (o_6@@0 T@Ref) (f_16@@0 T@Field_12611_1721) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@22) (store (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@22) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@22) (store (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@22) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@22) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19182) (o_6@@1 T@Ref) (f_16@@1 T@Field_22754_22755) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@23) (store (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@23) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@23) (store (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@23) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@23) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19182) (o_6@@2 T@Ref) (f_16@@2 T@Field_12611_19256) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@24) (store (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@24) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@24) (store (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@24) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@24) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19182) (o_6@@3 T@Ref) (f_16@@3 T@Field_12611_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@25) (store (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@25) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@25) (store (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@25) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@25) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19182) (o_6@@4 T@Ref) (f_16@@4 T@Field_12608_22772) (v@@4 T@PolymorphicMapType_19731) ) (! (succHeap Heap@@26 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@26) (store (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@26) o_6@@4 f_16@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@26) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@26) (store (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@26) o_6@@4 f_16@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19182) (o_6@@5 T@Ref) (f_16@@5 T@Field_22707_1721) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@27) (store (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@27) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@27) (store (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@27) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@27) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19182) (o_6@@6 T@Ref) (f_16@@6 T@Field_12608_12612) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@28) (store (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@28) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@28) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@28) (store (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@28) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19182) (o_6@@7 T@Ref) (f_16@@7 T@Field_19255_19256) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@29) (store (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@29) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@29) (store (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@29) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@29) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19182) (o_6@@8 T@Ref) (f_16@@8 T@Field_19242_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_19182 (store (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@30) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19182 (store (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@30) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12615_33640#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_1721#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_53#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12611_19256#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_12612#PolymorphicMapType_19182| Heap@@30) (|PolymorphicMapType_19182_12608_62240#PolymorphicMapType_19182| Heap@@30)))
)))
(assert (forall ((o_6@@9 T@Ref) (f_9 T@Field_19255_19256) (Heap@@31 T@PolymorphicMapType_19182) ) (!  (=> (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@31) o_6@@9 $allocated) (select (|PolymorphicMapType_19182_12438_53#PolymorphicMapType_19182| Heap@@31) (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@31) o_6@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19182_12441_12442#PolymorphicMapType_19182| Heap@@31) o_6@@9 f_9))
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

