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
(declare-sort T@Field_7031_53 0)
(declare-sort T@Field_7044_7045 0)
(declare-sort T@Field_13534_13535 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13049_2989 0)
(declare-sort T@Field_13095_13097 0)
(declare-sort T@Seq_2867 0)
(declare-sort T@Field_15609_15614 0)
(declare-sort T@Field_4436_13535 0)
(declare-sort T@Field_4436_15614 0)
(declare-sort T@Field_13534_17148 0)
(declare-sort T@Field_13534_53 0)
(declare-sort T@Field_13534_7045 0)
(declare-sort T@Field_13534_2989 0)
(declare-datatypes ((T@PolymorphicMapType_6992 0)) (((PolymorphicMapType_6992 (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| (Array T@Ref T@Field_13534_13535 Real)) (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| (Array T@Ref T@Field_13049_2989 Real)) (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| (Array T@Ref T@Field_13095_13097 Real)) (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| (Array T@Ref T@Field_13534_2989 Real)) (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| (Array T@Ref T@Field_13534_17148 Real)) (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| (Array T@Ref T@Field_13534_53 Real)) (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| (Array T@Ref T@Field_13534_7045 Real)) (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| (Array T@Ref T@Field_15609_15614 Real)) (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| (Array T@Ref T@Field_4436_13535 Real)) (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| (Array T@Ref T@Field_7031_53 Real)) (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| (Array T@Ref T@Field_7044_7045 Real)) (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| (Array T@Ref T@Field_4436_15614 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7520 0)) (((PolymorphicMapType_7520 (|PolymorphicMapType_7520_4434_2989#PolymorphicMapType_7520| (Array T@Ref T@Field_13049_2989 Bool)) (|PolymorphicMapType_7520_4436_16026#PolymorphicMapType_7520| (Array T@Ref T@Field_13095_13097 Bool)) (|PolymorphicMapType_7520_4434_53#PolymorphicMapType_7520| (Array T@Ref T@Field_7031_53 Bool)) (|PolymorphicMapType_7520_4434_7045#PolymorphicMapType_7520| (Array T@Ref T@Field_7044_7045 Bool)) (|PolymorphicMapType_7520_4434_13535#PolymorphicMapType_7520| (Array T@Ref T@Field_4436_13535 Bool)) (|PolymorphicMapType_7520_4434_22571#PolymorphicMapType_7520| (Array T@Ref T@Field_4436_15614 Bool)) (|PolymorphicMapType_7520_13534_2989#PolymorphicMapType_7520| (Array T@Ref T@Field_13534_2989 Bool)) (|PolymorphicMapType_7520_13534_16026#PolymorphicMapType_7520| (Array T@Ref T@Field_13534_17148 Bool)) (|PolymorphicMapType_7520_13534_53#PolymorphicMapType_7520| (Array T@Ref T@Field_13534_53 Bool)) (|PolymorphicMapType_7520_13534_7045#PolymorphicMapType_7520| (Array T@Ref T@Field_13534_7045 Bool)) (|PolymorphicMapType_7520_13534_13535#PolymorphicMapType_7520| (Array T@Ref T@Field_13534_13535 Bool)) (|PolymorphicMapType_7520_13534_23823#PolymorphicMapType_7520| (Array T@Ref T@Field_15609_15614 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6971 0)) (((PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| (Array T@Ref T@Field_7031_53 Bool)) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| (Array T@Ref T@Field_7044_7045 T@Ref)) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| (Array T@Ref T@Field_13534_13535 T@FrameType)) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| (Array T@Ref T@Field_13049_2989 Int)) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| (Array T@Ref T@Field_13095_13097 T@Seq_2867)) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| (Array T@Ref T@Field_15609_15614 T@PolymorphicMapType_7520)) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| (Array T@Ref T@Field_4436_13535 T@FrameType)) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| (Array T@Ref T@Field_4436_15614 T@PolymorphicMapType_7520)) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| (Array T@Ref T@Field_13534_17148 T@Seq_2867)) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| (Array T@Ref T@Field_13534_53 Bool)) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| (Array T@Ref T@Field_13534_7045 T@Ref)) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| (Array T@Ref T@Field_13534_2989 Int)) ) ) ))
(declare-fun $allocated () T@Field_7031_53)
(declare-fun id_2 () T@Field_13049_2989)
(declare-fun neighbors () T@Field_13095_13097)
(declare-fun value_1 () T@Field_7031_53)
(declare-sort T@Seq_13196 0)
(declare-fun |Seq#Length_4455| (T@Seq_13196) Int)
(declare-fun |Seq#Drop_4455| (T@Seq_13196 Int) T@Seq_13196)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_6971 T@PolymorphicMapType_6971) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6971 T@PolymorphicMapType_6971) Bool)
(declare-fun state (T@PolymorphicMapType_6971 T@PolymorphicMapType_6992) Bool)
(declare-fun |peek_neighbors'| (T@PolymorphicMapType_6971 T@Seq_13196 Int) Bool)
(declare-fun |peek_neighbors#frame| (T@FrameType T@Seq_13196 Int) Bool)
(declare-fun null () T@Ref)
(declare-fun Node (T@Ref) T@Field_13534_13535)
(declare-fun |Seq#Index_4455| (T@Seq_13196 Int) T@Ref)
(declare-fun GoodMask (T@PolymorphicMapType_6992) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7520)
(declare-fun dummyFunction_3287 (Bool) Bool)
(declare-fun |peek_neighbors#triggerStateless| (T@Seq_13196 Int) Bool)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_4455| () T@Seq_13196)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun IsPredicateField_4479_4480 (T@Field_13534_13535) Bool)
(declare-fun |Node#trigger_4479| (T@PolymorphicMapType_6971 T@Field_13534_13535) Bool)
(declare-fun |Node#everUsed_4479| (T@Field_13534_13535) Bool)
(declare-fun |Seq#Update_4455| (T@Seq_13196 Int T@Ref) T@Seq_13196)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_4455| (T@Seq_13196 Int) T@Seq_13196)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_13196| (T@Seq_13196 T@Ref) Bool)
(declare-fun |Seq#Skolem_13196| (T@Seq_13196 T@Ref) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6971 T@PolymorphicMapType_6971 T@PolymorphicMapType_6992) Bool)
(declare-fun HasDirectPerm_13534_13535 (T@PolymorphicMapType_6992 T@Ref T@Field_13534_13535) Bool)
(declare-fun PredicateMaskField_4479 (T@Field_13534_13535) T@Field_15609_15614)
(declare-fun IsPredicateField_4436_20910 (T@Field_4436_13535) Bool)
(declare-fun HasDirectPerm_4436_13535 (T@PolymorphicMapType_6992 T@Ref T@Field_4436_13535) Bool)
(declare-fun PredicateMaskField_4436 (T@Field_4436_13535) T@Field_4436_15614)
(declare-fun IsWandField_13534_24988 (T@Field_13534_13535) Bool)
(declare-fun WandMaskField_13534 (T@Field_13534_13535) T@Field_15609_15614)
(declare-fun IsWandField_4436_24631 (T@Field_4436_13535) Bool)
(declare-fun WandMaskField_4436 (T@Field_4436_13535) T@Field_4436_15614)
(declare-fun |Seq#Singleton_4455| (T@Ref) T@Seq_13196)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |Node#sm| (T@Ref) T@Field_15609_15614)
(declare-fun |Seq#Append_13196| (T@Seq_13196 T@Seq_13196) T@Seq_13196)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_6971)
(declare-fun ZeroMask () T@PolymorphicMapType_6992)
(declare-fun InsidePredicate_13534_13534 (T@Field_13534_13535 T@FrameType T@Field_13534_13535 T@FrameType) Bool)
(declare-fun InsidePredicate_7031_7031 (T@Field_4436_13535 T@FrameType T@Field_4436_13535 T@FrameType) Bool)
(declare-fun IsPredicateField_4434_2989 (T@Field_13049_2989) Bool)
(declare-fun IsWandField_4434_2989 (T@Field_13049_2989) Bool)
(declare-fun IsPredicateField_4436_13116 (T@Field_13095_13097) Bool)
(declare-fun IsWandField_4436_13139 (T@Field_13095_13097) Bool)
(declare-fun IsPredicateField_4439_3020 (T@Field_7031_53) Bool)
(declare-fun IsWandField_4439_3020 (T@Field_7031_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4434_33111 (T@Field_4436_15614) Bool)
(declare-fun IsWandField_4434_33127 (T@Field_4436_15614) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4434_7045 (T@Field_7044_7045) Bool)
(declare-fun IsWandField_4434_7045 (T@Field_7044_7045) Bool)
(declare-fun IsPredicateField_4479_32154 (T@Field_15609_15614) Bool)
(declare-fun IsWandField_4479_32170 (T@Field_15609_15614) Bool)
(declare-fun IsPredicateField_4479_7045 (T@Field_13534_7045) Bool)
(declare-fun IsWandField_4479_7045 (T@Field_13534_7045) Bool)
(declare-fun IsPredicateField_4479_53 (T@Field_13534_53) Bool)
(declare-fun IsWandField_4479_53 (T@Field_13534_53) Bool)
(declare-fun IsPredicateField_4479_15042 (T@Field_13534_17148) Bool)
(declare-fun IsWandField_4479_15042 (T@Field_13534_17148) Bool)
(declare-fun IsPredicateField_4479_2989 (T@Field_13534_2989) Bool)
(declare-fun IsWandField_4479_2989 (T@Field_13534_2989) Bool)
(declare-fun HasDirectPerm_13534_20665 (T@PolymorphicMapType_6992 T@Ref T@Field_15609_15614) Bool)
(declare-fun HasDirectPerm_13534_2989 (T@PolymorphicMapType_6992 T@Ref T@Field_13534_2989) Bool)
(declare-fun HasDirectPerm_13534_7045 (T@PolymorphicMapType_6992 T@Ref T@Field_13534_7045) Bool)
(declare-fun HasDirectPerm_13534_53 (T@PolymorphicMapType_6992 T@Ref T@Field_13534_53) Bool)
(declare-fun HasDirectPerm_13534_17148 (T@PolymorphicMapType_6992 T@Ref T@Field_13534_17148) Bool)
(declare-fun HasDirectPerm_4436_19275 (T@PolymorphicMapType_6992 T@Ref T@Field_4436_15614) Bool)
(declare-fun HasDirectPerm_4436_2989 (T@PolymorphicMapType_6992 T@Ref T@Field_13049_2989) Bool)
(declare-fun HasDirectPerm_4436_7045 (T@PolymorphicMapType_6992 T@Ref T@Field_7044_7045) Bool)
(declare-fun HasDirectPerm_4436_53 (T@PolymorphicMapType_6992 T@Ref T@Field_7031_53) Bool)
(declare-fun HasDirectPerm_4436_17148 (T@PolymorphicMapType_6992 T@Ref T@Field_13095_13097) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6992 T@PolymorphicMapType_6992 T@PolymorphicMapType_6992) Bool)
(declare-fun |Seq#Equal_13196| (T@Seq_13196 T@Seq_13196) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_4455| (T@Seq_13196 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_4479_4480 (T@Field_13534_13535) Int)
(declare-fun peek_neighbors (T@PolymorphicMapType_6971 T@Seq_13196 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#SkolemDiff_13196| (T@Seq_13196 T@Seq_13196) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_13534_7031 (T@Field_13534_13535 T@FrameType T@Field_4436_13535 T@FrameType) Bool)
(declare-fun InsidePredicate_7031_13534 (T@Field_4436_13535 T@FrameType T@Field_13534_13535 T@FrameType) Bool)
(assert (distinct $allocated value_1)
)
(assert (forall ((s T@Seq_13196) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4455| s)) (= (|Seq#Length_4455| (|Seq#Drop_4455| s n)) (- (|Seq#Length_4455| s) n))) (=> (< (|Seq#Length_4455| s) n) (= (|Seq#Length_4455| (|Seq#Drop_4455| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4455| (|Seq#Drop_4455| s n)) (|Seq#Length_4455| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4455| (|Seq#Drop_4455| s n)))
 :pattern ( (|Seq#Length_4455| s) (|Seq#Drop_4455| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_2867| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6971) (Heap1 T@PolymorphicMapType_6971) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6971) (Mask T@PolymorphicMapType_6992) (graph T@Seq_13196) (i Int) ) (!  (=> (state Heap Mask) (= (|peek_neighbors'| Heap graph i) (|peek_neighbors#frame| (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap) null (Node (|Seq#Index_4455| graph i))) graph i)))
 :qid |stdinbpl.581:15|
 :skolemid |61|
 :pattern ( (state Heap Mask) (|peek_neighbors'| Heap graph i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6971) (Mask@@0 T@PolymorphicMapType_6992) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6971) (Heap1@@0 T@PolymorphicMapType_6971) (Heap2 T@PolymorphicMapType_6971) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15609_15614) ) (!  (not (select (|PolymorphicMapType_7520_13534_23823#PolymorphicMapType_7520| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_13534_23823#PolymorphicMapType_7520| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13534_13535) ) (!  (not (select (|PolymorphicMapType_7520_13534_13535#PolymorphicMapType_7520| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_13534_13535#PolymorphicMapType_7520| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13534_7045) ) (!  (not (select (|PolymorphicMapType_7520_13534_7045#PolymorphicMapType_7520| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_13534_7045#PolymorphicMapType_7520| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13534_53) ) (!  (not (select (|PolymorphicMapType_7520_13534_53#PolymorphicMapType_7520| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_13534_53#PolymorphicMapType_7520| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13534_17148) ) (!  (not (select (|PolymorphicMapType_7520_13534_16026#PolymorphicMapType_7520| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_13534_16026#PolymorphicMapType_7520| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13534_2989) ) (!  (not (select (|PolymorphicMapType_7520_13534_2989#PolymorphicMapType_7520| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_13534_2989#PolymorphicMapType_7520| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4436_15614) ) (!  (not (select (|PolymorphicMapType_7520_4434_22571#PolymorphicMapType_7520| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_4434_22571#PolymorphicMapType_7520| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4436_13535) ) (!  (not (select (|PolymorphicMapType_7520_4434_13535#PolymorphicMapType_7520| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_4434_13535#PolymorphicMapType_7520| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7044_7045) ) (!  (not (select (|PolymorphicMapType_7520_4434_7045#PolymorphicMapType_7520| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_4434_7045#PolymorphicMapType_7520| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7031_53) ) (!  (not (select (|PolymorphicMapType_7520_4434_53#PolymorphicMapType_7520| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_4434_53#PolymorphicMapType_7520| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_13095_13097) ) (!  (not (select (|PolymorphicMapType_7520_4436_16026#PolymorphicMapType_7520| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_4436_16026#PolymorphicMapType_7520| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_13049_2989) ) (!  (not (select (|PolymorphicMapType_7520_4434_2989#PolymorphicMapType_7520| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7520_4434_2989#PolymorphicMapType_7520| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6971) (graph@@0 T@Seq_13196) (i@@0 Int) ) (! (dummyFunction_3287 (|peek_neighbors#triggerStateless| graph@@0 i@@0))
 :qid |stdinbpl.568:15|
 :skolemid |59|
 :pattern ( (|peek_neighbors'| Heap@@1 graph@@0 i@@0))
)))
(assert (forall ((s@@1 T@Seq_13196) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_4455| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_4455| (|Seq#Drop_4455| s@@1 n@@1) j) (|Seq#Index_4455| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4455| (|Seq#Drop_4455| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_4455| |Seq#Empty_4455|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_4479_4480 (Node self))
 :qid |stdinbpl.677:15|
 :skolemid |64|
 :pattern ( (Node self))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6971) (self@@0 T@Ref) ) (! (|Node#everUsed_4479| (Node self@@0))
 :qid |stdinbpl.696:15|
 :skolemid |68|
 :pattern ( (|Node#trigger_4479| Heap@@2 (Node self@@0)))
)))
(assert (forall ((s@@3 T@Seq_13196) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_4455| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_4455| (|Seq#Update_4455| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_4455| (|Seq#Update_4455| s@@3 i@@1 v) n@@3) (|Seq#Index_4455| s@@3 n@@3)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4455| (|Seq#Update_4455| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_4455| s@@3 n@@3) (|Seq#Update_4455| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_13196) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_4455| s@@5)) (= (|Seq#Length_4455| (|Seq#Take_4455| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_4455| s@@5) n@@5) (= (|Seq#Length_4455| (|Seq#Take_4455| s@@5 n@@5)) (|Seq#Length_4455| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_4455| (|Seq#Take_4455| s@@5 n@@5)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4455| (|Seq#Take_4455| s@@5 n@@5)))
 :pattern ( (|Seq#Take_4455| s@@5 n@@5) (|Seq#Length_4455| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_13196) (x T@Ref) ) (!  (=> (|Seq#Contains_13196| s@@7 x) (and (and (<= 0 (|Seq#Skolem_13196| s@@7 x)) (< (|Seq#Skolem_13196| s@@7 x) (|Seq#Length_4455| s@@7))) (= (|Seq#Index_4455| s@@7 (|Seq#Skolem_13196| s@@7 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_13196| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_13196) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_4455| s@@9 n@@7) s@@9))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4455| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2867| s@@10 n@@8) s@@10))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6971) (ExhaleHeap T@PolymorphicMapType_6971) (Mask@@1 T@PolymorphicMapType_6992) (pm_f_26 T@Field_13534_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_13534_13535 Mask@@1 null pm_f_26) (IsPredicateField_4479_4480 pm_f_26)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_13049_2989) ) (!  (=> (select (|PolymorphicMapType_7520_4434_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26 f_51) (= (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@3) o2_26 f_51) (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_13095_13097) ) (!  (=> (select (|PolymorphicMapType_7520_4436_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@3) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_7031_53) ) (!  (=> (select (|PolymorphicMapType_7520_4434_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@3) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_7044_7045) ) (!  (=> (select (|PolymorphicMapType_7520_4434_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@3) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_4436_13535) ) (!  (=> (select (|PolymorphicMapType_7520_4434_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@3) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap) o2_26@@3 f_51@@3))
))) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_4436_15614) ) (!  (=> (select (|PolymorphicMapType_7520_4434_22571#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@3) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_13534_2989) ) (!  (=> (select (|PolymorphicMapType_7520_13534_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@3) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_13534_17148) ) (!  (=> (select (|PolymorphicMapType_7520_13534_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@3) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap) o2_26@@6 f_51@@6))
))) (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_13534_53) ) (!  (=> (select (|PolymorphicMapType_7520_13534_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@3) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap) o2_26@@7 f_51@@7))
))) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_13534_7045) ) (!  (=> (select (|PolymorphicMapType_7520_13534_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@3) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap) o2_26@@8 f_51@@8))
))) (forall ((o2_26@@9 T@Ref) (f_51@@9 T@Field_13534_13535) ) (!  (=> (select (|PolymorphicMapType_7520_13534_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@9 f_51@@9) (= (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@3) o2_26@@9 f_51@@9) (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap) o2_26@@9 f_51@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap) o2_26@@9 f_51@@9))
))) (forall ((o2_26@@10 T@Ref) (f_51@@10 T@Field_15609_15614) ) (!  (=> (select (|PolymorphicMapType_7520_13534_23823#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) null (PredicateMaskField_4479 pm_f_26))) o2_26@@10 f_51@@10) (= (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@3) o2_26@@10 f_51@@10) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap) o2_26@@10 f_51@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap) o2_26@@10 f_51@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_4479_4480 pm_f_26))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6971) (ExhaleHeap@@0 T@PolymorphicMapType_6971) (Mask@@2 T@PolymorphicMapType_6992) (pm_f_26@@0 T@Field_4436_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4436_13535 Mask@@2 null pm_f_26@@0) (IsPredicateField_4436_20910 pm_f_26@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@11 T@Ref) (f_51@@11 T@Field_13049_2989) ) (!  (=> (select (|PolymorphicMapType_7520_4434_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@11 f_51@@11) (= (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@4) o2_26@@11 f_51@@11) (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@11 f_51@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@11 f_51@@11))
)) (forall ((o2_26@@12 T@Ref) (f_51@@12 T@Field_13095_13097) ) (!  (=> (select (|PolymorphicMapType_7520_4436_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@12 f_51@@12) (= (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@4) o2_26@@12 f_51@@12) (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@12 f_51@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@12 f_51@@12))
))) (forall ((o2_26@@13 T@Ref) (f_51@@13 T@Field_7031_53) ) (!  (=> (select (|PolymorphicMapType_7520_4434_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@13 f_51@@13) (= (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@4) o2_26@@13 f_51@@13) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@13 f_51@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@13 f_51@@13))
))) (forall ((o2_26@@14 T@Ref) (f_51@@14 T@Field_7044_7045) ) (!  (=> (select (|PolymorphicMapType_7520_4434_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@14 f_51@@14) (= (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@4) o2_26@@14 f_51@@14) (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@14 f_51@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@14 f_51@@14))
))) (forall ((o2_26@@15 T@Ref) (f_51@@15 T@Field_4436_13535) ) (!  (=> (select (|PolymorphicMapType_7520_4434_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@15 f_51@@15) (= (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@4) o2_26@@15 f_51@@15) (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@15 f_51@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@15 f_51@@15))
))) (forall ((o2_26@@16 T@Ref) (f_51@@16 T@Field_4436_15614) ) (!  (=> (select (|PolymorphicMapType_7520_4434_22571#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@16 f_51@@16) (= (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) o2_26@@16 f_51@@16) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@16 f_51@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@16 f_51@@16))
))) (forall ((o2_26@@17 T@Ref) (f_51@@17 T@Field_13534_2989) ) (!  (=> (select (|PolymorphicMapType_7520_13534_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@17 f_51@@17) (= (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@4) o2_26@@17 f_51@@17) (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@17 f_51@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@17 f_51@@17))
))) (forall ((o2_26@@18 T@Ref) (f_51@@18 T@Field_13534_17148) ) (!  (=> (select (|PolymorphicMapType_7520_13534_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@18 f_51@@18) (= (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@4) o2_26@@18 f_51@@18) (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@18 f_51@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@18 f_51@@18))
))) (forall ((o2_26@@19 T@Ref) (f_51@@19 T@Field_13534_53) ) (!  (=> (select (|PolymorphicMapType_7520_13534_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@19 f_51@@19) (= (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@4) o2_26@@19 f_51@@19) (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@19 f_51@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@19 f_51@@19))
))) (forall ((o2_26@@20 T@Ref) (f_51@@20 T@Field_13534_7045) ) (!  (=> (select (|PolymorphicMapType_7520_13534_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@20 f_51@@20) (= (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@4) o2_26@@20 f_51@@20) (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@20 f_51@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@20 f_51@@20))
))) (forall ((o2_26@@21 T@Ref) (f_51@@21 T@Field_13534_13535) ) (!  (=> (select (|PolymorphicMapType_7520_13534_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@21 f_51@@21) (= (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@4) o2_26@@21 f_51@@21) (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@21 f_51@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@21 f_51@@21))
))) (forall ((o2_26@@22 T@Ref) (f_51@@22 T@Field_15609_15614) ) (!  (=> (select (|PolymorphicMapType_7520_13534_23823#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@4) null (PredicateMaskField_4436 pm_f_26@@0))) o2_26@@22 f_51@@22) (= (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@4) o2_26@@22 f_51@@22) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@22 f_51@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@0) o2_26@@22 f_51@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsPredicateField_4436_20910 pm_f_26@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6971) (ExhaleHeap@@1 T@PolymorphicMapType_6971) (Mask@@3 T@PolymorphicMapType_6992) (pm_f_26@@1 T@Field_13534_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_13534_13535 Mask@@3 null pm_f_26@@1) (IsWandField_13534_24988 pm_f_26@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@23 T@Ref) (f_51@@23 T@Field_13049_2989) ) (!  (=> (select (|PolymorphicMapType_7520_4434_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@23 f_51@@23) (= (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@5) o2_26@@23 f_51@@23) (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@23 f_51@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@23 f_51@@23))
)) (forall ((o2_26@@24 T@Ref) (f_51@@24 T@Field_13095_13097) ) (!  (=> (select (|PolymorphicMapType_7520_4436_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@24 f_51@@24) (= (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@5) o2_26@@24 f_51@@24) (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@24 f_51@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@24 f_51@@24))
))) (forall ((o2_26@@25 T@Ref) (f_51@@25 T@Field_7031_53) ) (!  (=> (select (|PolymorphicMapType_7520_4434_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@25 f_51@@25) (= (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@5) o2_26@@25 f_51@@25) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@25 f_51@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@25 f_51@@25))
))) (forall ((o2_26@@26 T@Ref) (f_51@@26 T@Field_7044_7045) ) (!  (=> (select (|PolymorphicMapType_7520_4434_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@26 f_51@@26) (= (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@5) o2_26@@26 f_51@@26) (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@26 f_51@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@26 f_51@@26))
))) (forall ((o2_26@@27 T@Ref) (f_51@@27 T@Field_4436_13535) ) (!  (=> (select (|PolymorphicMapType_7520_4434_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@27 f_51@@27) (= (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@5) o2_26@@27 f_51@@27) (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@27 f_51@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@27 f_51@@27))
))) (forall ((o2_26@@28 T@Ref) (f_51@@28 T@Field_4436_15614) ) (!  (=> (select (|PolymorphicMapType_7520_4434_22571#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@28 f_51@@28) (= (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@5) o2_26@@28 f_51@@28) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@28 f_51@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@28 f_51@@28))
))) (forall ((o2_26@@29 T@Ref) (f_51@@29 T@Field_13534_2989) ) (!  (=> (select (|PolymorphicMapType_7520_13534_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@29 f_51@@29) (= (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@5) o2_26@@29 f_51@@29) (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@29 f_51@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@29 f_51@@29))
))) (forall ((o2_26@@30 T@Ref) (f_51@@30 T@Field_13534_17148) ) (!  (=> (select (|PolymorphicMapType_7520_13534_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@30 f_51@@30) (= (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@5) o2_26@@30 f_51@@30) (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@30 f_51@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@30 f_51@@30))
))) (forall ((o2_26@@31 T@Ref) (f_51@@31 T@Field_13534_53) ) (!  (=> (select (|PolymorphicMapType_7520_13534_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@31 f_51@@31) (= (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@5) o2_26@@31 f_51@@31) (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@31 f_51@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@31 f_51@@31))
))) (forall ((o2_26@@32 T@Ref) (f_51@@32 T@Field_13534_7045) ) (!  (=> (select (|PolymorphicMapType_7520_13534_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@32 f_51@@32) (= (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@5) o2_26@@32 f_51@@32) (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@32 f_51@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@32 f_51@@32))
))) (forall ((o2_26@@33 T@Ref) (f_51@@33 T@Field_13534_13535) ) (!  (=> (select (|PolymorphicMapType_7520_13534_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@33 f_51@@33) (= (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@5) o2_26@@33 f_51@@33) (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@33 f_51@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@33 f_51@@33))
))) (forall ((o2_26@@34 T@Ref) (f_51@@34 T@Field_15609_15614) ) (!  (=> (select (|PolymorphicMapType_7520_13534_23823#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) null (WandMaskField_13534 pm_f_26@@1))) o2_26@@34 f_51@@34) (= (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@5) o2_26@@34 f_51@@34) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@34 f_51@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@1) o2_26@@34 f_51@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsWandField_13534_24988 pm_f_26@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6971) (ExhaleHeap@@2 T@PolymorphicMapType_6971) (Mask@@4 T@PolymorphicMapType_6992) (pm_f_26@@2 T@Field_4436_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_4436_13535 Mask@@4 null pm_f_26@@2) (IsWandField_4436_24631 pm_f_26@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_26@@35 T@Ref) (f_51@@35 T@Field_13049_2989) ) (!  (=> (select (|PolymorphicMapType_7520_4434_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@35 f_51@@35) (= (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@6) o2_26@@35 f_51@@35) (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@35 f_51@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@35 f_51@@35))
)) (forall ((o2_26@@36 T@Ref) (f_51@@36 T@Field_13095_13097) ) (!  (=> (select (|PolymorphicMapType_7520_4436_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@36 f_51@@36) (= (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@6) o2_26@@36 f_51@@36) (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@36 f_51@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@36 f_51@@36))
))) (forall ((o2_26@@37 T@Ref) (f_51@@37 T@Field_7031_53) ) (!  (=> (select (|PolymorphicMapType_7520_4434_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@37 f_51@@37) (= (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@6) o2_26@@37 f_51@@37) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@37 f_51@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@37 f_51@@37))
))) (forall ((o2_26@@38 T@Ref) (f_51@@38 T@Field_7044_7045) ) (!  (=> (select (|PolymorphicMapType_7520_4434_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@38 f_51@@38) (= (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@6) o2_26@@38 f_51@@38) (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@38 f_51@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@38 f_51@@38))
))) (forall ((o2_26@@39 T@Ref) (f_51@@39 T@Field_4436_13535) ) (!  (=> (select (|PolymorphicMapType_7520_4434_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@39 f_51@@39) (= (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@6) o2_26@@39 f_51@@39) (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@39 f_51@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@39 f_51@@39))
))) (forall ((o2_26@@40 T@Ref) (f_51@@40 T@Field_4436_15614) ) (!  (=> (select (|PolymorphicMapType_7520_4434_22571#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@40 f_51@@40) (= (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) o2_26@@40 f_51@@40) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@40 f_51@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@40 f_51@@40))
))) (forall ((o2_26@@41 T@Ref) (f_51@@41 T@Field_13534_2989) ) (!  (=> (select (|PolymorphicMapType_7520_13534_2989#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@41 f_51@@41) (= (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@6) o2_26@@41 f_51@@41) (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@41 f_51@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@41 f_51@@41))
))) (forall ((o2_26@@42 T@Ref) (f_51@@42 T@Field_13534_17148) ) (!  (=> (select (|PolymorphicMapType_7520_13534_16026#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@42 f_51@@42) (= (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@6) o2_26@@42 f_51@@42) (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@42 f_51@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@42 f_51@@42))
))) (forall ((o2_26@@43 T@Ref) (f_51@@43 T@Field_13534_53) ) (!  (=> (select (|PolymorphicMapType_7520_13534_53#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@43 f_51@@43) (= (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@6) o2_26@@43 f_51@@43) (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@43 f_51@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@43 f_51@@43))
))) (forall ((o2_26@@44 T@Ref) (f_51@@44 T@Field_13534_7045) ) (!  (=> (select (|PolymorphicMapType_7520_13534_7045#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@44 f_51@@44) (= (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@6) o2_26@@44 f_51@@44) (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@44 f_51@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@44 f_51@@44))
))) (forall ((o2_26@@45 T@Ref) (f_51@@45 T@Field_13534_13535) ) (!  (=> (select (|PolymorphicMapType_7520_13534_13535#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@45 f_51@@45) (= (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@6) o2_26@@45 f_51@@45) (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@45 f_51@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@45 f_51@@45))
))) (forall ((o2_26@@46 T@Ref) (f_51@@46 T@Field_15609_15614) ) (!  (=> (select (|PolymorphicMapType_7520_13534_23823#PolymorphicMapType_7520| (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@6) null (WandMaskField_4436 pm_f_26@@2))) o2_26@@46 f_51@@46) (= (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@6) o2_26@@46 f_51@@46) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@46 f_51@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@2) o2_26@@46 f_51@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_4436_24631 pm_f_26@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6971) (ExhaleHeap@@3 T@PolymorphicMapType_6971) (Mask@@5 T@PolymorphicMapType_6992) (pm_f_26@@3 T@Field_13534_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_13534_13535 Mask@@5 null pm_f_26@@3) (IsPredicateField_4479_4480 pm_f_26@@3)) (= (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@7) null (PredicateMaskField_4479 pm_f_26@@3)) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@3) null (PredicateMaskField_4479 pm_f_26@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_4479_4480 pm_f_26@@3) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@3) null (PredicateMaskField_4479 pm_f_26@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6971) (ExhaleHeap@@4 T@PolymorphicMapType_6971) (Mask@@6 T@PolymorphicMapType_6992) (pm_f_26@@4 T@Field_4436_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_4436_13535 Mask@@6 null pm_f_26@@4) (IsPredicateField_4436_20910 pm_f_26@@4)) (= (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@8) null (PredicateMaskField_4436 pm_f_26@@4)) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@4) null (PredicateMaskField_4436 pm_f_26@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_4436_20910 pm_f_26@@4) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@4) null (PredicateMaskField_4436 pm_f_26@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6971) (ExhaleHeap@@5 T@PolymorphicMapType_6971) (Mask@@7 T@PolymorphicMapType_6992) (pm_f_26@@5 T@Field_13534_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_13534_13535 Mask@@7 null pm_f_26@@5) (IsWandField_13534_24988 pm_f_26@@5)) (= (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@9) null (WandMaskField_13534 pm_f_26@@5)) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@5) null (WandMaskField_13534 pm_f_26@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_13534_24988 pm_f_26@@5) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@5) null (WandMaskField_13534 pm_f_26@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6971) (ExhaleHeap@@6 T@PolymorphicMapType_6971) (Mask@@8 T@PolymorphicMapType_6992) (pm_f_26@@6 T@Field_4436_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_4436_13535 Mask@@8 null pm_f_26@@6) (IsWandField_4436_24631 pm_f_26@@6)) (= (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@10) null (WandMaskField_4436 pm_f_26@@6)) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@6) null (WandMaskField_4436 pm_f_26@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_4436_24631 pm_f_26@@6) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@6) null (WandMaskField_4436 pm_f_26@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_13196| (|Seq#Singleton_4455| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_13196| (|Seq#Singleton_4455| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_13196) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_4455| s@@11))) (= (|Seq#Index_4455| (|Seq#Take_4455| s@@11 n@@9) j@@3) (|Seq#Index_4455| s@@11 j@@3)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4455| (|Seq#Take_4455| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_4455| s@@11 j@@3) (|Seq#Take_4455| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (Node self@@1) (Node self2)) (= self@@1 self2))
 :qid |stdinbpl.687:15|
 :skolemid |66|
 :pattern ( (Node self@@1) (Node self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|Node#sm| self@@2) (|Node#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.691:15|
 :skolemid |67|
 :pattern ( (|Node#sm| self@@2) (|Node#sm| self2@@0))
)))
(assert (forall ((s@@13 T@Seq_13196) (t T@Seq_13196) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_4455| s@@13))) (< n@@11 (|Seq#Length_4455| (|Seq#Append_13196| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_4455| s@@13)) (|Seq#Length_4455| s@@13)) n@@11) (= (|Seq#Take_4455| (|Seq#Append_13196| s@@13 t) n@@11) (|Seq#Append_13196| s@@13 (|Seq#Take_4455| t (|Seq#Sub| n@@11 (|Seq#Length_4455| s@@13)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4455| (|Seq#Append_13196| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_2867| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12) (|Seq#Append_2867| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6971) (ExhaleHeap@@7 T@PolymorphicMapType_6971) (Mask@@9 T@PolymorphicMapType_6992) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@11) o_38 $allocated) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@7) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@7) o_38 $allocated))
)))
(assert (forall ((p T@Field_13534_13535) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13534_13534 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13534_13534 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4436_13535) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7031_7031 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7031_7031 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_13196) (s1 T@Seq_13196) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4455|)) (not (= s1 |Seq#Empty_4455|))) (<= (|Seq#Length_4455| s0) n@@13)) (< n@@13 (|Seq#Length_4455| (|Seq#Append_13196| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_4455| s0)) (|Seq#Length_4455| s0)) n@@13) (= (|Seq#Index_4455| (|Seq#Append_13196| s0 s1) n@@13) (|Seq#Index_4455| s1 (|Seq#Sub| n@@13 (|Seq#Length_4455| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4455| (|Seq#Append_13196| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_4434_2989 id_2)))
(assert  (not (IsWandField_4434_2989 id_2)))
(assert  (not (IsPredicateField_4436_13116 neighbors)))
(assert  (not (IsWandField_4436_13139 neighbors)))
(assert  (not (IsPredicateField_4439_3020 value_1)))
(assert  (not (IsWandField_4439_3020 value_1)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6971) (ExhaleHeap@@8 T@PolymorphicMapType_6971) (Mask@@10 T@PolymorphicMapType_6992) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6992) (o_2@@11 T@Ref) (f_4@@11 T@Field_4436_15614) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| Mask@@11) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4434_33111 f_4@@11))) (not (IsWandField_4434_33127 f_4@@11))) (<= (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| Mask@@11) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| Mask@@11) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6992) (o_2@@12 T@Ref) (f_4@@12 T@Field_7044_7045) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| Mask@@12) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4434_7045 f_4@@12))) (not (IsWandField_4434_7045 f_4@@12))) (<= (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| Mask@@12) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| Mask@@12) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6992) (o_2@@13 T@Ref) (f_4@@13 T@Field_7031_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| Mask@@13) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4439_3020 f_4@@13))) (not (IsWandField_4439_3020 f_4@@13))) (<= (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| Mask@@13) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| Mask@@13) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6992) (o_2@@14 T@Ref) (f_4@@14 T@Field_13095_13097) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| Mask@@14) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4436_13116 f_4@@14))) (not (IsWandField_4436_13139 f_4@@14))) (<= (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| Mask@@14) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| Mask@@14) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6992) (o_2@@15 T@Ref) (f_4@@15 T@Field_13049_2989) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| Mask@@15) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4434_2989 f_4@@15))) (not (IsWandField_4434_2989 f_4@@15))) (<= (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| Mask@@15) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| Mask@@15) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6992) (o_2@@16 T@Ref) (f_4@@16 T@Field_4436_13535) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| Mask@@16) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4436_20910 f_4@@16))) (not (IsWandField_4436_24631 f_4@@16))) (<= (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| Mask@@16) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| Mask@@16) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6992) (o_2@@17 T@Ref) (f_4@@17 T@Field_15609_15614) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| Mask@@17) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4479_32154 f_4@@17))) (not (IsWandField_4479_32170 f_4@@17))) (<= (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| Mask@@17) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| Mask@@17) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6992) (o_2@@18 T@Ref) (f_4@@18 T@Field_13534_7045) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| Mask@@18) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4479_7045 f_4@@18))) (not (IsWandField_4479_7045 f_4@@18))) (<= (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| Mask@@18) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| Mask@@18) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6992) (o_2@@19 T@Ref) (f_4@@19 T@Field_13534_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| Mask@@19) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4479_53 f_4@@19))) (not (IsWandField_4479_53 f_4@@19))) (<= (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| Mask@@19) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| Mask@@19) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6992) (o_2@@20 T@Ref) (f_4@@20 T@Field_13534_17148) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| Mask@@20) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4479_15042 f_4@@20))) (not (IsWandField_4479_15042 f_4@@20))) (<= (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| Mask@@20) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| Mask@@20) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6992) (o_2@@21 T@Ref) (f_4@@21 T@Field_13534_2989) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| Mask@@21) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4479_2989 f_4@@21))) (not (IsWandField_4479_2989 f_4@@21))) (<= (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| Mask@@21) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| Mask@@21) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6992) (o_2@@22 T@Ref) (f_4@@22 T@Field_13534_13535) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| Mask@@22) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4479_4480 f_4@@22))) (not (IsWandField_13534_24988 f_4@@22))) (<= (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| Mask@@22) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| Mask@@22) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6992) (o_2@@23 T@Ref) (f_4@@23 T@Field_15609_15614) ) (! (= (HasDirectPerm_13534_20665 Mask@@23 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| Mask@@23) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13534_20665 Mask@@23 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6992) (o_2@@24 T@Ref) (f_4@@24 T@Field_13534_13535) ) (! (= (HasDirectPerm_13534_13535 Mask@@24 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| Mask@@24) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13534_13535 Mask@@24 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6992) (o_2@@25 T@Ref) (f_4@@25 T@Field_13534_2989) ) (! (= (HasDirectPerm_13534_2989 Mask@@25 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| Mask@@25) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13534_2989 Mask@@25 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6992) (o_2@@26 T@Ref) (f_4@@26 T@Field_13534_7045) ) (! (= (HasDirectPerm_13534_7045 Mask@@26 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| Mask@@26) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13534_7045 Mask@@26 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6992) (o_2@@27 T@Ref) (f_4@@27 T@Field_13534_53) ) (! (= (HasDirectPerm_13534_53 Mask@@27 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| Mask@@27) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13534_53 Mask@@27 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6992) (o_2@@28 T@Ref) (f_4@@28 T@Field_13534_17148) ) (! (= (HasDirectPerm_13534_17148 Mask@@28 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| Mask@@28) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13534_17148 Mask@@28 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6992) (o_2@@29 T@Ref) (f_4@@29 T@Field_4436_15614) ) (! (= (HasDirectPerm_4436_19275 Mask@@29 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| Mask@@29) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4436_19275 Mask@@29 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6992) (o_2@@30 T@Ref) (f_4@@30 T@Field_4436_13535) ) (! (= (HasDirectPerm_4436_13535 Mask@@30 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| Mask@@30) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4436_13535 Mask@@30 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_6992) (o_2@@31 T@Ref) (f_4@@31 T@Field_13049_2989) ) (! (= (HasDirectPerm_4436_2989 Mask@@31 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| Mask@@31) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4436_2989 Mask@@31 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_6992) (o_2@@32 T@Ref) (f_4@@32 T@Field_7044_7045) ) (! (= (HasDirectPerm_4436_7045 Mask@@32 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| Mask@@32) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4436_7045 Mask@@32 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_6992) (o_2@@33 T@Ref) (f_4@@33 T@Field_7031_53) ) (! (= (HasDirectPerm_4436_53 Mask@@33 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| Mask@@33) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4436_53 Mask@@33 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_6992) (o_2@@34 T@Ref) (f_4@@34 T@Field_13095_13097) ) (! (= (HasDirectPerm_4436_17148 Mask@@34 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| Mask@@34) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4436_17148 Mask@@34 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6971) (ExhaleHeap@@9 T@PolymorphicMapType_6971) (Mask@@35 T@PolymorphicMapType_6992) (o_38@@0 T@Ref) (f_51@@47 T@Field_15609_15614) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@35) (=> (HasDirectPerm_13534_20665 Mask@@35 o_38@@0 f_51@@47) (= (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@13) o_38@@0 f_51@@47) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@9) o_38@@0 f_51@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@35) (select (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| ExhaleHeap@@9) o_38@@0 f_51@@47))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6971) (ExhaleHeap@@10 T@PolymorphicMapType_6971) (Mask@@36 T@PolymorphicMapType_6992) (o_38@@1 T@Ref) (f_51@@48 T@Field_13534_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@36) (=> (HasDirectPerm_13534_13535 Mask@@36 o_38@@1 f_51@@48) (= (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@14) o_38@@1 f_51@@48) (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@10) o_38@@1 f_51@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@36) (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| ExhaleHeap@@10) o_38@@1 f_51@@48))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6971) (ExhaleHeap@@11 T@PolymorphicMapType_6971) (Mask@@37 T@PolymorphicMapType_6992) (o_38@@2 T@Ref) (f_51@@49 T@Field_13534_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@37) (=> (HasDirectPerm_13534_2989 Mask@@37 o_38@@2 f_51@@49) (= (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@15) o_38@@2 f_51@@49) (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@11) o_38@@2 f_51@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@37) (select (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| ExhaleHeap@@11) o_38@@2 f_51@@49))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6971) (ExhaleHeap@@12 T@PolymorphicMapType_6971) (Mask@@38 T@PolymorphicMapType_6992) (o_38@@3 T@Ref) (f_51@@50 T@Field_13534_7045) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@38) (=> (HasDirectPerm_13534_7045 Mask@@38 o_38@@3 f_51@@50) (= (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@16) o_38@@3 f_51@@50) (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@12) o_38@@3 f_51@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@38) (select (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| ExhaleHeap@@12) o_38@@3 f_51@@50))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6971) (ExhaleHeap@@13 T@PolymorphicMapType_6971) (Mask@@39 T@PolymorphicMapType_6992) (o_38@@4 T@Ref) (f_51@@51 T@Field_13534_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@39) (=> (HasDirectPerm_13534_53 Mask@@39 o_38@@4 f_51@@51) (= (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@17) o_38@@4 f_51@@51) (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@13) o_38@@4 f_51@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@39) (select (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| ExhaleHeap@@13) o_38@@4 f_51@@51))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6971) (ExhaleHeap@@14 T@PolymorphicMapType_6971) (Mask@@40 T@PolymorphicMapType_6992) (o_38@@5 T@Ref) (f_51@@52 T@Field_13534_17148) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@40) (=> (HasDirectPerm_13534_17148 Mask@@40 o_38@@5 f_51@@52) (= (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@18) o_38@@5 f_51@@52) (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@14) o_38@@5 f_51@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@40) (select (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| ExhaleHeap@@14) o_38@@5 f_51@@52))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6971) (ExhaleHeap@@15 T@PolymorphicMapType_6971) (Mask@@41 T@PolymorphicMapType_6992) (o_38@@6 T@Ref) (f_51@@53 T@Field_4436_15614) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@41) (=> (HasDirectPerm_4436_19275 Mask@@41 o_38@@6 f_51@@53) (= (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@19) o_38@@6 f_51@@53) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@15) o_38@@6 f_51@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@41) (select (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| ExhaleHeap@@15) o_38@@6 f_51@@53))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6971) (ExhaleHeap@@16 T@PolymorphicMapType_6971) (Mask@@42 T@PolymorphicMapType_6992) (o_38@@7 T@Ref) (f_51@@54 T@Field_4436_13535) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@42) (=> (HasDirectPerm_4436_13535 Mask@@42 o_38@@7 f_51@@54) (= (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@20) o_38@@7 f_51@@54) (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@16) o_38@@7 f_51@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@42) (select (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| ExhaleHeap@@16) o_38@@7 f_51@@54))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6971) (ExhaleHeap@@17 T@PolymorphicMapType_6971) (Mask@@43 T@PolymorphicMapType_6992) (o_38@@8 T@Ref) (f_51@@55 T@Field_13049_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@43) (=> (HasDirectPerm_4436_2989 Mask@@43 o_38@@8 f_51@@55) (= (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@21) o_38@@8 f_51@@55) (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@17) o_38@@8 f_51@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@43) (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| ExhaleHeap@@17) o_38@@8 f_51@@55))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6971) (ExhaleHeap@@18 T@PolymorphicMapType_6971) (Mask@@44 T@PolymorphicMapType_6992) (o_38@@9 T@Ref) (f_51@@56 T@Field_7044_7045) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@44) (=> (HasDirectPerm_4436_7045 Mask@@44 o_38@@9 f_51@@56) (= (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@22) o_38@@9 f_51@@56) (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@18) o_38@@9 f_51@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@44) (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| ExhaleHeap@@18) o_38@@9 f_51@@56))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6971) (ExhaleHeap@@19 T@PolymorphicMapType_6971) (Mask@@45 T@PolymorphicMapType_6992) (o_38@@10 T@Ref) (f_51@@57 T@Field_7031_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@45) (=> (HasDirectPerm_4436_53 Mask@@45 o_38@@10 f_51@@57) (= (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@23) o_38@@10 f_51@@57) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@19) o_38@@10 f_51@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@45) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| ExhaleHeap@@19) o_38@@10 f_51@@57))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6971) (ExhaleHeap@@20 T@PolymorphicMapType_6971) (Mask@@46 T@PolymorphicMapType_6992) (o_38@@11 T@Ref) (f_51@@58 T@Field_13095_13097) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@46) (=> (HasDirectPerm_4436_17148 Mask@@46 o_38@@11 f_51@@58) (= (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@24) o_38@@11 f_51@@58) (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@20) o_38@@11 f_51@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@46) (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| ExhaleHeap@@20) o_38@@11 f_51@@58))
)))
(assert (forall ((s0@@1 T@Seq_13196) (s1@@1 T@Seq_13196) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_4455|)) (not (= s1@@1 |Seq#Empty_4455|))) (= (|Seq#Length_4455| (|Seq#Append_13196| s0@@1 s1@@1)) (+ (|Seq#Length_4455| s0@@1) (|Seq#Length_4455| s1@@1))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4455| (|Seq#Append_13196| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4436_15614) ) (! (= (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7044_7045) ) (! (= (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_7031_53) ) (! (= (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_13095_13097) ) (! (= (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_13049_2989) ) (! (= (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_4436_13535) ) (! (= (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_15609_15614) ) (! (= (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_13534_7045) ) (! (= (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_13534_53) ) (! (= (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_13534_17148) ) (! (= (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_13534_2989) ) (! (= (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_13534_13535) ) (! (= (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((s@@15 T@Seq_13196) (t@@1 T@Seq_13196) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_4455| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_4455| s@@15)) (|Seq#Length_4455| s@@15)) n@@15) (= (|Seq#Drop_4455| (|Seq#Append_13196| s@@15 t@@1) n@@15) (|Seq#Drop_4455| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_4455| s@@15))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4455| (|Seq#Append_13196| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16) (|Seq#Drop_2867| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6992) (SummandMask1 T@PolymorphicMapType_6992) (SummandMask2 T@PolymorphicMapType_6992) (o_2@@47 T@Ref) (f_4@@47 T@Field_4436_15614) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6992) (SummandMask1@@0 T@PolymorphicMapType_6992) (SummandMask2@@0 T@PolymorphicMapType_6992) (o_2@@48 T@Ref) (f_4@@48 T@Field_7044_7045) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6992) (SummandMask1@@1 T@PolymorphicMapType_6992) (SummandMask2@@1 T@PolymorphicMapType_6992) (o_2@@49 T@Ref) (f_4@@49 T@Field_7031_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6992) (SummandMask1@@2 T@PolymorphicMapType_6992) (SummandMask2@@2 T@PolymorphicMapType_6992) (o_2@@50 T@Ref) (f_4@@50 T@Field_13095_13097) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6992) (SummandMask1@@3 T@PolymorphicMapType_6992) (SummandMask2@@3 T@PolymorphicMapType_6992) (o_2@@51 T@Ref) (f_4@@51 T@Field_13049_2989) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6992) (SummandMask1@@4 T@PolymorphicMapType_6992) (SummandMask2@@4 T@PolymorphicMapType_6992) (o_2@@52 T@Ref) (f_4@@52 T@Field_4436_13535) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6992) (SummandMask1@@5 T@PolymorphicMapType_6992) (SummandMask2@@5 T@PolymorphicMapType_6992) (o_2@@53 T@Ref) (f_4@@53 T@Field_15609_15614) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6992) (SummandMask1@@6 T@PolymorphicMapType_6992) (SummandMask2@@6 T@PolymorphicMapType_6992) (o_2@@54 T@Ref) (f_4@@54 T@Field_13534_7045) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6992) (SummandMask1@@7 T@PolymorphicMapType_6992) (SummandMask2@@7 T@PolymorphicMapType_6992) (o_2@@55 T@Ref) (f_4@@55 T@Field_13534_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6992) (SummandMask1@@8 T@PolymorphicMapType_6992) (SummandMask2@@8 T@PolymorphicMapType_6992) (o_2@@56 T@Ref) (f_4@@56 T@Field_13534_17148) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_6992) (SummandMask1@@9 T@PolymorphicMapType_6992) (SummandMask2@@9 T@PolymorphicMapType_6992) (o_2@@57 T@Ref) (f_4@@57 T@Field_13534_2989) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_6992) (SummandMask1@@10 T@PolymorphicMapType_6992) (SummandMask2@@10 T@PolymorphicMapType_6992) (o_2@@58 T@Ref) (f_4@@58 T@Field_13534_13535) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_13196) (b T@Seq_13196) ) (!  (=> (|Seq#Equal_13196| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_13196| a b))
)))
(assert (forall ((a@@0 T@Seq_2867) (b@@0 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_13196) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_4455| s@@17))) (|Seq#ContainsTrigger_4455| s@@17 (|Seq#Index_4455| s@@17 i@@5)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4455| s@@17 i@@5))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@6)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@6))
)))
(assert (forall ((s0@@3 T@Seq_13196) (s1@@3 T@Seq_13196) ) (!  (and (=> (= s0@@3 |Seq#Empty_4455|) (= (|Seq#Append_13196| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_4455|) (= (|Seq#Append_13196| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_13196| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_4455| (|Seq#Singleton_4455| t@@3) 0) t@@3)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4455| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@4) 0) t@@4)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@4))
)))
(assert (forall ((s@@19 T@Seq_13196) ) (! (<= 0 (|Seq#Length_4455| s@@19))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4455| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_13196) (s1@@5 T@Seq_13196) ) (!  (=> (|Seq#Equal_13196| s0@@5 s1@@5) (and (= (|Seq#Length_4455| s0@@5) (|Seq#Length_4455| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_4455| s0@@5))) (= (|Seq#Index_4455| s0@@5 j@@6) (|Seq#Index_4455| s1@@5 j@@6)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4455| s0@@5 j@@6))
 :pattern ( (|Seq#Index_4455| s1@@5 j@@6))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_13196| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@6 s1@@6))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_4479_4480 (Node self@@3)) 0)
 :qid |stdinbpl.681:15|
 :skolemid |65|
 :pattern ( (Node self@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_4455| (|Seq#Singleton_4455| t@@5)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4455| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@6)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@6))
)))
(assert (forall ((s@@21 T@Seq_13196) (t@@7 T@Seq_13196) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_4455| s@@21))) (= (|Seq#Take_4455| (|Seq#Append_13196| s@@21 t@@7) n@@17) (|Seq#Take_4455| s@@21 n@@17)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4455| (|Seq#Append_13196| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18) (|Seq#Take_2867| s@@22 n@@18)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_13196) (i@@7 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_4455| s@@23))) (= (|Seq#Length_4455| (|Seq#Update_4455| s@@23 i@@7 v@@2)) (|Seq#Length_4455| s@@23)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4455| (|Seq#Update_4455| s@@23 i@@7 v@@2)))
 :pattern ( (|Seq#Length_4455| s@@23) (|Seq#Update_4455| s@@23 i@@7 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@8 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@8 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@8 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@8 v@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6971) (o_56 T@Ref) (f_22 T@Field_15609_15614) (v@@4 T@PolymorphicMapType_7520) ) (! (succHeap Heap@@25 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@25) (store (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@25) o_56 f_22 v@@4) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@25) (store (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@25) o_56 f_22 v@@4) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@25) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6971) (o_56@@0 T@Ref) (f_22@@0 T@Field_13534_17148) (v@@5 T@Seq_2867) ) (! (succHeap Heap@@26 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@26) (store (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@26) o_56@@0 f_22@@0 v@@5) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@26) (store (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@26) o_56@@0 f_22@@0 v@@5) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@26) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6971) (o_56@@1 T@Ref) (f_22@@1 T@Field_13534_2989) (v@@6 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@27) (store (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@27) o_56@@1 f_22@@1 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@27) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@27) (store (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@27) o_56@@1 f_22@@1 v@@6)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6971) (o_56@@2 T@Ref) (f_22@@2 T@Field_13534_13535) (v@@7 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@28) (store (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@28) o_56@@2 f_22@@2 v@@7) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@28) (store (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@28) o_56@@2 f_22@@2 v@@7) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@28) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6971) (o_56@@3 T@Ref) (f_22@@3 T@Field_13534_7045) (v@@8 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@29) (store (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@29) o_56@@3 f_22@@3 v@@8) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@29) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@29) (store (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@29) o_56@@3 f_22@@3 v@@8) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6971) (o_56@@4 T@Ref) (f_22@@4 T@Field_13534_53) (v@@9 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@30) (store (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@30) o_56@@4 f_22@@4 v@@9) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@30) (store (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@30) o_56@@4 f_22@@4 v@@9) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@30) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6971) (o_56@@5 T@Ref) (f_22@@5 T@Field_4436_15614) (v@@10 T@PolymorphicMapType_7520) ) (! (succHeap Heap@@31 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@31) (store (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@31) o_56@@5 f_22@@5 v@@10) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@31) (store (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@31) o_56@@5 f_22@@5 v@@10) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@31) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6971) (o_56@@6 T@Ref) (f_22@@6 T@Field_13095_13097) (v@@11 T@Seq_2867) ) (! (succHeap Heap@@32 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@32) (store (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@32) o_56@@6 f_22@@6 v@@11) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@32) (store (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@32) o_56@@6 f_22@@6 v@@11) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@32) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6971) (o_56@@7 T@Ref) (f_22@@7 T@Field_13049_2989) (v@@12 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@33) (store (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@33) o_56@@7 f_22@@7 v@@12) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@33) (store (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@33) o_56@@7 f_22@@7 v@@12) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@33) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6971) (o_56@@8 T@Ref) (f_22@@8 T@Field_4436_13535) (v@@13 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@34) (store (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@34) o_56@@8 f_22@@8 v@@13) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@34) (store (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@34) o_56@@8 f_22@@8 v@@13) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@34) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6971) (o_56@@9 T@Ref) (f_22@@9 T@Field_7044_7045) (v@@14 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@35) (store (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@35) o_56@@9 f_22@@9 v@@14) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@35) (store (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@35) o_56@@9 f_22@@9 v@@14) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@35) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6971) (o_56@@10 T@Ref) (f_22@@10 T@Field_7031_53) (v@@15 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_6971 (store (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@36) o_56@@10 f_22@@10 v@@15) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6971 (store (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@36) o_56@@10 f_22@@10 v@@15) (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4483_15711#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4436_13535#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_4436_19317#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_17148#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_53#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_7045#PolymorphicMapType_6971| Heap@@36) (|PolymorphicMapType_6971_13534_2989#PolymorphicMapType_6971| Heap@@36)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_4479 (Node self@@4)) (|Node#sm| self@@4))
 :qid |stdinbpl.673:15|
 :skolemid |63|
 :pattern ( (PredicateMaskField_4479 (Node self@@4)))
)))
(assert (forall ((s@@25 T@Seq_13196) (t@@9 T@Seq_13196) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_4455| s@@25))) (= (|Seq#Drop_4455| (|Seq#Append_13196| s@@25 t@@9) n@@19) (|Seq#Append_13196| (|Seq#Drop_4455| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4455| (|Seq#Append_13196| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20) (|Seq#Append_2867| (|Seq#Drop_2867| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_13196) (n@@21 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@9)) (< i@@9 (|Seq#Length_4455| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@21) n@@21) i@@9) (= (|Seq#Index_4455| (|Seq#Drop_4455| s@@27 n@@21) (|Seq#Sub| i@@9 n@@21)) (|Seq#Index_4455| s@@27 i@@9))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4455| s@@27 n@@21) (|Seq#Index_4455| s@@27 i@@9))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@10)) (< i@@10 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@22) n@@22) i@@10) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Sub| i@@10 n@@22)) (|Seq#Index_2867| s@@28 i@@10))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@10))
)))
(assert (forall ((s0@@7 T@Seq_13196) (s1@@7 T@Seq_13196) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_4455|)) (not (= s1@@7 |Seq#Empty_4455|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_4455| s0@@7))) (= (|Seq#Index_4455| (|Seq#Append_13196| s0@@7 s1@@7) n@@23) (|Seq#Index_4455| s0@@7 n@@23)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4455| (|Seq#Append_13196| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_4455| s0@@7 n@@23) (|Seq#Append_13196| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_2867| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_13196) (s1@@9 T@Seq_13196) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_4455|)) (not (= s1@@9 |Seq#Empty_4455|))) (<= 0 m)) (< m (|Seq#Length_4455| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_4455| s0@@9)) (|Seq#Length_4455| s0@@9)) m) (= (|Seq#Index_4455| (|Seq#Append_13196| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_4455| s0@@9))) (|Seq#Index_4455| s1@@9 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4455| s1@@9 m) (|Seq#Append_13196| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_2867| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6971) (Mask@@47 T@PolymorphicMapType_6992) (graph@@1 T@Seq_13196) (i@@11 Int) ) (!  (=> (and (state Heap@@37 Mask@@47) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_4455| graph@@1))) (peek_neighbors Heap@@37 graph@@1 i@@11)))
 :qid |stdinbpl.574:15|
 :skolemid |60|
 :pattern ( (state Heap@@37 Mask@@47) (peek_neighbors Heap@@37 graph@@1 i@@11))
 :pattern ( (state Heap@@37 Mask@@47) (|peek_neighbors#triggerStateless| graph@@1 i@@11) (|Node#trigger_4479| Heap@@37 (Node (|Seq#Index_4455| graph@@1 i@@11))))
)))
(assert (forall ((o_56@@11 T@Ref) (f_3 T@Field_7044_7045) (Heap@@38 T@PolymorphicMapType_6971) ) (!  (=> (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@38) o_56@@11 $allocated) (select (|PolymorphicMapType_6971_4246_53#PolymorphicMapType_6971| Heap@@38) (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@38) o_56@@11 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6971_4249_4250#PolymorphicMapType_6971| Heap@@38) o_56@@11 f_3))
)))
(assert (forall ((s@@29 T@Seq_13196) (x@@3 T@Ref) (i@@12 Int) ) (!  (=> (and (and (<= 0 i@@12) (< i@@12 (|Seq#Length_4455| s@@29))) (= (|Seq#Index_4455| s@@29 i@@12) x@@3)) (|Seq#Contains_13196| s@@29 x@@3))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_13196| s@@29 x@@3) (|Seq#Index_4455| s@@29 i@@12))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@13) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@13))
)))
(assert (forall ((s0@@11 T@Seq_13196) (s1@@11 T@Seq_13196) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_13196| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_13196| s0@@11 s1@@11))) (not (= (|Seq#Length_4455| s0@@11) (|Seq#Length_4455| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_13196| s0@@11 s1@@11))) (= (|Seq#Length_4455| s0@@11) (|Seq#Length_4455| s1@@11))) (= (|Seq#SkolemDiff_13196| s0@@11 s1@@11) (|Seq#SkolemDiff_13196| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_13196| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_13196| s0@@11 s1@@11) (|Seq#Length_4455| s0@@11))) (not (= (|Seq#Index_4455| s0@@11 (|Seq#SkolemDiff_13196| s0@@11 s1@@11)) (|Seq#Index_4455| s1@@11 (|Seq#SkolemDiff_13196| s0@@11 s1@@11))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_13196| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_13534_13535) (v_1@@1 T@FrameType) (q T@Field_13534_13535) (w@@1 T@FrameType) (r T@Field_13534_13535) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13534_13534 p@@2 v_1@@1 q w@@1) (InsidePredicate_13534_13534 q w@@1 r u)) (InsidePredicate_13534_13534 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13534_13534 p@@2 v_1@@1 q w@@1) (InsidePredicate_13534_13534 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_13534_13535) (v_1@@2 T@FrameType) (q@@0 T@Field_13534_13535) (w@@2 T@FrameType) (r@@0 T@Field_4436_13535) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13534_13534 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13534_7031 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_13534_7031 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13534_13534 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13534_7031 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_13534_13535) (v_1@@3 T@FrameType) (q@@1 T@Field_4436_13535) (w@@3 T@FrameType) (r@@1 T@Field_13534_13535) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13534_7031 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7031_13534 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_13534_13534 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13534_7031 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7031_13534 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_13534_13535) (v_1@@4 T@FrameType) (q@@2 T@Field_4436_13535) (w@@4 T@FrameType) (r@@2 T@Field_4436_13535) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13534_7031 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7031_7031 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_13534_7031 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13534_7031 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7031_7031 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4436_13535) (v_1@@5 T@FrameType) (q@@3 T@Field_13534_13535) (w@@5 T@FrameType) (r@@3 T@Field_13534_13535) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7031_13534 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13534_13534 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7031_13534 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7031_13534 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13534_13534 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4436_13535) (v_1@@6 T@FrameType) (q@@4 T@Field_13534_13535) (w@@6 T@FrameType) (r@@4 T@Field_4436_13535) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7031_13534 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13534_7031 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7031_7031 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7031_13534 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13534_7031 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4436_13535) (v_1@@7 T@FrameType) (q@@5 T@Field_4436_13535) (w@@7 T@FrameType) (r@@5 T@Field_13534_13535) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7031_7031 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7031_13534 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7031_13534 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7031_7031 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7031_13534 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4436_13535) (v_1@@8 T@FrameType) (q@@6 T@Field_4436_13535) (w@@8 T@FrameType) (r@@6 T@Field_4436_13535) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7031_7031 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7031_7031 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7031_7031 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7031_7031 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7031_7031 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_13196) ) (!  (=> (= (|Seq#Length_4455| s@@31) 0) (= s@@31 |Seq#Empty_4455|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4455| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_2867|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_13196) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_4455| s@@33 n@@25) |Seq#Empty_4455|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4455| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@34 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6971) (graph@@2 T@Seq_13196) (i@@14 Int) ) (!  (and (= (peek_neighbors Heap@@39 graph@@2 i@@14) (|peek_neighbors'| Heap@@39 graph@@2 i@@14)) (dummyFunction_3287 (|peek_neighbors#triggerStateless| graph@@2 i@@14)))
 :qid |stdinbpl.564:15|
 :skolemid |58|
 :pattern ( (peek_neighbors Heap@@39 graph@@2 i@@14))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@40 () T@PolymorphicMapType_6971)
(declare-fun i@@15 () Int)
(declare-fun graph@@3 () T@Seq_13196)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_6992)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2989 (Int) T@FrameType)
(declare-fun FrameFragment_14560 (T@Seq_2867) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_6992)
(declare-fun wildcard@2 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_6992)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |peek_neighbors#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (state Heap@@40 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 0) (<= 0 i@@15)) (and (< i@@15 (|Seq#Length_4455| graph@@3)) (state Heap@@40 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i@@15 0)) (=> (>= i@@15 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i@@15 (|Seq#Length_4455| graph@@3))) (=> (< i@@15 (|Seq#Length_4455| graph@@3)) (=> (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_6992 (store (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| ZeroMask) null (Node (|Seq#Index_4455| graph@@3 i@@15)) (+ (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| ZeroMask) null (Node (|Seq#Index_4455| graph@@3 i@@15))) wildcard@0)) (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| ZeroMask) (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| ZeroMask)))) (=> (and (and (state Heap@@40 Mask@0) (state Heap@@40 Mask@0)) (and (|Node#trigger_4479| Heap@@40 (Node (|Seq#Index_4455| graph@@3 i@@15))) (= (select (|PolymorphicMapType_6971_4479_4480#PolymorphicMapType_6971| Heap@@40) null (Node (|Seq#Index_4455| graph@@3 i@@15))) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_6971_4434_2989#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) id_2)) (FrameFragment_14560 (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) neighbors)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| Mask@0) null (Node (|Seq#Index_4455| graph@@3 i@@15)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| Mask@0) null (Node (|Seq#Index_4455| graph@@3 i@@15))))) (=> (and (> wildcard@1 NoPerm) (not (= (|Seq#Index_4455| graph@@3 i@@15) null))) (=> (and (and (and (= UnfoldingMask@0 (PolymorphicMapType_6992 (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| Mask@0) (store (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| Mask@0) (|Seq#Index_4455| graph@@3 i@@15) id_2 (+ (select (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| Mask@0) (|Seq#Index_4455| graph@@3 i@@15) id_2) wildcard@1)) (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| Mask@0) (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| Mask@0))) (state Heap@@40 UnfoldingMask@0)) (and (> wildcard@2 NoPerm) (not (= (|Seq#Index_4455| graph@@3 i@@15) null)))) (and (and (= UnfoldingMask@1 (PolymorphicMapType_6992 (|PolymorphicMapType_6992_4479_4480#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4434_2989#PolymorphicMapType_6992| UnfoldingMask@0) (store (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| UnfoldingMask@0) (|Seq#Index_4455| graph@@3 i@@15) neighbors (+ (select (|PolymorphicMapType_6992_4436_15042#PolymorphicMapType_6992| UnfoldingMask@0) (|Seq#Index_4455| graph@@3 i@@15) neighbors) wildcard@2)) (|PolymorphicMapType_6992_4479_2989#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4479_15042#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4479_53#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4479_7045#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4479_29897#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4434_4480#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4434_53#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4434_7045#PolymorphicMapType_6992| UnfoldingMask@0) (|PolymorphicMapType_6992_4434_30379#PolymorphicMapType_6992| UnfoldingMask@0))) (state Heap@@40 UnfoldingMask@1)) (and (forall ((i$0 Int) (j@@8 Int) ) (!  (=> (and (and (<= 0 i$0) (< i$0 (|Seq#Length_2867| (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) neighbors)))) (and (and (<= 0 j@@8) (< j@@8 (|Seq#Length_2867| (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) neighbors)))) (not (= i$0 j@@8)))) (not (= (|Seq#Index_2867| (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) neighbors) i$0) (|Seq#Index_2867| (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) neighbors) j@@8))))
 :qid |stdinbpl.647:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_2867| (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) neighbors) i$0) (|Seq#Index_2867| (select (|PolymorphicMapType_6971_4436_14539#PolymorphicMapType_6971| Heap@@40) (|Seq#Index_4455| graph@@3 i@@15) neighbors) j@@8))
)) (state Heap@@40 UnfoldingMask@1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= i@@15 0)) (=> (>= i@@15 0) (=> (= (ControlFlow 0 2) (- 0 1)) (< i@@15 (|Seq#Length_4455| graph@@3)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 7) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
