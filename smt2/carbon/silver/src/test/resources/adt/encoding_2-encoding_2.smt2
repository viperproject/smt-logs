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
(declare-sort T@Field_3624_53 0)
(declare-sort T@Field_3637_3638 0)
(declare-sort T@Field_3624_9127 0)
(declare-sort T@Field_3624_8994 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3585 0)) (((PolymorphicMapType_3585 (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| (Array T@Ref T@Field_3624_53 Real)) (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| (Array T@Ref T@Field_3637_3638 Real)) (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| (Array T@Ref T@Field_3624_8994 Real)) (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| (Array T@Ref T@Field_3624_9127 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4113 0)) (((PolymorphicMapType_4113 (|PolymorphicMapType_4113_3624_53#PolymorphicMapType_4113| (Array T@Ref T@Field_3624_53 Bool)) (|PolymorphicMapType_4113_3624_3638#PolymorphicMapType_4113| (Array T@Ref T@Field_3637_3638 Bool)) (|PolymorphicMapType_4113_3624_8994#PolymorphicMapType_4113| (Array T@Ref T@Field_3624_8994 Bool)) (|PolymorphicMapType_4113_3624_10107#PolymorphicMapType_4113| (Array T@Ref T@Field_3624_9127 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3564 0)) (((PolymorphicMapType_3564 (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| (Array T@Ref T@Field_3624_53 Bool)) (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| (Array T@Ref T@Field_3637_3638 T@Ref)) (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| (Array T@Ref T@Field_3624_9127 T@PolymorphicMapType_4113)) (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| (Array T@Ref T@Field_3624_8994 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3564 T@PolymorphicMapType_3564) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3564 T@PolymorphicMapType_3564) Bool)
(declare-fun state (T@PolymorphicMapType_3564 T@PolymorphicMapType_3585) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3585) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4113)
(declare-sort T@ADTDomainType_1751 0)
(declare-fun ADT_tag_1751 (T@ADTDomainType_1751) Int)
(declare-fun C1_1869 () T@ADTDomainType_1751)
(declare-fun C2_1930 (Bool T@ADTDomainType_1751) T@ADTDomainType_1751)
(declare-fun get_ADT_p21_1751 (T@ADTDomainType_1751) Bool)
(declare-fun get_ADT_p22_1751 (T@ADTDomainType_1751) T@ADTDomainType_1751)
(declare-fun C3_1751 (Int) T@ADTDomainType_1751)
(declare-fun get_ADT_p31_1751 (T@ADTDomainType_1751) Int)
(declare-sort T@ADTDomainType_1418 0)
(declare-fun C4_1751 (Bool T@ADTDomainType_1751 T@ADTDomainType_1418) T@ADTDomainType_1751)
(declare-fun get_ADT_p41_1751 (T@ADTDomainType_1751) Bool)
(declare-fun get_ADT_p42_1751 (T@ADTDomainType_1751) T@ADTDomainType_1751)
(declare-fun get_ADT_p43_1751 (T@ADTDomainType_1751) T@ADTDomainType_1418)
(declare-fun C5_1751 () T@ADTDomainType_1751)
(declare-fun C6_1751 () T@ADTDomainType_1751)
(declare-fun ADT_tag_1418 (T@ADTDomainType_1418) Int)
(declare-fun C1_1418 () T@ADTDomainType_1418)
(declare-fun C2_1418 (Int T@ADTDomainType_1418) T@ADTDomainType_1418)
(declare-fun get_ADT_p21_1418 (T@ADTDomainType_1418) Int)
(declare-fun get_ADT_p22_1418 (T@ADTDomainType_1418) T@ADTDomainType_1418)
(declare-fun C3_1418 (Int) T@ADTDomainType_1418)
(declare-fun get_ADT_p31_1418 (T@ADTDomainType_1418) Int)
(declare-fun C4_1418 (Bool T@ADTDomainType_1418 T@ADTDomainType_1418) T@ADTDomainType_1418)
(declare-fun get_ADT_p41_1418 (T@ADTDomainType_1418) Bool)
(declare-fun get_ADT_p42_1418 (T@ADTDomainType_1418) T@ADTDomainType_1418)
(declare-fun get_ADT_p43_1418 (T@ADTDomainType_1418) T@ADTDomainType_1418)
(declare-fun C5_1418 () T@ADTDomainType_1418)
(declare-fun C6_1418 () T@ADTDomainType_1418)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3564 T@PolymorphicMapType_3564 T@PolymorphicMapType_3585) Bool)
(declare-fun IsPredicateField_3624_9085 (T@Field_3624_8994) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3624 (T@Field_3624_8994) T@Field_3624_9127)
(declare-fun HasDirectPerm_3624_9058 (T@PolymorphicMapType_3585 T@Ref T@Field_3624_8994) Bool)
(declare-fun IsWandField_3624_10634 (T@Field_3624_8994) Bool)
(declare-fun WandMaskField_3624 (T@Field_3624_8994) T@Field_3624_9127)
(declare-fun dummyHeap () T@PolymorphicMapType_3564)
(declare-fun ZeroMask () T@PolymorphicMapType_3585)
(declare-fun $allocated () T@Field_3624_53)
(declare-fun InsidePredicate_3624_3624 (T@Field_3624_8994 T@FrameType T@Field_3624_8994 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3624_13597 (T@Field_3624_9127) Bool)
(declare-fun IsWandField_3624_13613 (T@Field_3624_9127) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3624_3638 (T@Field_3637_3638) Bool)
(declare-fun IsWandField_3624_3638 (T@Field_3637_3638) Bool)
(declare-fun IsPredicateField_3624_53 (T@Field_3624_53) Bool)
(declare-fun IsWandField_3624_53 (T@Field_3624_53) Bool)
(declare-fun HasDirectPerm_3624_13968 (T@PolymorphicMapType_3585 T@Ref T@Field_3624_9127) Bool)
(declare-fun HasDirectPerm_3624_3638 (T@PolymorphicMapType_3585 T@Ref T@Field_3637_3638) Bool)
(declare-fun HasDirectPerm_3624_53 (T@PolymorphicMapType_3585 T@Ref T@Field_3624_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3585 T@PolymorphicMapType_3585 T@PolymorphicMapType_3585) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3564) (Heap1 T@PolymorphicMapType_3564) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3564) (Mask T@PolymorphicMapType_3585) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3564) (Heap1@@0 T@PolymorphicMapType_3564) (Heap2 T@PolymorphicMapType_3564) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3624_9127) ) (!  (not (select (|PolymorphicMapType_4113_3624_10107#PolymorphicMapType_4113| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4113_3624_10107#PolymorphicMapType_4113| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3624_8994) ) (!  (not (select (|PolymorphicMapType_4113_3624_8994#PolymorphicMapType_4113| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4113_3624_8994#PolymorphicMapType_4113| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3637_3638) ) (!  (not (select (|PolymorphicMapType_4113_3624_3638#PolymorphicMapType_4113| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4113_3624_3638#PolymorphicMapType_4113| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3624_53) ) (!  (not (select (|PolymorphicMapType_4113_3624_53#PolymorphicMapType_4113| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4113_3624_53#PolymorphicMapType_4113| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((t_2 T@ADTDomainType_1751) ) (!  (or (or (or (or (or (= t_2 C1_1869) (= t_2 (C2_1930 (get_ADT_p21_1751 t_2) (get_ADT_p22_1751 t_2)))) (= t_2 (C3_1751 (get_ADT_p31_1751 t_2)))) (= t_2 (C4_1751 (get_ADT_p41_1751 t_2) (get_ADT_p42_1751 t_2) (get_ADT_p43_1751 t_2)))) (= t_2 C5_1751)) (= t_2 C6_1751))
 :qid |stdinbpl.295:19|
 :skolemid |34|
 :pattern ( (ADT_tag_1751 t_2))
)))
(assert (forall ((t_2@@0 T@ADTDomainType_1418) ) (!  (or (or (or (or (or (= t_2@@0 C1_1418) (= t_2@@0 (C2_1418 (get_ADT_p21_1418 t_2@@0) (get_ADT_p22_1418 t_2@@0)))) (= t_2@@0 (C3_1418 (get_ADT_p31_1418 t_2@@0)))) (= t_2@@0 (C4_1418 (get_ADT_p41_1418 t_2@@0) (get_ADT_p42_1418 t_2@@0) (get_ADT_p43_1418 t_2@@0)))) (= t_2@@0 C5_1418)) (= t_2@@0 C6_1418))
 :qid |stdinbpl.295:19|
 :skolemid |34|
 :pattern ( (ADT_tag_1418 t_2@@0))
)))
(assert (forall ((p41_1 Bool) (p42_1 T@ADTDomainType_1418) (p43_1 T@ADTDomainType_1418) ) (! (= (ADT_tag_1418 (C4_1418 p41_1 p42_1 p43_1)) 3)
 :qid |stdinbpl.277:19|
 :skolemid |31|
 :pattern ( (C4_1418 p41_1 p42_1 p43_1))
)))
(assert (forall ((p41_1@@0 Bool) (p42_1@@0 T@ADTDomainType_1751) (p43_1@@0 T@ADTDomainType_1418) ) (! (= (ADT_tag_1751 (C4_1751 p41_1@@0 p42_1@@0 p43_1@@0)) 3)
 :qid |stdinbpl.277:19|
 :skolemid |31|
 :pattern ( (C4_1751 p41_1@@0 p42_1@@0 p43_1@@0))
)))
(assert (= (ADT_tag_1418 C1_1418) 0))
(assert (= (ADT_tag_1751 C1_1869) 0))
(assert (= (ADT_tag_1418 C5_1418) 4))
(assert (= (ADT_tag_1751 C5_1751) 4))
(assert (= (ADT_tag_1418 C6_1418) 5))
(assert (= (ADT_tag_1751 C6_1751) 5))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3564) (ExhaleHeap T@PolymorphicMapType_3564) (Mask@@0 T@PolymorphicMapType_3585) (pm_f T@Field_3624_8994) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3624_9058 Mask@@0 null pm_f) (IsPredicateField_3624_9085 pm_f)) (= (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@0) null (PredicateMaskField_3624 pm_f)) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap) null (PredicateMaskField_3624 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3624_9085 pm_f) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap) null (PredicateMaskField_3624 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3564) (ExhaleHeap@@0 T@PolymorphicMapType_3564) (Mask@@1 T@PolymorphicMapType_3585) (pm_f@@0 T@Field_3624_8994) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3624_9058 Mask@@1 null pm_f@@0) (IsWandField_3624_10634 pm_f@@0)) (= (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@1) null (WandMaskField_3624 pm_f@@0)) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@0) null (WandMaskField_3624 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3624_10634 pm_f@@0) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@0) null (WandMaskField_3624 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3564) (ExhaleHeap@@1 T@PolymorphicMapType_3564) (Mask@@2 T@PolymorphicMapType_3585) (pm_f@@1 T@Field_3624_8994) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3624_9058 Mask@@2 null pm_f@@1) (IsPredicateField_3624_9085 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3624_53) ) (!  (=> (select (|PolymorphicMapType_4113_3624_53#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@2) null (PredicateMaskField_3624 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@2) o2 f_2) (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3637_3638) ) (!  (=> (select (|PolymorphicMapType_4113_3624_3638#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@2) null (PredicateMaskField_3624 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3624_8994) ) (!  (=> (select (|PolymorphicMapType_4113_3624_8994#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@2) null (PredicateMaskField_3624 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3624_9127) ) (!  (=> (select (|PolymorphicMapType_4113_3624_10107#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@2) null (PredicateMaskField_3624 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3624_9085 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3564) (ExhaleHeap@@2 T@PolymorphicMapType_3564) (Mask@@3 T@PolymorphicMapType_3585) (pm_f@@2 T@Field_3624_8994) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3624_9058 Mask@@3 null pm_f@@2) (IsWandField_3624_10634 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3624_53) ) (!  (=> (select (|PolymorphicMapType_4113_3624_53#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@3) null (WandMaskField_3624 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3637_3638) ) (!  (=> (select (|PolymorphicMapType_4113_3624_3638#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@3) null (WandMaskField_3624 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3624_8994) ) (!  (=> (select (|PolymorphicMapType_4113_3624_8994#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@3) null (WandMaskField_3624 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3624_9127) ) (!  (=> (select (|PolymorphicMapType_4113_3624_10107#PolymorphicMapType_4113| (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@3) null (WandMaskField_3624 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3624_10634 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3564) (ExhaleHeap@@3 T@PolymorphicMapType_3564) (Mask@@4 T@PolymorphicMapType_3585) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3624_8994) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3624_3624 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3624_3624 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3564) (ExhaleHeap@@4 T@PolymorphicMapType_3564) (Mask@@5 T@PolymorphicMapType_3585) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3585) (o_2@@3 T@Ref) (f_4@@3 T@Field_3624_9127) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3624_13597 f_4@@3))) (not (IsWandField_3624_13613 f_4@@3))) (<= (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3585) (o_2@@4 T@Ref) (f_4@@4 T@Field_3624_8994) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3624_9085 f_4@@4))) (not (IsWandField_3624_10634 f_4@@4))) (<= (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3585) (o_2@@5 T@Ref) (f_4@@5 T@Field_3637_3638) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3624_3638 f_4@@5))) (not (IsWandField_3624_3638 f_4@@5))) (<= (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3585) (o_2@@6 T@Ref) (f_4@@6 T@Field_3624_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3624_53 f_4@@6))) (not (IsWandField_3624_53 f_4@@6))) (<= (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3585) (o_2@@7 T@Ref) (f_4@@7 T@Field_3624_9127) ) (! (= (HasDirectPerm_3624_13968 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_13968 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3585) (o_2@@8 T@Ref) (f_4@@8 T@Field_3624_8994) ) (! (= (HasDirectPerm_3624_9058 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_9058 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3585) (o_2@@9 T@Ref) (f_4@@9 T@Field_3637_3638) ) (! (= (HasDirectPerm_3624_3638 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_3638 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3585) (o_2@@10 T@Ref) (f_4@@10 T@Field_3624_53) ) (! (= (HasDirectPerm_3624_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3564) (ExhaleHeap@@5 T@PolymorphicMapType_3564) (Mask@@14 T@PolymorphicMapType_3585) (o_1@@0 T@Ref) (f_2@@7 T@Field_3624_9127) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3624_13968 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3564) (ExhaleHeap@@6 T@PolymorphicMapType_3564) (Mask@@15 T@PolymorphicMapType_3585) (o_1@@1 T@Ref) (f_2@@8 T@Field_3624_8994) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3624_9058 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3564) (ExhaleHeap@@7 T@PolymorphicMapType_3564) (Mask@@16 T@PolymorphicMapType_3585) (o_1@@2 T@Ref) (f_2@@9 T@Field_3637_3638) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3624_3638 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3564) (ExhaleHeap@@8 T@PolymorphicMapType_3564) (Mask@@17 T@PolymorphicMapType_3585) (o_1@@3 T@Ref) (f_2@@10 T@Field_3624_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3624_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3624_9127) ) (! (= (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3624_8994) ) (! (= (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3637_3638) ) (! (= (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3624_53) ) (! (= (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3585) (SummandMask1 T@PolymorphicMapType_3585) (SummandMask2 T@PolymorphicMapType_3585) (o_2@@15 T@Ref) (f_4@@15 T@Field_3624_9127) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3585_3624_12688#PolymorphicMapType_3585| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3585) (SummandMask1@@0 T@PolymorphicMapType_3585) (SummandMask2@@0 T@PolymorphicMapType_3585) (o_2@@16 T@Ref) (f_4@@16 T@Field_3624_8994) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3585_3624_8994#PolymorphicMapType_3585| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3585) (SummandMask1@@1 T@PolymorphicMapType_3585) (SummandMask2@@1 T@PolymorphicMapType_3585) (o_2@@17 T@Ref) (f_4@@17 T@Field_3637_3638) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3585_3624_3638#PolymorphicMapType_3585| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3585) (SummandMask1@@2 T@PolymorphicMapType_3585) (SummandMask2@@2 T@PolymorphicMapType_3585) (o_2@@18 T@Ref) (f_4@@18 T@Field_3624_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3585_3624_53#PolymorphicMapType_3585| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((p41_1@@1 Bool) (p42_1@@1 T@ADTDomainType_1751) (p43_1@@1 T@ADTDomainType_1418) ) (! (= p41_1@@1 (get_ADT_p41_1751 (C4_1751 p41_1@@1 p42_1@@1 p43_1@@1)))
 :qid |stdinbpl.241:19|
 :skolemid |25|
 :pattern ( (C4_1751 p41_1@@1 p42_1@@1 p43_1@@1))
)))
(assert (forall ((p41_1@@2 Bool) (p42_1@@2 T@ADTDomainType_1418) (p43_1@@2 T@ADTDomainType_1418) ) (! (= p41_1@@2 (get_ADT_p41_1418 (C4_1418 p41_1@@2 p42_1@@2 p43_1@@2)))
 :qid |stdinbpl.241:19|
 :skolemid |25|
 :pattern ( (C4_1418 p41_1@@2 p42_1@@2 p43_1@@2))
)))
(assert (forall ((p21_1 Int) (p22_1 T@ADTDomainType_1418) ) (! (= (ADT_tag_1418 (C2_1418 p21_1 p22_1)) 1)
 :qid |stdinbpl.265:19|
 :skolemid |29|
 :pattern ( (C2_1418 p21_1 p22_1))
)))
(assert (forall ((p21_1@@0 Bool) (p22_1@@0 T@ADTDomainType_1751) ) (! (= (ADT_tag_1751 (C2_1930 p21_1@@0 p22_1@@0)) 1)
 :qid |stdinbpl.265:19|
 :skolemid |29|
 :pattern ( (C2_1930 p21_1@@0 p22_1@@0))
)))
(assert (forall ((p31_1 Int) ) (! (= (ADT_tag_1418 (C3_1418 p31_1)) 2)
 :qid |stdinbpl.271:19|
 :skolemid |30|
 :pattern ( (C3_1418 p31_1))
)))
(assert (forall ((p31_1@@0 Int) ) (! (= (ADT_tag_1751 (C3_1751 p31_1@@0)) 2)
 :qid |stdinbpl.271:19|
 :skolemid |30|
 :pattern ( (C3_1751 p31_1@@0))
)))
(assert (forall ((p41_1@@3 Bool) (p42_1@@3 T@ADTDomainType_1751) (p43_1@@3 T@ADTDomainType_1418) ) (! (= p42_1@@3 (get_ADT_p42_1751 (C4_1751 p41_1@@3 p42_1@@3 p43_1@@3)))
 :qid |stdinbpl.247:19|
 :skolemid |26|
 :pattern ( (C4_1751 p41_1@@3 p42_1@@3 p43_1@@3))
)))
(assert (forall ((p41_1@@4 Bool) (p42_1@@4 T@ADTDomainType_1418) (p43_1@@4 T@ADTDomainType_1418) ) (! (= p42_1@@4 (get_ADT_p42_1418 (C4_1418 p41_1@@4 p42_1@@4 p43_1@@4)))
 :qid |stdinbpl.247:19|
 :skolemid |26|
 :pattern ( (C4_1418 p41_1@@4 p42_1@@4 p43_1@@4))
)))
(assert (forall ((p41_1@@5 Bool) (p42_1@@5 T@ADTDomainType_1751) (p43_1@@5 T@ADTDomainType_1418) ) (! (= p43_1@@5 (get_ADT_p43_1751 (C4_1751 p41_1@@5 p42_1@@5 p43_1@@5)))
 :qid |stdinbpl.253:19|
 :skolemid |27|
 :pattern ( (C4_1751 p41_1@@5 p42_1@@5 p43_1@@5))
)))
(assert (forall ((p41_1@@6 Bool) (p42_1@@6 T@ADTDomainType_1418) (p43_1@@6 T@ADTDomainType_1418) ) (! (= p43_1@@6 (get_ADT_p43_1418 (C4_1418 p41_1@@6 p42_1@@6 p43_1@@6)))
 :qid |stdinbpl.253:19|
 :skolemid |27|
 :pattern ( (C4_1418 p41_1@@6 p42_1@@6 p43_1@@6))
)))
(assert (forall ((p21_1@@1 Int) (p22_1@@1 T@ADTDomainType_1418) ) (! (= p21_1@@1 (get_ADT_p21_1418 (C2_1418 p21_1@@1 p22_1@@1)))
 :qid |stdinbpl.223:19|
 :skolemid |22|
 :pattern ( (C2_1418 p21_1@@1 p22_1@@1))
)))
(assert (forall ((p21_1@@2 Bool) (p22_1@@2 T@ADTDomainType_1751) ) (! (= p21_1@@2 (get_ADT_p21_1751 (C2_1930 p21_1@@2 p22_1@@2)))
 :qid |stdinbpl.223:19|
 :skolemid |22|
 :pattern ( (C2_1930 p21_1@@2 p22_1@@2))
)))
(assert (forall ((p21_1@@3 Bool) (p22_1@@3 T@ADTDomainType_1751) ) (! (= p22_1@@3 (get_ADT_p22_1751 (C2_1930 p21_1@@3 p22_1@@3)))
 :qid |stdinbpl.229:19|
 :skolemid |23|
 :pattern ( (C2_1930 p21_1@@3 p22_1@@3))
)))
(assert (forall ((p21_1@@4 Int) (p22_1@@4 T@ADTDomainType_1418) ) (! (= p22_1@@4 (get_ADT_p22_1418 (C2_1418 p21_1@@4 p22_1@@4)))
 :qid |stdinbpl.229:19|
 :skolemid |23|
 :pattern ( (C2_1418 p21_1@@4 p22_1@@4))
)))
(assert (forall ((p31_1@@1 Int) ) (! (= p31_1@@1 (get_ADT_p31_1751 (C3_1751 p31_1@@1)))
 :qid |stdinbpl.235:19|
 :skolemid |24|
 :pattern ( (C3_1751 p31_1@@1))
)))
(assert (forall ((p31_1@@2 Int) ) (! (= p31_1@@2 (get_ADT_p31_1418 (C3_1418 p31_1@@2)))
 :qid |stdinbpl.235:19|
 :skolemid |24|
 :pattern ( (C3_1418 p31_1@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3564) (o T@Ref) (f_3 T@Field_3624_8994) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_3564 (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@10) (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@10) (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@10) (store (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@10) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3564 (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@10) (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@10) (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@10) (store (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@10) o f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3564) (o@@0 T@Ref) (f_3@@0 T@Field_3624_9127) (v@@0 T@PolymorphicMapType_4113) ) (! (succHeap Heap@@11 (PolymorphicMapType_3564 (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@11) (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@11) (store (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3564 (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@11) (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@11) (store (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3564) (o@@1 T@Ref) (f_3@@1 T@Field_3637_3638) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_3564 (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@12) (store (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@12) (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3564 (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@12) (store (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@12) (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3564) (o@@2 T@Ref) (f_3@@2 T@Field_3624_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_3564 (store (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@13) (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@13) (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3564 (store (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@13) (|PolymorphicMapType_3564_3624_9171#PolymorphicMapType_3564| Heap@@13) (|PolymorphicMapType_3564_3624_8994#PolymorphicMapType_3564| Heap@@13)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3637_3638) (Heap@@14 T@PolymorphicMapType_3564) ) (!  (=> (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_3564_1985_53#PolymorphicMapType_3564| Heap@@14) (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3564_1988_1989#PolymorphicMapType_3564| Heap@@14) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3624_8994) (v_1@@0 T@FrameType) (q T@Field_3624_8994) (w@@0 T@FrameType) (r T@Field_3624_8994) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3624_3624 p@@1 v_1@@0 q w@@0) (InsidePredicate_3624_3624 q w@@0 r u)) (InsidePredicate_3624_3624 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3624_3624 p@@1 v_1@@0 q w@@0) (InsidePredicate_3624_3624 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_3564)
(declare-fun a_2 () T@ADTDomainType_1751)
(set-info :boogie-vc-id encoding_2)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon2_correct  (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (= (= (ADT_tag_1751 a_2) 1) (= a_2 (C2_1930 (get_ADT_p21_1751 a_2) (get_ADT_p22_1751 a_2)))))))
(let ((anon3_Else_correct  (=> (and (not (= (ADT_tag_1751 a_2) 1)) (= (ControlFlow 0 5) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (= (ADT_tag_1751 a_2) 1) (and (=> (= (ControlFlow 0 3) (- 0 4)) (not (= a_2 C1_1869))) (=> (not (= a_2 C1_1869)) (=> (= (ControlFlow 0 3) 2) anon2_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 6) (- 0 8)) (or (= (ADT_tag_1751 a_2) 0) (or (= (ADT_tag_1751 a_2) 1) (or (= (ADT_tag_1751 a_2) 2) (or (= (ADT_tag_1751 a_2) 3) (or (= (ADT_tag_1751 a_2) 4) (= (ADT_tag_1751 a_2) 5))))))) (=> (or (= (ADT_tag_1751 a_2) 0) (or (= (ADT_tag_1751 a_2) 1) (or (= (ADT_tag_1751 a_2) 2) (or (= (ADT_tag_1751 a_2) 3) (or (= (ADT_tag_1751 a_2) 4) (= (ADT_tag_1751 a_2) 5)))))) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= (= (ADT_tag_1751 a_2) 0) (= a_2 C1_1869))) (=> (= (= (ADT_tag_1751 a_2) 0) (= a_2 C1_1869)) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 6) 3) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 6) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
