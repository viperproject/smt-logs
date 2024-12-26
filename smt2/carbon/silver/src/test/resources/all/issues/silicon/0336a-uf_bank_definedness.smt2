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
(declare-sort T@Field_11026_53 0)
(declare-sort T@Field_11039_11040 0)
(declare-sort T@Field_17276_3394 0)
(declare-sort T@Field_17324_17325 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17338_17343 0)
(declare-sort T@Field_6934_6940 0)
(declare-sort T@Field_6934_17343 0)
(declare-sort T@Field_6939_3394 0)
(declare-sort T@Field_6939_53 0)
(declare-sort T@Field_6939_11040 0)
(declare-datatypes ((T@PolymorphicMapType_10987 0)) (((PolymorphicMapType_10987 (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| (Array T@Ref T@Field_11039_11040 Real)) (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| (Array T@Ref T@Field_17276_3394 Real)) (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| (Array T@Ref T@Field_17324_17325 Real)) (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| (Array T@Ref T@Field_6934_6940 Real)) (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| (Array T@Ref T@Field_11026_53 Real)) (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| (Array T@Ref T@Field_6934_17343 Real)) (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| (Array T@Ref T@Field_6939_11040 Real)) (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| (Array T@Ref T@Field_6939_3394 Real)) (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| (Array T@Ref T@Field_6939_53 Real)) (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| (Array T@Ref T@Field_17338_17343 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11515 0)) (((PolymorphicMapType_11515 (|PolymorphicMapType_11515_6931_6932#PolymorphicMapType_11515| (Array T@Ref T@Field_11039_11040 Bool)) (|PolymorphicMapType_11515_6934_3394#PolymorphicMapType_11515| (Array T@Ref T@Field_17276_3394 Bool)) (|PolymorphicMapType_11515_6931_53#PolymorphicMapType_11515| (Array T@Ref T@Field_11026_53 Bool)) (|PolymorphicMapType_11515_6931_17325#PolymorphicMapType_11515| (Array T@Ref T@Field_6934_6940 Bool)) (|PolymorphicMapType_11515_6931_33986#PolymorphicMapType_11515| (Array T@Ref T@Field_6934_17343 Bool)) (|PolymorphicMapType_11515_17324_6932#PolymorphicMapType_11515| (Array T@Ref T@Field_6939_11040 Bool)) (|PolymorphicMapType_11515_17324_3394#PolymorphicMapType_11515| (Array T@Ref T@Field_6939_3394 Bool)) (|PolymorphicMapType_11515_17324_53#PolymorphicMapType_11515| (Array T@Ref T@Field_6939_53 Bool)) (|PolymorphicMapType_11515_17324_17325#PolymorphicMapType_11515| (Array T@Ref T@Field_17324_17325 Bool)) (|PolymorphicMapType_11515_17324_35034#PolymorphicMapType_11515| (Array T@Ref T@Field_17338_17343 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10966 0)) (((PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| (Array T@Ref T@Field_11026_53 Bool)) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| (Array T@Ref T@Field_11039_11040 T@Ref)) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| (Array T@Ref T@Field_17276_3394 Int)) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| (Array T@Ref T@Field_17324_17325 T@FrameType)) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| (Array T@Ref T@Field_17338_17343 T@PolymorphicMapType_11515)) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| (Array T@Ref T@Field_6934_6940 T@FrameType)) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| (Array T@Ref T@Field_6934_17343 T@PolymorphicMapType_11515)) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| (Array T@Ref T@Field_6939_3394 Int)) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| (Array T@Ref T@Field_6939_53 Bool)) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| (Array T@Ref T@Field_6939_11040 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_11026_53)
(declare-fun parent () T@Field_11039_11040)
(declare-fun rank () T@Field_17276_3394)
(declare-fun succHeap (T@PolymorphicMapType_10966 T@PolymorphicMapType_10966) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10966 T@PolymorphicMapType_10966) Bool)
(declare-fun state (T@PolymorphicMapType_10966 T@PolymorphicMapType_10987) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10987) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11515)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun uf_bank ((Array T@Ref Bool)) T@Field_17324_17325)
(declare-fun IsPredicateField_6939_6940 (T@Field_17324_17325) Bool)
(declare-fun |uf_bank#trigger_6939| (T@PolymorphicMapType_10966 T@Field_17324_17325) Bool)
(declare-fun |uf_bank#everUsed_6939| (T@Field_17324_17325) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10966 T@PolymorphicMapType_10966 T@PolymorphicMapType_10987) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6939 (T@Field_17324_17325) T@Field_17338_17343)
(declare-fun HasDirectPerm_6939_6940 (T@PolymorphicMapType_10987 T@Ref T@Field_17324_17325) Bool)
(declare-fun IsPredicateField_6934_32529 (T@Field_6934_6940) Bool)
(declare-fun PredicateMaskField_6934 (T@Field_6934_6940) T@Field_6934_17343)
(declare-fun HasDirectPerm_6934_6940 (T@PolymorphicMapType_10987 T@Ref T@Field_6934_6940) Bool)
(declare-fun IsWandField_6939_36199 (T@Field_17324_17325) Bool)
(declare-fun WandMaskField_6939 (T@Field_17324_17325) T@Field_17338_17343)
(declare-fun IsWandField_6934_35842 (T@Field_6934_6940) Bool)
(declare-fun WandMaskField_6934 (T@Field_6934_6940) T@Field_6934_17343)
(declare-fun |uf_bank#sm| ((Array T@Ref Bool)) T@Field_17338_17343)
(declare-fun dummyHeap () T@PolymorphicMapType_10966)
(declare-fun ZeroMask () T@PolymorphicMapType_10987)
(declare-fun InsidePredicate_17324_17324 (T@Field_17324_17325 T@FrameType T@Field_17324_17325 T@FrameType) Bool)
(declare-fun InsidePredicate_11026_11026 (T@Field_6934_6940 T@FrameType T@Field_6934_6940 T@FrameType) Bool)
(declare-fun IsPredicateField_6931_6932 (T@Field_11039_11040) Bool)
(declare-fun IsWandField_6931_6932 (T@Field_11039_11040) Bool)
(declare-fun IsPredicateField_6934_3394 (T@Field_17276_3394) Bool)
(declare-fun IsWandField_6934_3394 (T@Field_17276_3394) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6939_43102 (T@Field_17338_17343) Bool)
(declare-fun IsWandField_6939_43118 (T@Field_17338_17343) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6939_53 (T@Field_6939_53) Bool)
(declare-fun IsWandField_6939_53 (T@Field_6939_53) Bool)
(declare-fun IsPredicateField_6939_3394 (T@Field_6939_3394) Bool)
(declare-fun IsWandField_6939_3394 (T@Field_6939_3394) Bool)
(declare-fun IsPredicateField_6939_6932 (T@Field_6939_11040) Bool)
(declare-fun IsWandField_6939_6932 (T@Field_6939_11040) Bool)
(declare-fun IsPredicateField_6931_42271 (T@Field_6934_17343) Bool)
(declare-fun IsWandField_6931_42287 (T@Field_6934_17343) Bool)
(declare-fun IsPredicateField_6931_53 (T@Field_11026_53) Bool)
(declare-fun IsWandField_6931_53 (T@Field_11026_53) Bool)
(declare-fun HasDirectPerm_6939_32284 (T@PolymorphicMapType_10987 T@Ref T@Field_17338_17343) Bool)
(declare-fun HasDirectPerm_6939_11040 (T@PolymorphicMapType_10987 T@Ref T@Field_6939_11040) Bool)
(declare-fun HasDirectPerm_6939_53 (T@PolymorphicMapType_10987 T@Ref T@Field_6939_53) Bool)
(declare-fun HasDirectPerm_6939_3394 (T@PolymorphicMapType_10987 T@Ref T@Field_6939_3394) Bool)
(declare-fun HasDirectPerm_6934_31143 (T@PolymorphicMapType_10987 T@Ref T@Field_6934_17343) Bool)
(declare-fun HasDirectPerm_6934_11040 (T@PolymorphicMapType_10987 T@Ref T@Field_11039_11040) Bool)
(declare-fun HasDirectPerm_6934_53 (T@PolymorphicMapType_10987 T@Ref T@Field_11026_53) Bool)
(declare-fun HasDirectPerm_6934_3394 (T@PolymorphicMapType_10987 T@Ref T@Field_17276_3394) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10987 T@PolymorphicMapType_10987 T@PolymorphicMapType_10987) Bool)
(declare-fun getPredWandId_6939_6940 (T@Field_17324_17325) Int)
(declare-fun |uf_bank#condqp1| (T@PolymorphicMapType_10966 (Array T@Ref Bool)) Int)
(declare-fun |sk_uf_bank#condqp1| (Int Int) T@Ref)
(declare-fun |uf_bank#condqp2| (T@PolymorphicMapType_10966 (Array T@Ref Bool)) Int)
(declare-fun |sk_uf_bank#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_17324_11026 (T@Field_17324_17325 T@FrameType T@Field_6934_6940 T@FrameType) Bool)
(declare-fun InsidePredicate_11026_17324 (T@Field_6934_6940 T@FrameType T@Field_17324_17325 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10966) (Heap1 T@PolymorphicMapType_10966) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10966) (Mask T@PolymorphicMapType_10987) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10966) (Heap1@@0 T@PolymorphicMapType_10966) (Heap2 T@PolymorphicMapType_10966) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17338_17343) ) (!  (not (select (|PolymorphicMapType_11515_17324_35034#PolymorphicMapType_11515| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_17324_35034#PolymorphicMapType_11515| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17324_17325) ) (!  (not (select (|PolymorphicMapType_11515_17324_17325#PolymorphicMapType_11515| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_17324_17325#PolymorphicMapType_11515| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6939_53) ) (!  (not (select (|PolymorphicMapType_11515_17324_53#PolymorphicMapType_11515| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_17324_53#PolymorphicMapType_11515| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6939_3394) ) (!  (not (select (|PolymorphicMapType_11515_17324_3394#PolymorphicMapType_11515| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_17324_3394#PolymorphicMapType_11515| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6939_11040) ) (!  (not (select (|PolymorphicMapType_11515_17324_6932#PolymorphicMapType_11515| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_17324_6932#PolymorphicMapType_11515| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6934_17343) ) (!  (not (select (|PolymorphicMapType_11515_6931_33986#PolymorphicMapType_11515| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_6931_33986#PolymorphicMapType_11515| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6934_6940) ) (!  (not (select (|PolymorphicMapType_11515_6931_17325#PolymorphicMapType_11515| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_6931_17325#PolymorphicMapType_11515| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11026_53) ) (!  (not (select (|PolymorphicMapType_11515_6931_53#PolymorphicMapType_11515| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_6931_53#PolymorphicMapType_11515| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_17276_3394) ) (!  (not (select (|PolymorphicMapType_11515_6934_3394#PolymorphicMapType_11515| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_6934_3394#PolymorphicMapType_11515| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11039_11040) ) (!  (not (select (|PolymorphicMapType_11515_6931_6932#PolymorphicMapType_11515| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11515_6931_6932#PolymorphicMapType_11515| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.309:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((b_24 (Array T@Ref Bool)) ) (! (IsPredicateField_6939_6940 (uf_bank b_24))
 :qid |stdinbpl.425:15|
 :skolemid |83|
 :pattern ( (uf_bank b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10966) (b_24@@0 (Array T@Ref Bool)) ) (! (|uf_bank#everUsed_6939| (uf_bank b_24@@0))
 :qid |stdinbpl.444:15|
 :skolemid |87|
 :pattern ( (|uf_bank#trigger_6939| Heap@@0 (uf_bank b_24@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.312:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10966) (ExhaleHeap T@PolymorphicMapType_10966) (Mask@@0 T@PolymorphicMapType_10987) (pm_f_34 T@Field_17324_17325) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6939_6940 Mask@@0 null pm_f_34) (IsPredicateField_6939_6940 pm_f_34)) (= (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@1) null (PredicateMaskField_6939 pm_f_34)) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap) null (PredicateMaskField_6939 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6939_6940 pm_f_34) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap) null (PredicateMaskField_6939 pm_f_34)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10966) (ExhaleHeap@@0 T@PolymorphicMapType_10966) (Mask@@1 T@PolymorphicMapType_10987) (pm_f_34@@0 T@Field_6934_6940) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6934_6940 Mask@@1 null pm_f_34@@0) (IsPredicateField_6934_32529 pm_f_34@@0)) (= (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@2) null (PredicateMaskField_6934 pm_f_34@@0)) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@0) null (PredicateMaskField_6934 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6934_32529 pm_f_34@@0) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@0) null (PredicateMaskField_6934 pm_f_34@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10966) (ExhaleHeap@@1 T@PolymorphicMapType_10966) (Mask@@2 T@PolymorphicMapType_10987) (pm_f_34@@1 T@Field_17324_17325) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6939_6940 Mask@@2 null pm_f_34@@1) (IsWandField_6939_36199 pm_f_34@@1)) (= (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@3) null (WandMaskField_6939 pm_f_34@@1)) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@1) null (WandMaskField_6939 pm_f_34@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_6939_36199 pm_f_34@@1) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@1) null (WandMaskField_6939 pm_f_34@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10966) (ExhaleHeap@@2 T@PolymorphicMapType_10966) (Mask@@3 T@PolymorphicMapType_10987) (pm_f_34@@2 T@Field_6934_6940) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6934_6940 Mask@@3 null pm_f_34@@2) (IsWandField_6934_35842 pm_f_34@@2)) (= (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@4) null (WandMaskField_6934 pm_f_34@@2)) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@2) null (WandMaskField_6934 pm_f_34@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_6934_35842 pm_f_34@@2) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@2) null (WandMaskField_6934 pm_f_34@@2)))
)))
(assert (forall ((b_24@@1 (Array T@Ref Bool)) (b2 (Array T@Ref Bool)) ) (!  (=> (= (uf_bank b_24@@1) (uf_bank b2)) (= b_24@@1 b2))
 :qid |stdinbpl.435:15|
 :skolemid |85|
 :pattern ( (uf_bank b_24@@1) (uf_bank b2))
)))
(assert (forall ((b_24@@2 (Array T@Ref Bool)) (b2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|uf_bank#sm| b_24@@2) (|uf_bank#sm| b2@@0)) (= b_24@@2 b2@@0))
 :qid |stdinbpl.439:15|
 :skolemid |86|
 :pattern ( (|uf_bank#sm| b_24@@2) (|uf_bank#sm| b2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10966) (ExhaleHeap@@3 T@PolymorphicMapType_10966) (Mask@@4 T@PolymorphicMapType_10987) (pm_f_34@@3 T@Field_17324_17325) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6939_6940 Mask@@4 null pm_f_34@@3) (IsPredicateField_6939_6940 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_11039_11040) ) (!  (=> (select (|PolymorphicMapType_11515_6931_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34 f_35) (= (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@5) o2_34 f_35) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_17276_3394) ) (!  (=> (select (|PolymorphicMapType_11515_6934_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@5) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_11026_53) ) (!  (=> (select (|PolymorphicMapType_11515_6931_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@5) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_6934_6940) ) (!  (=> (select (|PolymorphicMapType_11515_6931_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@5) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_6934_17343) ) (!  (=> (select (|PolymorphicMapType_11515_6931_33986#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@5) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@3 f_35@@3))
))) (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_6939_11040) ) (!  (=> (select (|PolymorphicMapType_11515_17324_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@5) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@4 f_35@@4))
))) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_6939_3394) ) (!  (=> (select (|PolymorphicMapType_11515_17324_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@5) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_6939_53) ) (!  (=> (select (|PolymorphicMapType_11515_17324_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@5) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_17324_17325) ) (!  (=> (select (|PolymorphicMapType_11515_17324_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@5) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_17338_17343) ) (!  (=> (select (|PolymorphicMapType_11515_17324_35034#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) null (PredicateMaskField_6939 pm_f_34@@3))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@5) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@3) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6939_6940 pm_f_34@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10966) (ExhaleHeap@@4 T@PolymorphicMapType_10966) (Mask@@5 T@PolymorphicMapType_10987) (pm_f_34@@4 T@Field_6934_6940) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6934_6940 Mask@@5 null pm_f_34@@4) (IsPredicateField_6934_32529 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@9 T@Ref) (f_35@@9 T@Field_11039_11040) ) (!  (=> (select (|PolymorphicMapType_11515_6931_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@9 f_35@@9) (= (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@6) o2_34@@9 f_35@@9) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@9 f_35@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@9 f_35@@9))
)) (forall ((o2_34@@10 T@Ref) (f_35@@10 T@Field_17276_3394) ) (!  (=> (select (|PolymorphicMapType_11515_6934_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@10 f_35@@10) (= (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@6) o2_34@@10 f_35@@10) (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@10 f_35@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@10 f_35@@10))
))) (forall ((o2_34@@11 T@Ref) (f_35@@11 T@Field_11026_53) ) (!  (=> (select (|PolymorphicMapType_11515_6931_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@11 f_35@@11) (= (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@6) o2_34@@11 f_35@@11) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@11 f_35@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@11 f_35@@11))
))) (forall ((o2_34@@12 T@Ref) (f_35@@12 T@Field_6934_6940) ) (!  (=> (select (|PolymorphicMapType_11515_6931_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@12 f_35@@12) (= (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@6) o2_34@@12 f_35@@12) (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@12 f_35@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@12 f_35@@12))
))) (forall ((o2_34@@13 T@Ref) (f_35@@13 T@Field_6934_17343) ) (!  (=> (select (|PolymorphicMapType_11515_6931_33986#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@13 f_35@@13) (= (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) o2_34@@13 f_35@@13) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@13 f_35@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@13 f_35@@13))
))) (forall ((o2_34@@14 T@Ref) (f_35@@14 T@Field_6939_11040) ) (!  (=> (select (|PolymorphicMapType_11515_17324_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@14 f_35@@14) (= (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@6) o2_34@@14 f_35@@14) (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@14 f_35@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@14 f_35@@14))
))) (forall ((o2_34@@15 T@Ref) (f_35@@15 T@Field_6939_3394) ) (!  (=> (select (|PolymorphicMapType_11515_17324_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@15 f_35@@15) (= (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@6) o2_34@@15 f_35@@15) (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@15 f_35@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@15 f_35@@15))
))) (forall ((o2_34@@16 T@Ref) (f_35@@16 T@Field_6939_53) ) (!  (=> (select (|PolymorphicMapType_11515_17324_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@16 f_35@@16) (= (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@6) o2_34@@16 f_35@@16) (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@16 f_35@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@16 f_35@@16))
))) (forall ((o2_34@@17 T@Ref) (f_35@@17 T@Field_17324_17325) ) (!  (=> (select (|PolymorphicMapType_11515_17324_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@17 f_35@@17) (= (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@6) o2_34@@17 f_35@@17) (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@17 f_35@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@17 f_35@@17))
))) (forall ((o2_34@@18 T@Ref) (f_35@@18 T@Field_17338_17343) ) (!  (=> (select (|PolymorphicMapType_11515_17324_35034#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@6) null (PredicateMaskField_6934 pm_f_34@@4))) o2_34@@18 f_35@@18) (= (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@6) o2_34@@18 f_35@@18) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@18 f_35@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@4) o2_34@@18 f_35@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6934_32529 pm_f_34@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10966) (ExhaleHeap@@5 T@PolymorphicMapType_10966) (Mask@@6 T@PolymorphicMapType_10987) (pm_f_34@@5 T@Field_17324_17325) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6939_6940 Mask@@6 null pm_f_34@@5) (IsWandField_6939_36199 pm_f_34@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_35@@19 T@Field_11039_11040) ) (!  (=> (select (|PolymorphicMapType_11515_6931_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@19 f_35@@19) (= (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@7) o2_34@@19 f_35@@19) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@19 f_35@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@19 f_35@@19))
)) (forall ((o2_34@@20 T@Ref) (f_35@@20 T@Field_17276_3394) ) (!  (=> (select (|PolymorphicMapType_11515_6934_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@20 f_35@@20) (= (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@7) o2_34@@20 f_35@@20) (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@20 f_35@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@20 f_35@@20))
))) (forall ((o2_34@@21 T@Ref) (f_35@@21 T@Field_11026_53) ) (!  (=> (select (|PolymorphicMapType_11515_6931_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@21 f_35@@21) (= (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@7) o2_34@@21 f_35@@21) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@21 f_35@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@21 f_35@@21))
))) (forall ((o2_34@@22 T@Ref) (f_35@@22 T@Field_6934_6940) ) (!  (=> (select (|PolymorphicMapType_11515_6931_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@22 f_35@@22) (= (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@7) o2_34@@22 f_35@@22) (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@22 f_35@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@22 f_35@@22))
))) (forall ((o2_34@@23 T@Ref) (f_35@@23 T@Field_6934_17343) ) (!  (=> (select (|PolymorphicMapType_11515_6931_33986#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@23 f_35@@23) (= (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@7) o2_34@@23 f_35@@23) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@23 f_35@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@23 f_35@@23))
))) (forall ((o2_34@@24 T@Ref) (f_35@@24 T@Field_6939_11040) ) (!  (=> (select (|PolymorphicMapType_11515_17324_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@24 f_35@@24) (= (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@7) o2_34@@24 f_35@@24) (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@24 f_35@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@24 f_35@@24))
))) (forall ((o2_34@@25 T@Ref) (f_35@@25 T@Field_6939_3394) ) (!  (=> (select (|PolymorphicMapType_11515_17324_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@25 f_35@@25) (= (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@7) o2_34@@25 f_35@@25) (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@25 f_35@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@25 f_35@@25))
))) (forall ((o2_34@@26 T@Ref) (f_35@@26 T@Field_6939_53) ) (!  (=> (select (|PolymorphicMapType_11515_17324_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@26 f_35@@26) (= (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@7) o2_34@@26 f_35@@26) (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@26 f_35@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@26 f_35@@26))
))) (forall ((o2_34@@27 T@Ref) (f_35@@27 T@Field_17324_17325) ) (!  (=> (select (|PolymorphicMapType_11515_17324_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@27 f_35@@27) (= (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@7) o2_34@@27 f_35@@27) (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@27 f_35@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@27 f_35@@27))
))) (forall ((o2_34@@28 T@Ref) (f_35@@28 T@Field_17338_17343) ) (!  (=> (select (|PolymorphicMapType_11515_17324_35034#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) null (WandMaskField_6939 pm_f_34@@5))) o2_34@@28 f_35@@28) (= (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@7) o2_34@@28 f_35@@28) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@28 f_35@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@5) o2_34@@28 f_35@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6939_36199 pm_f_34@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10966) (ExhaleHeap@@6 T@PolymorphicMapType_10966) (Mask@@7 T@PolymorphicMapType_10987) (pm_f_34@@6 T@Field_6934_6940) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6934_6940 Mask@@7 null pm_f_34@@6) (IsWandField_6934_35842 pm_f_34@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@29 T@Ref) (f_35@@29 T@Field_11039_11040) ) (!  (=> (select (|PolymorphicMapType_11515_6931_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@29 f_35@@29) (= (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@8) o2_34@@29 f_35@@29) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@29 f_35@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@29 f_35@@29))
)) (forall ((o2_34@@30 T@Ref) (f_35@@30 T@Field_17276_3394) ) (!  (=> (select (|PolymorphicMapType_11515_6934_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@30 f_35@@30) (= (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@8) o2_34@@30 f_35@@30) (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@30 f_35@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@30 f_35@@30))
))) (forall ((o2_34@@31 T@Ref) (f_35@@31 T@Field_11026_53) ) (!  (=> (select (|PolymorphicMapType_11515_6931_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@31 f_35@@31) (= (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@8) o2_34@@31 f_35@@31) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@31 f_35@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@31 f_35@@31))
))) (forall ((o2_34@@32 T@Ref) (f_35@@32 T@Field_6934_6940) ) (!  (=> (select (|PolymorphicMapType_11515_6931_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@32 f_35@@32) (= (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@8) o2_34@@32 f_35@@32) (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@32 f_35@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@32 f_35@@32))
))) (forall ((o2_34@@33 T@Ref) (f_35@@33 T@Field_6934_17343) ) (!  (=> (select (|PolymorphicMapType_11515_6931_33986#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@33 f_35@@33) (= (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) o2_34@@33 f_35@@33) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@33 f_35@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@33 f_35@@33))
))) (forall ((o2_34@@34 T@Ref) (f_35@@34 T@Field_6939_11040) ) (!  (=> (select (|PolymorphicMapType_11515_17324_6932#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@34 f_35@@34) (= (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@8) o2_34@@34 f_35@@34) (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@34 f_35@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@34 f_35@@34))
))) (forall ((o2_34@@35 T@Ref) (f_35@@35 T@Field_6939_3394) ) (!  (=> (select (|PolymorphicMapType_11515_17324_3394#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@35 f_35@@35) (= (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@8) o2_34@@35 f_35@@35) (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@35 f_35@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@35 f_35@@35))
))) (forall ((o2_34@@36 T@Ref) (f_35@@36 T@Field_6939_53) ) (!  (=> (select (|PolymorphicMapType_11515_17324_53#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@36 f_35@@36) (= (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@8) o2_34@@36 f_35@@36) (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@36 f_35@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@36 f_35@@36))
))) (forall ((o2_34@@37 T@Ref) (f_35@@37 T@Field_17324_17325) ) (!  (=> (select (|PolymorphicMapType_11515_17324_17325#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@37 f_35@@37) (= (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@8) o2_34@@37 f_35@@37) (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@37 f_35@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@37 f_35@@37))
))) (forall ((o2_34@@38 T@Ref) (f_35@@38 T@Field_17338_17343) ) (!  (=> (select (|PolymorphicMapType_11515_17324_35034#PolymorphicMapType_11515| (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@8) null (WandMaskField_6934 pm_f_34@@6))) o2_34@@38 f_35@@38) (= (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@8) o2_34@@38 f_35@@38) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@38 f_35@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@6) o2_34@@38 f_35@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6934_35842 pm_f_34@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10966) (ExhaleHeap@@7 T@PolymorphicMapType_10966) (Mask@@8 T@PolymorphicMapType_10987) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@9) o_30 $allocated) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@7) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@7) o_30 $allocated))
)))
(assert (forall ((p T@Field_17324_17325) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17324_17324 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17324_17324 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6934_6940) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11026_11026 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11026_11026 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6931_6932 parent)))
(assert  (not (IsWandField_6931_6932 parent)))
(assert  (not (IsPredicateField_6934_3394 rank)))
(assert  (not (IsWandField_6934_3394 rank)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10966) (ExhaleHeap@@8 T@PolymorphicMapType_10966) (Mask@@9 T@PolymorphicMapType_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10987) (o_2@@9 T@Ref) (f_4@@9 T@Field_17338_17343) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6939_43102 f_4@@9))) (not (IsWandField_6939_43118 f_4@@9))) (<= (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10987) (o_2@@10 T@Ref) (f_4@@10 T@Field_6939_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6939_53 f_4@@10))) (not (IsWandField_6939_53 f_4@@10))) (<= (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10987) (o_2@@11 T@Ref) (f_4@@11 T@Field_17324_17325) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6939_6940 f_4@@11))) (not (IsWandField_6939_36199 f_4@@11))) (<= (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10987) (o_2@@12 T@Ref) (f_4@@12 T@Field_6939_3394) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6939_3394 f_4@@12))) (not (IsWandField_6939_3394 f_4@@12))) (<= (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10987) (o_2@@13 T@Ref) (f_4@@13 T@Field_6939_11040) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6939_6932 f_4@@13))) (not (IsWandField_6939_6932 f_4@@13))) (<= (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10987) (o_2@@14 T@Ref) (f_4@@14 T@Field_6934_17343) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6931_42271 f_4@@14))) (not (IsWandField_6931_42287 f_4@@14))) (<= (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10987) (o_2@@15 T@Ref) (f_4@@15 T@Field_11026_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6931_53 f_4@@15))) (not (IsWandField_6931_53 f_4@@15))) (<= (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10987) (o_2@@16 T@Ref) (f_4@@16 T@Field_6934_6940) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6934_32529 f_4@@16))) (not (IsWandField_6934_35842 f_4@@16))) (<= (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10987) (o_2@@17 T@Ref) (f_4@@17 T@Field_17276_3394) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6934_3394 f_4@@17))) (not (IsWandField_6934_3394 f_4@@17))) (<= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10987) (o_2@@18 T@Ref) (f_4@@18 T@Field_11039_11040) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6931_6932 f_4@@18))) (not (IsWandField_6931_6932 f_4@@18))) (<= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10987) (o_2@@19 T@Ref) (f_4@@19 T@Field_17338_17343) ) (! (= (HasDirectPerm_6939_32284 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6939_32284 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10987) (o_2@@20 T@Ref) (f_4@@20 T@Field_6939_11040) ) (! (= (HasDirectPerm_6939_11040 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6939_11040 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10987) (o_2@@21 T@Ref) (f_4@@21 T@Field_6939_53) ) (! (= (HasDirectPerm_6939_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6939_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10987) (o_2@@22 T@Ref) (f_4@@22 T@Field_17324_17325) ) (! (= (HasDirectPerm_6939_6940 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6939_6940 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10987) (o_2@@23 T@Ref) (f_4@@23 T@Field_6939_3394) ) (! (= (HasDirectPerm_6939_3394 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6939_3394 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10987) (o_2@@24 T@Ref) (f_4@@24 T@Field_6934_17343) ) (! (= (HasDirectPerm_6934_31143 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6934_31143 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10987) (o_2@@25 T@Ref) (f_4@@25 T@Field_11039_11040) ) (! (= (HasDirectPerm_6934_11040 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6934_11040 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10987) (o_2@@26 T@Ref) (f_4@@26 T@Field_11026_53) ) (! (= (HasDirectPerm_6934_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6934_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10987) (o_2@@27 T@Ref) (f_4@@27 T@Field_6934_6940) ) (! (= (HasDirectPerm_6934_6940 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6934_6940 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10987) (o_2@@28 T@Ref) (f_4@@28 T@Field_17276_3394) ) (! (= (HasDirectPerm_6934_3394 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6934_3394 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10966) (ExhaleHeap@@9 T@PolymorphicMapType_10966) (Mask@@30 T@PolymorphicMapType_10987) (o_30@@0 T@Ref) (f_35@@39 T@Field_17338_17343) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_6939_32284 Mask@@30 o_30@@0 f_35@@39) (= (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@11) o_30@@0 f_35@@39) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@9) o_30@@0 f_35@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| ExhaleHeap@@9) o_30@@0 f_35@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10966) (ExhaleHeap@@10 T@PolymorphicMapType_10966) (Mask@@31 T@PolymorphicMapType_10987) (o_30@@1 T@Ref) (f_35@@40 T@Field_6939_11040) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_6939_11040 Mask@@31 o_30@@1 f_35@@40) (= (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@12) o_30@@1 f_35@@40) (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@10) o_30@@1 f_35@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| ExhaleHeap@@10) o_30@@1 f_35@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10966) (ExhaleHeap@@11 T@PolymorphicMapType_10966) (Mask@@32 T@PolymorphicMapType_10987) (o_30@@2 T@Ref) (f_35@@41 T@Field_6939_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_6939_53 Mask@@32 o_30@@2 f_35@@41) (= (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@13) o_30@@2 f_35@@41) (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@11) o_30@@2 f_35@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| ExhaleHeap@@11) o_30@@2 f_35@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10966) (ExhaleHeap@@12 T@PolymorphicMapType_10966) (Mask@@33 T@PolymorphicMapType_10987) (o_30@@3 T@Ref) (f_35@@42 T@Field_17324_17325) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_6939_6940 Mask@@33 o_30@@3 f_35@@42) (= (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@14) o_30@@3 f_35@@42) (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@12) o_30@@3 f_35@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| ExhaleHeap@@12) o_30@@3 f_35@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10966) (ExhaleHeap@@13 T@PolymorphicMapType_10966) (Mask@@34 T@PolymorphicMapType_10987) (o_30@@4 T@Ref) (f_35@@43 T@Field_6939_3394) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_6939_3394 Mask@@34 o_30@@4 f_35@@43) (= (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@15) o_30@@4 f_35@@43) (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@13) o_30@@4 f_35@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| ExhaleHeap@@13) o_30@@4 f_35@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10966) (ExhaleHeap@@14 T@PolymorphicMapType_10966) (Mask@@35 T@PolymorphicMapType_10987) (o_30@@5 T@Ref) (f_35@@44 T@Field_6934_17343) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6934_31143 Mask@@35 o_30@@5 f_35@@44) (= (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@16) o_30@@5 f_35@@44) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@14) o_30@@5 f_35@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| ExhaleHeap@@14) o_30@@5 f_35@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10966) (ExhaleHeap@@15 T@PolymorphicMapType_10966) (Mask@@36 T@PolymorphicMapType_10987) (o_30@@6 T@Ref) (f_35@@45 T@Field_11039_11040) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6934_11040 Mask@@36 o_30@@6 f_35@@45) (= (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@17) o_30@@6 f_35@@45) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@15) o_30@@6 f_35@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| ExhaleHeap@@15) o_30@@6 f_35@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10966) (ExhaleHeap@@16 T@PolymorphicMapType_10966) (Mask@@37 T@PolymorphicMapType_10987) (o_30@@7 T@Ref) (f_35@@46 T@Field_11026_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6934_53 Mask@@37 o_30@@7 f_35@@46) (= (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@18) o_30@@7 f_35@@46) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@16) o_30@@7 f_35@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| ExhaleHeap@@16) o_30@@7 f_35@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10966) (ExhaleHeap@@17 T@PolymorphicMapType_10966) (Mask@@38 T@PolymorphicMapType_10987) (o_30@@8 T@Ref) (f_35@@47 T@Field_6934_6940) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6934_6940 Mask@@38 o_30@@8 f_35@@47) (= (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@19) o_30@@8 f_35@@47) (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@17) o_30@@8 f_35@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| ExhaleHeap@@17) o_30@@8 f_35@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10966) (ExhaleHeap@@18 T@PolymorphicMapType_10966) (Mask@@39 T@PolymorphicMapType_10987) (o_30@@9 T@Ref) (f_35@@48 T@Field_17276_3394) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6934_3394 Mask@@39 o_30@@9 f_35@@48) (= (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@20) o_30@@9 f_35@@48) (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@18) o_30@@9 f_35@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| ExhaleHeap@@18) o_30@@9 f_35@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_17338_17343) ) (! (= (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6939_53) ) (! (= (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_17324_17325) ) (! (= (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_6939_3394) ) (! (= (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6939_11040) ) (! (= (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_6934_17343) ) (! (= (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_11026_53) ) (! (= (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6934_6940) ) (! (= (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_17276_3394) ) (! (= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11039_11040) ) (! (= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10987) (SummandMask1 T@PolymorphicMapType_10987) (SummandMask2 T@PolymorphicMapType_10987) (o_2@@39 T@Ref) (f_4@@39 T@Field_17338_17343) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10987) (SummandMask1@@0 T@PolymorphicMapType_10987) (SummandMask2@@0 T@PolymorphicMapType_10987) (o_2@@40 T@Ref) (f_4@@40 T@Field_6939_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10987) (SummandMask1@@1 T@PolymorphicMapType_10987) (SummandMask2@@1 T@PolymorphicMapType_10987) (o_2@@41 T@Ref) (f_4@@41 T@Field_17324_17325) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10987) (SummandMask1@@2 T@PolymorphicMapType_10987) (SummandMask2@@2 T@PolymorphicMapType_10987) (o_2@@42 T@Ref) (f_4@@42 T@Field_6939_3394) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10987) (SummandMask1@@3 T@PolymorphicMapType_10987) (SummandMask2@@3 T@PolymorphicMapType_10987) (o_2@@43 T@Ref) (f_4@@43 T@Field_6939_11040) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10987) (SummandMask1@@4 T@PolymorphicMapType_10987) (SummandMask2@@4 T@PolymorphicMapType_10987) (o_2@@44 T@Ref) (f_4@@44 T@Field_6934_17343) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10987) (SummandMask1@@5 T@PolymorphicMapType_10987) (SummandMask2@@5 T@PolymorphicMapType_10987) (o_2@@45 T@Ref) (f_4@@45 T@Field_11026_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10987) (SummandMask1@@6 T@PolymorphicMapType_10987) (SummandMask2@@6 T@PolymorphicMapType_10987) (o_2@@46 T@Ref) (f_4@@46 T@Field_6934_6940) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10987) (SummandMask1@@7 T@PolymorphicMapType_10987) (SummandMask2@@7 T@PolymorphicMapType_10987) (o_2@@47 T@Ref) (f_4@@47 T@Field_17276_3394) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10987) (SummandMask1@@8 T@PolymorphicMapType_10987) (SummandMask2@@8 T@PolymorphicMapType_10987) (o_2@@48 T@Ref) (f_4@@48 T@Field_11039_11040) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((b_24@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_6939_6940 (uf_bank b_24@@3)) 0)
 :qid |stdinbpl.429:15|
 :skolemid |84|
 :pattern ( (uf_bank b_24@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10966) (o_6 T@Ref) (f_16 T@Field_17338_17343) (v T@PolymorphicMapType_11515) ) (! (succHeap Heap@@21 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@21) (store (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@21) o_6 f_16 v) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@21) (store (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@21) o_6 f_16 v) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@21) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10966) (o_6@@0 T@Ref) (f_16@@0 T@Field_17324_17325) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@22) (store (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@22) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@22) (store (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@22) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@22) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10966) (o_6@@1 T@Ref) (f_16@@1 T@Field_6939_3394) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@23) (store (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@23) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@23) (store (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@23) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@23) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10966) (o_6@@2 T@Ref) (f_16@@2 T@Field_6939_11040) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@24) (store (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@24) o_6@@2 f_16@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@24) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@24) (store (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@24) o_6@@2 f_16@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10966) (o_6@@3 T@Ref) (f_16@@3 T@Field_6939_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@25) (store (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@25) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@25) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@25) (store (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@25) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10966) (o_6@@4 T@Ref) (f_16@@4 T@Field_6934_17343) (v@@4 T@PolymorphicMapType_11515) ) (! (succHeap Heap@@26 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@26) (store (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@26) o_6@@4 f_16@@4 v@@4) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@26) (store (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@26) o_6@@4 f_16@@4 v@@4) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@26) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10966) (o_6@@5 T@Ref) (f_16@@5 T@Field_6934_6940) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@27) (store (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@27) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@27) (store (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@27) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@27) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10966) (o_6@@6 T@Ref) (f_16@@6 T@Field_17276_3394) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@28) (store (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@28) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@28) (store (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@28) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@28) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10966) (o_6@@7 T@Ref) (f_16@@7 T@Field_11039_11040) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@29) (store (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@29) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@29) (store (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@29) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@29) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10966) (o_6@@8 T@Ref) (f_16@@8 T@Field_11026_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_10966 (store (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@30) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10966 (store (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@30) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_6940#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6945_26549#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6934_6940#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6934_31185#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_3394#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_53#PolymorphicMapType_10966| Heap@@30) (|PolymorphicMapType_10966_6939_11040#PolymorphicMapType_10966| Heap@@30)))
)))
(assert (forall ((b_24@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_6939 (uf_bank b_24@@4)) (|uf_bank#sm| b_24@@4))
 :qid |stdinbpl.421:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6939 (uf_bank b_24@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.307:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.308:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10966) (Heap1Heap T@PolymorphicMapType_10966) (b_24@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select b_24@@5 (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm))  (and (select b_24@@5 (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm))) (=> (and (select b_24@@5 (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap2Heap) (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5)) parent) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap1Heap) (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5)) parent)))) (= (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5)))
 :qid |stdinbpl.455:15|
 :skolemid |88|
 :pattern ( (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_10966) (Heap1Heap@@0 T@PolymorphicMapType_10966) (b_24@@6 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select b_24@@6 (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6))) (< NoPerm FullPerm))  (and (select b_24@@6 (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6))) (< NoPerm FullPerm))) (=> (and (select b_24@@6 (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap2Heap@@0) (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6)) rank) (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap1Heap@@0) (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6)) rank)))) (= (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6)))
 :qid |stdinbpl.466:15|
 :skolemid |89|
 :pattern ( (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((o_6@@9 T@Ref) (f_9 T@Field_11039_11040) (Heap@@31 T@PolymorphicMapType_10966) ) (!  (=> (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@31) o_6@@9 $allocated) (select (|PolymorphicMapType_10966_6610_53#PolymorphicMapType_10966| Heap@@31) (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@31) o_6@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@31) o_6@@9 f_9))
)))
(assert (forall ((p@@2 T@Field_17324_17325) (v_1@@1 T@FrameType) (q T@Field_17324_17325) (w@@1 T@FrameType) (r T@Field_17324_17325) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17324_17324 p@@2 v_1@@1 q w@@1) (InsidePredicate_17324_17324 q w@@1 r u)) (InsidePredicate_17324_17324 p@@2 v_1@@1 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17324_17324 p@@2 v_1@@1 q w@@1) (InsidePredicate_17324_17324 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_17324_17325) (v_1@@2 T@FrameType) (q@@0 T@Field_17324_17325) (w@@2 T@FrameType) (r@@0 T@Field_6934_6940) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17324_17324 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17324_11026 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_17324_11026 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17324_17324 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17324_11026 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_17324_17325) (v_1@@3 T@FrameType) (q@@1 T@Field_6934_6940) (w@@3 T@FrameType) (r@@1 T@Field_17324_17325) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17324_11026 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11026_17324 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_17324_17324 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17324_11026 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11026_17324 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_17324_17325) (v_1@@4 T@FrameType) (q@@2 T@Field_6934_6940) (w@@4 T@FrameType) (r@@2 T@Field_6934_6940) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17324_11026 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11026_11026 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_17324_11026 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17324_11026 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11026_11026 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_6934_6940) (v_1@@5 T@FrameType) (q@@3 T@Field_17324_17325) (w@@5 T@FrameType) (r@@3 T@Field_17324_17325) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11026_17324 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17324_17324 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_11026_17324 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11026_17324 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17324_17324 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_6934_6940) (v_1@@6 T@FrameType) (q@@4 T@Field_17324_17325) (w@@6 T@FrameType) (r@@4 T@Field_6934_6940) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11026_17324 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17324_11026 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_11026_11026 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11026_17324 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17324_11026 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_6934_6940) (v_1@@7 T@FrameType) (q@@5 T@Field_6934_6940) (w@@7 T@FrameType) (r@@5 T@Field_17324_17325) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11026_11026 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11026_17324 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_11026_17324 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11026_11026 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11026_17324 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_6934_6940) (v_1@@8 T@FrameType) (q@@6 T@Field_6934_6940) (w@@8 T@FrameType) (r@@6 T@Field_6934_6940) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11026_11026 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11026_11026 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_11026_11026 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11026_11026 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11026_11026 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.313:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_24@@7 () (Array T@Ref Bool))
(declare-fun l_10 () T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_10987)
(declare-fun Heap@@32 () T@PolymorphicMapType_10966)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_10987)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id |uf_bank#definedness|)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (select b_24@@7 l_10)) (= (ControlFlow 0 7) 4)) anon7_correct)))
(let ((anon12_Then_correct  (=> (select b_24@@7 l_10) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_6934_3394 QPMask@1 l_10 rank)) (=> (HasDirectPerm_6934_3394 QPMask@1 l_10 rank) (=> (= (ControlFlow 0 5) 4) anon7_correct))))))
(let ((anon11_Else_correct true))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (forall ((l_5_1 T@Ref) (l_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= l_5_1 l_5_2)) (select b_24@@7 l_5_1)) (select b_24@@7 l_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l_5_1 l_5_2)))
 :qid |stdinbpl.529:15|
 :skolemid |96|
))) (=> (forall ((l_5_1@@0 T@Ref) (l_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l_5_1@@0 l_5_2@@0)) (select b_24@@7 l_5_1@@0)) (select b_24@@7 l_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l_5_1@@0 l_5_2@@0)))
 :qid |stdinbpl.529:15|
 :skolemid |96|
)) (=> (and (and (forall ((l_5_1@@1 T@Ref) ) (!  (=> (and (select b_24@@7 l_5_1@@1) (< NoPerm FullPerm)) (and (qpRange2 l_5_1@@1) (= (invRecv2 l_5_1@@1) l_5_1@@1)))
 :qid |stdinbpl.535:22|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@32) l_5_1@@1 rank))
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@1) l_5_1@@1 rank))
 :pattern ( (select b_24@@7 l_5_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select b_24@@7 (invRecv2 o_4)) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.539:22|
 :skolemid |98|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((l_5_1@@2 T@Ref) ) (!  (=> (select b_24@@7 l_5_1@@2) (not (= l_5_1@@2 null)))
 :qid |stdinbpl.545:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_10966_6934_3394#PolymorphicMapType_10966| Heap@@32) l_5_1@@2 rank))
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@1) l_5_1@@2 rank))
 :pattern ( (select b_24@@7 l_5_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select b_24@@7 (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@1) o_4@@0 rank) (+ (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@0) o_4@@0 rank) FullPerm)))) (=> (not (and (and (select b_24@@7 (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@1) o_4@@0 rank) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@0) o_4@@0 rank))))
 :qid |stdinbpl.551:22|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@1) o_4@@0 rank))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_11026_53) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| QPMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_11039_11040) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_17276_3394) ) (!  (=> (not (= f_5@@1 rank)) (= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_6934_6940) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| QPMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| QPMask@1) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_6934_17343) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| QPMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| QPMask@1) o_4@@5 f_5@@3)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| QPMask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| QPMask@1) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_6939_53) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| QPMask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| QPMask@1) o_4@@6 f_5@@4)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| QPMask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| QPMask@1) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_6939_11040) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| QPMask@0) o_4@@7 f_5@@5) (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| QPMask@1) o_4@@7 f_5@@5)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| QPMask@0) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| QPMask@1) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_6939_3394) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| QPMask@0) o_4@@8 f_5@@6) (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| QPMask@1) o_4@@8 f_5@@6)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| QPMask@0) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| QPMask@1) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_17324_17325) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| QPMask@0) o_4@@9 f_5@@7) (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| QPMask@1) o_4@@9 f_5@@7)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| QPMask@0) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| QPMask@1) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_17338_17343) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| QPMask@0) o_4@@10 f_5@@8) (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| QPMask@1) o_4@@10 f_5@@8)))
 :qid |stdinbpl.555:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| QPMask@0) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| QPMask@1) o_4@@10 f_5@@8))
))) (state Heap@@32 QPMask@1)) (and (and (=> (= (ControlFlow 0 8) 3) anon11_Else_correct) (=> (= (ControlFlow 0 8) 5) anon12_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon12_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((l_3_2 T@Ref) (l_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= l_3_2 l_3_3)) (select b_24@@7 l_3_2)) (select b_24@@7 l_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l_3_2 l_3_3)))
 :qid |stdinbpl.490:15|
 :skolemid |90|
))) (=> (forall ((l_3_2@@0 T@Ref) (l_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l_3_2@@0 l_3_3@@0)) (select b_24@@7 l_3_2@@0)) (select b_24@@7 l_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l_3_2@@0 l_3_3@@0)))
 :qid |stdinbpl.490:15|
 :skolemid |90|
)) (=> (and (and (forall ((l_3_2@@1 T@Ref) ) (!  (=> (and (select b_24@@7 l_3_2@@1) (< NoPerm FullPerm)) (and (qpRange1 l_3_2@@1) (= (invRecv1 l_3_2@@1) l_3_2@@1)))
 :qid |stdinbpl.496:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@32) l_3_2@@1 parent))
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) l_3_2@@1 parent))
 :pattern ( (select b_24@@7 l_3_2@@1))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (select b_24@@7 (invRecv1 o_4@@11)) (< NoPerm FullPerm)) (qpRange1 o_4@@11)) (= (invRecv1 o_4@@11) o_4@@11))
 :qid |stdinbpl.500:22|
 :skolemid |92|
 :pattern ( (invRecv1 o_4@@11))
))) (and (forall ((l_3_2@@2 T@Ref) ) (!  (=> (select b_24@@7 l_3_2@@2) (not (= l_3_2@@2 null)))
 :qid |stdinbpl.506:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10966_6613_6614#PolymorphicMapType_10966| Heap@@32) l_3_2@@2 parent))
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) l_3_2@@2 parent))
 :pattern ( (select b_24@@7 l_3_2@@2))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (select b_24@@7 (invRecv1 o_4@@12)) (< NoPerm FullPerm)) (qpRange1 o_4@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@12) o_4@@12)) (= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) o_4@@12 parent) (+ (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ZeroMask) o_4@@12 parent) FullPerm)))) (=> (not (and (and (select b_24@@7 (invRecv1 o_4@@12)) (< NoPerm FullPerm)) (qpRange1 o_4@@12))) (= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) o_4@@12 parent) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ZeroMask) o_4@@12 parent))))
 :qid |stdinbpl.512:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) o_4@@12 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_11026_53) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| ZeroMask) o_4@@13 f_5@@9) (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| QPMask@0) o_4@@13 f_5@@9)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| ZeroMask) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10987_6931_53#PolymorphicMapType_10987| QPMask@0) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_11039_11040) ) (!  (=> (not (= f_5@@10 parent)) (= (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ZeroMask) o_4@@14 f_5@@10) (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) o_4@@14 f_5@@10)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| ZeroMask) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10987_6931_6932#PolymorphicMapType_10987| QPMask@0) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_17276_3394) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| ZeroMask) o_4@@15 f_5@@11) (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@0) o_4@@15 f_5@@11)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| ZeroMask) o_4@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_10987_6934_3394#PolymorphicMapType_10987| QPMask@0) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_6934_6940) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| ZeroMask) o_4@@16 f_5@@12) (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| QPMask@0) o_4@@16 f_5@@12)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| ZeroMask) o_4@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_10987_6931_6940#PolymorphicMapType_10987| QPMask@0) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_6934_17343) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| ZeroMask) o_4@@17 f_5@@13) (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| QPMask@0) o_4@@17 f_5@@13)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| ZeroMask) o_4@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_10987_6931_40413#PolymorphicMapType_10987| QPMask@0) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_6939_53) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| ZeroMask) o_4@@18 f_5@@14) (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| QPMask@0) o_4@@18 f_5@@14)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| ZeroMask) o_4@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_10987_6939_53#PolymorphicMapType_10987| QPMask@0) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_6939_11040) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| ZeroMask) o_4@@19 f_5@@15) (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| QPMask@0) o_4@@19 f_5@@15)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| ZeroMask) o_4@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_10987_6939_6932#PolymorphicMapType_10987| QPMask@0) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_6939_3394) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| ZeroMask) o_4@@20 f_5@@16) (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| QPMask@0) o_4@@20 f_5@@16)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| ZeroMask) o_4@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_10987_6939_3394#PolymorphicMapType_10987| QPMask@0) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_17324_17325) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| ZeroMask) o_4@@21 f_5@@17) (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| QPMask@0) o_4@@21 f_5@@17)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| ZeroMask) o_4@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_10987_6939_6940#PolymorphicMapType_10987| QPMask@0) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_17338_17343) ) (!  (=> true (= (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| ZeroMask) o_4@@22 f_5@@18) (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| QPMask@0) o_4@@22 f_5@@18)))
 :qid |stdinbpl.516:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| ZeroMask) o_4@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_10987_6939_40824#PolymorphicMapType_10987| QPMask@0) o_4@@22 f_5@@18))
))) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 10) 2) anon10_Then_correct) (=> (= (ControlFlow 0 10) 8) anon10_Else_correct))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 12) 1) anon9_Then_correct) (=> (= (ControlFlow 0 12) 10) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid