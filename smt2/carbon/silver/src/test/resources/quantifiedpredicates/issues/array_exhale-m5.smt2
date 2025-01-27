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
(declare-sort T@Field_22668_53 0)
(declare-sort T@Field_22681_22682 0)
(declare-sort T@Field_28956_28957 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_28909_3961 0)
(declare-sort T@Field_22668_28957 0)
(declare-sort T@Field_22668_28974 0)
(declare-sort T@Field_28956_53 0)
(declare-sort T@Field_28956_22682 0)
(declare-sort T@Field_28956_3961 0)
(declare-sort T@Field_28969_28974 0)
(declare-datatypes ((T@PolymorphicMapType_22629 0)) (((PolymorphicMapType_22629 (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| (Array T@Ref T@Field_28909_3961 Real)) (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_28957 Real)) (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| (Array T@Ref T@Field_22668_28957 Real)) (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| (Array T@Ref T@Field_22668_53 Real)) (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| (Array T@Ref T@Field_22681_22682 Real)) (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| (Array T@Ref T@Field_22668_28974 Real)) (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_3961 Real)) (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_53 Real)) (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_22682 Real)) (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| (Array T@Ref T@Field_28969_28974 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23157 0)) (((PolymorphicMapType_23157 (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (Array T@Ref T@Field_22668_53 Bool)) (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (Array T@Ref T@Field_22681_22682 Bool)) (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (Array T@Ref T@Field_28909_3961 Bool)) (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (Array T@Ref T@Field_22668_28957 Bool)) (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (Array T@Ref T@Field_22668_28974 Bool)) (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_53 Bool)) (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_22682 Bool)) (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_3961 Bool)) (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_28957 Bool)) (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (Array T@Ref T@Field_28969_28974 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22608 0)) (((PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| (Array T@Ref T@Field_22668_53 Bool)) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| (Array T@Ref T@Field_22681_22682 T@Ref)) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_28957 T@FrameType)) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| (Array T@Ref T@Field_28909_3961 Int)) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| (Array T@Ref T@Field_22668_28957 T@FrameType)) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| (Array T@Ref T@Field_22668_28974 T@PolymorphicMapType_23157)) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_53 Bool)) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_22682 T@Ref)) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_3961 Int)) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| (Array T@Ref T@Field_28969_28974 T@PolymorphicMapType_23157)) ) ) ))
(declare-fun $allocated () T@Field_22668_53)
(declare-fun val () T@Field_28909_3961)
(declare-sort T@Seq_3704 0)
(declare-fun |Seq#Length_3704| (T@Seq_3704) Int)
(declare-fun |Seq#Drop_3704| (T@Seq_3704 Int) T@Seq_3704)
(declare-fun succHeap (T@PolymorphicMapType_22608 T@PolymorphicMapType_22608) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22608 T@PolymorphicMapType_22608) Bool)
(declare-fun state (T@PolymorphicMapType_22608 T@PolymorphicMapType_22629) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22629) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_23157)
(declare-sort T@IArrayDomainType 0)
(declare-fun p_2 (T@IArrayDomainType Int) T@Field_28956_28957)
(declare-fun IsPredicateField_15997_15998 (T@Field_28956_28957) Bool)
(declare-fun |p#trigger_15997| (T@PolymorphicMapType_22608 T@Field_28956_28957) Bool)
(declare-fun |p#everUsed_15997| (T@Field_28956_28957) Bool)
(declare-fun |Seq#Index_3704| (T@Seq_3704 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3704| () T@Seq_3704)
(declare-fun |Seq#Update_3704| (T@Seq_3704 Int Int) T@Seq_3704)
(declare-fun |Seq#Take_3704| (T@Seq_3704 Int) T@Seq_3704)
(declare-fun |Seq#Contains_3704| (T@Seq_3704 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3704)
(declare-fun |Seq#Skolem_3704| (T@Seq_3704 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22608 T@PolymorphicMapType_22608 T@PolymorphicMapType_22629) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_15997 (T@Field_28956_28957) T@Field_28969_28974)
(declare-fun HasDirectPerm_28956_28957 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_28957) Bool)
(declare-fun IsPredicateField_22668_67328 (T@Field_22668_28957) Bool)
(declare-fun PredicateMaskField_22668 (T@Field_22668_28957) T@Field_22668_28974)
(declare-fun HasDirectPerm_22668_28957 (T@PolymorphicMapType_22629 T@Ref T@Field_22668_28957) Bool)
(declare-fun IsWandField_28956_71025 (T@Field_28956_28957) Bool)
(declare-fun WandMaskField_28956 (T@Field_28956_28957) T@Field_28969_28974)
(declare-fun IsWandField_22668_70668 (T@Field_22668_28957) Bool)
(declare-fun WandMaskField_22668 (T@Field_22668_28957) T@Field_22668_28974)
(declare-fun |Seq#Singleton_3704| (Int) T@Seq_3704)
(declare-fun |p#sm| (T@IArrayDomainType Int) T@Field_28969_28974)
(declare-fun |Seq#Append_3704| (T@Seq_3704 T@Seq_3704) T@Seq_3704)
(declare-fun dummyHeap () T@PolymorphicMapType_22608)
(declare-fun ZeroMask () T@PolymorphicMapType_22629)
(declare-fun InsidePredicate_28956_28956 (T@Field_28956_28957 T@FrameType T@Field_28956_28957 T@FrameType) Bool)
(declare-fun InsidePredicate_22668_22668 (T@Field_22668_28957 T@FrameType T@Field_22668_28957 T@FrameType) Bool)
(declare-fun IsPredicateField_15994_3961 (T@Field_28909_3961) Bool)
(declare-fun IsWandField_15994_3961 (T@Field_28909_3961) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_15997_77957 (T@Field_28969_28974) Bool)
(declare-fun IsWandField_15997_77973 (T@Field_28969_28974) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_15997_22682 (T@Field_28956_22682) Bool)
(declare-fun IsWandField_15997_22682 (T@Field_28956_22682) Bool)
(declare-fun IsPredicateField_15997_53 (T@Field_28956_53) Bool)
(declare-fun IsWandField_15997_53 (T@Field_28956_53) Bool)
(declare-fun IsPredicateField_15997_3961 (T@Field_28956_3961) Bool)
(declare-fun IsWandField_15997_3961 (T@Field_28956_3961) Bool)
(declare-fun IsPredicateField_15994_77126 (T@Field_22668_28974) Bool)
(declare-fun IsWandField_15994_77142 (T@Field_22668_28974) Bool)
(declare-fun IsPredicateField_15994_22682 (T@Field_22681_22682) Bool)
(declare-fun IsWandField_15994_22682 (T@Field_22681_22682) Bool)
(declare-fun IsPredicateField_15994_53 (T@Field_22668_53) Bool)
(declare-fun IsWandField_15994_53 (T@Field_22668_53) Bool)
(declare-fun HasDirectPerm_28956_67040 (T@PolymorphicMapType_22629 T@Ref T@Field_28969_28974) Bool)
(declare-fun HasDirectPerm_28956_3961 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_3961) Bool)
(declare-fun HasDirectPerm_28956_22682 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_22682) Bool)
(declare-fun HasDirectPerm_28956_53 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_53) Bool)
(declare-fun HasDirectPerm_22668_65879 (T@PolymorphicMapType_22629 T@Ref T@Field_22668_28974) Bool)
(declare-fun HasDirectPerm_22668_3961 (T@PolymorphicMapType_22629 T@Ref T@Field_28909_3961) Bool)
(declare-fun HasDirectPerm_22668_22682 (T@PolymorphicMapType_22629 T@Ref T@Field_22681_22682) Bool)
(declare-fun HasDirectPerm_22668_53 (T@PolymorphicMapType_22629 T@Ref T@Field_22668_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22629 T@PolymorphicMapType_22629 T@PolymorphicMapType_22629) Bool)
(declare-fun |Seq#Equal_3704| (T@Seq_3704 T@Seq_3704) Bool)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_3704| (T@Seq_3704 Int) Bool)
(declare-fun getPredWandId_15997_15998 (T@Field_28956_28957) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun loc_limited (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_3704| (T@Seq_3704 T@Seq_3704) Int)
(declare-fun InsidePredicate_28956_22668 (T@Field_28956_28957 T@FrameType T@Field_22668_28957 T@FrameType) Bool)
(declare-fun InsidePredicate_22668_28956 (T@Field_22668_28957 T@FrameType T@Field_28956_28957 T@FrameType) Bool)
(assert (forall ((s T@Seq_3704) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3704| s)) (= (|Seq#Length_3704| (|Seq#Drop_3704| s n)) (- (|Seq#Length_3704| s) n))) (=> (< (|Seq#Length_3704| s) n) (= (|Seq#Length_3704| (|Seq#Drop_3704| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3704| (|Seq#Drop_3704| s n)) (|Seq#Length_3704| s))))
 :qid |stdinbpl.375:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3704| (|Seq#Drop_3704| s n)))
 :pattern ( (|Seq#Length_3704| s) (|Seq#Drop_3704| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_22608) (Heap1 T@PolymorphicMapType_22608) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22608) (Mask T@PolymorphicMapType_22629) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22608) (Heap1@@0 T@PolymorphicMapType_22608) (Heap2 T@PolymorphicMapType_22608) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_28969_28974) ) (!  (not (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28956_28957) ) (!  (not (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28956_3961) ) (!  (not (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_28956_22682) ) (!  (not (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_28956_53) ) (!  (not (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_22668_28974) ) (!  (not (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_22668_28957) ) (!  (not (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_28909_3961) ) (!  (not (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22681_22682) ) (!  (not (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_22668_53) ) (!  (not (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@IArrayDomainType) (i Int) ) (! (IsPredicateField_15997_15998 (p_2 a_2 i))
 :qid |stdinbpl.701:15|
 :skolemid |62|
 :pattern ( (p_2 a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22608) (a_2@@0 T@IArrayDomainType) (i@@0 Int) ) (! (|p#everUsed_15997| (p_2 a_2@@0 i@@0))
 :qid |stdinbpl.720:15|
 :skolemid |66|
 :pattern ( (|p#trigger_15997| Heap@@0 (p_2 a_2@@0 i@@0)))
)))
(assert (forall ((s@@0 T@Seq_3704) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3704| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3704| (|Seq#Drop_3704| s@@0 n@@0) j) (|Seq#Index_3704| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.396:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3704| (|Seq#Drop_3704| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3704| |Seq#Empty_3704|) 0))
(assert (forall ((s@@1 T@Seq_3704) (i@@1 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3704| s@@1))) (and (=> (= i@@1 n@@1) (= (|Seq#Index_3704| (|Seq#Update_3704| s@@1 i@@1 v) n@@1) v)) (=> (not (= i@@1 n@@1)) (= (|Seq#Index_3704| (|Seq#Update_3704| s@@1 i@@1 v) n@@1) (|Seq#Index_3704| s@@1 n@@1)))))
 :qid |stdinbpl.351:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3704| (|Seq#Update_3704| s@@1 i@@1 v) n@@1))
 :pattern ( (|Seq#Index_3704| s@@1 n@@1) (|Seq#Update_3704| s@@1 i@@1 v))
)))
(assert (forall ((s@@2 T@Seq_3704) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3704| s@@2)) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3704| s@@2) n@@2) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)) (|Seq#Length_3704| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)) 0)))
 :qid |stdinbpl.362:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)))
 :pattern ( (|Seq#Take_3704| s@@2 n@@2) (|Seq#Length_3704| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3704| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.636:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3704) (x Int) ) (!  (=> (|Seq#Contains_3704| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3704| s@@3 x)) (< (|Seq#Skolem_3704| s@@3 x) (|Seq#Length_3704| s@@3))) (= (|Seq#Index_3704| s@@3 (|Seq#Skolem_3704| s@@3 x)) x)))
 :qid |stdinbpl.494:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3704| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_3704) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3704| s@@4 n@@3) s@@4))
 :qid |stdinbpl.478:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3704| s@@4 n@@3))
)))
(assert (forall ((i@@2 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@2 j@@0) (- i@@2 j@@0))
 :qid |stdinbpl.331:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@0))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@3 j@@1) (+ i@@3 j@@1))
 :qid |stdinbpl.329:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22608) (ExhaleHeap T@PolymorphicMapType_22608) (Mask@@0 T@PolymorphicMapType_22629) (pm_f_38 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_28956_28957 Mask@@0 null pm_f_38) (IsPredicateField_15997_15998 pm_f_38)) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@1) null (PredicateMaskField_15997 pm_f_38)) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap) null (PredicateMaskField_15997 pm_f_38)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_15997_15998 pm_f_38) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap) null (PredicateMaskField_15997 pm_f_38)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22608) (ExhaleHeap@@0 T@PolymorphicMapType_22608) (Mask@@1 T@PolymorphicMapType_22629) (pm_f_38@@0 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_22668_28957 Mask@@1 null pm_f_38@@0) (IsPredicateField_22668_67328 pm_f_38@@0)) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@2) null (PredicateMaskField_22668 pm_f_38@@0)) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@0) null (PredicateMaskField_22668 pm_f_38@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_22668_67328 pm_f_38@@0) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@0) null (PredicateMaskField_22668 pm_f_38@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22608) (ExhaleHeap@@1 T@PolymorphicMapType_22608) (Mask@@2 T@PolymorphicMapType_22629) (pm_f_38@@1 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_28956_28957 Mask@@2 null pm_f_38@@1) (IsWandField_28956_71025 pm_f_38@@1)) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@3) null (WandMaskField_28956 pm_f_38@@1)) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@1) null (WandMaskField_28956 pm_f_38@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_28956_71025 pm_f_38@@1) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@1) null (WandMaskField_28956 pm_f_38@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22608) (ExhaleHeap@@2 T@PolymorphicMapType_22608) (Mask@@3 T@PolymorphicMapType_22629) (pm_f_38@@2 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_22668_28957 Mask@@3 null pm_f_38@@2) (IsWandField_22668_70668 pm_f_38@@2)) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@4) null (WandMaskField_22668 pm_f_38@@2)) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@2) null (WandMaskField_22668 pm_f_38@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_22668_70668 pm_f_38@@2) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@2) null (WandMaskField_22668 pm_f_38@@2)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3704| (|Seq#Singleton_3704| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.619:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3704| (|Seq#Singleton_3704| x@@0) y))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@4 Int) (a2 T@IArrayDomainType) (i2 Int) ) (!  (=> (= (p_2 a_2@@1 i@@4) (p_2 a2 i2)) (and (= a_2@@1 a2) (= i@@4 i2)))
 :qid |stdinbpl.711:15|
 :skolemid |64|
 :pattern ( (p_2 a_2@@1 i@@4) (p_2 a2 i2))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@5 Int) (a2@@0 T@IArrayDomainType) (i2@@0 Int) ) (!  (=> (= (|p#sm| a_2@@2 i@@5) (|p#sm| a2@@0 i2@@0)) (and (= a_2@@2 a2@@0) (= i@@5 i2@@0)))
 :qid |stdinbpl.715:15|
 :skolemid |65|
 :pattern ( (|p#sm| a_2@@2 i@@5) (|p#sm| a2@@0 i2@@0))
)))
(assert (forall ((s@@5 T@Seq_3704) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3704| s@@5))) (= (|Seq#Index_3704| (|Seq#Take_3704| s@@5 n@@4) j@@2) (|Seq#Index_3704| s@@5 j@@2)))
 :qid |stdinbpl.370:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3704| (|Seq#Take_3704| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3704| s@@5 j@@2) (|Seq#Take_3704| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3704) (t T@Seq_3704) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3704| s@@6))) (< n@@5 (|Seq#Length_3704| (|Seq#Append_3704| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3704| s@@6)) (|Seq#Length_3704| s@@6)) n@@5) (= (|Seq#Take_3704| (|Seq#Append_3704| s@@6 t) n@@5) (|Seq#Append_3704| s@@6 (|Seq#Take_3704| t (|Seq#Sub| n@@5 (|Seq#Length_3704| s@@6)))))))
 :qid |stdinbpl.455:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3704| (|Seq#Append_3704| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22608) (ExhaleHeap@@3 T@PolymorphicMapType_22608) (Mask@@4 T@PolymorphicMapType_22629) (pm_f_38@@3 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_28956_28957 Mask@@4 null pm_f_38@@3) (IsPredicateField_15997_15998 pm_f_38@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_38 T@Ref) (f_70 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38 f_70) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@5) o2_38 f_70) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38 f_70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38 f_70))
)) (forall ((o2_38@@0 T@Ref) (f_70@@0 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@0 f_70@@0) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@5) o2_38@@0 f_70@@0) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@0 f_70@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@0 f_70@@0))
))) (forall ((o2_38@@1 T@Ref) (f_70@@1 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@1 f_70@@1) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@5) o2_38@@1 f_70@@1) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@1 f_70@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@1 f_70@@1))
))) (forall ((o2_38@@2 T@Ref) (f_70@@2 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@2 f_70@@2) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@5) o2_38@@2 f_70@@2) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@2 f_70@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@2 f_70@@2))
))) (forall ((o2_38@@3 T@Ref) (f_70@@3 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@3 f_70@@3) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@5) o2_38@@3 f_70@@3) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@3 f_70@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@3 f_70@@3))
))) (forall ((o2_38@@4 T@Ref) (f_70@@4 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@4 f_70@@4) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@5) o2_38@@4 f_70@@4) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@4 f_70@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@4 f_70@@4))
))) (forall ((o2_38@@5 T@Ref) (f_70@@5 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@5 f_70@@5) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@5) o2_38@@5 f_70@@5) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@5 f_70@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@5 f_70@@5))
))) (forall ((o2_38@@6 T@Ref) (f_70@@6 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@6 f_70@@6) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@5) o2_38@@6 f_70@@6) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@6 f_70@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@6 f_70@@6))
))) (forall ((o2_38@@7 T@Ref) (f_70@@7 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@7 f_70@@7) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@5) o2_38@@7 f_70@@7) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@7 f_70@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@7 f_70@@7))
))) (forall ((o2_38@@8 T@Ref) (f_70@@8 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@8 f_70@@8) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) o2_38@@8 f_70@@8) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@8 f_70@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@8 f_70@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_15997_15998 pm_f_38@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22608) (ExhaleHeap@@4 T@PolymorphicMapType_22608) (Mask@@5 T@PolymorphicMapType_22629) (pm_f_38@@4 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_22668_28957 Mask@@5 null pm_f_38@@4) (IsPredicateField_22668_67328 pm_f_38@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@9 T@Ref) (f_70@@9 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@9 f_70@@9) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@6) o2_38@@9 f_70@@9) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@9 f_70@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@9 f_70@@9))
)) (forall ((o2_38@@10 T@Ref) (f_70@@10 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@10 f_70@@10) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@6) o2_38@@10 f_70@@10) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@10 f_70@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@10 f_70@@10))
))) (forall ((o2_38@@11 T@Ref) (f_70@@11 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@11 f_70@@11) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@6) o2_38@@11 f_70@@11) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@11 f_70@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@11 f_70@@11))
))) (forall ((o2_38@@12 T@Ref) (f_70@@12 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@12 f_70@@12) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@6) o2_38@@12 f_70@@12) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@12 f_70@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@12 f_70@@12))
))) (forall ((o2_38@@13 T@Ref) (f_70@@13 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@13 f_70@@13) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) o2_38@@13 f_70@@13) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@13 f_70@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@13 f_70@@13))
))) (forall ((o2_38@@14 T@Ref) (f_70@@14 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@14 f_70@@14) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@6) o2_38@@14 f_70@@14) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@14 f_70@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@14 f_70@@14))
))) (forall ((o2_38@@15 T@Ref) (f_70@@15 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@15 f_70@@15) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@6) o2_38@@15 f_70@@15) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@15 f_70@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@15 f_70@@15))
))) (forall ((o2_38@@16 T@Ref) (f_70@@16 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@16 f_70@@16) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@6) o2_38@@16 f_70@@16) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@16 f_70@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@16 f_70@@16))
))) (forall ((o2_38@@17 T@Ref) (f_70@@17 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@17 f_70@@17) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@6) o2_38@@17 f_70@@17) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@17 f_70@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@17 f_70@@17))
))) (forall ((o2_38@@18 T@Ref) (f_70@@18 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@18 f_70@@18) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@6) o2_38@@18 f_70@@18) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@18 f_70@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@18 f_70@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_22668_67328 pm_f_38@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22608) (ExhaleHeap@@5 T@PolymorphicMapType_22608) (Mask@@6 T@PolymorphicMapType_22629) (pm_f_38@@5 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_28956_28957 Mask@@6 null pm_f_38@@5) (IsWandField_28956_71025 pm_f_38@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@19 T@Ref) (f_70@@19 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@19 f_70@@19) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@7) o2_38@@19 f_70@@19) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@19 f_70@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@19 f_70@@19))
)) (forall ((o2_38@@20 T@Ref) (f_70@@20 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@20 f_70@@20) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@7) o2_38@@20 f_70@@20) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@20 f_70@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@20 f_70@@20))
))) (forall ((o2_38@@21 T@Ref) (f_70@@21 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@21 f_70@@21) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@7) o2_38@@21 f_70@@21) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@21 f_70@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@21 f_70@@21))
))) (forall ((o2_38@@22 T@Ref) (f_70@@22 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@22 f_70@@22) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@7) o2_38@@22 f_70@@22) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@22 f_70@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@22 f_70@@22))
))) (forall ((o2_38@@23 T@Ref) (f_70@@23 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@23 f_70@@23) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@7) o2_38@@23 f_70@@23) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@23 f_70@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@23 f_70@@23))
))) (forall ((o2_38@@24 T@Ref) (f_70@@24 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@24 f_70@@24) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@7) o2_38@@24 f_70@@24) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@24 f_70@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@24 f_70@@24))
))) (forall ((o2_38@@25 T@Ref) (f_70@@25 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@25 f_70@@25) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@7) o2_38@@25 f_70@@25) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@25 f_70@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@25 f_70@@25))
))) (forall ((o2_38@@26 T@Ref) (f_70@@26 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@26 f_70@@26) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@7) o2_38@@26 f_70@@26) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@26 f_70@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@26 f_70@@26))
))) (forall ((o2_38@@27 T@Ref) (f_70@@27 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@27 f_70@@27) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@7) o2_38@@27 f_70@@27) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@27 f_70@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@27 f_70@@27))
))) (forall ((o2_38@@28 T@Ref) (f_70@@28 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@28 f_70@@28) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) o2_38@@28 f_70@@28) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@28 f_70@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@28 f_70@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_28956_71025 pm_f_38@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22608) (ExhaleHeap@@6 T@PolymorphicMapType_22608) (Mask@@7 T@PolymorphicMapType_22629) (pm_f_38@@6 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_22668_28957 Mask@@7 null pm_f_38@@6) (IsWandField_22668_70668 pm_f_38@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@29 T@Ref) (f_70@@29 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@29 f_70@@29) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@8) o2_38@@29 f_70@@29) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@29 f_70@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@29 f_70@@29))
)) (forall ((o2_38@@30 T@Ref) (f_70@@30 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@30 f_70@@30) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@8) o2_38@@30 f_70@@30) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@30 f_70@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@30 f_70@@30))
))) (forall ((o2_38@@31 T@Ref) (f_70@@31 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@31 f_70@@31) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@8) o2_38@@31 f_70@@31) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@31 f_70@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@31 f_70@@31))
))) (forall ((o2_38@@32 T@Ref) (f_70@@32 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@32 f_70@@32) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@8) o2_38@@32 f_70@@32) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@32 f_70@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@32 f_70@@32))
))) (forall ((o2_38@@33 T@Ref) (f_70@@33 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@33 f_70@@33) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) o2_38@@33 f_70@@33) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@33 f_70@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@33 f_70@@33))
))) (forall ((o2_38@@34 T@Ref) (f_70@@34 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@34 f_70@@34) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@8) o2_38@@34 f_70@@34) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@34 f_70@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@34 f_70@@34))
))) (forall ((o2_38@@35 T@Ref) (f_70@@35 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@35 f_70@@35) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@8) o2_38@@35 f_70@@35) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@35 f_70@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@35 f_70@@35))
))) (forall ((o2_38@@36 T@Ref) (f_70@@36 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@36 f_70@@36) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@8) o2_38@@36 f_70@@36) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@36 f_70@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@36 f_70@@36))
))) (forall ((o2_38@@37 T@Ref) (f_70@@37 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@37 f_70@@37) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@8) o2_38@@37 f_70@@37) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@37 f_70@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@37 f_70@@37))
))) (forall ((o2_38@@38 T@Ref) (f_70@@38 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@38 f_70@@38) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@8) o2_38@@38 f_70@@38) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@38 f_70@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@38 f_70@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_22668_70668 pm_f_38@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22608) (ExhaleHeap@@7 T@PolymorphicMapType_22608) (Mask@@8 T@PolymorphicMapType_22629) (o_58 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@9) o_58 $allocated) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@7) o_58 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@7) o_58 $allocated))
)))
(assert (forall ((p T@Field_28956_28957) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_28956_28956 p v_1 p w))
 :qid |stdinbpl.273:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28956_28956 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_22668_28957) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_22668_22668 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.273:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22668_22668 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_3704) (s1 T@Seq_3704) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3704|)) (not (= s1 |Seq#Empty_3704|))) (<= (|Seq#Length_3704| s0) n@@6)) (< n@@6 (|Seq#Length_3704| (|Seq#Append_3704| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3704| s0)) (|Seq#Length_3704| s0)) n@@6) (= (|Seq#Index_3704| (|Seq#Append_3704| s0 s1) n@@6) (|Seq#Index_3704| s1 (|Seq#Sub| n@@6 (|Seq#Length_3704| s0))))))
 :qid |stdinbpl.342:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3704| (|Seq#Append_3704| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_15994_3961 val)))
(assert  (not (IsWandField_15994_3961 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22608) (ExhaleHeap@@8 T@PolymorphicMapType_22608) (Mask@@9 T@PolymorphicMapType_22629) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_22629) (o_2@@9 T@Ref) (f_4@@9 T@Field_28969_28974) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_15997_77957 f_4@@9))) (not (IsWandField_15997_77973 f_4@@9))) (<= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_22629) (o_2@@10 T@Ref) (f_4@@10 T@Field_28956_22682) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_15997_22682 f_4@@10))) (not (IsWandField_15997_22682 f_4@@10))) (<= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22629) (o_2@@11 T@Ref) (f_4@@11 T@Field_28956_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_15997_53 f_4@@11))) (not (IsWandField_15997_53 f_4@@11))) (<= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22629) (o_2@@12 T@Ref) (f_4@@12 T@Field_28956_28957) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_15997_15998 f_4@@12))) (not (IsWandField_28956_71025 f_4@@12))) (<= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_22629) (o_2@@13 T@Ref) (f_4@@13 T@Field_28956_3961) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_15997_3961 f_4@@13))) (not (IsWandField_15997_3961 f_4@@13))) (<= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22629) (o_2@@14 T@Ref) (f_4@@14 T@Field_22668_28974) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_15994_77126 f_4@@14))) (not (IsWandField_15994_77142 f_4@@14))) (<= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22629) (o_2@@15 T@Ref) (f_4@@15 T@Field_22681_22682) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_15994_22682 f_4@@15))) (not (IsWandField_15994_22682 f_4@@15))) (<= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22629) (o_2@@16 T@Ref) (f_4@@16 T@Field_22668_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_15994_53 f_4@@16))) (not (IsWandField_15994_53 f_4@@16))) (<= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22629) (o_2@@17 T@Ref) (f_4@@17 T@Field_22668_28957) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_22668_67328 f_4@@17))) (not (IsWandField_22668_70668 f_4@@17))) (<= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22629) (o_2@@18 T@Ref) (f_4@@18 T@Field_28909_3961) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_15994_3961 f_4@@18))) (not (IsWandField_15994_3961 f_4@@18))) (<= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22629) (o_2@@19 T@Ref) (f_4@@19 T@Field_28969_28974) ) (! (= (HasDirectPerm_28956_67040 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_67040 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22629) (o_2@@20 T@Ref) (f_4@@20 T@Field_28956_28957) ) (! (= (HasDirectPerm_28956_28957 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_28957 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22629) (o_2@@21 T@Ref) (f_4@@21 T@Field_28956_3961) ) (! (= (HasDirectPerm_28956_3961 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_3961 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22629) (o_2@@22 T@Ref) (f_4@@22 T@Field_28956_22682) ) (! (= (HasDirectPerm_28956_22682 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_22682 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22629) (o_2@@23 T@Ref) (f_4@@23 T@Field_28956_53) ) (! (= (HasDirectPerm_28956_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22629) (o_2@@24 T@Ref) (f_4@@24 T@Field_22668_28974) ) (! (= (HasDirectPerm_22668_65879 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_65879 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22629) (o_2@@25 T@Ref) (f_4@@25 T@Field_22668_28957) ) (! (= (HasDirectPerm_22668_28957 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_28957 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22629) (o_2@@26 T@Ref) (f_4@@26 T@Field_28909_3961) ) (! (= (HasDirectPerm_22668_3961 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_3961 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22629) (o_2@@27 T@Ref) (f_4@@27 T@Field_22681_22682) ) (! (= (HasDirectPerm_22668_22682 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_22682 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22629) (o_2@@28 T@Ref) (f_4@@28 T@Field_22668_53) ) (! (= (HasDirectPerm_22668_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.261:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3704| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.634:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3704| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22608) (ExhaleHeap@@9 T@PolymorphicMapType_22608) (Mask@@30 T@PolymorphicMapType_22629) (o_58@@0 T@Ref) (f_70@@39 T@Field_28969_28974) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_28956_67040 Mask@@30 o_58@@0 f_70@@39) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@11) o_58@@0 f_70@@39) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@9) o_58@@0 f_70@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@9) o_58@@0 f_70@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22608) (ExhaleHeap@@10 T@PolymorphicMapType_22608) (Mask@@31 T@PolymorphicMapType_22629) (o_58@@1 T@Ref) (f_70@@40 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_28956_28957 Mask@@31 o_58@@1 f_70@@40) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@12) o_58@@1 f_70@@40) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@10) o_58@@1 f_70@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@10) o_58@@1 f_70@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22608) (ExhaleHeap@@11 T@PolymorphicMapType_22608) (Mask@@32 T@PolymorphicMapType_22629) (o_58@@2 T@Ref) (f_70@@41 T@Field_28956_3961) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_28956_3961 Mask@@32 o_58@@2 f_70@@41) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@13) o_58@@2 f_70@@41) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@11) o_58@@2 f_70@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@11) o_58@@2 f_70@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22608) (ExhaleHeap@@12 T@PolymorphicMapType_22608) (Mask@@33 T@PolymorphicMapType_22629) (o_58@@3 T@Ref) (f_70@@42 T@Field_28956_22682) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_28956_22682 Mask@@33 o_58@@3 f_70@@42) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@14) o_58@@3 f_70@@42) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@12) o_58@@3 f_70@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@12) o_58@@3 f_70@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22608) (ExhaleHeap@@13 T@PolymorphicMapType_22608) (Mask@@34 T@PolymorphicMapType_22629) (o_58@@4 T@Ref) (f_70@@43 T@Field_28956_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_28956_53 Mask@@34 o_58@@4 f_70@@43) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@15) o_58@@4 f_70@@43) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@13) o_58@@4 f_70@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@13) o_58@@4 f_70@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22608) (ExhaleHeap@@14 T@PolymorphicMapType_22608) (Mask@@35 T@PolymorphicMapType_22629) (o_58@@5 T@Ref) (f_70@@44 T@Field_22668_28974) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_22668_65879 Mask@@35 o_58@@5 f_70@@44) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@16) o_58@@5 f_70@@44) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@14) o_58@@5 f_70@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@14) o_58@@5 f_70@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22608) (ExhaleHeap@@15 T@PolymorphicMapType_22608) (Mask@@36 T@PolymorphicMapType_22629) (o_58@@6 T@Ref) (f_70@@45 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_22668_28957 Mask@@36 o_58@@6 f_70@@45) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@17) o_58@@6 f_70@@45) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@15) o_58@@6 f_70@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@15) o_58@@6 f_70@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22608) (ExhaleHeap@@16 T@PolymorphicMapType_22608) (Mask@@37 T@PolymorphicMapType_22629) (o_58@@7 T@Ref) (f_70@@46 T@Field_28909_3961) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_22668_3961 Mask@@37 o_58@@7 f_70@@46) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@18) o_58@@7 f_70@@46) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@16) o_58@@7 f_70@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@16) o_58@@7 f_70@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22608) (ExhaleHeap@@17 T@PolymorphicMapType_22608) (Mask@@38 T@PolymorphicMapType_22629) (o_58@@8 T@Ref) (f_70@@47 T@Field_22681_22682) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_22668_22682 Mask@@38 o_58@@8 f_70@@47) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@19) o_58@@8 f_70@@47) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@17) o_58@@8 f_70@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@17) o_58@@8 f_70@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22608) (ExhaleHeap@@18 T@PolymorphicMapType_22608) (Mask@@39 T@PolymorphicMapType_22629) (o_58@@9 T@Ref) (f_70@@48 T@Field_22668_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_22668_53 Mask@@39 o_58@@9 f_70@@48) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@20) o_58@@9 f_70@@48) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@18) o_58@@9 f_70@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@18) o_58@@9 f_70@@48))
)))
(assert (forall ((s0@@0 T@Seq_3704) (s1@@0 T@Seq_3704) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3704|)) (not (= s1@@0 |Seq#Empty_3704|))) (= (|Seq#Length_3704| (|Seq#Append_3704| s0@@0 s1@@0)) (+ (|Seq#Length_3704| s0@@0) (|Seq#Length_3704| s1@@0))))
 :qid |stdinbpl.311:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3704| (|Seq#Append_3704| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_28969_28974) ) (! (= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_28956_22682) ) (! (= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_28956_53) ) (! (= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_28956_28957) ) (! (= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_28956_3961) ) (! (= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_22668_28974) ) (! (= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_22681_22682) ) (! (= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_22668_53) ) (! (= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_22668_28957) ) (! (= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_28909_3961) ) (! (= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_3704) (t@@0 T@Seq_3704) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3704| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3704| s@@7)) (|Seq#Length_3704| s@@7)) n@@7) (= (|Seq#Drop_3704| (|Seq#Append_3704| s@@7 t@@0) n@@7) (|Seq#Drop_3704| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3704| s@@7))))))
 :qid |stdinbpl.468:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3704| (|Seq#Append_3704| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22629) (SummandMask1 T@PolymorphicMapType_22629) (SummandMask2 T@PolymorphicMapType_22629) (o_2@@39 T@Ref) (f_4@@39 T@Field_28969_28974) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22629) (SummandMask1@@0 T@PolymorphicMapType_22629) (SummandMask2@@0 T@PolymorphicMapType_22629) (o_2@@40 T@Ref) (f_4@@40 T@Field_28956_22682) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22629) (SummandMask1@@1 T@PolymorphicMapType_22629) (SummandMask2@@1 T@PolymorphicMapType_22629) (o_2@@41 T@Ref) (f_4@@41 T@Field_28956_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22629) (SummandMask1@@2 T@PolymorphicMapType_22629) (SummandMask2@@2 T@PolymorphicMapType_22629) (o_2@@42 T@Ref) (f_4@@42 T@Field_28956_28957) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22629) (SummandMask1@@3 T@PolymorphicMapType_22629) (SummandMask2@@3 T@PolymorphicMapType_22629) (o_2@@43 T@Ref) (f_4@@43 T@Field_28956_3961) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22629) (SummandMask1@@4 T@PolymorphicMapType_22629) (SummandMask2@@4 T@PolymorphicMapType_22629) (o_2@@44 T@Ref) (f_4@@44 T@Field_22668_28974) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22629) (SummandMask1@@5 T@PolymorphicMapType_22629) (SummandMask2@@5 T@PolymorphicMapType_22629) (o_2@@45 T@Ref) (f_4@@45 T@Field_22681_22682) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22629) (SummandMask1@@6 T@PolymorphicMapType_22629) (SummandMask2@@6 T@PolymorphicMapType_22629) (o_2@@46 T@Ref) (f_4@@46 T@Field_22668_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22629) (SummandMask1@@7 T@PolymorphicMapType_22629) (SummandMask2@@7 T@PolymorphicMapType_22629) (o_2@@47 T@Ref) (f_4@@47 T@Field_22668_28957) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22629) (SummandMask1@@8 T@PolymorphicMapType_22629) (SummandMask2@@8 T@PolymorphicMapType_22629) (o_2@@48 T@Ref) (f_4@@48 T@Field_28909_3961) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.633:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3704) (b T@Seq_3704) ) (!  (=> (|Seq#Equal_3704| a b) (= a b))
 :qid |stdinbpl.606:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3704| a b))
)))
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len a_2@@3) 0)
 :qid |stdinbpl.677:15|
 :skolemid |60|
 :pattern ( (len a_2@@3))
)))
(assert (forall ((s@@8 T@Seq_3704) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3704| s@@8))) (|Seq#ContainsTrigger_3704| s@@8 (|Seq#Index_3704| s@@8 i@@6)))
 :qid |stdinbpl.499:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3704| s@@8 i@@6))
)))
(assert (forall ((s0@@1 T@Seq_3704) (s1@@1 T@Seq_3704) ) (!  (and (=> (= s0@@1 |Seq#Empty_3704|) (= (|Seq#Append_3704| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3704|) (= (|Seq#Append_3704| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.317:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3704| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3704| (|Seq#Singleton_3704| t@@1) 0) t@@1)
 :qid |stdinbpl.321:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3704| t@@1))
)))
(assert (forall ((s@@9 T@Seq_3704) ) (! (<= 0 (|Seq#Length_3704| s@@9))
 :qid |stdinbpl.300:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3704| s@@9))
)))
(assert (forall ((a_2@@4 T@IArrayDomainType) (i@@7 Int) ) (! (= (getPredWandId_15997_15998 (p_2 a_2@@4 i@@7)) 0)
 :qid |stdinbpl.705:15|
 :skolemid |63|
 :pattern ( (p_2 a_2@@4 i@@7))
)))
(assert (forall ((a_2@@5 T@IArrayDomainType) (i@@8 Int) ) (! (= (loc a_2@@5 i@@8) (loc_limited a_2@@5 i@@8))
 :qid |stdinbpl.665:15|
 :skolemid |58|
 :pattern ( (loc a_2@@5 i@@8))
)))
(assert (forall ((s0@@2 T@Seq_3704) (s1@@2 T@Seq_3704) ) (!  (=> (|Seq#Equal_3704| s0@@2 s1@@2) (and (= (|Seq#Length_3704| s0@@2) (|Seq#Length_3704| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3704| s0@@2))) (= (|Seq#Index_3704| s0@@2 j@@4) (|Seq#Index_3704| s1@@2 j@@4)))
 :qid |stdinbpl.596:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3704| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3704| s1@@2 j@@4))
))))
 :qid |stdinbpl.593:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3704| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3704| (|Seq#Singleton_3704| t@@2)) 1)
 :qid |stdinbpl.308:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3704| t@@2))
)))
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@9 Int) ) (! (= (PredicateMaskField_15997 (p_2 a_2@@6 i@@9)) (|p#sm| a_2@@6 i@@9))
 :qid |stdinbpl.697:15|
 :skolemid |61|
 :pattern ( (PredicateMaskField_15997 (p_2 a_2@@6 i@@9)))
)))
(assert (forall ((s@@10 T@Seq_3704) (t@@3 T@Seq_3704) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3704| s@@10))) (= (|Seq#Take_3704| (|Seq#Append_3704| s@@10 t@@3) n@@8) (|Seq#Take_3704| s@@10 n@@8)))
 :qid |stdinbpl.450:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3704| (|Seq#Append_3704| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3704) (i@@10 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3704| s@@11))) (= (|Seq#Length_3704| (|Seq#Update_3704| s@@11 i@@10 v@@1)) (|Seq#Length_3704| s@@11)))
 :qid |stdinbpl.349:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3704| (|Seq#Update_3704| s@@11 i@@10 v@@1)))
 :pattern ( (|Seq#Length_3704| s@@11) (|Seq#Update_3704| s@@11 i@@10 v@@1))
)))
(assert (forall ((a_2@@7 T@IArrayDomainType) (i@@11 Int) ) (!  (and (= (first_1 (loc a_2@@7 i@@11)) a_2@@7) (= (second_1 (loc a_2@@7 i@@11)) i@@11))
 :qid |stdinbpl.671:15|
 :skolemid |59|
 :pattern ( (loc a_2@@7 i@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22608) (o_51 T@Ref) (f_14 T@Field_28969_28974) (v@@2 T@PolymorphicMapType_23157) ) (! (succHeap Heap@@21 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@21) (store (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@21) o_51 f_14 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@21) (store (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@21) o_51 f_14 v@@2)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22608) (o_51@@0 T@Ref) (f_14@@0 T@Field_28956_3961) (v@@3 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@22) (store (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@22) o_51@@0 f_14@@0 v@@3) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@22) (store (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@22) o_51@@0 f_14@@0 v@@3) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22608) (o_51@@1 T@Ref) (f_14@@1 T@Field_28956_28957) (v@@4 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@23) (store (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@23) o_51@@1 f_14@@1 v@@4) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@23) (store (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@23) o_51@@1 f_14@@1 v@@4) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22608) (o_51@@2 T@Ref) (f_14@@2 T@Field_28956_22682) (v@@5 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@24) (store (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@24) o_51@@2 f_14@@2 v@@5) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@24) (store (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@24) o_51@@2 f_14@@2 v@@5) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22608) (o_51@@3 T@Ref) (f_14@@3 T@Field_28956_53) (v@@6 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@25) (store (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@25) o_51@@3 f_14@@3 v@@6) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@25) (store (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@25) o_51@@3 f_14@@3 v@@6) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22608) (o_51@@4 T@Ref) (f_14@@4 T@Field_22668_28974) (v@@7 T@PolymorphicMapType_23157) ) (! (succHeap Heap@@26 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@26) (store (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@26) o_51@@4 f_14@@4 v@@7) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@26) (store (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@26) o_51@@4 f_14@@4 v@@7) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22608) (o_51@@5 T@Ref) (f_14@@5 T@Field_28909_3961) (v@@8 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@27) (store (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@27) o_51@@5 f_14@@5 v@@8) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@27) (store (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@27) o_51@@5 f_14@@5 v@@8) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22608) (o_51@@6 T@Ref) (f_14@@6 T@Field_22668_28957) (v@@9 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@28) (store (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@28) o_51@@6 f_14@@6 v@@9) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@28) (store (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@28) o_51@@6 f_14@@6 v@@9) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22608) (o_51@@7 T@Ref) (f_14@@7 T@Field_22681_22682) (v@@10 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@29) (store (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@29) o_51@@7 f_14@@7 v@@10) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@29) (store (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@29) o_51@@7 f_14@@7 v@@10) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22608) (o_51@@8 T@Ref) (f_14@@8 T@Field_22668_53) (v@@11 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_22608 (store (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@30) o_51@@8 f_14@@8 v@@11) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (store (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@30) o_51@@8 f_14@@8 v@@11) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@30)))
)))
(assert (forall ((s@@12 T@Seq_3704) (t@@4 T@Seq_3704) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3704| s@@12))) (= (|Seq#Drop_3704| (|Seq#Append_3704| s@@12 t@@4) n@@9) (|Seq#Append_3704| (|Seq#Drop_3704| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.464:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3704| (|Seq#Append_3704| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_3704) (n@@10 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@12)) (< i@@12 (|Seq#Length_3704| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@10) n@@10) i@@12) (= (|Seq#Index_3704| (|Seq#Drop_3704| s@@13 n@@10) (|Seq#Sub| i@@12 n@@10)) (|Seq#Index_3704| s@@13 i@@12))))
 :qid |stdinbpl.400:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3704| s@@13 n@@10) (|Seq#Index_3704| s@@13 i@@12))
)))
(assert (forall ((s0@@3 T@Seq_3704) (s1@@3 T@Seq_3704) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3704|)) (not (= s1@@3 |Seq#Empty_3704|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3704| s0@@3))) (= (|Seq#Index_3704| (|Seq#Append_3704| s0@@3 s1@@3) n@@11) (|Seq#Index_3704| s0@@3 n@@11)))
 :qid |stdinbpl.340:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3704| (|Seq#Append_3704| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3704| s0@@3 n@@11) (|Seq#Append_3704| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3704) (s1@@4 T@Seq_3704) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3704|)) (not (= s1@@4 |Seq#Empty_3704|))) (<= 0 m)) (< m (|Seq#Length_3704| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3704| s0@@4)) (|Seq#Length_3704| s0@@4)) m) (= (|Seq#Index_3704| (|Seq#Append_3704| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3704| s0@@4))) (|Seq#Index_3704| s1@@4 m))))
 :qid |stdinbpl.345:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3704| s1@@4 m) (|Seq#Append_3704| s0@@4 s1@@4))
)))
(assert (forall ((o_51@@9 T@Ref) (f_62 T@Field_22681_22682) (Heap@@31 T@PolymorphicMapType_22608) ) (!  (=> (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@31) o_51@@9 $allocated) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@31) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@31) o_51@@9 f_62) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@31) o_51@@9 f_62))
)))
(assert (forall ((s@@14 T@Seq_3704) (x@@1 Int) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_3704| s@@14))) (= (|Seq#Index_3704| s@@14 i@@13) x@@1)) (|Seq#Contains_3704| s@@14 x@@1))
 :qid |stdinbpl.497:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3704| s@@14 x@@1) (|Seq#Index_3704| s@@14 i@@13))
)))
(assert (forall ((s0@@5 T@Seq_3704) (s1@@5 T@Seq_3704) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3704| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3704| s0@@5 s1@@5))) (not (= (|Seq#Length_3704| s0@@5) (|Seq#Length_3704| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3704| s0@@5 s1@@5))) (= (|Seq#Length_3704| s0@@5) (|Seq#Length_3704| s1@@5))) (= (|Seq#SkolemDiff_3704| s0@@5 s1@@5) (|Seq#SkolemDiff_3704| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3704| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3704| s0@@5 s1@@5) (|Seq#Length_3704| s0@@5))) (not (= (|Seq#Index_3704| s0@@5 (|Seq#SkolemDiff_3704| s0@@5 s1@@5)) (|Seq#Index_3704| s1@@5 (|Seq#SkolemDiff_3704| s0@@5 s1@@5))))))
 :qid |stdinbpl.601:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3704| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_28956_28957) (v_1@@1 T@FrameType) (q T@Field_28956_28957) (w@@1 T@FrameType) (r T@Field_28956_28957) (u T@FrameType) ) (!  (=> (and (InsidePredicate_28956_28956 p@@2 v_1@@1 q w@@1) (InsidePredicate_28956_28956 q w@@1 r u)) (InsidePredicate_28956_28956 p@@2 v_1@@1 r u))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_28956 p@@2 v_1@@1 q w@@1) (InsidePredicate_28956_28956 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_28956_28957) (v_1@@2 T@FrameType) (q@@0 T@Field_28956_28957) (w@@2 T@FrameType) (r@@0 T@Field_22668_28957) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_28956_28956 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_28956_22668 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_28956_22668 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_28956 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_28956_22668 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_28956_28957) (v_1@@3 T@FrameType) (q@@1 T@Field_22668_28957) (w@@3 T@FrameType) (r@@1 T@Field_28956_28957) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_28956_22668 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22668_28956 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_28956_28956 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_22668 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22668_28956 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_28956_28957) (v_1@@4 T@FrameType) (q@@2 T@Field_22668_28957) (w@@4 T@FrameType) (r@@2 T@Field_22668_28957) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_28956_22668 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22668_22668 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_28956_22668 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_22668 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22668_22668 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_22668_28957) (v_1@@5 T@FrameType) (q@@3 T@Field_28956_28957) (w@@5 T@FrameType) (r@@3 T@Field_28956_28957) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_28956 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_28956_28956 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_22668_28956 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_28956 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_28956_28956 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_22668_28957) (v_1@@6 T@FrameType) (q@@4 T@Field_28956_28957) (w@@6 T@FrameType) (r@@4 T@Field_22668_28957) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_28956 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_28956_22668 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_22668_22668 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_28956 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_28956_22668 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_22668_28957) (v_1@@7 T@FrameType) (q@@5 T@Field_22668_28957) (w@@7 T@FrameType) (r@@5 T@Field_28956_28957) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_22668 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22668_28956 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_22668_28956 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_22668 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22668_28956 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_22668_28957) (v_1@@8 T@FrameType) (q@@6 T@Field_22668_28957) (w@@8 T@FrameType) (r@@6 T@Field_22668_28957) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_22668 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22668_22668 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_22668_22668 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_22668 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22668_22668 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_3704) ) (!  (=> (= (|Seq#Length_3704| s@@15) 0) (= s@@15 |Seq#Empty_3704|))
 :qid |stdinbpl.304:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3704| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3704) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_3704| s@@16 n@@12) |Seq#Empty_3704|))
 :qid |stdinbpl.480:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3704| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun n@@13 () Int)
(declare-fun a_2@@8 () T@IArrayDomainType)
(declare-fun PostHeap@0 () T@PolymorphicMapType_22608)
(declare-fun neverTriggered11 (Int) Bool)
(declare-fun Heap@@32 () T@PolymorphicMapType_22608)
(declare-fun QPMask@0 () T@PolymorphicMapType_22629)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun invRecv9 (T@IArrayDomainType Int) Int)
(declare-fun qpRange9 (T@IArrayDomainType Int) Bool)
(declare-fun getPredWandId_15994_3961 (T@Field_28909_3961) Int)
(declare-fun getPredWandId_15994_15998 (T@Field_22668_28957) Int)
(declare-fun getPredWandId_15994_53 (T@Field_22668_53) Int)
(declare-fun getPredWandId_15994_22682 (T@Field_22681_22682) Int)
(declare-fun getPredWandId_15994_86378 (T@Field_22668_28974) Int)
(declare-fun getPredWandId_15997_3961 (T@Field_28956_3961) Int)
(declare-fun getPredWandId_15997_53 (T@Field_28956_53) Int)
(declare-fun getPredWandId_15997_22682 (T@Field_28956_22682) Int)
(declare-fun getPredWandId_15997_87187 (T@Field_28969_28974) Int)
(set-info :boogie-vc-id m5)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon9_Else_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (|Seq#Contains_3704| (|Seq#Range| 1 (+ n@@13 1)) i_5_1)) (|Seq#Contains_3704| (|Seq#Range| 1 (+ n@@13 1)) i_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_5_1 i_5_2))))
 :qid |stdinbpl.1376:17|
 :skolemid |122|
 :pattern ( (neverTriggered10 i_5_1) (neverTriggered10 i_5_2))
)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 8) 5) anon9_Then_correct) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_8_1 Int) (i_8_2 Int) ) (!  (=> (and (and (and (and (not (= i_8_1 i_8_2)) (|Seq#Contains_3704| (|Seq#Range| 1 (+ n@@13 1)) i_8_1)) (|Seq#Contains_3704| (|Seq#Range| 1 (+ n@@13 1)) i_8_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_8_1 i_8_2))))
 :qid |stdinbpl.1423:17|
 :skolemid |128|
 :pattern ( (neverTriggered11 i_8_1) (neverTriggered11 i_8_2))
))) (=> (forall ((i_8_1@@0 Int) (i_8_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_1@@0 i_8_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 1 (+ n@@13 1)) i_8_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 1 (+ n@@13 1)) i_8_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= i_8_1@@0 i_8_2@@0))))
 :qid |stdinbpl.1423:17|
 :skolemid |128|
 :pattern ( (neverTriggered11 i_8_1@@0) (neverTriggered11 i_8_2@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_8_1@@1 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 1 (+ n@@13 1)) i_8_1@@1) (>= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) null (p_2 a_2@@8 i_8_1@@1)) FullPerm))
 :qid |stdinbpl.1430:17|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@32) null (p_2 a_2@@8 i_8_1@@1)))
 :pattern ( (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) null (p_2 a_2@@8 i_8_1@@1)))
)))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) i_1)) (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= (+ i_1 1) (+ i_1_1 1)))))
 :qid |stdinbpl.1323:17|
 :skolemid |116|
 :pattern ( (neverTriggered9 i_1) (neverTriggered9 i_1_1))
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) i_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@8 a_2@@8)) (not (= (+ i_1@@0 1) (+ i_1_1@@0 1)))))
 :qid |stdinbpl.1323:17|
 :skolemid |116|
 :pattern ( (neverTriggered9 i_1@@0) (neverTriggered9 i_1_1@@0))
)) (=> (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) i_1@@1) (< NoPerm FullPerm)) (and (= (invRecv9 a_2@@8 (+ i_1@@1 1)) i_1@@1) (qpRange9 a_2@@8 (+ i_1@@1 1))))
 :qid |stdinbpl.1329:22|
 :skolemid |117|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 n@@13) i_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) i_1@@1))
)) (=> (and (forall ((a_1_1_1 T@IArrayDomainType) (i_2_1 Int) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) (invRecv9 a_1_1_1 i_2_1)) (< NoPerm FullPerm)) (qpRange9 a_1_1_1 i_2_1)) (and (= a_2@@8 a_1_1_1) (= (+ (invRecv9 a_1_1_1 i_2_1) 1) i_2_1)))
 :qid |stdinbpl.1333:22|
 :skolemid |118|
 :pattern ( (invRecv9 a_1_1_1 i_2_1))
)) (forall ((a_1_1_1@@0 T@IArrayDomainType) (i_2_1@@0 Int) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) (invRecv9 a_1_1_1@@0 i_2_1@@0)) (< NoPerm FullPerm)) (qpRange9 a_1_1_1@@0 i_2_1@@0)) (and (=> (< NoPerm FullPerm) (and (= a_2@@8 a_1_1_1@@0) (= (+ (invRecv9 a_1_1_1@@0 i_2_1@@0) 1) i_2_1@@0))) (= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) null (p_2 a_1_1_1@@0 i_2_1@@0)) (+ (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) null (p_2 a_1_1_1@@0 i_2_1@@0)) FullPerm))))
 :qid |stdinbpl.1339:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) null (p_2 a_1_1_1@@0 i_2_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_28909_3961) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_15994_3961 f_5))) (not (= (getPredWandId_15994_3961 f_5) 0))) (= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_22668_28957) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_22668_67328 f_5@@0))) (not (= (getPredWandId_15994_15998 f_5@@0) 0))) (= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_22668_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_15994_53 f_5@@1))) (not (= (getPredWandId_15994_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_22681_22682) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_15994_22682 f_5@@2))) (not (= (getPredWandId_15994_22682 f_5@@2) 0))) (= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_22668_28974) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_15994_77126 f_5@@3))) (not (= (getPredWandId_15994_86378 f_5@@3) 0))) (= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_28956_3961) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_15997_3961 f_5@@4))) (not (= (getPredWandId_15997_3961 f_5@@4) 0))) (= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_28956_28957) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_15997_15998 f_5@@5))) (not (= (getPredWandId_15997_15998 f_5@@5) 0))) (= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_28956_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_15997_53 f_5@@6))) (not (= (getPredWandId_15997_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_28956_22682) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_15997_22682 f_5@@7))) (not (= (getPredWandId_15997_22682 f_5@@7) 0))) (= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_28969_28974) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_15997_77957 f_5@@8))) (not (= (getPredWandId_15997_87187 f_5@@8) 0))) (= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.1345:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((a_1_1_1@@1 T@IArrayDomainType) (i_2_1@@1 Int) ) (!  (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 n@@13) (invRecv9 a_1_1_1@@1 i_2_1@@1)) (< NoPerm FullPerm)) (qpRange9 a_1_1_1@@1 i_2_1@@1))) (= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) null (p_2 a_1_1_1@@1 i_2_1@@1)) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) null (p_2 a_1_1_1@@1 i_2_1@@1))))
 :qid |stdinbpl.1349:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| QPMask@0) null (p_2 a_1_1_1@@1 i_2_1@@1)))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 9) 8) anon8_Then_correct) (=> (= (ControlFlow 0 9) 3) anon8_Else_correct)))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (> n@@13 3) (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 11) 1) anon7_Then_correct) (=> (= (ControlFlow 0 11) 9) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_22668_53 0)
(declare-sort T@Field_22681_22682 0)
(declare-sort T@Field_28956_28957 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_28909_3961 0)
(declare-sort T@Field_22668_28957 0)
(declare-sort T@Field_22668_28974 0)
(declare-sort T@Field_28956_53 0)
(declare-sort T@Field_28956_22682 0)
(declare-sort T@Field_28956_3961 0)
(declare-sort T@Field_28969_28974 0)
(declare-datatypes ((T@PolymorphicMapType_22629 0)) (((PolymorphicMapType_22629 (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| (Array T@Ref T@Field_28909_3961 Real)) (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_28957 Real)) (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| (Array T@Ref T@Field_22668_28957 Real)) (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| (Array T@Ref T@Field_22668_53 Real)) (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| (Array T@Ref T@Field_22681_22682 Real)) (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| (Array T@Ref T@Field_22668_28974 Real)) (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_3961 Real)) (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_53 Real)) (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| (Array T@Ref T@Field_28956_22682 Real)) (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| (Array T@Ref T@Field_28969_28974 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23157 0)) (((PolymorphicMapType_23157 (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (Array T@Ref T@Field_22668_53 Bool)) (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (Array T@Ref T@Field_22681_22682 Bool)) (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (Array T@Ref T@Field_28909_3961 Bool)) (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (Array T@Ref T@Field_22668_28957 Bool)) (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (Array T@Ref T@Field_22668_28974 Bool)) (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_53 Bool)) (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_22682 Bool)) (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_3961 Bool)) (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (Array T@Ref T@Field_28956_28957 Bool)) (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (Array T@Ref T@Field_28969_28974 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22608 0)) (((PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| (Array T@Ref T@Field_22668_53 Bool)) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| (Array T@Ref T@Field_22681_22682 T@Ref)) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_28957 T@FrameType)) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| (Array T@Ref T@Field_28909_3961 Int)) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| (Array T@Ref T@Field_22668_28957 T@FrameType)) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| (Array T@Ref T@Field_22668_28974 T@PolymorphicMapType_23157)) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_53 Bool)) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_22682 T@Ref)) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| (Array T@Ref T@Field_28956_3961 Int)) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| (Array T@Ref T@Field_28969_28974 T@PolymorphicMapType_23157)) ) ) ))
(declare-fun $allocated () T@Field_22668_53)
(declare-fun val () T@Field_28909_3961)
(declare-sort T@Seq_3704 0)
(declare-fun |Seq#Length_3704| (T@Seq_3704) Int)
(declare-fun |Seq#Drop_3704| (T@Seq_3704 Int) T@Seq_3704)
(declare-fun succHeap (T@PolymorphicMapType_22608 T@PolymorphicMapType_22608) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22608 T@PolymorphicMapType_22608) Bool)
(declare-fun state (T@PolymorphicMapType_22608 T@PolymorphicMapType_22629) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22629) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_23157)
(declare-sort T@IArrayDomainType 0)
(declare-fun p_2 (T@IArrayDomainType Int) T@Field_28956_28957)
(declare-fun IsPredicateField_15997_15998 (T@Field_28956_28957) Bool)
(declare-fun |p#trigger_15997| (T@PolymorphicMapType_22608 T@Field_28956_28957) Bool)
(declare-fun |p#everUsed_15997| (T@Field_28956_28957) Bool)
(declare-fun |Seq#Index_3704| (T@Seq_3704 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3704| () T@Seq_3704)
(declare-fun |Seq#Update_3704| (T@Seq_3704 Int Int) T@Seq_3704)
(declare-fun |Seq#Take_3704| (T@Seq_3704 Int) T@Seq_3704)
(declare-fun |Seq#Contains_3704| (T@Seq_3704 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3704)
(declare-fun |Seq#Skolem_3704| (T@Seq_3704 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22608 T@PolymorphicMapType_22608 T@PolymorphicMapType_22629) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_15997 (T@Field_28956_28957) T@Field_28969_28974)
(declare-fun HasDirectPerm_28956_28957 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_28957) Bool)
(declare-fun IsPredicateField_22668_67328 (T@Field_22668_28957) Bool)
(declare-fun PredicateMaskField_22668 (T@Field_22668_28957) T@Field_22668_28974)
(declare-fun HasDirectPerm_22668_28957 (T@PolymorphicMapType_22629 T@Ref T@Field_22668_28957) Bool)
(declare-fun IsWandField_28956_71025 (T@Field_28956_28957) Bool)
(declare-fun WandMaskField_28956 (T@Field_28956_28957) T@Field_28969_28974)
(declare-fun IsWandField_22668_70668 (T@Field_22668_28957) Bool)
(declare-fun WandMaskField_22668 (T@Field_22668_28957) T@Field_22668_28974)
(declare-fun |Seq#Singleton_3704| (Int) T@Seq_3704)
(declare-fun |p#sm| (T@IArrayDomainType Int) T@Field_28969_28974)
(declare-fun |Seq#Append_3704| (T@Seq_3704 T@Seq_3704) T@Seq_3704)
(declare-fun dummyHeap () T@PolymorphicMapType_22608)
(declare-fun ZeroMask () T@PolymorphicMapType_22629)
(declare-fun InsidePredicate_28956_28956 (T@Field_28956_28957 T@FrameType T@Field_28956_28957 T@FrameType) Bool)
(declare-fun InsidePredicate_22668_22668 (T@Field_22668_28957 T@FrameType T@Field_22668_28957 T@FrameType) Bool)
(declare-fun IsPredicateField_15994_3961 (T@Field_28909_3961) Bool)
(declare-fun IsWandField_15994_3961 (T@Field_28909_3961) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_15997_77957 (T@Field_28969_28974) Bool)
(declare-fun IsWandField_15997_77973 (T@Field_28969_28974) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_15997_22682 (T@Field_28956_22682) Bool)
(declare-fun IsWandField_15997_22682 (T@Field_28956_22682) Bool)
(declare-fun IsPredicateField_15997_53 (T@Field_28956_53) Bool)
(declare-fun IsWandField_15997_53 (T@Field_28956_53) Bool)
(declare-fun IsPredicateField_15997_3961 (T@Field_28956_3961) Bool)
(declare-fun IsWandField_15997_3961 (T@Field_28956_3961) Bool)
(declare-fun IsPredicateField_15994_77126 (T@Field_22668_28974) Bool)
(declare-fun IsWandField_15994_77142 (T@Field_22668_28974) Bool)
(declare-fun IsPredicateField_15994_22682 (T@Field_22681_22682) Bool)
(declare-fun IsWandField_15994_22682 (T@Field_22681_22682) Bool)
(declare-fun IsPredicateField_15994_53 (T@Field_22668_53) Bool)
(declare-fun IsWandField_15994_53 (T@Field_22668_53) Bool)
(declare-fun HasDirectPerm_28956_67040 (T@PolymorphicMapType_22629 T@Ref T@Field_28969_28974) Bool)
(declare-fun HasDirectPerm_28956_3961 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_3961) Bool)
(declare-fun HasDirectPerm_28956_22682 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_22682) Bool)
(declare-fun HasDirectPerm_28956_53 (T@PolymorphicMapType_22629 T@Ref T@Field_28956_53) Bool)
(declare-fun HasDirectPerm_22668_65879 (T@PolymorphicMapType_22629 T@Ref T@Field_22668_28974) Bool)
(declare-fun HasDirectPerm_22668_3961 (T@PolymorphicMapType_22629 T@Ref T@Field_28909_3961) Bool)
(declare-fun HasDirectPerm_22668_22682 (T@PolymorphicMapType_22629 T@Ref T@Field_22681_22682) Bool)
(declare-fun HasDirectPerm_22668_53 (T@PolymorphicMapType_22629 T@Ref T@Field_22668_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22629 T@PolymorphicMapType_22629 T@PolymorphicMapType_22629) Bool)
(declare-fun |Seq#Equal_3704| (T@Seq_3704 T@Seq_3704) Bool)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_3704| (T@Seq_3704 Int) Bool)
(declare-fun getPredWandId_15997_15998 (T@Field_28956_28957) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun loc_limited (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_3704| (T@Seq_3704 T@Seq_3704) Int)
(declare-fun InsidePredicate_28956_22668 (T@Field_28956_28957 T@FrameType T@Field_22668_28957 T@FrameType) Bool)
(declare-fun InsidePredicate_22668_28956 (T@Field_22668_28957 T@FrameType T@Field_28956_28957 T@FrameType) Bool)
(assert (forall ((s T@Seq_3704) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3704| s)) (= (|Seq#Length_3704| (|Seq#Drop_3704| s n)) (- (|Seq#Length_3704| s) n))) (=> (< (|Seq#Length_3704| s) n) (= (|Seq#Length_3704| (|Seq#Drop_3704| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3704| (|Seq#Drop_3704| s n)) (|Seq#Length_3704| s))))
 :qid |stdinbpl.375:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3704| (|Seq#Drop_3704| s n)))
 :pattern ( (|Seq#Length_3704| s) (|Seq#Drop_3704| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_22608) (Heap1 T@PolymorphicMapType_22608) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22608) (Mask T@PolymorphicMapType_22629) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22608) (Heap1@@0 T@PolymorphicMapType_22608) (Heap2 T@PolymorphicMapType_22608) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_28969_28974) ) (!  (not (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28956_28957) ) (!  (not (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28956_3961) ) (!  (not (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_28956_22682) ) (!  (not (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_28956_53) ) (!  (not (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_22668_28974) ) (!  (not (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_22668_28957) ) (!  (not (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_28909_3961) ) (!  (not (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22681_22682) ) (!  (not (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_22668_53) ) (!  (not (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@IArrayDomainType) (i Int) ) (! (IsPredicateField_15997_15998 (p_2 a_2 i))
 :qid |stdinbpl.701:15|
 :skolemid |62|
 :pattern ( (p_2 a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22608) (a_2@@0 T@IArrayDomainType) (i@@0 Int) ) (! (|p#everUsed_15997| (p_2 a_2@@0 i@@0))
 :qid |stdinbpl.720:15|
 :skolemid |66|
 :pattern ( (|p#trigger_15997| Heap@@0 (p_2 a_2@@0 i@@0)))
)))
(assert (forall ((s@@0 T@Seq_3704) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3704| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3704| (|Seq#Drop_3704| s@@0 n@@0) j) (|Seq#Index_3704| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.396:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3704| (|Seq#Drop_3704| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3704| |Seq#Empty_3704|) 0))
(assert (forall ((s@@1 T@Seq_3704) (i@@1 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3704| s@@1))) (and (=> (= i@@1 n@@1) (= (|Seq#Index_3704| (|Seq#Update_3704| s@@1 i@@1 v) n@@1) v)) (=> (not (= i@@1 n@@1)) (= (|Seq#Index_3704| (|Seq#Update_3704| s@@1 i@@1 v) n@@1) (|Seq#Index_3704| s@@1 n@@1)))))
 :qid |stdinbpl.351:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3704| (|Seq#Update_3704| s@@1 i@@1 v) n@@1))
 :pattern ( (|Seq#Index_3704| s@@1 n@@1) (|Seq#Update_3704| s@@1 i@@1 v))
)))
(assert (forall ((s@@2 T@Seq_3704) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3704| s@@2)) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3704| s@@2) n@@2) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)) (|Seq#Length_3704| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)) 0)))
 :qid |stdinbpl.362:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3704| (|Seq#Take_3704| s@@2 n@@2)))
 :pattern ( (|Seq#Take_3704| s@@2 n@@2) (|Seq#Length_3704| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3704| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.636:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3704) (x Int) ) (!  (=> (|Seq#Contains_3704| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3704| s@@3 x)) (< (|Seq#Skolem_3704| s@@3 x) (|Seq#Length_3704| s@@3))) (= (|Seq#Index_3704| s@@3 (|Seq#Skolem_3704| s@@3 x)) x)))
 :qid |stdinbpl.494:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3704| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_3704) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3704| s@@4 n@@3) s@@4))
 :qid |stdinbpl.478:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3704| s@@4 n@@3))
)))
(assert (forall ((i@@2 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@2 j@@0) (- i@@2 j@@0))
 :qid |stdinbpl.331:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@0))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@3 j@@1) (+ i@@3 j@@1))
 :qid |stdinbpl.329:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22608) (ExhaleHeap T@PolymorphicMapType_22608) (Mask@@0 T@PolymorphicMapType_22629) (pm_f_38 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_28956_28957 Mask@@0 null pm_f_38) (IsPredicateField_15997_15998 pm_f_38)) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@1) null (PredicateMaskField_15997 pm_f_38)) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap) null (PredicateMaskField_15997 pm_f_38)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_15997_15998 pm_f_38) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap) null (PredicateMaskField_15997 pm_f_38)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22608) (ExhaleHeap@@0 T@PolymorphicMapType_22608) (Mask@@1 T@PolymorphicMapType_22629) (pm_f_38@@0 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_22668_28957 Mask@@1 null pm_f_38@@0) (IsPredicateField_22668_67328 pm_f_38@@0)) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@2) null (PredicateMaskField_22668 pm_f_38@@0)) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@0) null (PredicateMaskField_22668 pm_f_38@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_22668_67328 pm_f_38@@0) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@0) null (PredicateMaskField_22668 pm_f_38@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22608) (ExhaleHeap@@1 T@PolymorphicMapType_22608) (Mask@@2 T@PolymorphicMapType_22629) (pm_f_38@@1 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_28956_28957 Mask@@2 null pm_f_38@@1) (IsWandField_28956_71025 pm_f_38@@1)) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@3) null (WandMaskField_28956 pm_f_38@@1)) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@1) null (WandMaskField_28956 pm_f_38@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_28956_71025 pm_f_38@@1) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@1) null (WandMaskField_28956 pm_f_38@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22608) (ExhaleHeap@@2 T@PolymorphicMapType_22608) (Mask@@3 T@PolymorphicMapType_22629) (pm_f_38@@2 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_22668_28957 Mask@@3 null pm_f_38@@2) (IsWandField_22668_70668 pm_f_38@@2)) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@4) null (WandMaskField_22668 pm_f_38@@2)) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@2) null (WandMaskField_22668 pm_f_38@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_22668_70668 pm_f_38@@2) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@2) null (WandMaskField_22668 pm_f_38@@2)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3704| (|Seq#Singleton_3704| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.619:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3704| (|Seq#Singleton_3704| x@@0) y))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@4 Int) (a2 T@IArrayDomainType) (i2 Int) ) (!  (=> (= (p_2 a_2@@1 i@@4) (p_2 a2 i2)) (and (= a_2@@1 a2) (= i@@4 i2)))
 :qid |stdinbpl.711:15|
 :skolemid |64|
 :pattern ( (p_2 a_2@@1 i@@4) (p_2 a2 i2))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@5 Int) (a2@@0 T@IArrayDomainType) (i2@@0 Int) ) (!  (=> (= (|p#sm| a_2@@2 i@@5) (|p#sm| a2@@0 i2@@0)) (and (= a_2@@2 a2@@0) (= i@@5 i2@@0)))
 :qid |stdinbpl.715:15|
 :skolemid |65|
 :pattern ( (|p#sm| a_2@@2 i@@5) (|p#sm| a2@@0 i2@@0))
)))
(assert (forall ((s@@5 T@Seq_3704) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3704| s@@5))) (= (|Seq#Index_3704| (|Seq#Take_3704| s@@5 n@@4) j@@2) (|Seq#Index_3704| s@@5 j@@2)))
 :qid |stdinbpl.370:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3704| (|Seq#Take_3704| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3704| s@@5 j@@2) (|Seq#Take_3704| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3704) (t T@Seq_3704) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3704| s@@6))) (< n@@5 (|Seq#Length_3704| (|Seq#Append_3704| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3704| s@@6)) (|Seq#Length_3704| s@@6)) n@@5) (= (|Seq#Take_3704| (|Seq#Append_3704| s@@6 t) n@@5) (|Seq#Append_3704| s@@6 (|Seq#Take_3704| t (|Seq#Sub| n@@5 (|Seq#Length_3704| s@@6)))))))
 :qid |stdinbpl.455:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3704| (|Seq#Append_3704| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22608) (ExhaleHeap@@3 T@PolymorphicMapType_22608) (Mask@@4 T@PolymorphicMapType_22629) (pm_f_38@@3 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_28956_28957 Mask@@4 null pm_f_38@@3) (IsPredicateField_15997_15998 pm_f_38@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_38 T@Ref) (f_70 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38 f_70) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@5) o2_38 f_70) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38 f_70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38 f_70))
)) (forall ((o2_38@@0 T@Ref) (f_70@@0 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@0 f_70@@0) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@5) o2_38@@0 f_70@@0) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@0 f_70@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@0 f_70@@0))
))) (forall ((o2_38@@1 T@Ref) (f_70@@1 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@1 f_70@@1) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@5) o2_38@@1 f_70@@1) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@1 f_70@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@1 f_70@@1))
))) (forall ((o2_38@@2 T@Ref) (f_70@@2 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@2 f_70@@2) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@5) o2_38@@2 f_70@@2) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@2 f_70@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@2 f_70@@2))
))) (forall ((o2_38@@3 T@Ref) (f_70@@3 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@3 f_70@@3) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@5) o2_38@@3 f_70@@3) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@3 f_70@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@3 f_70@@3))
))) (forall ((o2_38@@4 T@Ref) (f_70@@4 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@4 f_70@@4) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@5) o2_38@@4 f_70@@4) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@4 f_70@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@4 f_70@@4))
))) (forall ((o2_38@@5 T@Ref) (f_70@@5 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@5 f_70@@5) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@5) o2_38@@5 f_70@@5) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@5 f_70@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@5 f_70@@5))
))) (forall ((o2_38@@6 T@Ref) (f_70@@6 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@6 f_70@@6) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@5) o2_38@@6 f_70@@6) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@6 f_70@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@6 f_70@@6))
))) (forall ((o2_38@@7 T@Ref) (f_70@@7 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@7 f_70@@7) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@5) o2_38@@7 f_70@@7) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@7 f_70@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@7 f_70@@7))
))) (forall ((o2_38@@8 T@Ref) (f_70@@8 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) null (PredicateMaskField_15997 pm_f_38@@3))) o2_38@@8 f_70@@8) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@5) o2_38@@8 f_70@@8) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@8 f_70@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@3) o2_38@@8 f_70@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_15997_15998 pm_f_38@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22608) (ExhaleHeap@@4 T@PolymorphicMapType_22608) (Mask@@5 T@PolymorphicMapType_22629) (pm_f_38@@4 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_22668_28957 Mask@@5 null pm_f_38@@4) (IsPredicateField_22668_67328 pm_f_38@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@9 T@Ref) (f_70@@9 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@9 f_70@@9) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@6) o2_38@@9 f_70@@9) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@9 f_70@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@9 f_70@@9))
)) (forall ((o2_38@@10 T@Ref) (f_70@@10 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@10 f_70@@10) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@6) o2_38@@10 f_70@@10) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@10 f_70@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@10 f_70@@10))
))) (forall ((o2_38@@11 T@Ref) (f_70@@11 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@11 f_70@@11) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@6) o2_38@@11 f_70@@11) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@11 f_70@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@11 f_70@@11))
))) (forall ((o2_38@@12 T@Ref) (f_70@@12 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@12 f_70@@12) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@6) o2_38@@12 f_70@@12) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@12 f_70@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@12 f_70@@12))
))) (forall ((o2_38@@13 T@Ref) (f_70@@13 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@13 f_70@@13) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) o2_38@@13 f_70@@13) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@13 f_70@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@13 f_70@@13))
))) (forall ((o2_38@@14 T@Ref) (f_70@@14 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@14 f_70@@14) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@6) o2_38@@14 f_70@@14) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@14 f_70@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@14 f_70@@14))
))) (forall ((o2_38@@15 T@Ref) (f_70@@15 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@15 f_70@@15) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@6) o2_38@@15 f_70@@15) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@15 f_70@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@15 f_70@@15))
))) (forall ((o2_38@@16 T@Ref) (f_70@@16 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@16 f_70@@16) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@6) o2_38@@16 f_70@@16) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@16 f_70@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@16 f_70@@16))
))) (forall ((o2_38@@17 T@Ref) (f_70@@17 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@17 f_70@@17) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@6) o2_38@@17 f_70@@17) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@17 f_70@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@17 f_70@@17))
))) (forall ((o2_38@@18 T@Ref) (f_70@@18 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@6) null (PredicateMaskField_22668 pm_f_38@@4))) o2_38@@18 f_70@@18) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@6) o2_38@@18 f_70@@18) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@18 f_70@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@4) o2_38@@18 f_70@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_22668_67328 pm_f_38@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22608) (ExhaleHeap@@5 T@PolymorphicMapType_22608) (Mask@@6 T@PolymorphicMapType_22629) (pm_f_38@@5 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_28956_28957 Mask@@6 null pm_f_38@@5) (IsWandField_28956_71025 pm_f_38@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@19 T@Ref) (f_70@@19 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@19 f_70@@19) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@7) o2_38@@19 f_70@@19) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@19 f_70@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@19 f_70@@19))
)) (forall ((o2_38@@20 T@Ref) (f_70@@20 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@20 f_70@@20) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@7) o2_38@@20 f_70@@20) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@20 f_70@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@20 f_70@@20))
))) (forall ((o2_38@@21 T@Ref) (f_70@@21 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@21 f_70@@21) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@7) o2_38@@21 f_70@@21) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@21 f_70@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@21 f_70@@21))
))) (forall ((o2_38@@22 T@Ref) (f_70@@22 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@22 f_70@@22) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@7) o2_38@@22 f_70@@22) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@22 f_70@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@22 f_70@@22))
))) (forall ((o2_38@@23 T@Ref) (f_70@@23 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@23 f_70@@23) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@7) o2_38@@23 f_70@@23) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@23 f_70@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@23 f_70@@23))
))) (forall ((o2_38@@24 T@Ref) (f_70@@24 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@24 f_70@@24) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@7) o2_38@@24 f_70@@24) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@24 f_70@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@24 f_70@@24))
))) (forall ((o2_38@@25 T@Ref) (f_70@@25 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@25 f_70@@25) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@7) o2_38@@25 f_70@@25) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@25 f_70@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@25 f_70@@25))
))) (forall ((o2_38@@26 T@Ref) (f_70@@26 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@26 f_70@@26) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@7) o2_38@@26 f_70@@26) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@26 f_70@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@26 f_70@@26))
))) (forall ((o2_38@@27 T@Ref) (f_70@@27 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@27 f_70@@27) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@7) o2_38@@27 f_70@@27) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@27 f_70@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@27 f_70@@27))
))) (forall ((o2_38@@28 T@Ref) (f_70@@28 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) null (WandMaskField_28956 pm_f_38@@5))) o2_38@@28 f_70@@28) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@7) o2_38@@28 f_70@@28) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@28 f_70@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@5) o2_38@@28 f_70@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_28956_71025 pm_f_38@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22608) (ExhaleHeap@@6 T@PolymorphicMapType_22608) (Mask@@7 T@PolymorphicMapType_22629) (pm_f_38@@6 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_22668_28957 Mask@@7 null pm_f_38@@6) (IsWandField_22668_70668 pm_f_38@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@29 T@Ref) (f_70@@29 T@Field_22668_53) ) (!  (=> (select (|PolymorphicMapType_23157_22668_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@29 f_70@@29) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@8) o2_38@@29 f_70@@29) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@29 f_70@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@29 f_70@@29))
)) (forall ((o2_38@@30 T@Ref) (f_70@@30 T@Field_22681_22682) ) (!  (=> (select (|PolymorphicMapType_23157_22668_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@30 f_70@@30) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@8) o2_38@@30 f_70@@30) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@30 f_70@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@30 f_70@@30))
))) (forall ((o2_38@@31 T@Ref) (f_70@@31 T@Field_28909_3961) ) (!  (=> (select (|PolymorphicMapType_23157_22668_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@31 f_70@@31) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@8) o2_38@@31 f_70@@31) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@31 f_70@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@31 f_70@@31))
))) (forall ((o2_38@@32 T@Ref) (f_70@@32 T@Field_22668_28957) ) (!  (=> (select (|PolymorphicMapType_23157_22668_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@32 f_70@@32) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@8) o2_38@@32 f_70@@32) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@32 f_70@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@32 f_70@@32))
))) (forall ((o2_38@@33 T@Ref) (f_70@@33 T@Field_22668_28974) ) (!  (=> (select (|PolymorphicMapType_23157_22668_68812#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@33 f_70@@33) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) o2_38@@33 f_70@@33) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@33 f_70@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@33 f_70@@33))
))) (forall ((o2_38@@34 T@Ref) (f_70@@34 T@Field_28956_53) ) (!  (=> (select (|PolymorphicMapType_23157_28956_53#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@34 f_70@@34) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@8) o2_38@@34 f_70@@34) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@34 f_70@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@34 f_70@@34))
))) (forall ((o2_38@@35 T@Ref) (f_70@@35 T@Field_28956_22682) ) (!  (=> (select (|PolymorphicMapType_23157_28956_22682#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@35 f_70@@35) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@8) o2_38@@35 f_70@@35) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@35 f_70@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@35 f_70@@35))
))) (forall ((o2_38@@36 T@Ref) (f_70@@36 T@Field_28956_3961) ) (!  (=> (select (|PolymorphicMapType_23157_28956_3961#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@36 f_70@@36) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@8) o2_38@@36 f_70@@36) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@36 f_70@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@36 f_70@@36))
))) (forall ((o2_38@@37 T@Ref) (f_70@@37 T@Field_28956_28957) ) (!  (=> (select (|PolymorphicMapType_23157_28956_28957#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@37 f_70@@37) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@8) o2_38@@37 f_70@@37) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@37 f_70@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@37 f_70@@37))
))) (forall ((o2_38@@38 T@Ref) (f_70@@38 T@Field_28969_28974) ) (!  (=> (select (|PolymorphicMapType_23157_28956_69860#PolymorphicMapType_23157| (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@8) null (WandMaskField_22668 pm_f_38@@6))) o2_38@@38 f_70@@38) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@8) o2_38@@38 f_70@@38) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@38 f_70@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@6) o2_38@@38 f_70@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_22668_70668 pm_f_38@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22608) (ExhaleHeap@@7 T@PolymorphicMapType_22608) (Mask@@8 T@PolymorphicMapType_22629) (o_58 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@9) o_58 $allocated) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@7) o_58 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@7) o_58 $allocated))
)))
(assert (forall ((p T@Field_28956_28957) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_28956_28956 p v_1 p w))
 :qid |stdinbpl.273:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28956_28956 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_22668_28957) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_22668_22668 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.273:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22668_22668 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_3704) (s1 T@Seq_3704) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3704|)) (not (= s1 |Seq#Empty_3704|))) (<= (|Seq#Length_3704| s0) n@@6)) (< n@@6 (|Seq#Length_3704| (|Seq#Append_3704| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3704| s0)) (|Seq#Length_3704| s0)) n@@6) (= (|Seq#Index_3704| (|Seq#Append_3704| s0 s1) n@@6) (|Seq#Index_3704| s1 (|Seq#Sub| n@@6 (|Seq#Length_3704| s0))))))
 :qid |stdinbpl.342:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3704| (|Seq#Append_3704| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_15994_3961 val)))
(assert  (not (IsWandField_15994_3961 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22608) (ExhaleHeap@@8 T@PolymorphicMapType_22608) (Mask@@9 T@PolymorphicMapType_22629) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_22629) (o_2@@9 T@Ref) (f_4@@9 T@Field_28969_28974) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_15997_77957 f_4@@9))) (not (IsWandField_15997_77973 f_4@@9))) (<= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_22629) (o_2@@10 T@Ref) (f_4@@10 T@Field_28956_22682) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_15997_22682 f_4@@10))) (not (IsWandField_15997_22682 f_4@@10))) (<= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22629) (o_2@@11 T@Ref) (f_4@@11 T@Field_28956_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_15997_53 f_4@@11))) (not (IsWandField_15997_53 f_4@@11))) (<= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22629) (o_2@@12 T@Ref) (f_4@@12 T@Field_28956_28957) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_15997_15998 f_4@@12))) (not (IsWandField_28956_71025 f_4@@12))) (<= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_22629) (o_2@@13 T@Ref) (f_4@@13 T@Field_28956_3961) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_15997_3961 f_4@@13))) (not (IsWandField_15997_3961 f_4@@13))) (<= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22629) (o_2@@14 T@Ref) (f_4@@14 T@Field_22668_28974) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_15994_77126 f_4@@14))) (not (IsWandField_15994_77142 f_4@@14))) (<= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22629) (o_2@@15 T@Ref) (f_4@@15 T@Field_22681_22682) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_15994_22682 f_4@@15))) (not (IsWandField_15994_22682 f_4@@15))) (<= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22629) (o_2@@16 T@Ref) (f_4@@16 T@Field_22668_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_15994_53 f_4@@16))) (not (IsWandField_15994_53 f_4@@16))) (<= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22629) (o_2@@17 T@Ref) (f_4@@17 T@Field_22668_28957) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_22668_67328 f_4@@17))) (not (IsWandField_22668_70668 f_4@@17))) (<= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22629) (o_2@@18 T@Ref) (f_4@@18 T@Field_28909_3961) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_15994_3961 f_4@@18))) (not (IsWandField_15994_3961 f_4@@18))) (<= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22629) (o_2@@19 T@Ref) (f_4@@19 T@Field_28969_28974) ) (! (= (HasDirectPerm_28956_67040 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_67040 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22629) (o_2@@20 T@Ref) (f_4@@20 T@Field_28956_28957) ) (! (= (HasDirectPerm_28956_28957 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_28957 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22629) (o_2@@21 T@Ref) (f_4@@21 T@Field_28956_3961) ) (! (= (HasDirectPerm_28956_3961 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_3961 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22629) (o_2@@22 T@Ref) (f_4@@22 T@Field_28956_22682) ) (! (= (HasDirectPerm_28956_22682 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_22682 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22629) (o_2@@23 T@Ref) (f_4@@23 T@Field_28956_53) ) (! (= (HasDirectPerm_28956_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28956_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22629) (o_2@@24 T@Ref) (f_4@@24 T@Field_22668_28974) ) (! (= (HasDirectPerm_22668_65879 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_65879 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22629) (o_2@@25 T@Ref) (f_4@@25 T@Field_22668_28957) ) (! (= (HasDirectPerm_22668_28957 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_28957 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22629) (o_2@@26 T@Ref) (f_4@@26 T@Field_28909_3961) ) (! (= (HasDirectPerm_22668_3961 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_3961 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22629) (o_2@@27 T@Ref) (f_4@@27 T@Field_22681_22682) ) (! (= (HasDirectPerm_22668_22682 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_22682 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22629) (o_2@@28 T@Ref) (f_4@@28 T@Field_22668_53) ) (! (= (HasDirectPerm_22668_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22668_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.261:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3704| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.634:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3704| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22608) (ExhaleHeap@@9 T@PolymorphicMapType_22608) (Mask@@30 T@PolymorphicMapType_22629) (o_58@@0 T@Ref) (f_70@@39 T@Field_28969_28974) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_28956_67040 Mask@@30 o_58@@0 f_70@@39) (= (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@11) o_58@@0 f_70@@39) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@9) o_58@@0 f_70@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| ExhaleHeap@@9) o_58@@0 f_70@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22608) (ExhaleHeap@@10 T@PolymorphicMapType_22608) (Mask@@31 T@PolymorphicMapType_22629) (o_58@@1 T@Ref) (f_70@@40 T@Field_28956_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_28956_28957 Mask@@31 o_58@@1 f_70@@40) (= (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@12) o_58@@1 f_70@@40) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@10) o_58@@1 f_70@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| ExhaleHeap@@10) o_58@@1 f_70@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22608) (ExhaleHeap@@11 T@PolymorphicMapType_22608) (Mask@@32 T@PolymorphicMapType_22629) (o_58@@2 T@Ref) (f_70@@41 T@Field_28956_3961) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_28956_3961 Mask@@32 o_58@@2 f_70@@41) (= (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@13) o_58@@2 f_70@@41) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@11) o_58@@2 f_70@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| ExhaleHeap@@11) o_58@@2 f_70@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22608) (ExhaleHeap@@12 T@PolymorphicMapType_22608) (Mask@@33 T@PolymorphicMapType_22629) (o_58@@3 T@Ref) (f_70@@42 T@Field_28956_22682) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_28956_22682 Mask@@33 o_58@@3 f_70@@42) (= (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@14) o_58@@3 f_70@@42) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@12) o_58@@3 f_70@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| ExhaleHeap@@12) o_58@@3 f_70@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22608) (ExhaleHeap@@13 T@PolymorphicMapType_22608) (Mask@@34 T@PolymorphicMapType_22629) (o_58@@4 T@Ref) (f_70@@43 T@Field_28956_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_28956_53 Mask@@34 o_58@@4 f_70@@43) (= (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@15) o_58@@4 f_70@@43) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@13) o_58@@4 f_70@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| ExhaleHeap@@13) o_58@@4 f_70@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22608) (ExhaleHeap@@14 T@PolymorphicMapType_22608) (Mask@@35 T@PolymorphicMapType_22629) (o_58@@5 T@Ref) (f_70@@44 T@Field_22668_28974) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_22668_65879 Mask@@35 o_58@@5 f_70@@44) (= (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@16) o_58@@5 f_70@@44) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@14) o_58@@5 f_70@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| ExhaleHeap@@14) o_58@@5 f_70@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22608) (ExhaleHeap@@15 T@PolymorphicMapType_22608) (Mask@@36 T@PolymorphicMapType_22629) (o_58@@6 T@Ref) (f_70@@45 T@Field_22668_28957) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_22668_28957 Mask@@36 o_58@@6 f_70@@45) (= (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@17) o_58@@6 f_70@@45) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@15) o_58@@6 f_70@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| ExhaleHeap@@15) o_58@@6 f_70@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22608) (ExhaleHeap@@16 T@PolymorphicMapType_22608) (Mask@@37 T@PolymorphicMapType_22629) (o_58@@7 T@Ref) (f_70@@46 T@Field_28909_3961) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_22668_3961 Mask@@37 o_58@@7 f_70@@46) (= (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@18) o_58@@7 f_70@@46) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@16) o_58@@7 f_70@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| ExhaleHeap@@16) o_58@@7 f_70@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22608) (ExhaleHeap@@17 T@PolymorphicMapType_22608) (Mask@@38 T@PolymorphicMapType_22629) (o_58@@8 T@Ref) (f_70@@47 T@Field_22681_22682) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_22668_22682 Mask@@38 o_58@@8 f_70@@47) (= (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@19) o_58@@8 f_70@@47) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@17) o_58@@8 f_70@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| ExhaleHeap@@17) o_58@@8 f_70@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22608) (ExhaleHeap@@18 T@PolymorphicMapType_22608) (Mask@@39 T@PolymorphicMapType_22629) (o_58@@9 T@Ref) (f_70@@48 T@Field_22668_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_22668_53 Mask@@39 o_58@@9 f_70@@48) (= (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@20) o_58@@9 f_70@@48) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@18) o_58@@9 f_70@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| ExhaleHeap@@18) o_58@@9 f_70@@48))
)))
(assert (forall ((s0@@0 T@Seq_3704) (s1@@0 T@Seq_3704) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3704|)) (not (= s1@@0 |Seq#Empty_3704|))) (= (|Seq#Length_3704| (|Seq#Append_3704| s0@@0 s1@@0)) (+ (|Seq#Length_3704| s0@@0) (|Seq#Length_3704| s1@@0))))
 :qid |stdinbpl.311:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3704| (|Seq#Append_3704| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_28969_28974) ) (! (= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_28956_22682) ) (! (= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_28956_53) ) (! (= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_28956_28957) ) (! (= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_28956_3961) ) (! (= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_22668_28974) ) (! (= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_22681_22682) ) (! (= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_22668_53) ) (! (= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_22668_28957) ) (! (= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_28909_3961) ) (! (= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_3704) (t@@0 T@Seq_3704) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3704| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3704| s@@7)) (|Seq#Length_3704| s@@7)) n@@7) (= (|Seq#Drop_3704| (|Seq#Append_3704| s@@7 t@@0) n@@7) (|Seq#Drop_3704| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3704| s@@7))))))
 :qid |stdinbpl.468:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3704| (|Seq#Append_3704| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22629) (SummandMask1 T@PolymorphicMapType_22629) (SummandMask2 T@PolymorphicMapType_22629) (o_2@@39 T@Ref) (f_4@@39 T@Field_28969_28974) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22629_15997_75665#PolymorphicMapType_22629| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22629) (SummandMask1@@0 T@PolymorphicMapType_22629) (SummandMask2@@0 T@PolymorphicMapType_22629) (o_2@@40 T@Ref) (f_4@@40 T@Field_28956_22682) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22629_15997_22682#PolymorphicMapType_22629| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22629) (SummandMask1@@1 T@PolymorphicMapType_22629) (SummandMask2@@1 T@PolymorphicMapType_22629) (o_2@@41 T@Ref) (f_4@@41 T@Field_28956_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22629_15997_53#PolymorphicMapType_22629| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22629) (SummandMask1@@2 T@PolymorphicMapType_22629) (SummandMask2@@2 T@PolymorphicMapType_22629) (o_2@@42 T@Ref) (f_4@@42 T@Field_28956_28957) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22629_15997_15998#PolymorphicMapType_22629| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22629) (SummandMask1@@3 T@PolymorphicMapType_22629) (SummandMask2@@3 T@PolymorphicMapType_22629) (o_2@@43 T@Ref) (f_4@@43 T@Field_28956_3961) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22629_15997_3961#PolymorphicMapType_22629| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22629) (SummandMask1@@4 T@PolymorphicMapType_22629) (SummandMask2@@4 T@PolymorphicMapType_22629) (o_2@@44 T@Ref) (f_4@@44 T@Field_22668_28974) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22629_15994_75254#PolymorphicMapType_22629| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22629) (SummandMask1@@5 T@PolymorphicMapType_22629) (SummandMask2@@5 T@PolymorphicMapType_22629) (o_2@@45 T@Ref) (f_4@@45 T@Field_22681_22682) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22629_15994_22682#PolymorphicMapType_22629| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22629) (SummandMask1@@6 T@PolymorphicMapType_22629) (SummandMask2@@6 T@PolymorphicMapType_22629) (o_2@@46 T@Ref) (f_4@@46 T@Field_22668_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22629_15994_53#PolymorphicMapType_22629| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22629) (SummandMask1@@7 T@PolymorphicMapType_22629) (SummandMask2@@7 T@PolymorphicMapType_22629) (o_2@@47 T@Ref) (f_4@@47 T@Field_22668_28957) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22629_15994_15998#PolymorphicMapType_22629| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22629) (SummandMask1@@8 T@PolymorphicMapType_22629) (SummandMask2@@8 T@PolymorphicMapType_22629) (o_2@@48 T@Ref) (f_4@@48 T@Field_28909_3961) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22629_15994_3961#PolymorphicMapType_22629| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.633:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3704) (b T@Seq_3704) ) (!  (=> (|Seq#Equal_3704| a b) (= a b))
 :qid |stdinbpl.606:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3704| a b))
)))
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len a_2@@3) 0)
 :qid |stdinbpl.677:15|
 :skolemid |60|
 :pattern ( (len a_2@@3))
)))
(assert (forall ((s@@8 T@Seq_3704) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3704| s@@8))) (|Seq#ContainsTrigger_3704| s@@8 (|Seq#Index_3704| s@@8 i@@6)))
 :qid |stdinbpl.499:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3704| s@@8 i@@6))
)))
(assert (forall ((s0@@1 T@Seq_3704) (s1@@1 T@Seq_3704) ) (!  (and (=> (= s0@@1 |Seq#Empty_3704|) (= (|Seq#Append_3704| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3704|) (= (|Seq#Append_3704| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.317:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3704| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3704| (|Seq#Singleton_3704| t@@1) 0) t@@1)
 :qid |stdinbpl.321:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3704| t@@1))
)))
(assert (forall ((s@@9 T@Seq_3704) ) (! (<= 0 (|Seq#Length_3704| s@@9))
 :qid |stdinbpl.300:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3704| s@@9))
)))
(assert (forall ((a_2@@4 T@IArrayDomainType) (i@@7 Int) ) (! (= (getPredWandId_15997_15998 (p_2 a_2@@4 i@@7)) 0)
 :qid |stdinbpl.705:15|
 :skolemid |63|
 :pattern ( (p_2 a_2@@4 i@@7))
)))
(assert (forall ((a_2@@5 T@IArrayDomainType) (i@@8 Int) ) (! (= (loc a_2@@5 i@@8) (loc_limited a_2@@5 i@@8))
 :qid |stdinbpl.665:15|
 :skolemid |58|
 :pattern ( (loc a_2@@5 i@@8))
)))
(assert (forall ((s0@@2 T@Seq_3704) (s1@@2 T@Seq_3704) ) (!  (=> (|Seq#Equal_3704| s0@@2 s1@@2) (and (= (|Seq#Length_3704| s0@@2) (|Seq#Length_3704| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3704| s0@@2))) (= (|Seq#Index_3704| s0@@2 j@@4) (|Seq#Index_3704| s1@@2 j@@4)))
 :qid |stdinbpl.596:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3704| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3704| s1@@2 j@@4))
))))
 :qid |stdinbpl.593:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3704| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3704| (|Seq#Singleton_3704| t@@2)) 1)
 :qid |stdinbpl.308:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3704| t@@2))
)))
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@9 Int) ) (! (= (PredicateMaskField_15997 (p_2 a_2@@6 i@@9)) (|p#sm| a_2@@6 i@@9))
 :qid |stdinbpl.697:15|
 :skolemid |61|
 :pattern ( (PredicateMaskField_15997 (p_2 a_2@@6 i@@9)))
)))
(assert (forall ((s@@10 T@Seq_3704) (t@@3 T@Seq_3704) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3704| s@@10))) (= (|Seq#Take_3704| (|Seq#Append_3704| s@@10 t@@3) n@@8) (|Seq#Take_3704| s@@10 n@@8)))
 :qid |stdinbpl.450:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3704| (|Seq#Append_3704| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3704) (i@@10 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3704| s@@11))) (= (|Seq#Length_3704| (|Seq#Update_3704| s@@11 i@@10 v@@1)) (|Seq#Length_3704| s@@11)))
 :qid |stdinbpl.349:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3704| (|Seq#Update_3704| s@@11 i@@10 v@@1)))
 :pattern ( (|Seq#Length_3704| s@@11) (|Seq#Update_3704| s@@11 i@@10 v@@1))
)))
(assert (forall ((a_2@@7 T@IArrayDomainType) (i@@11 Int) ) (!  (and (= (first_1 (loc a_2@@7 i@@11)) a_2@@7) (= (second_1 (loc a_2@@7 i@@11)) i@@11))
 :qid |stdinbpl.671:15|
 :skolemid |59|
 :pattern ( (loc a_2@@7 i@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22608) (o_51 T@Ref) (f_14 T@Field_28969_28974) (v@@2 T@PolymorphicMapType_23157) ) (! (succHeap Heap@@21 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@21) (store (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@21) o_51 f_14 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@21) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@21) (store (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@21) o_51 f_14 v@@2)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22608) (o_51@@0 T@Ref) (f_14@@0 T@Field_28956_3961) (v@@3 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@22) (store (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@22) o_51@@0 f_14@@0 v@@3) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@22) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@22) (store (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@22) o_51@@0 f_14@@0 v@@3) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22608) (o_51@@1 T@Ref) (f_14@@1 T@Field_28956_28957) (v@@4 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@23) (store (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@23) o_51@@1 f_14@@1 v@@4) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@23) (store (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@23) o_51@@1 f_14@@1 v@@4) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@23) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22608) (o_51@@2 T@Ref) (f_14@@2 T@Field_28956_22682) (v@@5 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@24) (store (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@24) o_51@@2 f_14@@2 v@@5) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@24) (store (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@24) o_51@@2 f_14@@2 v@@5) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@24) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22608) (o_51@@3 T@Ref) (f_14@@3 T@Field_28956_53) (v@@6 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@25) (store (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@25) o_51@@3 f_14@@3 v@@6) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@25) (store (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@25) o_51@@3 f_14@@3 v@@6) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@25) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22608) (o_51@@4 T@Ref) (f_14@@4 T@Field_22668_28974) (v@@7 T@PolymorphicMapType_23157) ) (! (succHeap Heap@@26 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@26) (store (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@26) o_51@@4 f_14@@4 v@@7) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@26) (store (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@26) o_51@@4 f_14@@4 v@@7) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@26) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22608) (o_51@@5 T@Ref) (f_14@@5 T@Field_28909_3961) (v@@8 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@27) (store (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@27) o_51@@5 f_14@@5 v@@8) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@27) (store (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@27) o_51@@5 f_14@@5 v@@8) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@27) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22608) (o_51@@6 T@Ref) (f_14@@6 T@Field_22668_28957) (v@@9 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@28) (store (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@28) o_51@@6 f_14@@6 v@@9) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@28) (store (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@28) o_51@@6 f_14@@6 v@@9) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@28) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22608) (o_51@@7 T@Ref) (f_14@@7 T@Field_22681_22682) (v@@10 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@29) (store (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@29) o_51@@7 f_14@@7 v@@10) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@29) (store (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@29) o_51@@7 f_14@@7 v@@10) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@29) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22608) (o_51@@8 T@Ref) (f_14@@8 T@Field_22668_53) (v@@11 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_22608 (store (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@30) o_51@@8 f_14@@8 v@@11) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22608 (store (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@30) o_51@@8 f_14@@8 v@@11) (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_15997_15998#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_28957#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_22668_65921#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_53#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_22682#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_3961#PolymorphicMapType_22608| Heap@@30) (|PolymorphicMapType_22608_28956_67082#PolymorphicMapType_22608| Heap@@30)))
)))
(assert (forall ((s@@12 T@Seq_3704) (t@@4 T@Seq_3704) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3704| s@@12))) (= (|Seq#Drop_3704| (|Seq#Append_3704| s@@12 t@@4) n@@9) (|Seq#Append_3704| (|Seq#Drop_3704| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.464:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3704| (|Seq#Append_3704| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_3704) (n@@10 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@12)) (< i@@12 (|Seq#Length_3704| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@10) n@@10) i@@12) (= (|Seq#Index_3704| (|Seq#Drop_3704| s@@13 n@@10) (|Seq#Sub| i@@12 n@@10)) (|Seq#Index_3704| s@@13 i@@12))))
 :qid |stdinbpl.400:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3704| s@@13 n@@10) (|Seq#Index_3704| s@@13 i@@12))
)))
(assert (forall ((s0@@3 T@Seq_3704) (s1@@3 T@Seq_3704) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3704|)) (not (= s1@@3 |Seq#Empty_3704|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3704| s0@@3))) (= (|Seq#Index_3704| (|Seq#Append_3704| s0@@3 s1@@3) n@@11) (|Seq#Index_3704| s0@@3 n@@11)))
 :qid |stdinbpl.340:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3704| (|Seq#Append_3704| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3704| s0@@3 n@@11) (|Seq#Append_3704| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3704) (s1@@4 T@Seq_3704) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3704|)) (not (= s1@@4 |Seq#Empty_3704|))) (<= 0 m)) (< m (|Seq#Length_3704| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3704| s0@@4)) (|Seq#Length_3704| s0@@4)) m) (= (|Seq#Index_3704| (|Seq#Append_3704| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3704| s0@@4))) (|Seq#Index_3704| s1@@4 m))))
 :qid |stdinbpl.345:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3704| s1@@4 m) (|Seq#Append_3704| s0@@4 s1@@4))
)))
(assert (forall ((o_51@@9 T@Ref) (f_62 T@Field_22681_22682) (Heap@@31 T@PolymorphicMapType_22608) ) (!  (=> (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@31) o_51@@9 $allocated) (select (|PolymorphicMapType_22608_15728_53#PolymorphicMapType_22608| Heap@@31) (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@31) o_51@@9 f_62) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22608_15731_15732#PolymorphicMapType_22608| Heap@@31) o_51@@9 f_62))
)))
(assert (forall ((s@@14 T@Seq_3704) (x@@1 Int) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_3704| s@@14))) (= (|Seq#Index_3704| s@@14 i@@13) x@@1)) (|Seq#Contains_3704| s@@14 x@@1))
 :qid |stdinbpl.497:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3704| s@@14 x@@1) (|Seq#Index_3704| s@@14 i@@13))
)))
(assert (forall ((s0@@5 T@Seq_3704) (s1@@5 T@Seq_3704) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3704| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3704| s0@@5 s1@@5))) (not (= (|Seq#Length_3704| s0@@5) (|Seq#Length_3704| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3704| s0@@5 s1@@5))) (= (|Seq#Length_3704| s0@@5) (|Seq#Length_3704| s1@@5))) (= (|Seq#SkolemDiff_3704| s0@@5 s1@@5) (|Seq#SkolemDiff_3704| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3704| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3704| s0@@5 s1@@5) (|Seq#Length_3704| s0@@5))) (not (= (|Seq#Index_3704| s0@@5 (|Seq#SkolemDiff_3704| s0@@5 s1@@5)) (|Seq#Index_3704| s1@@5 (|Seq#SkolemDiff_3704| s0@@5 s1@@5))))))
 :qid |stdinbpl.601:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3704| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_28956_28957) (v_1@@1 T@FrameType) (q T@Field_28956_28957) (w@@1 T@FrameType) (r T@Field_28956_28957) (u T@FrameType) ) (!  (=> (and (InsidePredicate_28956_28956 p@@2 v_1@@1 q w@@1) (InsidePredicate_28956_28956 q w@@1 r u)) (InsidePredicate_28956_28956 p@@2 v_1@@1 r u))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_28956 p@@2 v_1@@1 q w@@1) (InsidePredicate_28956_28956 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_28956_28957) (v_1@@2 T@FrameType) (q@@0 T@Field_28956_28957) (w@@2 T@FrameType) (r@@0 T@Field_22668_28957) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_28956_28956 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_28956_22668 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_28956_22668 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_28956 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_28956_22668 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_28956_28957) (v_1@@3 T@FrameType) (q@@1 T@Field_22668_28957) (w@@3 T@FrameType) (r@@1 T@Field_28956_28957) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_28956_22668 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22668_28956 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_28956_28956 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_22668 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22668_28956 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_28956_28957) (v_1@@4 T@FrameType) (q@@2 T@Field_22668_28957) (w@@4 T@FrameType) (r@@2 T@Field_22668_28957) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_28956_22668 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22668_22668 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_28956_22668 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28956_22668 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22668_22668 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_22668_28957) (v_1@@5 T@FrameType) (q@@3 T@Field_28956_28957) (w@@5 T@FrameType) (r@@3 T@Field_28956_28957) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_28956 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_28956_28956 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_22668_28956 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_28956 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_28956_28956 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_22668_28957) (v_1@@6 T@FrameType) (q@@4 T@Field_28956_28957) (w@@6 T@FrameType) (r@@4 T@Field_22668_28957) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_28956 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_28956_22668 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_22668_22668 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_28956 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_28956_22668 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_22668_28957) (v_1@@7 T@FrameType) (q@@5 T@Field_22668_28957) (w@@7 T@FrameType) (r@@5 T@Field_28956_28957) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_22668 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22668_28956 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_22668_28956 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_22668 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22668_28956 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_22668_28957) (v_1@@8 T@FrameType) (q@@6 T@Field_22668_28957) (w@@8 T@FrameType) (r@@6 T@Field_22668_28957) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22668_22668 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22668_22668 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_22668_22668 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22668_22668 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22668_22668 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_3704) ) (!  (=> (= (|Seq#Length_3704| s@@15) 0) (= s@@15 |Seq#Empty_3704|))
 :qid |stdinbpl.304:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3704| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3704) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_3704| s@@16 n@@12) |Seq#Empty_3704|))
 :qid |stdinbpl.480:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3704| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

