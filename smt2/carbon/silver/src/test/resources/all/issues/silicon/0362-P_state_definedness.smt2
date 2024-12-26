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
(declare-sort T@Field_10310_53 0)
(declare-sort T@Field_10323_10324 0)
(declare-sort T@Field_16607_16608 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_10310_16608 0)
(declare-sort T@Field_10310_17113 0)
(declare-sort T@Field_16607_53 0)
(declare-sort T@Field_16607_10324 0)
(declare-sort T@Field_17108_17113 0)
(declare-datatypes ((T@PolymorphicMapType_10271 0)) (((PolymorphicMapType_10271 (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| (Array T@Ref T@Field_16607_16608 Real)) (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| (Array T@Ref T@Field_16607_53 Real)) (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| (Array T@Ref T@Field_16607_10324 Real)) (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| (Array T@Ref T@Field_17108_17113 Real)) (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| (Array T@Ref T@Field_10310_16608 Real)) (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| (Array T@Ref T@Field_10310_53 Real)) (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| (Array T@Ref T@Field_10323_10324 Real)) (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| (Array T@Ref T@Field_10310_17113 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10799 0)) (((PolymorphicMapType_10799 (|PolymorphicMapType_10799_10310_53#PolymorphicMapType_10799| (Array T@Ref T@Field_10310_53 Bool)) (|PolymorphicMapType_10799_10310_10324#PolymorphicMapType_10799| (Array T@Ref T@Field_10323_10324 Bool)) (|PolymorphicMapType_10799_10310_16608#PolymorphicMapType_10799| (Array T@Ref T@Field_10310_16608 Bool)) (|PolymorphicMapType_10799_10310_31194#PolymorphicMapType_10799| (Array T@Ref T@Field_10310_17113 Bool)) (|PolymorphicMapType_10799_16607_53#PolymorphicMapType_10799| (Array T@Ref T@Field_16607_53 Bool)) (|PolymorphicMapType_10799_16607_10324#PolymorphicMapType_10799| (Array T@Ref T@Field_16607_10324 Bool)) (|PolymorphicMapType_10799_16607_16608#PolymorphicMapType_10799| (Array T@Ref T@Field_16607_16608 Bool)) (|PolymorphicMapType_10799_16607_32044#PolymorphicMapType_10799| (Array T@Ref T@Field_17108_17113 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10250 0)) (((PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| (Array T@Ref T@Field_10310_53 Bool)) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| (Array T@Ref T@Field_10323_10324 T@Ref)) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| (Array T@Ref T@Field_16607_16608 T@FrameType)) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| (Array T@Ref T@Field_10310_16608 T@FrameType)) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| (Array T@Ref T@Field_10310_17113 T@PolymorphicMapType_10799)) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| (Array T@Ref T@Field_16607_53 Bool)) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| (Array T@Ref T@Field_16607_10324 T@Ref)) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| (Array T@Ref T@Field_17108_17113 T@PolymorphicMapType_10799)) ) ) ))
(declare-sort T@Seq_17731 0)
(declare-fun |Seq#Length_17731| (T@Seq_17731) Int)
(declare-fun |Seq#Drop_17731| (T@Seq_17731 Int) T@Seq_17731)
(declare-sort T@Seq_3155 0)
(declare-fun |Seq#Length_3155| (T@Seq_3155) Int)
(declare-fun |Seq#Drop_3155| (T@Seq_3155 Int) T@Seq_3155)
(declare-fun succHeap (T@PolymorphicMapType_10250 T@PolymorphicMapType_10250) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10250 T@PolymorphicMapType_10250) Bool)
(declare-fun state (T@PolymorphicMapType_10250 T@PolymorphicMapType_10271) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10271) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10250 T@PolymorphicMapType_10250 T@PolymorphicMapType_10271) Bool)
(declare-fun IsPredicateField_6988_6989 (T@Field_16607_16608) Bool)
(declare-fun HasDirectPerm_16607_16608 (T@PolymorphicMapType_10271 T@Ref T@Field_16607_16608) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6988 (T@Field_16607_16608) T@Field_17108_17113)
(declare-fun IsPredicateField_10310_29908 (T@Field_10310_16608) Bool)
(declare-fun HasDirectPerm_10310_16608 (T@PolymorphicMapType_10271 T@Ref T@Field_10310_16608) Bool)
(declare-fun PredicateMaskField_10310 (T@Field_10310_16608) T@Field_10310_17113)
(declare-fun IsWandField_16607_33209 (T@Field_16607_16608) Bool)
(declare-fun WandMaskField_16607 (T@Field_16607_16608) T@Field_17108_17113)
(declare-fun IsWandField_10310_32852 (T@Field_10310_16608) Bool)
(declare-fun WandMaskField_10310 (T@Field_10310_16608) T@Field_10310_17113)
(declare-fun ZeroPMask () T@PolymorphicMapType_10799)
(declare-fun |P_state'| (T@PolymorphicMapType_10250 T@Ref Int) Int)
(declare-fun |P_state#frame| (T@FrameType T@Ref Int) Int)
(declare-fun P (T@Ref Int) T@Field_16607_16608)
(declare-fun dummyFunction_3452 (Int) Bool)
(declare-fun |P_state#triggerStateless| (T@Ref Int) Int)
(declare-fun |P#trigger_6988| (T@PolymorphicMapType_10250 T@Field_16607_16608) Bool)
(declare-fun |P#everUsed_6988| (T@Field_16607_16608) Bool)
(declare-fun |Seq#Index_17731| (T@Seq_17731 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3155| (T@Seq_3155 Int) Int)
(declare-fun |Seq#Empty_17731| () T@Seq_17731)
(declare-fun |Seq#Empty_3155| () T@Seq_3155)
(declare-fun |Seq#Update_17731| (T@Seq_17731 Int T@Ref) T@Seq_17731)
(declare-fun |Seq#Update_3155| (T@Seq_3155 Int Int) T@Seq_3155)
(declare-fun |Seq#Take_17731| (T@Seq_17731 Int) T@Seq_17731)
(declare-fun |Seq#Take_3155| (T@Seq_3155 Int) T@Seq_3155)
(declare-fun |Seq#Contains_3155| (T@Seq_3155 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3155)
(declare-fun |Seq#Contains_7012| (T@Seq_17731 T@Ref) Bool)
(declare-fun |Seq#Skolem_7012| (T@Seq_17731 T@Ref) Int)
(declare-fun |Seq#Skolem_3155| (T@Seq_3155 Int) Int)
(declare-fun |Seq#Singleton_17731| (T@Ref) T@Seq_17731)
(declare-fun |Seq#Singleton_3155| (Int) T@Seq_3155)
(declare-fun |P#sm| (T@Ref Int) T@Field_17108_17113)
(declare-fun |Seq#Append_17731| (T@Seq_17731 T@Seq_17731) T@Seq_17731)
(declare-fun |Seq#Append_3155| (T@Seq_3155 T@Seq_3155) T@Seq_3155)
(declare-fun dummyHeap () T@PolymorphicMapType_10250)
(declare-fun ZeroMask () T@PolymorphicMapType_10271)
(declare-fun $allocated () T@Field_10310_53)
(declare-fun InsidePredicate_16607_16607 (T@Field_16607_16608 T@FrameType T@Field_16607_16608 T@FrameType) Bool)
(declare-fun InsidePredicate_10310_10310 (T@Field_10310_16608 T@FrameType T@Field_10310_16608 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10310_38949 (T@Field_10310_17113) Bool)
(declare-fun IsWandField_10310_38965 (T@Field_10310_17113) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10310_10324 (T@Field_10323_10324) Bool)
(declare-fun IsWandField_10310_10324 (T@Field_10323_10324) Bool)
(declare-fun IsPredicateField_10310_53 (T@Field_10310_53) Bool)
(declare-fun IsWandField_10310_53 (T@Field_10310_53) Bool)
(declare-fun IsPredicateField_6988_38286 (T@Field_17108_17113) Bool)
(declare-fun IsWandField_6988_38302 (T@Field_17108_17113) Bool)
(declare-fun IsPredicateField_6988_10324 (T@Field_16607_10324) Bool)
(declare-fun IsWandField_6988_10324 (T@Field_16607_10324) Bool)
(declare-fun IsPredicateField_6988_53 (T@Field_16607_53) Bool)
(declare-fun IsWandField_6988_53 (T@Field_16607_53) Bool)
(declare-fun HasDirectPerm_16607_29620 (T@PolymorphicMapType_10271 T@Ref T@Field_17108_17113) Bool)
(declare-fun HasDirectPerm_16607_10324 (T@PolymorphicMapType_10271 T@Ref T@Field_16607_10324) Bool)
(declare-fun HasDirectPerm_16607_53 (T@PolymorphicMapType_10271 T@Ref T@Field_16607_53) Bool)
(declare-fun HasDirectPerm_10310_28680 (T@PolymorphicMapType_10271 T@Ref T@Field_10310_17113) Bool)
(declare-fun HasDirectPerm_10310_10324 (T@PolymorphicMapType_10271 T@Ref T@Field_10323_10324) Bool)
(declare-fun HasDirectPerm_10310_53 (T@PolymorphicMapType_10271 T@Ref T@Field_10310_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun P_state (T@PolymorphicMapType_10250 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_10271 T@PolymorphicMapType_10271 T@PolymorphicMapType_10271) Bool)
(declare-fun |Seq#Equal_17731| (T@Seq_17731 T@Seq_17731) Bool)
(declare-fun |Seq#Equal_3155| (T@Seq_3155 T@Seq_3155) Bool)
(declare-fun |Seq#ContainsTrigger_7012| (T@Seq_17731 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3779| (T@Seq_3155 Int) Bool)
(declare-fun getPredWandId_6988_6989 (T@Field_16607_16608) Int)
(declare-fun |Seq#SkolemDiff_17731| (T@Seq_17731 T@Seq_17731) Int)
(declare-fun |Seq#SkolemDiff_3155| (T@Seq_3155 T@Seq_3155) Int)
(declare-fun InsidePredicate_16607_10310 (T@Field_16607_16608 T@FrameType T@Field_10310_16608 T@FrameType) Bool)
(declare-fun InsidePredicate_10310_16607 (T@Field_10310_16608 T@FrameType T@Field_16607_16608 T@FrameType) Bool)
(assert (forall ((s T@Seq_17731) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17731| s)) (= (|Seq#Length_17731| (|Seq#Drop_17731| s n)) (- (|Seq#Length_17731| s) n))) (=> (< (|Seq#Length_17731| s) n) (= (|Seq#Length_17731| (|Seq#Drop_17731| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17731| (|Seq#Drop_17731| s n)) (|Seq#Length_17731| s))))
 :qid |stdinbpl.312:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17731| (|Seq#Drop_17731| s n)))
 :pattern ( (|Seq#Length_17731| s) (|Seq#Drop_17731| s n))
)))
(assert (forall ((s@@0 T@Seq_3155) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3155| s@@0)) (= (|Seq#Length_3155| (|Seq#Drop_3155| s@@0 n@@0)) (- (|Seq#Length_3155| s@@0) n@@0))) (=> (< (|Seq#Length_3155| s@@0) n@@0) (= (|Seq#Length_3155| (|Seq#Drop_3155| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3155| (|Seq#Drop_3155| s@@0 n@@0)) (|Seq#Length_3155| s@@0))))
 :qid |stdinbpl.312:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3155| (|Seq#Drop_3155| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3155| s@@0) (|Seq#Drop_3155| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10250) (Heap1 T@PolymorphicMapType_10250) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10250) (Mask T@PolymorphicMapType_10271) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10250) (ExhaleHeap T@PolymorphicMapType_10250) (Mask@@0 T@PolymorphicMapType_10271) (pm_f_34 T@Field_16607_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16607_16608 Mask@@0 null pm_f_34) (IsPredicateField_6988_6989 pm_f_34)) (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_10310_53) ) (!  (=> (select (|PolymorphicMapType_10799_10310_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34 f_35) (= (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@0) o2_34 f_35) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_10323_10324) ) (!  (=> (select (|PolymorphicMapType_10799_10310_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@0) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_10310_16608) ) (!  (=> (select (|PolymorphicMapType_10799_10310_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@0) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_10310_17113) ) (!  (=> (select (|PolymorphicMapType_10799_10310_31194#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@0) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_16607_53) ) (!  (=> (select (|PolymorphicMapType_10799_16607_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@0) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap) o2_34@@3 f_35@@3))
))) (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_16607_10324) ) (!  (=> (select (|PolymorphicMapType_10799_16607_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@0) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap) o2_34@@4 f_35@@4))
))) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_16607_16608) ) (!  (=> (select (|PolymorphicMapType_10799_16607_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@0) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_17108_17113) ) (!  (=> (select (|PolymorphicMapType_10799_16607_32044#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) null (PredicateMaskField_6988 pm_f_34))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@0) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap) o2_34@@6 f_35@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6988_6989 pm_f_34))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10250) (ExhaleHeap@@0 T@PolymorphicMapType_10250) (Mask@@1 T@PolymorphicMapType_10271) (pm_f_34@@0 T@Field_10310_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10310_16608 Mask@@1 null pm_f_34@@0) (IsPredicateField_10310_29908 pm_f_34@@0)) (and (and (and (and (and (and (and (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_10310_53) ) (!  (=> (select (|PolymorphicMapType_10799_10310_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@1) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@7 f_35@@7))
)) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_10323_10324) ) (!  (=> (select (|PolymorphicMapType_10799_10310_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@1) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@8 f_35@@8))
))) (forall ((o2_34@@9 T@Ref) (f_35@@9 T@Field_10310_16608) ) (!  (=> (select (|PolymorphicMapType_10799_10310_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@9 f_35@@9) (= (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@1) o2_34@@9 f_35@@9) (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@9 f_35@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@9 f_35@@9))
))) (forall ((o2_34@@10 T@Ref) (f_35@@10 T@Field_10310_17113) ) (!  (=> (select (|PolymorphicMapType_10799_10310_31194#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@10 f_35@@10) (= (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) o2_34@@10 f_35@@10) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@10 f_35@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@10 f_35@@10))
))) (forall ((o2_34@@11 T@Ref) (f_35@@11 T@Field_16607_53) ) (!  (=> (select (|PolymorphicMapType_10799_16607_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@11 f_35@@11) (= (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@1) o2_34@@11 f_35@@11) (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@11 f_35@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@11 f_35@@11))
))) (forall ((o2_34@@12 T@Ref) (f_35@@12 T@Field_16607_10324) ) (!  (=> (select (|PolymorphicMapType_10799_16607_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@12 f_35@@12) (= (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@1) o2_34@@12 f_35@@12) (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@12 f_35@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@12 f_35@@12))
))) (forall ((o2_34@@13 T@Ref) (f_35@@13 T@Field_16607_16608) ) (!  (=> (select (|PolymorphicMapType_10799_16607_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@13 f_35@@13) (= (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@1) o2_34@@13 f_35@@13) (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@13 f_35@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@13 f_35@@13))
))) (forall ((o2_34@@14 T@Ref) (f_35@@14 T@Field_17108_17113) ) (!  (=> (select (|PolymorphicMapType_10799_16607_32044#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@1) null (PredicateMaskField_10310 pm_f_34@@0))) o2_34@@14 f_35@@14) (= (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@1) o2_34@@14 f_35@@14) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@14 f_35@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@0) o2_34@@14 f_35@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_10310_29908 pm_f_34@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10250) (ExhaleHeap@@1 T@PolymorphicMapType_10250) (Mask@@2 T@PolymorphicMapType_10271) (pm_f_34@@1 T@Field_16607_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_16607_16608 Mask@@2 null pm_f_34@@1) (IsWandField_16607_33209 pm_f_34@@1)) (and (and (and (and (and (and (and (forall ((o2_34@@15 T@Ref) (f_35@@15 T@Field_10310_53) ) (!  (=> (select (|PolymorphicMapType_10799_10310_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@15 f_35@@15) (= (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@2) o2_34@@15 f_35@@15) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@15 f_35@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@15 f_35@@15))
)) (forall ((o2_34@@16 T@Ref) (f_35@@16 T@Field_10323_10324) ) (!  (=> (select (|PolymorphicMapType_10799_10310_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@16 f_35@@16) (= (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@2) o2_34@@16 f_35@@16) (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@16 f_35@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@16 f_35@@16))
))) (forall ((o2_34@@17 T@Ref) (f_35@@17 T@Field_10310_16608) ) (!  (=> (select (|PolymorphicMapType_10799_10310_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@17 f_35@@17) (= (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@2) o2_34@@17 f_35@@17) (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@17 f_35@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@17 f_35@@17))
))) (forall ((o2_34@@18 T@Ref) (f_35@@18 T@Field_10310_17113) ) (!  (=> (select (|PolymorphicMapType_10799_10310_31194#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@18 f_35@@18) (= (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@2) o2_34@@18 f_35@@18) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@18 f_35@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@18 f_35@@18))
))) (forall ((o2_34@@19 T@Ref) (f_35@@19 T@Field_16607_53) ) (!  (=> (select (|PolymorphicMapType_10799_16607_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@19 f_35@@19) (= (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@2) o2_34@@19 f_35@@19) (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@19 f_35@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@19 f_35@@19))
))) (forall ((o2_34@@20 T@Ref) (f_35@@20 T@Field_16607_10324) ) (!  (=> (select (|PolymorphicMapType_10799_16607_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@20 f_35@@20) (= (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@2) o2_34@@20 f_35@@20) (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@20 f_35@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@20 f_35@@20))
))) (forall ((o2_34@@21 T@Ref) (f_35@@21 T@Field_16607_16608) ) (!  (=> (select (|PolymorphicMapType_10799_16607_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@21 f_35@@21) (= (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@2) o2_34@@21 f_35@@21) (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@21 f_35@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@21 f_35@@21))
))) (forall ((o2_34@@22 T@Ref) (f_35@@22 T@Field_17108_17113) ) (!  (=> (select (|PolymorphicMapType_10799_16607_32044#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) null (WandMaskField_16607 pm_f_34@@1))) o2_34@@22 f_35@@22) (= (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@2) o2_34@@22 f_35@@22) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@22 f_35@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@1) o2_34@@22 f_35@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_16607_33209 pm_f_34@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10250) (ExhaleHeap@@2 T@PolymorphicMapType_10250) (Mask@@3 T@PolymorphicMapType_10271) (pm_f_34@@2 T@Field_10310_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10310_16608 Mask@@3 null pm_f_34@@2) (IsWandField_10310_32852 pm_f_34@@2)) (and (and (and (and (and (and (and (forall ((o2_34@@23 T@Ref) (f_35@@23 T@Field_10310_53) ) (!  (=> (select (|PolymorphicMapType_10799_10310_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@23 f_35@@23) (= (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@3) o2_34@@23 f_35@@23) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@23 f_35@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@23 f_35@@23))
)) (forall ((o2_34@@24 T@Ref) (f_35@@24 T@Field_10323_10324) ) (!  (=> (select (|PolymorphicMapType_10799_10310_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@24 f_35@@24) (= (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@3) o2_34@@24 f_35@@24) (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@24 f_35@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@24 f_35@@24))
))) (forall ((o2_34@@25 T@Ref) (f_35@@25 T@Field_10310_16608) ) (!  (=> (select (|PolymorphicMapType_10799_10310_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@25 f_35@@25) (= (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@3) o2_34@@25 f_35@@25) (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@25 f_35@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@25 f_35@@25))
))) (forall ((o2_34@@26 T@Ref) (f_35@@26 T@Field_10310_17113) ) (!  (=> (select (|PolymorphicMapType_10799_10310_31194#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@26 f_35@@26) (= (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) o2_34@@26 f_35@@26) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@26 f_35@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@26 f_35@@26))
))) (forall ((o2_34@@27 T@Ref) (f_35@@27 T@Field_16607_53) ) (!  (=> (select (|PolymorphicMapType_10799_16607_53#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@27 f_35@@27) (= (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@3) o2_34@@27 f_35@@27) (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@27 f_35@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@27 f_35@@27))
))) (forall ((o2_34@@28 T@Ref) (f_35@@28 T@Field_16607_10324) ) (!  (=> (select (|PolymorphicMapType_10799_16607_10324#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@28 f_35@@28) (= (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@3) o2_34@@28 f_35@@28) (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@28 f_35@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@28 f_35@@28))
))) (forall ((o2_34@@29 T@Ref) (f_35@@29 T@Field_16607_16608) ) (!  (=> (select (|PolymorphicMapType_10799_16607_16608#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@29 f_35@@29) (= (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@3) o2_34@@29 f_35@@29) (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@29 f_35@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@29 f_35@@29))
))) (forall ((o2_34@@30 T@Ref) (f_35@@30 T@Field_17108_17113) ) (!  (=> (select (|PolymorphicMapType_10799_16607_32044#PolymorphicMapType_10799| (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@3) null (WandMaskField_10310 pm_f_34@@2))) o2_34@@30 f_35@@30) (= (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@3) o2_34@@30 f_35@@30) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@30 f_35@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@2) o2_34@@30 f_35@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_10310_32852 pm_f_34@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10250) (Heap1@@0 T@PolymorphicMapType_10250) (Heap2 T@PolymorphicMapType_10250) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17108_17113) ) (!  (not (select (|PolymorphicMapType_10799_16607_32044#PolymorphicMapType_10799| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_16607_32044#PolymorphicMapType_10799| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16607_16608) ) (!  (not (select (|PolymorphicMapType_10799_16607_16608#PolymorphicMapType_10799| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_16607_16608#PolymorphicMapType_10799| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16607_10324) ) (!  (not (select (|PolymorphicMapType_10799_16607_10324#PolymorphicMapType_10799| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_16607_10324#PolymorphicMapType_10799| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16607_53) ) (!  (not (select (|PolymorphicMapType_10799_16607_53#PolymorphicMapType_10799| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_16607_53#PolymorphicMapType_10799| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10310_17113) ) (!  (not (select (|PolymorphicMapType_10799_10310_31194#PolymorphicMapType_10799| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_10310_31194#PolymorphicMapType_10799| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_10310_16608) ) (!  (not (select (|PolymorphicMapType_10799_10310_16608#PolymorphicMapType_10799| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_10310_16608#PolymorphicMapType_10799| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_10323_10324) ) (!  (not (select (|PolymorphicMapType_10799_10310_10324#PolymorphicMapType_10799| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_10310_10324#PolymorphicMapType_10799| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10310_53) ) (!  (not (select (|PolymorphicMapType_10799_10310_53#PolymorphicMapType_10799| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10799_10310_53#PolymorphicMapType_10799| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10250) (Mask@@4 T@PolymorphicMapType_10271) (r_1 T@Ref) (x Int) ) (!  (=> (state Heap@@4 Mask@@4) (= (|P_state'| Heap@@4 r_1 x) (|P_state#frame| (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@4) null (P r_1 x)) r_1 x)))
 :qid |stdinbpl.597:15|
 :skolemid |60|
 :pattern ( (state Heap@@4 Mask@@4) (|P_state'| Heap@@4 r_1 x))
)))
(assert (forall ((r_1@@0 T@Ref) (x@@0 Int) ) (! (IsPredicateField_6988_6989 (P r_1@@0 x@@0))
 :qid |stdinbpl.639:15|
 :skolemid |62|
 :pattern ( (P r_1@@0 x@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10250) (r_1@@1 T@Ref) (x@@1 Int) ) (! (dummyFunction_3452 (|P_state#triggerStateless| r_1@@1 x@@1))
 :qid |stdinbpl.590:15|
 :skolemid |59|
 :pattern ( (|P_state'| Heap@@5 r_1@@1 x@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10250) (r_1@@2 T@Ref) (x@@2 Int) ) (! (|P#everUsed_6988| (P r_1@@2 x@@2))
 :qid |stdinbpl.658:15|
 :skolemid |66|
 :pattern ( (|P#trigger_6988| Heap@@6 (P r_1@@2 x@@2)))
)))
(assert (forall ((s@@1 T@Seq_17731) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17731| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17731| (|Seq#Drop_17731| s@@1 n@@1) j) (|Seq#Index_17731| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.333:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17731| (|Seq#Drop_17731| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3155) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3155| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3155| (|Seq#Drop_3155| s@@2 n@@2) j@@0) (|Seq#Index_3155| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.333:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3155| (|Seq#Drop_3155| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17731| |Seq#Empty_17731|) 0))
(assert (= (|Seq#Length_3155| |Seq#Empty_3155|) 0))
(assert (forall ((s@@3 T@Seq_17731) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17731| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_17731| (|Seq#Update_17731| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_17731| (|Seq#Update_17731| s@@3 i v) n@@3) (|Seq#Index_17731| s@@3 n@@3)))))
 :qid |stdinbpl.288:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17731| (|Seq#Update_17731| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_17731| s@@3 n@@3) (|Seq#Update_17731| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3155) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3155| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3155| (|Seq#Update_3155| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3155| (|Seq#Update_3155| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3155| s@@4 n@@4)))))
 :qid |stdinbpl.288:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3155| (|Seq#Update_3155| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3155| s@@4 n@@4) (|Seq#Update_3155| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_17731) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17731| s@@5)) (= (|Seq#Length_17731| (|Seq#Take_17731| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17731| s@@5) n@@5) (= (|Seq#Length_17731| (|Seq#Take_17731| s@@5 n@@5)) (|Seq#Length_17731| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17731| (|Seq#Take_17731| s@@5 n@@5)) 0)))
 :qid |stdinbpl.299:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17731| (|Seq#Take_17731| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17731| s@@5 n@@5) (|Seq#Length_17731| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3155) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3155| s@@6)) (= (|Seq#Length_3155| (|Seq#Take_3155| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3155| s@@6) n@@6) (= (|Seq#Length_3155| (|Seq#Take_3155| s@@6 n@@6)) (|Seq#Length_3155| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3155| (|Seq#Take_3155| s@@6 n@@6)) 0)))
 :qid |stdinbpl.299:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3155| (|Seq#Take_3155| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3155| s@@6 n@@6) (|Seq#Length_3155| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3155| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.573:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3155| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_17731) (x@@3 T@Ref) ) (!  (=> (|Seq#Contains_7012| s@@7 x@@3) (and (and (<= 0 (|Seq#Skolem_7012| s@@7 x@@3)) (< (|Seq#Skolem_7012| s@@7 x@@3) (|Seq#Length_17731| s@@7))) (= (|Seq#Index_17731| s@@7 (|Seq#Skolem_7012| s@@7 x@@3)) x@@3)))
 :qid |stdinbpl.431:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_7012| s@@7 x@@3))
)))
(assert (forall ((s@@8 T@Seq_3155) (x@@4 Int) ) (!  (=> (|Seq#Contains_3155| s@@8 x@@4) (and (and (<= 0 (|Seq#Skolem_3155| s@@8 x@@4)) (< (|Seq#Skolem_3155| s@@8 x@@4) (|Seq#Length_3155| s@@8))) (= (|Seq#Index_3155| s@@8 (|Seq#Skolem_3155| s@@8 x@@4)) x@@4)))
 :qid |stdinbpl.431:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3155| s@@8 x@@4))
)))
(assert (forall ((s@@9 T@Seq_17731) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17731| s@@9 n@@7) s@@9))
 :qid |stdinbpl.415:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17731| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3155) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3155| s@@10 n@@8) s@@10))
 :qid |stdinbpl.415:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3155| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.268:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.266:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10250) (ExhaleHeap@@3 T@PolymorphicMapType_10250) (Mask@@5 T@PolymorphicMapType_10271) (pm_f_34@@3 T@Field_16607_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_16607_16608 Mask@@5 null pm_f_34@@3) (IsPredicateField_6988_6989 pm_f_34@@3)) (= (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@7) null (PredicateMaskField_6988 pm_f_34@@3)) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@3) null (PredicateMaskField_6988 pm_f_34@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_6988_6989 pm_f_34@@3) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@3) null (PredicateMaskField_6988 pm_f_34@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10250) (ExhaleHeap@@4 T@PolymorphicMapType_10250) (Mask@@6 T@PolymorphicMapType_10271) (pm_f_34@@4 T@Field_10310_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_10310_16608 Mask@@6 null pm_f_34@@4) (IsPredicateField_10310_29908 pm_f_34@@4)) (= (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@8) null (PredicateMaskField_10310 pm_f_34@@4)) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@4) null (PredicateMaskField_10310 pm_f_34@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_10310_29908 pm_f_34@@4) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@4) null (PredicateMaskField_10310 pm_f_34@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10250) (ExhaleHeap@@5 T@PolymorphicMapType_10250) (Mask@@7 T@PolymorphicMapType_10271) (pm_f_34@@5 T@Field_16607_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_16607_16608 Mask@@7 null pm_f_34@@5) (IsWandField_16607_33209 pm_f_34@@5)) (= (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@9) null (WandMaskField_16607 pm_f_34@@5)) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@5) null (WandMaskField_16607 pm_f_34@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_16607_33209 pm_f_34@@5) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@5) null (WandMaskField_16607 pm_f_34@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10250) (ExhaleHeap@@6 T@PolymorphicMapType_10250) (Mask@@8 T@PolymorphicMapType_10271) (pm_f_34@@6 T@Field_10310_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_10310_16608 Mask@@8 null pm_f_34@@6) (IsWandField_10310_32852 pm_f_34@@6)) (= (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@10) null (WandMaskField_10310 pm_f_34@@6)) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@6) null (WandMaskField_10310 pm_f_34@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_10310_32852 pm_f_34@@6) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@6) null (WandMaskField_10310 pm_f_34@@6)))
)))
(assert (forall ((x@@5 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_7012| (|Seq#Singleton_17731| x@@5) y) (= x@@5 y))
 :qid |stdinbpl.556:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_7012| (|Seq#Singleton_17731| x@@5) y))
)))
(assert (forall ((x@@6 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3155| (|Seq#Singleton_3155| x@@6) y@@0) (= x@@6 y@@0))
 :qid |stdinbpl.556:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3155| (|Seq#Singleton_3155| x@@6) y@@0))
)))
(assert (forall ((r_1@@3 T@Ref) (x@@7 Int) (r2 T@Ref) (x2 Int) ) (!  (=> (= (P r_1@@3 x@@7) (P r2 x2)) (and (= r_1@@3 r2) (= x@@7 x2)))
 :qid |stdinbpl.649:15|
 :skolemid |64|
 :pattern ( (P r_1@@3 x@@7) (P r2 x2))
)))
(assert (forall ((r_1@@4 T@Ref) (x@@8 Int) (r2@@0 T@Ref) (x2@@0 Int) ) (!  (=> (= (|P#sm| r_1@@4 x@@8) (|P#sm| r2@@0 x2@@0)) (and (= r_1@@4 r2@@0) (= x@@8 x2@@0)))
 :qid |stdinbpl.653:15|
 :skolemid |65|
 :pattern ( (|P#sm| r_1@@4 x@@8) (|P#sm| r2@@0 x2@@0))
)))
(assert (forall ((s@@11 T@Seq_17731) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17731| s@@11))) (= (|Seq#Index_17731| (|Seq#Take_17731| s@@11 n@@9) j@@3) (|Seq#Index_17731| s@@11 j@@3)))
 :qid |stdinbpl.307:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17731| (|Seq#Take_17731| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17731| s@@11 j@@3) (|Seq#Take_17731| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3155) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3155| s@@12))) (= (|Seq#Index_3155| (|Seq#Take_3155| s@@12 n@@10) j@@4) (|Seq#Index_3155| s@@12 j@@4)))
 :qid |stdinbpl.307:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3155| (|Seq#Take_3155| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3155| s@@12 j@@4) (|Seq#Take_3155| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_17731) (t T@Seq_17731) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17731| s@@13))) (< n@@11 (|Seq#Length_17731| (|Seq#Append_17731| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17731| s@@13)) (|Seq#Length_17731| s@@13)) n@@11) (= (|Seq#Take_17731| (|Seq#Append_17731| s@@13 t) n@@11) (|Seq#Append_17731| s@@13 (|Seq#Take_17731| t (|Seq#Sub| n@@11 (|Seq#Length_17731| s@@13)))))))
 :qid |stdinbpl.392:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17731| (|Seq#Append_17731| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3155) (t@@0 T@Seq_3155) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3155| s@@14))) (< n@@12 (|Seq#Length_3155| (|Seq#Append_3155| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3155| s@@14)) (|Seq#Length_3155| s@@14)) n@@12) (= (|Seq#Take_3155| (|Seq#Append_3155| s@@14 t@@0) n@@12) (|Seq#Append_3155| s@@14 (|Seq#Take_3155| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3155| s@@14)))))))
 :qid |stdinbpl.392:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3155| (|Seq#Append_3155| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10250) (ExhaleHeap@@7 T@PolymorphicMapType_10250) (Mask@@9 T@PolymorphicMapType_10271) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@11) o_30 $allocated) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@7) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@7) o_30 $allocated))
)))
(assert (forall ((p T@Field_16607_16608) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16607_16607 p v_1 p w))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16607_16607 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10310_16608) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10310_10310 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10310_10310 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_17731) (s1 T@Seq_17731) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17731|)) (not (= s1 |Seq#Empty_17731|))) (<= (|Seq#Length_17731| s0) n@@13)) (< n@@13 (|Seq#Length_17731| (|Seq#Append_17731| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17731| s0)) (|Seq#Length_17731| s0)) n@@13) (= (|Seq#Index_17731| (|Seq#Append_17731| s0 s1) n@@13) (|Seq#Index_17731| s1 (|Seq#Sub| n@@13 (|Seq#Length_17731| s0))))))
 :qid |stdinbpl.279:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17731| (|Seq#Append_17731| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3155) (s1@@0 T@Seq_3155) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3155|)) (not (= s1@@0 |Seq#Empty_3155|))) (<= (|Seq#Length_3155| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3155| (|Seq#Append_3155| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3155| s0@@0)) (|Seq#Length_3155| s0@@0)) n@@14) (= (|Seq#Index_3155| (|Seq#Append_3155| s0@@0 s1@@0) n@@14) (|Seq#Index_3155| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3155| s0@@0))))))
 :qid |stdinbpl.279:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3155| (|Seq#Append_3155| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10250) (ExhaleHeap@@8 T@PolymorphicMapType_10250) (Mask@@10 T@PolymorphicMapType_10271) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10271) (o_2@@7 T@Ref) (f_4@@7 T@Field_10310_17113) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_10310_38949 f_4@@7))) (not (IsWandField_10310_38965 f_4@@7))) (<= (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10271) (o_2@@8 T@Ref) (f_4@@8 T@Field_10323_10324) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_10310_10324 f_4@@8))) (not (IsWandField_10310_10324 f_4@@8))) (<= (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10271) (o_2@@9 T@Ref) (f_4@@9 T@Field_10310_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_10310_53 f_4@@9))) (not (IsWandField_10310_53 f_4@@9))) (<= (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10271) (o_2@@10 T@Ref) (f_4@@10 T@Field_10310_16608) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_10310_29908 f_4@@10))) (not (IsWandField_10310_32852 f_4@@10))) (<= (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10271) (o_2@@11 T@Ref) (f_4@@11 T@Field_17108_17113) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6988_38286 f_4@@11))) (not (IsWandField_6988_38302 f_4@@11))) (<= (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10271) (o_2@@12 T@Ref) (f_4@@12 T@Field_16607_10324) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6988_10324 f_4@@12))) (not (IsWandField_6988_10324 f_4@@12))) (<= (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10271) (o_2@@13 T@Ref) (f_4@@13 T@Field_16607_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6988_53 f_4@@13))) (not (IsWandField_6988_53 f_4@@13))) (<= (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10271) (o_2@@14 T@Ref) (f_4@@14 T@Field_16607_16608) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6988_6989 f_4@@14))) (not (IsWandField_16607_33209 f_4@@14))) (<= (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10271) (o_2@@15 T@Ref) (f_4@@15 T@Field_17108_17113) ) (! (= (HasDirectPerm_16607_29620 Mask@@19 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| Mask@@19) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16607_29620 Mask@@19 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10271) (o_2@@16 T@Ref) (f_4@@16 T@Field_16607_16608) ) (! (= (HasDirectPerm_16607_16608 Mask@@20 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| Mask@@20) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16607_16608 Mask@@20 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10271) (o_2@@17 T@Ref) (f_4@@17 T@Field_16607_10324) ) (! (= (HasDirectPerm_16607_10324 Mask@@21 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| Mask@@21) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16607_10324 Mask@@21 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10271) (o_2@@18 T@Ref) (f_4@@18 T@Field_16607_53) ) (! (= (HasDirectPerm_16607_53 Mask@@22 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| Mask@@22) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16607_53 Mask@@22 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10271) (o_2@@19 T@Ref) (f_4@@19 T@Field_10310_17113) ) (! (= (HasDirectPerm_10310_28680 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10310_28680 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10271) (o_2@@20 T@Ref) (f_4@@20 T@Field_10310_16608) ) (! (= (HasDirectPerm_10310_16608 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10310_16608 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10271) (o_2@@21 T@Ref) (f_4@@21 T@Field_10323_10324) ) (! (= (HasDirectPerm_10310_10324 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10310_10324 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10271) (o_2@@22 T@Ref) (f_4@@22 T@Field_10310_53) ) (! (= (HasDirectPerm_10310_53 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10310_53 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.198:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3155| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.571:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3155| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10250) (ExhaleHeap@@9 T@PolymorphicMapType_10250) (Mask@@27 T@PolymorphicMapType_10271) (o_30@@0 T@Ref) (f_35@@31 T@Field_17108_17113) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_16607_29620 Mask@@27 o_30@@0 f_35@@31) (= (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@13) o_30@@0 f_35@@31) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@9) o_30@@0 f_35@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| ExhaleHeap@@9) o_30@@0 f_35@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10250) (ExhaleHeap@@10 T@PolymorphicMapType_10250) (Mask@@28 T@PolymorphicMapType_10271) (o_30@@1 T@Ref) (f_35@@32 T@Field_16607_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_16607_16608 Mask@@28 o_30@@1 f_35@@32) (= (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@14) o_30@@1 f_35@@32) (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@10) o_30@@1 f_35@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| ExhaleHeap@@10) o_30@@1 f_35@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10250) (ExhaleHeap@@11 T@PolymorphicMapType_10250) (Mask@@29 T@PolymorphicMapType_10271) (o_30@@2 T@Ref) (f_35@@33 T@Field_16607_10324) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_16607_10324 Mask@@29 o_30@@2 f_35@@33) (= (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@15) o_30@@2 f_35@@33) (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@11) o_30@@2 f_35@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| ExhaleHeap@@11) o_30@@2 f_35@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10250) (ExhaleHeap@@12 T@PolymorphicMapType_10250) (Mask@@30 T@PolymorphicMapType_10271) (o_30@@3 T@Ref) (f_35@@34 T@Field_16607_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_16607_53 Mask@@30 o_30@@3 f_35@@34) (= (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@16) o_30@@3 f_35@@34) (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@12) o_30@@3 f_35@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| ExhaleHeap@@12) o_30@@3 f_35@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10250) (ExhaleHeap@@13 T@PolymorphicMapType_10250) (Mask@@31 T@PolymorphicMapType_10271) (o_30@@4 T@Ref) (f_35@@35 T@Field_10310_17113) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_10310_28680 Mask@@31 o_30@@4 f_35@@35) (= (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@17) o_30@@4 f_35@@35) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@13) o_30@@4 f_35@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| ExhaleHeap@@13) o_30@@4 f_35@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10250) (ExhaleHeap@@14 T@PolymorphicMapType_10250) (Mask@@32 T@PolymorphicMapType_10271) (o_30@@5 T@Ref) (f_35@@36 T@Field_10310_16608) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_10310_16608 Mask@@32 o_30@@5 f_35@@36) (= (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@18) o_30@@5 f_35@@36) (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@14) o_30@@5 f_35@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| ExhaleHeap@@14) o_30@@5 f_35@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10250) (ExhaleHeap@@15 T@PolymorphicMapType_10250) (Mask@@33 T@PolymorphicMapType_10271) (o_30@@6 T@Ref) (f_35@@37 T@Field_10323_10324) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_10310_10324 Mask@@33 o_30@@6 f_35@@37) (= (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@19) o_30@@6 f_35@@37) (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@15) o_30@@6 f_35@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| ExhaleHeap@@15) o_30@@6 f_35@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10250) (ExhaleHeap@@16 T@PolymorphicMapType_10250) (Mask@@34 T@PolymorphicMapType_10271) (o_30@@7 T@Ref) (f_35@@38 T@Field_10310_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_10310_53 Mask@@34 o_30@@7 f_35@@38) (= (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@20) o_30@@7 f_35@@38) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@16) o_30@@7 f_35@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| ExhaleHeap@@16) o_30@@7 f_35@@38))
)))
(assert (forall ((s0@@1 T@Seq_17731) (s1@@1 T@Seq_17731) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17731|)) (not (= s1@@1 |Seq#Empty_17731|))) (= (|Seq#Length_17731| (|Seq#Append_17731| s0@@1 s1@@1)) (+ (|Seq#Length_17731| s0@@1) (|Seq#Length_17731| s1@@1))))
 :qid |stdinbpl.248:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17731| (|Seq#Append_17731| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3155) (s1@@2 T@Seq_3155) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3155|)) (not (= s1@@2 |Seq#Empty_3155|))) (= (|Seq#Length_3155| (|Seq#Append_3155| s0@@2 s1@@2)) (+ (|Seq#Length_3155| s0@@2) (|Seq#Length_3155| s1@@2))))
 :qid |stdinbpl.248:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3155| (|Seq#Append_3155| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_10310_17113) ) (! (= (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_10323_10324) ) (! (= (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_10310_53) ) (! (= (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_10310_16608) ) (! (= (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_17108_17113) ) (! (= (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_16607_10324) ) (! (= (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_16607_53) ) (! (= (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_16607_16608) ) (! (= (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((s@@15 T@Seq_17731) (t@@1 T@Seq_17731) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17731| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17731| s@@15)) (|Seq#Length_17731| s@@15)) n@@15) (= (|Seq#Drop_17731| (|Seq#Append_17731| s@@15 t@@1) n@@15) (|Seq#Drop_17731| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17731| s@@15))))))
 :qid |stdinbpl.405:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17731| (|Seq#Append_17731| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3155) (t@@2 T@Seq_3155) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3155| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3155| s@@16)) (|Seq#Length_3155| s@@16)) n@@16) (= (|Seq#Drop_3155| (|Seq#Append_3155| s@@16 t@@2) n@@16) (|Seq#Drop_3155| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3155| s@@16))))))
 :qid |stdinbpl.405:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3155| (|Seq#Append_3155| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10250) (r_1@@5 T@Ref) (x@@9 Int) ) (!  (and (= (P_state Heap@@21 r_1@@5 x@@9) (|P_state'| Heap@@21 r_1@@5 x@@9)) (dummyFunction_3452 (|P_state#triggerStateless| r_1@@5 x@@9)))
 :qid |stdinbpl.586:15|
 :skolemid |58|
 :pattern ( (P_state Heap@@21 r_1@@5 x@@9))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10271) (SummandMask1 T@PolymorphicMapType_10271) (SummandMask2 T@PolymorphicMapType_10271) (o_2@@31 T@Ref) (f_4@@31 T@Field_10310_17113) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10271_10310_37111#PolymorphicMapType_10271| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10271) (SummandMask1@@0 T@PolymorphicMapType_10271) (SummandMask2@@0 T@PolymorphicMapType_10271) (o_2@@32 T@Ref) (f_4@@32 T@Field_10323_10324) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10271_10310_10324#PolymorphicMapType_10271| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10271) (SummandMask1@@1 T@PolymorphicMapType_10271) (SummandMask2@@1 T@PolymorphicMapType_10271) (o_2@@33 T@Ref) (f_4@@33 T@Field_10310_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10271_10310_53#PolymorphicMapType_10271| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10271) (SummandMask1@@2 T@PolymorphicMapType_10271) (SummandMask2@@2 T@PolymorphicMapType_10271) (o_2@@34 T@Ref) (f_4@@34 T@Field_10310_16608) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10271_10310_6989#PolymorphicMapType_10271| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10271) (SummandMask1@@3 T@PolymorphicMapType_10271) (SummandMask2@@3 T@PolymorphicMapType_10271) (o_2@@35 T@Ref) (f_4@@35 T@Field_17108_17113) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10271_6988_36765#PolymorphicMapType_10271| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10271) (SummandMask1@@4 T@PolymorphicMapType_10271) (SummandMask2@@4 T@PolymorphicMapType_10271) (o_2@@36 T@Ref) (f_4@@36 T@Field_16607_10324) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10271_6988_10324#PolymorphicMapType_10271| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10271) (SummandMask1@@5 T@PolymorphicMapType_10271) (SummandMask2@@5 T@PolymorphicMapType_10271) (o_2@@37 T@Ref) (f_4@@37 T@Field_16607_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10271_6988_53#PolymorphicMapType_10271| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10271) (SummandMask1@@6 T@PolymorphicMapType_10271) (SummandMask2@@6 T@PolymorphicMapType_10271) (o_2@@38 T@Ref) (f_4@@38 T@Field_16607_16608) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10271_6988_6989#PolymorphicMapType_10271| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3155| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3155| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.570:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3155| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_17731) (b T@Seq_17731) ) (!  (=> (|Seq#Equal_17731| a b) (= a b))
 :qid |stdinbpl.543:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_17731| a b))
)))
(assert (forall ((a@@0 T@Seq_3155) (b@@0 T@Seq_3155) ) (!  (=> (|Seq#Equal_3155| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.543:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3155| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_17731) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_17731| s@@17))) (|Seq#ContainsTrigger_7012| s@@17 (|Seq#Index_17731| s@@17 i@@3)))
 :qid |stdinbpl.436:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17731| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3155) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3155| s@@18))) (|Seq#ContainsTrigger_3779| s@@18 (|Seq#Index_3155| s@@18 i@@4)))
 :qid |stdinbpl.436:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3155| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_17731) (s1@@3 T@Seq_17731) ) (!  (and (=> (= s0@@3 |Seq#Empty_17731|) (= (|Seq#Append_17731| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17731|) (= (|Seq#Append_17731| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.254:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_17731| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3155) (s1@@4 T@Seq_3155) ) (!  (and (=> (= s0@@4 |Seq#Empty_3155|) (= (|Seq#Append_3155| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3155|) (= (|Seq#Append_3155| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.254:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3155| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17731| (|Seq#Singleton_17731| t@@3) 0) t@@3)
 :qid |stdinbpl.258:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17731| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3155| (|Seq#Singleton_3155| t@@4) 0) t@@4)
 :qid |stdinbpl.258:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3155| t@@4))
)))
(assert (forall ((s@@19 T@Seq_17731) ) (! (<= 0 (|Seq#Length_17731| s@@19))
 :qid |stdinbpl.237:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17731| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3155) ) (! (<= 0 (|Seq#Length_3155| s@@20))
 :qid |stdinbpl.237:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3155| s@@20))
)))
(assert (forall ((r_1@@6 T@Ref) (x@@10 Int) ) (! (= (getPredWandId_6988_6989 (P r_1@@6 x@@10)) 0)
 :qid |stdinbpl.643:15|
 :skolemid |63|
 :pattern ( (P r_1@@6 x@@10))
)))
(assert (forall ((s0@@5 T@Seq_17731) (s1@@5 T@Seq_17731) ) (!  (=> (|Seq#Equal_17731| s0@@5 s1@@5) (and (= (|Seq#Length_17731| s0@@5) (|Seq#Length_17731| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17731| s0@@5))) (= (|Seq#Index_17731| s0@@5 j@@6) (|Seq#Index_17731| s1@@5 j@@6)))
 :qid |stdinbpl.533:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17731| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17731| s1@@5 j@@6))
))))
 :qid |stdinbpl.530:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_17731| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3155) (s1@@6 T@Seq_3155) ) (!  (=> (|Seq#Equal_3155| s0@@6 s1@@6) (and (= (|Seq#Length_3155| s0@@6) (|Seq#Length_3155| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3155| s0@@6))) (= (|Seq#Index_3155| s0@@6 j@@7) (|Seq#Index_3155| s1@@6 j@@7)))
 :qid |stdinbpl.533:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3155| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3155| s1@@6 j@@7))
))))
 :qid |stdinbpl.530:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3155| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17731| (|Seq#Singleton_17731| t@@5)) 1)
 :qid |stdinbpl.245:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17731| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3155| (|Seq#Singleton_3155| t@@6)) 1)
 :qid |stdinbpl.245:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3155| t@@6))
)))
(assert (forall ((r_1@@7 T@Ref) (x@@11 Int) ) (! (= (PredicateMaskField_6988 (P r_1@@7 x@@11)) (|P#sm| r_1@@7 x@@11))
 :qid |stdinbpl.635:15|
 :skolemid |61|
 :pattern ( (PredicateMaskField_6988 (P r_1@@7 x@@11)))
)))
(assert (forall ((s@@21 T@Seq_17731) (t@@7 T@Seq_17731) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17731| s@@21))) (= (|Seq#Take_17731| (|Seq#Append_17731| s@@21 t@@7) n@@17) (|Seq#Take_17731| s@@21 n@@17)))
 :qid |stdinbpl.387:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17731| (|Seq#Append_17731| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3155) (t@@8 T@Seq_3155) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3155| s@@22))) (= (|Seq#Take_3155| (|Seq#Append_3155| s@@22 t@@8) n@@18) (|Seq#Take_3155| s@@22 n@@18)))
 :qid |stdinbpl.387:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3155| (|Seq#Append_3155| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_17731) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_17731| s@@23))) (= (|Seq#Length_17731| (|Seq#Update_17731| s@@23 i@@5 v@@2)) (|Seq#Length_17731| s@@23)))
 :qid |stdinbpl.286:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17731| (|Seq#Update_17731| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_17731| s@@23) (|Seq#Update_17731| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3155) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3155| s@@24))) (= (|Seq#Length_3155| (|Seq#Update_3155| s@@24 i@@6 v@@3)) (|Seq#Length_3155| s@@24)))
 :qid |stdinbpl.286:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3155| (|Seq#Update_3155| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3155| s@@24) (|Seq#Update_3155| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10250) (o_6 T@Ref) (f_16 T@Field_17108_17113) (v@@4 T@PolymorphicMapType_10799) ) (! (succHeap Heap@@22 (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@22) (store (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@22) o_6 f_16 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@22) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@22) (store (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@22) o_6 f_16 v@@4)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10250) (o_6@@0 T@Ref) (f_16@@0 T@Field_16607_16608) (v@@5 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@23) (store (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@23) o_6@@0 f_16@@0 v@@5) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@23) (store (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@23) o_6@@0 f_16@@0 v@@5) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@23) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10250) (o_6@@1 T@Ref) (f_16@@1 T@Field_16607_10324) (v@@6 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@24) (store (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@24) o_6@@1 f_16@@1 v@@6) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@24) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@24) (store (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@24) o_6@@1 f_16@@1 v@@6) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10250) (o_6@@2 T@Ref) (f_16@@2 T@Field_16607_53) (v@@7 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@25) (store (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@25) o_6@@2 f_16@@2 v@@7) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@25) (store (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@25) o_6@@2 f_16@@2 v@@7) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@25) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10250) (o_6@@3 T@Ref) (f_16@@3 T@Field_10310_17113) (v@@8 T@PolymorphicMapType_10799) ) (! (succHeap Heap@@26 (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@26) (store (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@26) o_6@@3 f_16@@3 v@@8) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@26) (store (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@26) o_6@@3 f_16@@3 v@@8) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@26) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10250) (o_6@@4 T@Ref) (f_16@@4 T@Field_10310_16608) (v@@9 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@27) (store (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@27) o_6@@4 f_16@@4 v@@9) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@27) (store (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@27) o_6@@4 f_16@@4 v@@9) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@27) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10250) (o_6@@5 T@Ref) (f_16@@5 T@Field_10323_10324) (v@@10 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@28) (store (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@28) o_6@@5 f_16@@5 v@@10) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@28) (store (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@28) o_6@@5 f_16@@5 v@@10) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@28) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10250) (o_6@@6 T@Ref) (f_16@@6 T@Field_10310_53) (v@@11 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_10250 (store (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@29) o_6@@6 f_16@@6 v@@11) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10250 (store (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@29) o_6@@6 f_16@@6 v@@11) (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_6988_6989#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_10310_16608#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_10310_28722#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_16607_53#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_16607_10324#PolymorphicMapType_10250| Heap@@29) (|PolymorphicMapType_10250_16607_29662#PolymorphicMapType_10250| Heap@@29)))
)))
(assert (forall ((s@@25 T@Seq_17731) (t@@9 T@Seq_17731) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17731| s@@25))) (= (|Seq#Drop_17731| (|Seq#Append_17731| s@@25 t@@9) n@@19) (|Seq#Append_17731| (|Seq#Drop_17731| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.401:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17731| (|Seq#Append_17731| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3155) (t@@10 T@Seq_3155) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3155| s@@26))) (= (|Seq#Drop_3155| (|Seq#Append_3155| s@@26 t@@10) n@@20) (|Seq#Append_3155| (|Seq#Drop_3155| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.401:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3155| (|Seq#Append_3155| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_17731) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_17731| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_17731| (|Seq#Drop_17731| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_17731| s@@27 i@@7))))
 :qid |stdinbpl.337:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17731| s@@27 n@@21) (|Seq#Index_17731| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3155) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3155| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3155| (|Seq#Drop_3155| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3155| s@@28 i@@8))))
 :qid |stdinbpl.337:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3155| s@@28 n@@22) (|Seq#Index_3155| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_17731) (s1@@7 T@Seq_17731) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17731|)) (not (= s1@@7 |Seq#Empty_17731|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17731| s0@@7))) (= (|Seq#Index_17731| (|Seq#Append_17731| s0@@7 s1@@7) n@@23) (|Seq#Index_17731| s0@@7 n@@23)))
 :qid |stdinbpl.277:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17731| (|Seq#Append_17731| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17731| s0@@7 n@@23) (|Seq#Append_17731| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3155) (s1@@8 T@Seq_3155) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3155|)) (not (= s1@@8 |Seq#Empty_3155|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3155| s0@@8))) (= (|Seq#Index_3155| (|Seq#Append_3155| s0@@8 s1@@8) n@@24) (|Seq#Index_3155| s0@@8 n@@24)))
 :qid |stdinbpl.277:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3155| (|Seq#Append_3155| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3155| s0@@8 n@@24) (|Seq#Append_3155| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_17731) (s1@@9 T@Seq_17731) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17731|)) (not (= s1@@9 |Seq#Empty_17731|))) (<= 0 m)) (< m (|Seq#Length_17731| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17731| s0@@9)) (|Seq#Length_17731| s0@@9)) m) (= (|Seq#Index_17731| (|Seq#Append_17731| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17731| s0@@9))) (|Seq#Index_17731| s1@@9 m))))
 :qid |stdinbpl.282:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17731| s1@@9 m) (|Seq#Append_17731| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3155) (s1@@10 T@Seq_3155) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3155|)) (not (= s1@@10 |Seq#Empty_3155|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3155| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3155| s0@@10)) (|Seq#Length_3155| s0@@10)) m@@0) (= (|Seq#Index_3155| (|Seq#Append_3155| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3155| s0@@10))) (|Seq#Index_3155| s1@@10 m@@0))))
 :qid |stdinbpl.282:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3155| s1@@10 m@@0) (|Seq#Append_3155| s0@@10 s1@@10))
)))
(assert (forall ((o_6@@7 T@Ref) (f_9 T@Field_10323_10324) (Heap@@30 T@PolymorphicMapType_10250) ) (!  (=> (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@30) o_6@@7 $allocated) (select (|PolymorphicMapType_10250_6750_53#PolymorphicMapType_10250| Heap@@30) (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@30) o_6@@7 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10250_6753_6754#PolymorphicMapType_10250| Heap@@30) o_6@@7 f_9))
)))
(assert (forall ((s@@29 T@Seq_17731) (x@@12 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_17731| s@@29))) (= (|Seq#Index_17731| s@@29 i@@9) x@@12)) (|Seq#Contains_7012| s@@29 x@@12))
 :qid |stdinbpl.434:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_7012| s@@29 x@@12) (|Seq#Index_17731| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3155) (x@@13 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3155| s@@30))) (= (|Seq#Index_3155| s@@30 i@@10) x@@13)) (|Seq#Contains_3155| s@@30 x@@13))
 :qid |stdinbpl.434:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3155| s@@30 x@@13) (|Seq#Index_3155| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_17731) (s1@@11 T@Seq_17731) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_17731| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17731| s0@@11 s1@@11))) (not (= (|Seq#Length_17731| s0@@11) (|Seq#Length_17731| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17731| s0@@11 s1@@11))) (= (|Seq#Length_17731| s0@@11) (|Seq#Length_17731| s1@@11))) (= (|Seq#SkolemDiff_17731| s0@@11 s1@@11) (|Seq#SkolemDiff_17731| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_17731| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_17731| s0@@11 s1@@11) (|Seq#Length_17731| s0@@11))) (not (= (|Seq#Index_17731| s0@@11 (|Seq#SkolemDiff_17731| s0@@11 s1@@11)) (|Seq#Index_17731| s1@@11 (|Seq#SkolemDiff_17731| s0@@11 s1@@11))))))
 :qid |stdinbpl.538:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_17731| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3155) (s1@@12 T@Seq_3155) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3155| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3155| s0@@12 s1@@12))) (not (= (|Seq#Length_3155| s0@@12) (|Seq#Length_3155| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3155| s0@@12 s1@@12))) (= (|Seq#Length_3155| s0@@12) (|Seq#Length_3155| s1@@12))) (= (|Seq#SkolemDiff_3155| s0@@12 s1@@12) (|Seq#SkolemDiff_3155| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3155| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3155| s0@@12 s1@@12) (|Seq#Length_3155| s0@@12))) (not (= (|Seq#Index_3155| s0@@12 (|Seq#SkolemDiff_3155| s0@@12 s1@@12)) (|Seq#Index_3155| s1@@12 (|Seq#SkolemDiff_3155| s0@@12 s1@@12))))))
 :qid |stdinbpl.538:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3155| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_16607_16608) (v_1@@1 T@FrameType) (q T@Field_16607_16608) (w@@1 T@FrameType) (r T@Field_16607_16608) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16607_16607 p@@2 v_1@@1 q w@@1) (InsidePredicate_16607_16607 q w@@1 r u)) (InsidePredicate_16607_16607 p@@2 v_1@@1 r u))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16607_16607 p@@2 v_1@@1 q w@@1) (InsidePredicate_16607_16607 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_16607_16608) (v_1@@2 T@FrameType) (q@@0 T@Field_16607_16608) (w@@2 T@FrameType) (r@@0 T@Field_10310_16608) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16607_16607 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16607_10310 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_16607_10310 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16607_16607 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16607_10310 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_16607_16608) (v_1@@3 T@FrameType) (q@@1 T@Field_10310_16608) (w@@3 T@FrameType) (r@@1 T@Field_16607_16608) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16607_10310 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10310_16607 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_16607_16607 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16607_10310 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10310_16607 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_16607_16608) (v_1@@4 T@FrameType) (q@@2 T@Field_10310_16608) (w@@4 T@FrameType) (r@@2 T@Field_10310_16608) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16607_10310 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10310_10310 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_16607_10310 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16607_10310 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10310_10310 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_10310_16608) (v_1@@5 T@FrameType) (q@@3 T@Field_16607_16608) (w@@5 T@FrameType) (r@@3 T@Field_16607_16608) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10310_16607 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16607_16607 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_10310_16607 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10310_16607 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16607_16607 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_10310_16608) (v_1@@6 T@FrameType) (q@@4 T@Field_16607_16608) (w@@6 T@FrameType) (r@@4 T@Field_10310_16608) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10310_16607 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16607_10310 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_10310_10310 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10310_16607 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16607_10310 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_10310_16608) (v_1@@7 T@FrameType) (q@@5 T@Field_10310_16608) (w@@7 T@FrameType) (r@@5 T@Field_16607_16608) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10310_10310 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10310_16607 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_10310_16607 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10310_10310 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10310_16607 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_10310_16608) (v_1@@8 T@FrameType) (q@@6 T@Field_10310_16608) (w@@8 T@FrameType) (r@@6 T@Field_10310_16608) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10310_10310 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10310_10310 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_10310_10310 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10310_10310 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10310_10310 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_17731) ) (!  (=> (= (|Seq#Length_17731| s@@31) 0) (= s@@31 |Seq#Empty_17731|))
 :qid |stdinbpl.241:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17731| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3155) ) (!  (=> (= (|Seq#Length_3155| s@@32) 0) (= s@@32 |Seq#Empty_3155|))
 :qid |stdinbpl.241:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3155| s@@32))
)))
(assert (forall ((s@@33 T@Seq_17731) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17731| s@@33 n@@25) |Seq#Empty_17731|))
 :qid |stdinbpl.417:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17731| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3155) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3155| s@@34 n@@26) |Seq#Empty_3155|))
 :qid |stdinbpl.417:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3155| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |P_state#definedness|)
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
