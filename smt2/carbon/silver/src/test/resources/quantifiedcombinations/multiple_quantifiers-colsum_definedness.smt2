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
(declare-sort T@Field_30254_53 0)
(declare-sort T@Field_30267_30268 0)
(declare-sort T@Field_36597_3969 0)
(declare-sort T@Field_44743_44744 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_46348_46353 0)
(declare-sort T@Field_20431_20629 0)
(declare-sort T@Field_20431_46353 0)
(declare-sort T@Field_20628_3969 0)
(declare-sort T@Field_20628_53 0)
(declare-sort T@Field_20628_30268 0)
(declare-datatypes ((T@PolymorphicMapType_30215 0)) (((PolymorphicMapType_30215 (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| (Array T@Ref T@Field_36597_3969 Real)) (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| (Array T@Ref T@Field_44743_44744 Real)) (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| (Array T@Ref T@Field_20431_20629 Real)) (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| (Array T@Ref T@Field_30254_53 Real)) (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| (Array T@Ref T@Field_30267_30268 Real)) (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| (Array T@Ref T@Field_20431_46353 Real)) (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| (Array T@Ref T@Field_20628_3969 Real)) (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| (Array T@Ref T@Field_20628_53 Real)) (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| (Array T@Ref T@Field_20628_30268 Real)) (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| (Array T@Ref T@Field_46348_46353 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30743 0)) (((PolymorphicMapType_30743 (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (Array T@Ref T@Field_36597_3969 Bool)) (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (Array T@Ref T@Field_30254_53 Bool)) (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (Array T@Ref T@Field_30267_30268 Bool)) (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (Array T@Ref T@Field_20431_20629 Bool)) (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (Array T@Ref T@Field_20431_46353 Bool)) (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (Array T@Ref T@Field_20628_3969 Bool)) (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (Array T@Ref T@Field_20628_53 Bool)) (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (Array T@Ref T@Field_20628_30268 Bool)) (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (Array T@Ref T@Field_44743_44744 Bool)) (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (Array T@Ref T@Field_46348_46353 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30194 0)) (((PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| (Array T@Ref T@Field_30254_53 Bool)) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| (Array T@Ref T@Field_30267_30268 T@Ref)) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| (Array T@Ref T@Field_36597_3969 Int)) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| (Array T@Ref T@Field_44743_44744 T@FrameType)) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| (Array T@Ref T@Field_46348_46353 T@PolymorphicMapType_30743)) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| (Array T@Ref T@Field_20431_20629 T@FrameType)) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| (Array T@Ref T@Field_20431_46353 T@PolymorphicMapType_30743)) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| (Array T@Ref T@Field_20628_3969 Int)) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| (Array T@Ref T@Field_20628_53 Bool)) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| (Array T@Ref T@Field_20628_30268 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_30254_53)
(declare-fun f_7 () T@Field_36597_3969)
(declare-fun val () T@Field_36597_3969)
(declare-sort T@Seq_48185 0)
(declare-fun |Seq#Length_20665| (T@Seq_48185) Int)
(declare-fun |Seq#Drop_20665| (T@Seq_48185 Int) T@Seq_48185)
(declare-sort T@Seq_3587 0)
(declare-fun |Seq#Length_3587| (T@Seq_3587) Int)
(declare-fun |Seq#Drop_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun succHeap (T@PolymorphicMapType_30194 T@PolymorphicMapType_30194) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_30194 T@PolymorphicMapType_30194) Bool)
(declare-fun state (T@PolymorphicMapType_30194 T@PolymorphicMapType_30215) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_30215) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_30743)
(declare-fun |getP'| (T@PolymorphicMapType_30194 T@Ref T@Ref) Int)
(declare-fun |getP#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun P (T@Ref T@Ref) T@Field_44743_44744)
(declare-sort T@IMatrixDomainType 0)
(declare-fun |colsum#condqp2| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun |sk_colsum#condqp2| (Int Int) Int)
(declare-fun rows (T@IMatrixDomainType) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun loc (T@IMatrixDomainType Int Int) T@Ref)
(declare-fun IsPredicateField_20628_20629 (T@Field_44743_44744) Bool)
(declare-fun |rcvr'| (T@PolymorphicMapType_30194 Int Int) T@Ref)
(declare-fun dummyFunction_20446 (T@Ref) Bool)
(declare-fun |rcvr#triggerStateless| (Int Int) T@Ref)
(declare-fun |colsum'| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun dummyFunction_4884 (Int) Bool)
(declare-fun |colsum#triggerStateless| (T@IMatrixDomainType Int) Int)
(declare-fun |rowsum'| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun |rowsum#triggerStateless| (T@IMatrixDomainType Int) Int)
(declare-fun |getP#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |P#trigger_20628| (T@PolymorphicMapType_30194 T@Field_44743_44744) Bool)
(declare-fun |P#everUsed_20628| (T@Field_44743_44744) Bool)
(declare-fun |Seq#Index_20665| (T@Seq_48185 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3587| (T@Seq_3587 Int) Int)
(declare-fun |rcvr#frame| (T@FrameType Int Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_20665| () T@Seq_48185)
(declare-fun |Seq#Empty_3587| () T@Seq_3587)
(declare-fun |prm'| (T@PolymorphicMapType_30194 Int) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |prm#triggerStateless| (Int) Real)
(declare-fun |det'| (T@PolymorphicMapType_30194 T@IMatrixDomainType) Int)
(declare-fun |det#triggerStateless| (T@IMatrixDomainType) Int)
(declare-fun |Seq#Update_20665| (T@Seq_48185 Int T@Ref) T@Seq_48185)
(declare-fun |Seq#Update_3587| (T@Seq_3587 Int Int) T@Seq_3587)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |prm#trigger| (T@FrameType Int) Bool)
(declare-fun |Seq#Take_20665| (T@Seq_48185 Int) T@Seq_48185)
(declare-fun |Seq#Take_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun loc_mat (T@Ref) T@IMatrixDomainType)
(declare-fun loc_col (T@Ref) Int)
(declare-fun loc_row (T@Ref) Int)
(declare-fun |Seq#Contains_3587| (T@Seq_3587 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3587)
(declare-fun |Seq#Contains_48185| (T@Seq_48185 T@Ref) Bool)
(declare-fun |Seq#Skolem_48185| (T@Seq_48185 T@Ref) Int)
(declare-fun |Seq#Skolem_3587| (T@Seq_3587 Int) Int)
(declare-fun prm (T@PolymorphicMapType_30194 Int) Real)
(declare-fun det (T@PolymorphicMapType_30194 T@IMatrixDomainType) Int)
(declare-fun |det#condqp1| (T@PolymorphicMapType_30194 T@IMatrixDomainType) Int)
(declare-fun |sk_det#condqp1| (Int Int) Int)
(declare-fun cols (T@IMatrixDomainType) Int)
(declare-fun |sk_det#condqp1_1| (Int Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_30194 T@PolymorphicMapType_30194 T@PolymorphicMapType_30215) Bool)
(declare-fun PredicateMaskField_20628 (T@Field_44743_44744) T@Field_46348_46353)
(declare-fun HasDirectPerm_20628_20629 (T@PolymorphicMapType_30215 T@Ref T@Field_44743_44744) Bool)
(declare-fun IsPredicateField_20431_89304 (T@Field_20431_20629) Bool)
(declare-fun PredicateMaskField_20431 (T@Field_20431_20629) T@Field_20431_46353)
(declare-fun HasDirectPerm_20431_20629 (T@PolymorphicMapType_30215 T@Ref T@Field_20431_20629) Bool)
(declare-fun IsWandField_20628_92989 (T@Field_44743_44744) Bool)
(declare-fun WandMaskField_20628 (T@Field_44743_44744) T@Field_46348_46353)
(declare-fun IsWandField_20431_92632 (T@Field_20431_20629) Bool)
(declare-fun WandMaskField_20431 (T@Field_20431_20629) T@Field_20431_46353)
(declare-fun |Seq#Singleton_20665| (T@Ref) T@Seq_48185)
(declare-fun |Seq#Singleton_3587| (Int) T@Seq_3587)
(declare-fun |P#sm| (T@Ref T@Ref) T@Field_46348_46353)
(declare-fun |Seq#Append_48185| (T@Seq_48185 T@Seq_48185) T@Seq_48185)
(declare-fun |Seq#Append_3587| (T@Seq_3587 T@Seq_3587) T@Seq_3587)
(declare-fun dummyHeap () T@PolymorphicMapType_30194)
(declare-fun ZeroMask () T@PolymorphicMapType_30215)
(declare-fun InsidePredicate_44743_44743 (T@Field_44743_44744 T@FrameType T@Field_44743_44744 T@FrameType) Bool)
(declare-fun InsidePredicate_30254_30254 (T@Field_20431_20629 T@FrameType T@Field_20431_20629 T@FrameType) Bool)
(declare-fun IsPredicateField_20431_3969 (T@Field_36597_3969) Bool)
(declare-fun IsWandField_20431_3969 (T@Field_36597_3969) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20628_99921 (T@Field_46348_46353) Bool)
(declare-fun IsWandField_20628_99937 (T@Field_46348_46353) Bool)
(declare-fun IsPredicateField_20628_30268 (T@Field_20628_30268) Bool)
(declare-fun IsWandField_20628_30268 (T@Field_20628_30268) Bool)
(declare-fun IsPredicateField_20628_53 (T@Field_20628_53) Bool)
(declare-fun IsWandField_20628_53 (T@Field_20628_53) Bool)
(declare-fun IsPredicateField_20628_3984 (T@Field_20628_3969) Bool)
(declare-fun IsWandField_20628_3984 (T@Field_20628_3969) Bool)
(declare-fun IsPredicateField_20433_99090 (T@Field_20431_46353) Bool)
(declare-fun IsWandField_20433_99106 (T@Field_20431_46353) Bool)
(declare-fun IsPredicateField_20433_30268 (T@Field_30267_30268) Bool)
(declare-fun IsWandField_20433_30268 (T@Field_30267_30268) Bool)
(declare-fun IsPredicateField_20433_53 (T@Field_30254_53) Bool)
(declare-fun IsWandField_20433_53 (T@Field_30254_53) Bool)
(declare-fun |rowsum#condqp3| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun |sk_rowsum#condqp3| (Int Int) Int)
(declare-fun HasDirectPerm_20628_89059 (T@PolymorphicMapType_30215 T@Ref T@Field_46348_46353) Bool)
(declare-fun HasDirectPerm_20628_30268 (T@PolymorphicMapType_30215 T@Ref T@Field_20628_30268) Bool)
(declare-fun HasDirectPerm_20628_53 (T@PolymorphicMapType_30215 T@Ref T@Field_20628_53) Bool)
(declare-fun HasDirectPerm_20628_3969 (T@PolymorphicMapType_30215 T@Ref T@Field_20628_3969) Bool)
(declare-fun HasDirectPerm_20431_87918 (T@PolymorphicMapType_30215 T@Ref T@Field_20431_46353) Bool)
(declare-fun HasDirectPerm_20431_30268 (T@PolymorphicMapType_30215 T@Ref T@Field_30267_30268) Bool)
(declare-fun HasDirectPerm_20431_53 (T@PolymorphicMapType_30215 T@Ref T@Field_30254_53) Bool)
(declare-fun HasDirectPerm_20431_3969 (T@PolymorphicMapType_30215 T@Ref T@Field_36597_3969) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun rcvr (T@PolymorphicMapType_30194 Int Int) T@Ref)
(declare-fun colsum (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun rowsum (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun getP (T@PolymorphicMapType_30194 T@Ref T@Ref) Int)
(declare-fun |colsum#frame| (T@FrameType T@IMatrixDomainType Int) Int)
(declare-fun FrameFragment_4557 (Int) T@FrameType)
(declare-fun |rowsum#frame| (T@FrameType T@IMatrixDomainType Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_30215 T@PolymorphicMapType_30215 T@PolymorphicMapType_30215) Bool)
(declare-fun |Seq#Equal_48185| (T@Seq_48185 T@Seq_48185) Bool)
(declare-fun |Seq#Equal_3587| (T@Seq_3587 T@Seq_3587) Bool)
(declare-sort T@IArrayDomainType_70806 0)
(declare-fun len_20839 (T@IArrayDomainType_70806) Int)
(declare-fun |Seq#ContainsTrigger_20665| (T@Seq_48185 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3587| (T@Seq_3587 Int) Bool)
(declare-fun getPredWandId_20628_20629 (T@Field_44743_44744) Int)
(declare-fun |prm#frame| (T@FrameType Int) Real)
(declare-fun aloc_20839 (T@IArrayDomainType_70806 Int) T@Ref)
(declare-fun first_1_20839 (T@Ref) T@IArrayDomainType_70806)
(declare-fun second_1_20839 (T@Ref) Int)
(declare-fun |det#frame| (T@FrameType T@IMatrixDomainType) Int)
(declare-fun |Seq#SkolemDiff_48185| (T@Seq_48185 T@Seq_48185) Int)
(declare-fun |Seq#SkolemDiff_3587| (T@Seq_3587 T@Seq_3587) Int)
(declare-fun InsidePredicate_44743_30254 (T@Field_44743_44744 T@FrameType T@Field_20431_20629 T@FrameType) Bool)
(declare-fun InsidePredicate_30254_44743 (T@Field_20431_20629 T@FrameType T@Field_44743_44744 T@FrameType) Bool)
(assert (distinct f_7 val)
)
(assert (forall ((s T@Seq_48185) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_20665| s)) (= (|Seq#Length_20665| (|Seq#Drop_20665| s n)) (- (|Seq#Length_20665| s) n))) (=> (< (|Seq#Length_20665| s) n) (= (|Seq#Length_20665| (|Seq#Drop_20665| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_20665| (|Seq#Drop_20665| s n)) (|Seq#Length_20665| s))))
 :qid |stdinbpl.370:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_20665| (|Seq#Drop_20665| s n)))
 :pattern ( (|Seq#Length_20665| s) (|Seq#Drop_20665| s n))
)))
(assert (forall ((s@@0 T@Seq_3587) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3587| s@@0)) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (- (|Seq#Length_3587| s@@0) n@@0))) (=> (< (|Seq#Length_3587| s@@0) n@@0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (|Seq#Length_3587| s@@0))))
 :qid |stdinbpl.370:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3587| s@@0) (|Seq#Drop_3587| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_30194) (Heap1 T@PolymorphicMapType_30194) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_30194) (Mask T@PolymorphicMapType_30215) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_30194) (Heap1@@0 T@PolymorphicMapType_30194) (Heap2 T@PolymorphicMapType_30194) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_46348_46353) ) (!  (not (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_44743_44744) ) (!  (not (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20628_30268) ) (!  (not (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20628_53) ) (!  (not (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20628_3969) ) (!  (not (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_20431_46353) ) (!  (not (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20431_20629) ) (!  (not (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_30267_30268) ) (!  (not (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_30254_53) ) (!  (not (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_36597_3969) ) (!  (not (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_30194) (Mask@@0 T@PolymorphicMapType_30215) (x T@Ref) (y T@Ref) ) (!  (=> (state Heap@@0 Mask@@0) (= (|getP'| Heap@@0 x y) (|getP#frame| (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@0) null (P x y)) x y)))
 :qid |stdinbpl.1127:15|
 :skolemid |103|
 :pattern ( (state Heap@@0 Mask@@0) (|getP'| Heap@@0 x y))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_30194) (Heap1Heap T@PolymorphicMapType_30194) (mat_1 T@IMatrixDomainType) (col_1 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) (< (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)) (rows mat_1))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) (< (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)) (rows mat_1))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) (< (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)) (rows mat_1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap2Heap) (loc mat_1 col_1 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) val) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap1Heap) (loc mat_1 col_1 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) val)))) (= (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)))
 :qid |stdinbpl.937:15|
 :skolemid |83|
 :pattern ( (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((x@@0 T@Ref) (y@@0 T@Ref) ) (! (IsPredicateField_20628_20629 (P x@@0 y@@0))
 :qid |stdinbpl.1209:15|
 :skolemid |105|
 :pattern ( (P x@@0 y@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_30194) (i Int) (j Int) ) (! (dummyFunction_20446 (|rcvr#triggerStateless| i j))
 :qid |stdinbpl.733:15|
 :skolemid |64|
 :pattern ( (|rcvr'| Heap@@1 i j))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_30194) (mat_1@@0 T@IMatrixDomainType) (col_1@@0 Int) ) (! (dummyFunction_4884 (|colsum#triggerStateless| mat_1@@0 col_1@@0))
 :qid |stdinbpl.920:15|
 :skolemid |81|
 :pattern ( (|colsum'| Heap@@2 mat_1@@0 col_1@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_30194) (mat_1@@1 T@IMatrixDomainType) (row_1 Int) ) (! (dummyFunction_4884 (|rowsum#triggerStateless| mat_1@@1 row_1))
 :qid |stdinbpl.1017:15|
 :skolemid |91|
 :pattern ( (|rowsum'| Heap@@3 mat_1@@1 row_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_30194) (x@@1 T@Ref) (y@@1 T@Ref) ) (! (dummyFunction_4884 (|getP#triggerStateless| x@@1 y@@1))
 :qid |stdinbpl.1114:15|
 :skolemid |101|
 :pattern ( (|getP'| Heap@@4 x@@1 y@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_30194) (x@@2 T@Ref) (y@@2 T@Ref) ) (! (|P#everUsed_20628| (P x@@2 y@@2))
 :qid |stdinbpl.1228:15|
 :skolemid |109|
 :pattern ( (|P#trigger_20628| Heap@@5 (P x@@2 y@@2)))
)))
(assert (forall ((s@@1 T@Seq_48185) (n@@1 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_20665| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@1) n@@1) j@@0) (= (|Seq#Index_20665| (|Seq#Drop_20665| s@@1 n@@1) j@@0) (|Seq#Index_20665| s@@1 (|Seq#Add| j@@0 n@@1)))))
 :qid |stdinbpl.391:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_20665| (|Seq#Drop_20665| s@@1 n@@1) j@@0))
)))
(assert (forall ((s@@2 T@Seq_3587) (n@@2 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_3587| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@2) n@@2) j@@1) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@1) (|Seq#Index_3587| s@@2 (|Seq#Add| j@@1 n@@2)))))
 :qid |stdinbpl.391:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_30194) (Mask@@1 T@PolymorphicMapType_30215) (i@@0 Int) (j@@2 Int) ) (!  (=> (state Heap@@6 Mask@@1) (= (|rcvr'| Heap@@6 i@@0 j@@2) (|rcvr#frame| EmptyFrame i@@0 j@@2)))
 :qid |stdinbpl.740:15|
 :skolemid |65|
 :pattern ( (state Heap@@6 Mask@@1) (|rcvr'| Heap@@6 i@@0 j@@2))
)))
(assert (= (|Seq#Length_20665| |Seq#Empty_20665|) 0))
(assert (= (|Seq#Length_3587| |Seq#Empty_3587|) 0))
(assert (forall ((Heap@@7 T@PolymorphicMapType_30194) (i@@1 Int) ) (! (dummyFunction_645 (|prm#triggerStateless| i@@1))
 :qid |stdinbpl.774:15|
 :skolemid |67|
 :pattern ( (|prm'| Heap@@7 i@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_30194) (mat_1@@2 T@IMatrixDomainType) ) (! (dummyFunction_4884 (|det#triggerStateless| mat_1@@2))
 :qid |stdinbpl.825:15|
 :skolemid |71|
 :pattern ( (|det'| Heap@@8 mat_1@@2))
)))
(assert (forall ((s@@3 T@Seq_48185) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_20665| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_20665| (|Seq#Update_20665| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_20665| (|Seq#Update_20665| s@@3 i@@2 v) n@@3) (|Seq#Index_20665| s@@3 n@@3)))))
 :qid |stdinbpl.346:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_20665| (|Seq#Update_20665| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_20665| s@@3 n@@3) (|Seq#Update_20665| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_3587) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3587| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_3587| s@@4 n@@4)))))
 :qid |stdinbpl.346:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_3587| s@@4 n@@4) (|Seq#Update_3587| s@@4 i@@3 v@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_30194) (Mask@@2 T@PolymorphicMapType_30215) (i@@4 Int) ) (!  (=> (and (state Heap@@9 Mask@@2) (or (< AssumeFunctionsAbove 3) (|prm#trigger| EmptyFrame i@@4))) (< NoPerm (|prm'| Heap@@9 i@@4)))
 :qid |stdinbpl.787:15|
 :skolemid |69|
 :pattern ( (state Heap@@9 Mask@@2) (|prm'| Heap@@9 i@@4))
)))
(assert (forall ((s@@5 T@Seq_48185) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_20665| s@@5)) (= (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_20665| s@@5) n@@5) (= (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)) (|Seq#Length_20665| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)) 0)))
 :qid |stdinbpl.357:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)))
 :pattern ( (|Seq#Take_20665| s@@5 n@@5) (|Seq#Length_20665| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3587) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3587| s@@6)) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3587| s@@6) n@@6) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) (|Seq#Length_3587| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) 0)))
 :qid |stdinbpl.357:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3587| s@@6 n@@6) (|Seq#Length_3587| s@@6))
)))
(assert (forall ((mat_1@@3 T@IMatrixDomainType) (col_1@@1 Int) (row_1@@0 Int) ) (!  (and (= (loc_mat (loc mat_1@@3 col_1@@1 row_1@@0)) mat_1@@3) (and (= (loc_col (loc mat_1@@3 col_1@@1 row_1@@0)) col_1@@1) (= (loc_row (loc mat_1@@3 col_1@@1 row_1@@0)) row_1@@0)))
 :qid |stdinbpl.694:15|
 :skolemid |60|
 :pattern ( (loc mat_1@@3 col_1@@1 row_1@@0))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.631:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_48185) (x@@3 T@Ref) ) (!  (=> (|Seq#Contains_48185| s@@7 x@@3) (and (and (<= 0 (|Seq#Skolem_48185| s@@7 x@@3)) (< (|Seq#Skolem_48185| s@@7 x@@3) (|Seq#Length_20665| s@@7))) (= (|Seq#Index_20665| s@@7 (|Seq#Skolem_48185| s@@7 x@@3)) x@@3)))
 :qid |stdinbpl.489:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_48185| s@@7 x@@3))
)))
(assert (forall ((s@@8 T@Seq_3587) (x@@4 Int) ) (!  (=> (|Seq#Contains_3587| s@@8 x@@4) (and (and (<= 0 (|Seq#Skolem_3587| s@@8 x@@4)) (< (|Seq#Skolem_3587| s@@8 x@@4) (|Seq#Length_3587| s@@8))) (= (|Seq#Index_3587| s@@8 (|Seq#Skolem_3587| s@@8 x@@4)) x@@4)))
 :qid |stdinbpl.489:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3587| s@@8 x@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_30194) (i@@5 Int) ) (!  (and (= (prm Heap@@10 i@@5) (|prm'| Heap@@10 i@@5)) (dummyFunction_645 (|prm#triggerStateless| i@@5)))
 :qid |stdinbpl.770:15|
 :skolemid |66|
 :pattern ( (prm Heap@@10 i@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_30194) (mat_1@@4 T@IMatrixDomainType) ) (!  (and (= (det Heap@@11 mat_1@@4) (|det'| Heap@@11 mat_1@@4)) (dummyFunction_4884 (|det#triggerStateless| mat_1@@4)))
 :qid |stdinbpl.821:15|
 :skolemid |70|
 :pattern ( (det Heap@@11 mat_1@@4))
)))
(assert (forall ((s@@9 T@Seq_48185) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_20665| s@@9 n@@7) s@@9))
 :qid |stdinbpl.473:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_20665| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3587) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3587| s@@10 n@@8) s@@10))
 :qid |stdinbpl.473:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3587| s@@10 n@@8))
)))
(assert (forall ((i@@6 Int) (j@@3 Int) ) (! (= (|Seq#Sub| i@@6 j@@3) (- i@@6 j@@3))
 :qid |stdinbpl.326:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@6 j@@3))
)))
(assert (forall ((i@@7 Int) (j@@4 Int) ) (! (= (|Seq#Add| i@@7 j@@4) (+ i@@7 j@@4))
 :qid |stdinbpl.324:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@7 j@@4))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_30194) (Heap1Heap@@0 T@PolymorphicMapType_30194) (mat_1@@5 T@IMatrixDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (and (< (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (cols mat_1@@5)) (and (<= 0 (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (< (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (rows mat_1@@5))))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (and (< (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (cols mat_1@@5)) (and (<= 0 (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (< (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (rows mat_1@@5))))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (and (< (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (cols mat_1@@5)) (and (<= 0 (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (< (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (rows mat_1@@5))))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap2Heap@@0) (loc mat_1@@5 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) val) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap1Heap@@0) (loc mat_1@@5 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) val)))) (= (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)))
 :qid |stdinbpl.843:15|
 :skolemid |73|
 :pattern ( (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_30194) (ExhaleHeap T@PolymorphicMapType_30194) (Mask@@3 T@PolymorphicMapType_30215) (pm_f_8 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_20628_20629 Mask@@3 null pm_f_8) (IsPredicateField_20628_20629 pm_f_8)) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@12) null (PredicateMaskField_20628 pm_f_8)) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap) null (PredicateMaskField_20628 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (IsPredicateField_20628_20629 pm_f_8) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap) null (PredicateMaskField_20628 pm_f_8)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_30194) (ExhaleHeap@@0 T@PolymorphicMapType_30194) (Mask@@4 T@PolymorphicMapType_30215) (pm_f_8@@0 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_20431_20629 Mask@@4 null pm_f_8@@0) (IsPredicateField_20431_89304 pm_f_8@@0)) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@13) null (PredicateMaskField_20431 pm_f_8@@0)) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@0) null (PredicateMaskField_20431 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (IsPredicateField_20431_89304 pm_f_8@@0) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@0) null (PredicateMaskField_20431 pm_f_8@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_30194) (ExhaleHeap@@1 T@PolymorphicMapType_30194) (Mask@@5 T@PolymorphicMapType_30215) (pm_f_8@@1 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_20628_20629 Mask@@5 null pm_f_8@@1) (IsWandField_20628_92989 pm_f_8@@1)) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@14) null (WandMaskField_20628 pm_f_8@@1)) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@1) null (WandMaskField_20628 pm_f_8@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@5) (IsWandField_20628_92989 pm_f_8@@1) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@1) null (WandMaskField_20628 pm_f_8@@1)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_30194) (ExhaleHeap@@2 T@PolymorphicMapType_30194) (Mask@@6 T@PolymorphicMapType_30215) (pm_f_8@@2 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_20431_20629 Mask@@6 null pm_f_8@@2) (IsWandField_20431_92632 pm_f_8@@2)) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@15) null (WandMaskField_20431 pm_f_8@@2)) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@2) null (WandMaskField_20431 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@6) (IsWandField_20431_92632 pm_f_8@@2) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@2) null (WandMaskField_20431 pm_f_8@@2)))
)))
(assert (forall ((x@@5 T@Ref) (y@@3 T@Ref) ) (! (= (|Seq#Contains_48185| (|Seq#Singleton_20665| x@@5) y@@3) (= x@@5 y@@3))
 :qid |stdinbpl.614:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_48185| (|Seq#Singleton_20665| x@@5) y@@3))
)))
(assert (forall ((x@@6 Int) (y@@4 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@6) y@@4) (= x@@6 y@@4))
 :qid |stdinbpl.614:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@6) y@@4))
)))
(assert (forall ((x@@7 T@Ref) (y@@5 T@Ref) (x2 T@Ref) (y2 T@Ref) ) (!  (=> (= (P x@@7 y@@5) (P x2 y2)) (and (= x@@7 x2) (= y@@5 y2)))
 :qid |stdinbpl.1219:15|
 :skolemid |107|
 :pattern ( (P x@@7 y@@5) (P x2 y2))
)))
(assert (forall ((x@@8 T@Ref) (y@@6 T@Ref) (x2@@0 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@8 y@@6) (|P#sm| x2@@0 y2@@0)) (and (= x@@8 x2@@0) (= y@@6 y2@@0)))
 :qid |stdinbpl.1223:15|
 :skolemid |108|
 :pattern ( (|P#sm| x@@8 y@@6) (|P#sm| x2@@0 y2@@0))
)))
(assert (forall ((s@@11 T@Seq_48185) (n@@9 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@9)) (< j@@5 (|Seq#Length_20665| s@@11))) (= (|Seq#Index_20665| (|Seq#Take_20665| s@@11 n@@9) j@@5) (|Seq#Index_20665| s@@11 j@@5)))
 :qid |stdinbpl.365:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_20665| (|Seq#Take_20665| s@@11 n@@9) j@@5))
 :pattern ( (|Seq#Index_20665| s@@11 j@@5) (|Seq#Take_20665| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3587) (n@@10 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@10)) (< j@@6 (|Seq#Length_3587| s@@12))) (= (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@6) (|Seq#Index_3587| s@@12 j@@6)))
 :qid |stdinbpl.365:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@6))
 :pattern ( (|Seq#Index_3587| s@@12 j@@6) (|Seq#Take_3587| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_48185) (t T@Seq_48185) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_20665| s@@13))) (< n@@11 (|Seq#Length_20665| (|Seq#Append_48185| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_20665| s@@13)) (|Seq#Length_20665| s@@13)) n@@11) (= (|Seq#Take_20665| (|Seq#Append_48185| s@@13 t) n@@11) (|Seq#Append_48185| s@@13 (|Seq#Take_20665| t (|Seq#Sub| n@@11 (|Seq#Length_20665| s@@13)))))))
 :qid |stdinbpl.450:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_20665| (|Seq#Append_48185| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3587) (t@@0 T@Seq_3587) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3587| s@@14))) (< n@@12 (|Seq#Length_3587| (|Seq#Append_3587| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)) (|Seq#Length_3587| s@@14)) n@@12) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12) (|Seq#Append_3587| s@@14 (|Seq#Take_3587| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)))))))
 :qid |stdinbpl.450:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_30194) (ExhaleHeap@@3 T@PolymorphicMapType_30194) (Mask@@7 T@PolymorphicMapType_30215) (pm_f_8@@3 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_20628_20629 Mask@@7 null pm_f_8@@3) (IsPredicateField_20628_20629 pm_f_8@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_26 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8 f_26) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@16) o2_8 f_26) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8 f_26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8 f_26))
)) (forall ((o2_8@@0 T@Ref) (f_26@@0 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@0 f_26@@0) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@16) o2_8@@0 f_26@@0) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@0 f_26@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@0 f_26@@0))
))) (forall ((o2_8@@1 T@Ref) (f_26@@1 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@1 f_26@@1) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@16) o2_8@@1 f_26@@1) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@1 f_26@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@1 f_26@@1))
))) (forall ((o2_8@@2 T@Ref) (f_26@@2 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@2 f_26@@2) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@16) o2_8@@2 f_26@@2) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@2 f_26@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@2 f_26@@2))
))) (forall ((o2_8@@3 T@Ref) (f_26@@3 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@3 f_26@@3) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@16) o2_8@@3 f_26@@3) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@3 f_26@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@3 f_26@@3))
))) (forall ((o2_8@@4 T@Ref) (f_26@@4 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@4 f_26@@4) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@16) o2_8@@4 f_26@@4) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@4 f_26@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@4 f_26@@4))
))) (forall ((o2_8@@5 T@Ref) (f_26@@5 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@5 f_26@@5) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@16) o2_8@@5 f_26@@5) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@5 f_26@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@5 f_26@@5))
))) (forall ((o2_8@@6 T@Ref) (f_26@@6 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@6 f_26@@6) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@16) o2_8@@6 f_26@@6) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@6 f_26@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@6 f_26@@6))
))) (forall ((o2_8@@7 T@Ref) (f_26@@7 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@7 f_26@@7) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@16) o2_8@@7 f_26@@7) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@7 f_26@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@7 f_26@@7))
))) (forall ((o2_8@@8 T@Ref) (f_26@@8 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@8 f_26@@8) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) o2_8@@8 f_26@@8) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@8 f_26@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@8 f_26@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@7) (IsPredicateField_20628_20629 pm_f_8@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_30194) (ExhaleHeap@@4 T@PolymorphicMapType_30194) (Mask@@8 T@PolymorphicMapType_30215) (pm_f_8@@4 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_20431_20629 Mask@@8 null pm_f_8@@4) (IsPredicateField_20431_89304 pm_f_8@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@9 T@Ref) (f_26@@9 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@9 f_26@@9) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@17) o2_8@@9 f_26@@9) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@9 f_26@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@9 f_26@@9))
)) (forall ((o2_8@@10 T@Ref) (f_26@@10 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@10 f_26@@10) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@17) o2_8@@10 f_26@@10) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@10 f_26@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@10 f_26@@10))
))) (forall ((o2_8@@11 T@Ref) (f_26@@11 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@11 f_26@@11) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@17) o2_8@@11 f_26@@11) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@11 f_26@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@11 f_26@@11))
))) (forall ((o2_8@@12 T@Ref) (f_26@@12 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@12 f_26@@12) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@17) o2_8@@12 f_26@@12) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@12 f_26@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@12 f_26@@12))
))) (forall ((o2_8@@13 T@Ref) (f_26@@13 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@13 f_26@@13) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) o2_8@@13 f_26@@13) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@13 f_26@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@13 f_26@@13))
))) (forall ((o2_8@@14 T@Ref) (f_26@@14 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@14 f_26@@14) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@17) o2_8@@14 f_26@@14) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@14 f_26@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@14 f_26@@14))
))) (forall ((o2_8@@15 T@Ref) (f_26@@15 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@15 f_26@@15) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@17) o2_8@@15 f_26@@15) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@15 f_26@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@15 f_26@@15))
))) (forall ((o2_8@@16 T@Ref) (f_26@@16 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@16 f_26@@16) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@17) o2_8@@16 f_26@@16) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@16 f_26@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@16 f_26@@16))
))) (forall ((o2_8@@17 T@Ref) (f_26@@17 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@17 f_26@@17) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@17) o2_8@@17 f_26@@17) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@17 f_26@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@17 f_26@@17))
))) (forall ((o2_8@@18 T@Ref) (f_26@@18 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@18 f_26@@18) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@17) o2_8@@18 f_26@@18) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@18 f_26@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@18 f_26@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@8) (IsPredicateField_20431_89304 pm_f_8@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_30194) (ExhaleHeap@@5 T@PolymorphicMapType_30194) (Mask@@9 T@PolymorphicMapType_30215) (pm_f_8@@5 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_20628_20629 Mask@@9 null pm_f_8@@5) (IsWandField_20628_92989 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@19 T@Ref) (f_26@@19 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@19 f_26@@19) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@18) o2_8@@19 f_26@@19) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@19 f_26@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@19 f_26@@19))
)) (forall ((o2_8@@20 T@Ref) (f_26@@20 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@20 f_26@@20) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@18) o2_8@@20 f_26@@20) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@20 f_26@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@20 f_26@@20))
))) (forall ((o2_8@@21 T@Ref) (f_26@@21 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@21 f_26@@21) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@18) o2_8@@21 f_26@@21) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@21 f_26@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@21 f_26@@21))
))) (forall ((o2_8@@22 T@Ref) (f_26@@22 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@22 f_26@@22) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@18) o2_8@@22 f_26@@22) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@22 f_26@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@22 f_26@@22))
))) (forall ((o2_8@@23 T@Ref) (f_26@@23 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@23 f_26@@23) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@18) o2_8@@23 f_26@@23) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@23 f_26@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@23 f_26@@23))
))) (forall ((o2_8@@24 T@Ref) (f_26@@24 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@24 f_26@@24) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@18) o2_8@@24 f_26@@24) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@24 f_26@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@24 f_26@@24))
))) (forall ((o2_8@@25 T@Ref) (f_26@@25 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@25 f_26@@25) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@18) o2_8@@25 f_26@@25) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@25 f_26@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@25 f_26@@25))
))) (forall ((o2_8@@26 T@Ref) (f_26@@26 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@26 f_26@@26) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@18) o2_8@@26 f_26@@26) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@26 f_26@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@26 f_26@@26))
))) (forall ((o2_8@@27 T@Ref) (f_26@@27 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@27 f_26@@27) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@18) o2_8@@27 f_26@@27) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@27 f_26@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@27 f_26@@27))
))) (forall ((o2_8@@28 T@Ref) (f_26@@28 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@28 f_26@@28) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) o2_8@@28 f_26@@28) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@28 f_26@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@28 f_26@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@9) (IsWandField_20628_92989 pm_f_8@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_30194) (ExhaleHeap@@6 T@PolymorphicMapType_30194) (Mask@@10 T@PolymorphicMapType_30215) (pm_f_8@@6 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_20431_20629 Mask@@10 null pm_f_8@@6) (IsWandField_20431_92632 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_26@@29 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@29 f_26@@29) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@19) o2_8@@29 f_26@@29) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@29 f_26@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@29 f_26@@29))
)) (forall ((o2_8@@30 T@Ref) (f_26@@30 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@30 f_26@@30) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@19) o2_8@@30 f_26@@30) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@30 f_26@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@30 f_26@@30))
))) (forall ((o2_8@@31 T@Ref) (f_26@@31 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@31 f_26@@31) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@19) o2_8@@31 f_26@@31) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@31 f_26@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@31 f_26@@31))
))) (forall ((o2_8@@32 T@Ref) (f_26@@32 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@32 f_26@@32) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@19) o2_8@@32 f_26@@32) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@32 f_26@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@32 f_26@@32))
))) (forall ((o2_8@@33 T@Ref) (f_26@@33 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@33 f_26@@33) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) o2_8@@33 f_26@@33) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@33 f_26@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@33 f_26@@33))
))) (forall ((o2_8@@34 T@Ref) (f_26@@34 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@34 f_26@@34) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@19) o2_8@@34 f_26@@34) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@34 f_26@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@34 f_26@@34))
))) (forall ((o2_8@@35 T@Ref) (f_26@@35 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@35 f_26@@35) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@19) o2_8@@35 f_26@@35) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@35 f_26@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@35 f_26@@35))
))) (forall ((o2_8@@36 T@Ref) (f_26@@36 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@36 f_26@@36) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@19) o2_8@@36 f_26@@36) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@36 f_26@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@36 f_26@@36))
))) (forall ((o2_8@@37 T@Ref) (f_26@@37 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@37 f_26@@37) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@19) o2_8@@37 f_26@@37) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@37 f_26@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@37 f_26@@37))
))) (forall ((o2_8@@38 T@Ref) (f_26@@38 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@38 f_26@@38) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@19) o2_8@@38 f_26@@38) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@38 f_26@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@38 f_26@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@10) (IsWandField_20431_92632 pm_f_8@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@20 T@PolymorphicMapType_30194) (ExhaleHeap@@7 T@PolymorphicMapType_30194) (Mask@@11 T@PolymorphicMapType_30215) (o_18 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@11) (=> (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@20) o_18 $allocated) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@7) o_18 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@11) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@7) o_18 $allocated))
)))
(assert (forall ((p T@Field_44743_44744) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_44743_44743 p v_1 p w))
 :qid |stdinbpl.268:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_44743_44743 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_20431_20629) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_30254_30254 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.268:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30254_30254 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_48185) (s1 T@Seq_48185) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_20665|)) (not (= s1 |Seq#Empty_20665|))) (<= (|Seq#Length_20665| s0) n@@13)) (< n@@13 (|Seq#Length_20665| (|Seq#Append_48185| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_20665| s0)) (|Seq#Length_20665| s0)) n@@13) (= (|Seq#Index_20665| (|Seq#Append_48185| s0 s1) n@@13) (|Seq#Index_20665| s1 (|Seq#Sub| n@@13 (|Seq#Length_20665| s0))))))
 :qid |stdinbpl.337:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_20665| (|Seq#Append_48185| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3587) (s1@@0 T@Seq_3587) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3587|)) (not (= s1@@0 |Seq#Empty_3587|))) (<= (|Seq#Length_3587| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3587| (|Seq#Append_3587| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0)) (|Seq#Length_3587| s0@@0)) n@@14) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14) (|Seq#Index_3587| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0))))))
 :qid |stdinbpl.337:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_20431_3969 f_7)))
(assert  (not (IsWandField_20431_3969 f_7)))
(assert  (not (IsPredicateField_20431_3969 val)))
(assert  (not (IsWandField_20431_3969 val)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_30194) (ExhaleHeap@@8 T@PolymorphicMapType_30194) (Mask@@12 T@PolymorphicMapType_30215) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@12) (succHeap Heap@@21 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_30215) (o_2@@9 T@Ref) (f_4@@9 T@Field_46348_46353) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_20628_99921 f_4@@9))) (not (IsWandField_20628_99937 f_4@@9))) (<= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_30215) (o_2@@10 T@Ref) (f_4@@10 T@Field_20628_30268) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_20628_30268 f_4@@10))) (not (IsWandField_20628_30268 f_4@@10))) (<= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_30215) (o_2@@11 T@Ref) (f_4@@11 T@Field_20628_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_20628_53 f_4@@11))) (not (IsWandField_20628_53 f_4@@11))) (<= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_30215) (o_2@@12 T@Ref) (f_4@@12 T@Field_44743_44744) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_20628_20629 f_4@@12))) (not (IsWandField_20628_92989 f_4@@12))) (<= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_30215) (o_2@@13 T@Ref) (f_4@@13 T@Field_20628_3969) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_20628_3984 f_4@@13))) (not (IsWandField_20628_3984 f_4@@13))) (<= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_30215) (o_2@@14 T@Ref) (f_4@@14 T@Field_20431_46353) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20433_99090 f_4@@14))) (not (IsWandField_20433_99106 f_4@@14))) (<= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_30215) (o_2@@15 T@Ref) (f_4@@15 T@Field_30267_30268) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@19) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20433_30268 f_4@@15))) (not (IsWandField_20433_30268 f_4@@15))) (<= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@19) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@19) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_30215) (o_2@@16 T@Ref) (f_4@@16 T@Field_30254_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@20) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_20433_53 f_4@@16))) (not (IsWandField_20433_53 f_4@@16))) (<= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@20) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@20) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_30215) (o_2@@17 T@Ref) (f_4@@17 T@Field_20431_20629) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@21) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_20431_89304 f_4@@17))) (not (IsWandField_20431_92632 f_4@@17))) (<= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@21) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@21) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_30215) (o_2@@18 T@Ref) (f_4@@18 T@Field_36597_3969) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@22) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_20431_3969 f_4@@18))) (not (IsWandField_20431_3969 f_4@@18))) (<= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@22) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@22) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_30194) (Heap1Heap@@1 T@PolymorphicMapType_30194) (mat_1@@6 T@IMatrixDomainType) (row_1@@1 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1))) (< (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) (cols mat_1@@6))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1))) (< (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) (cols mat_1@@6))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1))) (< (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) (cols mat_1@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap2Heap@@1) (loc mat_1@@6 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) row_1@@1) val) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap1Heap@@1) (loc mat_1@@6 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) row_1@@1) val)))) (= (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)))
 :qid |stdinbpl.1034:15|
 :skolemid |93|
 :pattern ( (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_30215) (o_2@@19 T@Ref) (f_4@@19 T@Field_46348_46353) ) (! (= (HasDirectPerm_20628_89059 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_89059 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_30215) (o_2@@20 T@Ref) (f_4@@20 T@Field_20628_30268) ) (! (= (HasDirectPerm_20628_30268 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_30268 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_30215) (o_2@@21 T@Ref) (f_4@@21 T@Field_20628_53) ) (! (= (HasDirectPerm_20628_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_30215) (o_2@@22 T@Ref) (f_4@@22 T@Field_44743_44744) ) (! (= (HasDirectPerm_20628_20629 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_20629 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_30215) (o_2@@23 T@Ref) (f_4@@23 T@Field_20628_3969) ) (! (= (HasDirectPerm_20628_3969 Mask@@27 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@27) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_3969 Mask@@27 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_30215) (o_2@@24 T@Ref) (f_4@@24 T@Field_20431_46353) ) (! (= (HasDirectPerm_20431_87918 Mask@@28 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@28) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_87918 Mask@@28 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_30215) (o_2@@25 T@Ref) (f_4@@25 T@Field_30267_30268) ) (! (= (HasDirectPerm_20431_30268 Mask@@29 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@29) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_30268 Mask@@29 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_30215) (o_2@@26 T@Ref) (f_4@@26 T@Field_30254_53) ) (! (= (HasDirectPerm_20431_53 Mask@@30 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@30) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_53 Mask@@30 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_30215) (o_2@@27 T@Ref) (f_4@@27 T@Field_20431_20629) ) (! (= (HasDirectPerm_20431_20629 Mask@@31 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@31) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_20629 Mask@@31 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_30215) (o_2@@28 T@Ref) (f_4@@28 T@Field_36597_3969) ) (! (= (HasDirectPerm_20431_3969 Mask@@32 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@32) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_3969 Mask@@32 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.256:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.629:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_30194) (ExhaleHeap@@9 T@PolymorphicMapType_30194) (Mask@@33 T@PolymorphicMapType_30215) (o_18@@0 T@Ref) (f_26@@39 T@Field_46348_46353) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@33) (=> (HasDirectPerm_20628_89059 Mask@@33 o_18@@0 f_26@@39) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@22) o_18@@0 f_26@@39) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@9) o_18@@0 f_26@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@33) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@9) o_18@@0 f_26@@39))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_30194) (ExhaleHeap@@10 T@PolymorphicMapType_30194) (Mask@@34 T@PolymorphicMapType_30215) (o_18@@1 T@Ref) (f_26@@40 T@Field_20628_30268) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@34) (=> (HasDirectPerm_20628_30268 Mask@@34 o_18@@1 f_26@@40) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@23) o_18@@1 f_26@@40) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@10) o_18@@1 f_26@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@34) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@10) o_18@@1 f_26@@40))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_30194) (ExhaleHeap@@11 T@PolymorphicMapType_30194) (Mask@@35 T@PolymorphicMapType_30215) (o_18@@2 T@Ref) (f_26@@41 T@Field_20628_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@35) (=> (HasDirectPerm_20628_53 Mask@@35 o_18@@2 f_26@@41) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@24) o_18@@2 f_26@@41) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@11) o_18@@2 f_26@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@35) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@11) o_18@@2 f_26@@41))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_30194) (ExhaleHeap@@12 T@PolymorphicMapType_30194) (Mask@@36 T@PolymorphicMapType_30215) (o_18@@3 T@Ref) (f_26@@42 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@36) (=> (HasDirectPerm_20628_20629 Mask@@36 o_18@@3 f_26@@42) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@25) o_18@@3 f_26@@42) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@12) o_18@@3 f_26@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@36) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@12) o_18@@3 f_26@@42))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_30194) (ExhaleHeap@@13 T@PolymorphicMapType_30194) (Mask@@37 T@PolymorphicMapType_30215) (o_18@@4 T@Ref) (f_26@@43 T@Field_20628_3969) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@37) (=> (HasDirectPerm_20628_3969 Mask@@37 o_18@@4 f_26@@43) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@26) o_18@@4 f_26@@43) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@13) o_18@@4 f_26@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@37) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@13) o_18@@4 f_26@@43))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_30194) (ExhaleHeap@@14 T@PolymorphicMapType_30194) (Mask@@38 T@PolymorphicMapType_30215) (o_18@@5 T@Ref) (f_26@@44 T@Field_20431_46353) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@38) (=> (HasDirectPerm_20431_87918 Mask@@38 o_18@@5 f_26@@44) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@27) o_18@@5 f_26@@44) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@14) o_18@@5 f_26@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@38) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@14) o_18@@5 f_26@@44))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_30194) (ExhaleHeap@@15 T@PolymorphicMapType_30194) (Mask@@39 T@PolymorphicMapType_30215) (o_18@@6 T@Ref) (f_26@@45 T@Field_30267_30268) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@39) (=> (HasDirectPerm_20431_30268 Mask@@39 o_18@@6 f_26@@45) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@28) o_18@@6 f_26@@45) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@15) o_18@@6 f_26@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@39) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@15) o_18@@6 f_26@@45))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_30194) (ExhaleHeap@@16 T@PolymorphicMapType_30194) (Mask@@40 T@PolymorphicMapType_30215) (o_18@@7 T@Ref) (f_26@@46 T@Field_30254_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@40) (=> (HasDirectPerm_20431_53 Mask@@40 o_18@@7 f_26@@46) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@29) o_18@@7 f_26@@46) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@16) o_18@@7 f_26@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@40) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@16) o_18@@7 f_26@@46))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_30194) (ExhaleHeap@@17 T@PolymorphicMapType_30194) (Mask@@41 T@PolymorphicMapType_30215) (o_18@@8 T@Ref) (f_26@@47 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@17 Mask@@41) (=> (HasDirectPerm_20431_20629 Mask@@41 o_18@@8 f_26@@47) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@30) o_18@@8 f_26@@47) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@17) o_18@@8 f_26@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@17 Mask@@41) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@17) o_18@@8 f_26@@47))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_30194) (ExhaleHeap@@18 T@PolymorphicMapType_30194) (Mask@@42 T@PolymorphicMapType_30215) (o_18@@9 T@Ref) (f_26@@48 T@Field_36597_3969) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@18 Mask@@42) (=> (HasDirectPerm_20431_3969 Mask@@42 o_18@@9 f_26@@48) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@31) o_18@@9 f_26@@48) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@18) o_18@@9 f_26@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@18 Mask@@42) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@18) o_18@@9 f_26@@48))
)))
(assert (forall ((s0@@1 T@Seq_48185) (s1@@1 T@Seq_48185) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_20665|)) (not (= s1@@1 |Seq#Empty_20665|))) (= (|Seq#Length_20665| (|Seq#Append_48185| s0@@1 s1@@1)) (+ (|Seq#Length_20665| s0@@1) (|Seq#Length_20665| s1@@1))))
 :qid |stdinbpl.306:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_20665| (|Seq#Append_48185| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3587) (s1@@2 T@Seq_3587) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3587|)) (not (= s1@@2 |Seq#Empty_3587|))) (= (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)) (+ (|Seq#Length_3587| s0@@2) (|Seq#Length_3587| s1@@2))))
 :qid |stdinbpl.306:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_46348_46353) ) (! (= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_20628_30268) ) (! (= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_20628_53) ) (! (= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_44743_44744) ) (! (= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_20628_3969) ) (! (= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_20431_46353) ) (! (= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_30267_30268) ) (! (= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_30254_53) ) (! (= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_20431_20629) ) (! (= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_36597_3969) ) (! (= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_48185) (t@@1 T@Seq_48185) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_20665| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_20665| s@@15)) (|Seq#Length_20665| s@@15)) n@@15) (= (|Seq#Drop_20665| (|Seq#Append_48185| s@@15 t@@1) n@@15) (|Seq#Drop_20665| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_20665| s@@15))))))
 :qid |stdinbpl.463:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_20665| (|Seq#Append_48185| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3587) (t@@2 T@Seq_3587) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3587| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16)) (|Seq#Length_3587| s@@16)) n@@16) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16) (|Seq#Drop_3587| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16))))))
 :qid |stdinbpl.463:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_30194) (i@@8 Int) (j@@8 Int) ) (!  (and (= (rcvr Heap@@32 i@@8 j@@8) (|rcvr'| Heap@@32 i@@8 j@@8)) (dummyFunction_20446 (|rcvr#triggerStateless| i@@8 j@@8)))
 :qid |stdinbpl.729:15|
 :skolemid |63|
 :pattern ( (rcvr Heap@@32 i@@8 j@@8))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_30194) (mat_1@@7 T@IMatrixDomainType) (col_1@@2 Int) ) (!  (and (= (colsum Heap@@33 mat_1@@7 col_1@@2) (|colsum'| Heap@@33 mat_1@@7 col_1@@2)) (dummyFunction_4884 (|colsum#triggerStateless| mat_1@@7 col_1@@2)))
 :qid |stdinbpl.916:15|
 :skolemid |80|
 :pattern ( (colsum Heap@@33 mat_1@@7 col_1@@2))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_30194) (mat_1@@8 T@IMatrixDomainType) (row_1@@2 Int) ) (!  (and (= (rowsum Heap@@34 mat_1@@8 row_1@@2) (|rowsum'| Heap@@34 mat_1@@8 row_1@@2)) (dummyFunction_4884 (|rowsum#triggerStateless| mat_1@@8 row_1@@2)))
 :qid |stdinbpl.1013:15|
 :skolemid |90|
 :pattern ( (rowsum Heap@@34 mat_1@@8 row_1@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_30194) (x@@9 T@Ref) (y@@7 T@Ref) ) (!  (and (= (getP Heap@@35 x@@9 y@@7) (|getP'| Heap@@35 x@@9 y@@7)) (dummyFunction_4884 (|getP#triggerStateless| x@@9 y@@7)))
 :qid |stdinbpl.1110:15|
 :skolemid |100|
 :pattern ( (getP Heap@@35 x@@9 y@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_30194) (Mask@@43 T@PolymorphicMapType_30215) (mat_1@@9 T@IMatrixDomainType) (col_1@@3 Int) ) (!  (=> (state Heap@@36 Mask@@43) (= (|colsum'| Heap@@36 mat_1@@9 col_1@@3) (|colsum#frame| (FrameFragment_4557 (|colsum#condqp2| Heap@@36 mat_1@@9 col_1@@3)) mat_1@@9 col_1@@3)))
 :qid |stdinbpl.927:15|
 :skolemid |82|
 :pattern ( (state Heap@@36 Mask@@43) (|colsum'| Heap@@36 mat_1@@9 col_1@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_30194) (Mask@@44 T@PolymorphicMapType_30215) (mat_1@@10 T@IMatrixDomainType) (row_1@@3 Int) ) (!  (=> (state Heap@@37 Mask@@44) (= (|rowsum'| Heap@@37 mat_1@@10 row_1@@3) (|rowsum#frame| (FrameFragment_4557 (|rowsum#condqp3| Heap@@37 mat_1@@10 row_1@@3)) mat_1@@10 row_1@@3)))
 :qid |stdinbpl.1024:15|
 :skolemid |92|
 :pattern ( (state Heap@@37 Mask@@44) (|rowsum'| Heap@@37 mat_1@@10 row_1@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_30215) (SummandMask1 T@PolymorphicMapType_30215) (SummandMask2 T@PolymorphicMapType_30215) (o_2@@39 T@Ref) (f_4@@39 T@Field_46348_46353) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_30215) (SummandMask1@@0 T@PolymorphicMapType_30215) (SummandMask2@@0 T@PolymorphicMapType_30215) (o_2@@40 T@Ref) (f_4@@40 T@Field_20628_30268) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_30215) (SummandMask1@@1 T@PolymorphicMapType_30215) (SummandMask2@@1 T@PolymorphicMapType_30215) (o_2@@41 T@Ref) (f_4@@41 T@Field_20628_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_30215) (SummandMask1@@2 T@PolymorphicMapType_30215) (SummandMask2@@2 T@PolymorphicMapType_30215) (o_2@@42 T@Ref) (f_4@@42 T@Field_44743_44744) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_30215) (SummandMask1@@3 T@PolymorphicMapType_30215) (SummandMask2@@3 T@PolymorphicMapType_30215) (o_2@@43 T@Ref) (f_4@@43 T@Field_20628_3969) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_30215) (SummandMask1@@4 T@PolymorphicMapType_30215) (SummandMask2@@4 T@PolymorphicMapType_30215) (o_2@@44 T@Ref) (f_4@@44 T@Field_20431_46353) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_30215) (SummandMask1@@5 T@PolymorphicMapType_30215) (SummandMask2@@5 T@PolymorphicMapType_30215) (o_2@@45 T@Ref) (f_4@@45 T@Field_30267_30268) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_30215) (SummandMask1@@6 T@PolymorphicMapType_30215) (SummandMask2@@6 T@PolymorphicMapType_30215) (o_2@@46 T@Ref) (f_4@@46 T@Field_30254_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_30215) (SummandMask1@@7 T@PolymorphicMapType_30215) (SummandMask2@@7 T@PolymorphicMapType_30215) (o_2@@47 T@Ref) (f_4@@47 T@Field_20431_20629) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_30215) (SummandMask1@@8 T@PolymorphicMapType_30215) (SummandMask2@@8 T@PolymorphicMapType_30215) (o_2@@48 T@Ref) (f_4@@48 T@Field_36597_3969) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.628:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_48185) (b T@Seq_48185) ) (!  (=> (|Seq#Equal_48185| a b) (= a b))
 :qid |stdinbpl.601:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_48185| a b))
)))
(assert (forall ((a@@0 T@Seq_3587) (b@@0 T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.601:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3587| a@@0 b@@0))
)))
(assert (forall ((a_2 T@IArrayDomainType_70806) ) (! (>= (len_20839 a_2) 0)
 :qid |stdinbpl.663:19|
 :skolemid |59|
 :pattern ( (len_20839 a_2))
)))
(assert (forall ((mat_1@@11 T@IMatrixDomainType) ) (! (>= (cols mat_1@@11) 0)
 :qid |stdinbpl.700:15|
 :skolemid |61|
 :pattern ( (cols mat_1@@11))
)))
(assert (forall ((mat_1@@12 T@IMatrixDomainType) ) (! (>= (rows mat_1@@12) 0)
 :qid |stdinbpl.706:15|
 :skolemid |62|
 :pattern ( (rows mat_1@@12))
)))
(assert (forall ((s@@17 T@Seq_48185) (i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_20665| s@@17))) (|Seq#ContainsTrigger_20665| s@@17 (|Seq#Index_20665| s@@17 i@@9)))
 :qid |stdinbpl.494:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_20665| s@@17 i@@9))
)))
(assert (forall ((s@@18 T@Seq_3587) (i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3587| s@@18))) (|Seq#ContainsTrigger_3587| s@@18 (|Seq#Index_3587| s@@18 i@@10)))
 :qid |stdinbpl.494:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3587| s@@18 i@@10))
)))
(assert (forall ((s0@@3 T@Seq_48185) (s1@@3 T@Seq_48185) ) (!  (and (=> (= s0@@3 |Seq#Empty_20665|) (= (|Seq#Append_48185| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_20665|) (= (|Seq#Append_48185| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.312:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_48185| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3587) (s1@@4 T@Seq_3587) ) (!  (and (=> (= s0@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.312:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3587| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_20665| (|Seq#Singleton_20665| t@@3) 0) t@@3)
 :qid |stdinbpl.316:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_20665| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3587| (|Seq#Singleton_3587| t@@4) 0) t@@4)
 :qid |stdinbpl.316:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3587| t@@4))
)))
(assert (forall ((s@@19 T@Seq_48185) ) (! (<= 0 (|Seq#Length_20665| s@@19))
 :qid |stdinbpl.295:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_20665| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3587) ) (! (<= 0 (|Seq#Length_3587| s@@20))
 :qid |stdinbpl.295:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3587| s@@20))
)))
(assert (forall ((x@@10 T@Ref) (y@@8 T@Ref) ) (! (= (getPredWandId_20628_20629 (P x@@10 y@@8)) 0)
 :qid |stdinbpl.1213:15|
 :skolemid |106|
 :pattern ( (P x@@10 y@@8))
)))
(assert (forall ((s0@@5 T@Seq_48185) (s1@@5 T@Seq_48185) ) (!  (=> (|Seq#Equal_48185| s0@@5 s1@@5) (and (= (|Seq#Length_20665| s0@@5) (|Seq#Length_20665| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_20665| s0@@5))) (= (|Seq#Index_20665| s0@@5 j@@9) (|Seq#Index_20665| s1@@5 j@@9)))
 :qid |stdinbpl.591:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_20665| s0@@5 j@@9))
 :pattern ( (|Seq#Index_20665| s1@@5 j@@9))
))))
 :qid |stdinbpl.588:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_48185| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3587) (s1@@6 T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| s0@@6 s1@@6) (and (= (|Seq#Length_3587| s0@@6) (|Seq#Length_3587| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3587| s0@@6))) (= (|Seq#Index_3587| s0@@6 j@@10) (|Seq#Index_3587| s1@@6 j@@10)))
 :qid |stdinbpl.591:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3587| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3587| s1@@6 j@@10))
))))
 :qid |stdinbpl.588:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3587| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_20665| (|Seq#Singleton_20665| t@@5)) 1)
 :qid |stdinbpl.303:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_20665| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3587| (|Seq#Singleton_3587| t@@6)) 1)
 :qid |stdinbpl.303:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3587| t@@6))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_30194) (Mask@@45 T@PolymorphicMapType_30215) (i@@11 Int) ) (!  (=> (state Heap@@38 Mask@@45) (= (|prm'| Heap@@38 i@@11) (|prm#frame| EmptyFrame i@@11)))
 :qid |stdinbpl.781:15|
 :skolemid |68|
 :pattern ( (state Heap@@38 Mask@@45) (|prm'| Heap@@38 i@@11))
)))
(assert (forall ((x@@11 T@Ref) (y@@9 T@Ref) ) (! (= (PredicateMaskField_20628 (P x@@11 y@@9)) (|P#sm| x@@11 y@@9))
 :qid |stdinbpl.1205:15|
 :skolemid |104|
 :pattern ( (PredicateMaskField_20628 (P x@@11 y@@9)))
)))
(assert (forall ((s@@21 T@Seq_48185) (t@@7 T@Seq_48185) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_20665| s@@21))) (= (|Seq#Take_20665| (|Seq#Append_48185| s@@21 t@@7) n@@17) (|Seq#Take_20665| s@@21 n@@17)))
 :qid |stdinbpl.445:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_20665| (|Seq#Append_48185| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3587) (t@@8 T@Seq_3587) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3587| s@@22))) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18) (|Seq#Take_3587| s@@22 n@@18)))
 :qid |stdinbpl.445:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_48185) (i@@12 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_20665| s@@23))) (= (|Seq#Length_20665| (|Seq#Update_20665| s@@23 i@@12 v@@2)) (|Seq#Length_20665| s@@23)))
 :qid |stdinbpl.344:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_20665| (|Seq#Update_20665| s@@23 i@@12 v@@2)))
 :pattern ( (|Seq#Length_20665| s@@23) (|Seq#Update_20665| s@@23 i@@12 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3587) (i@@13 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length_3587| s@@24))) (= (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@13 v@@3)) (|Seq#Length_3587| s@@24)))
 :qid |stdinbpl.344:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@13 v@@3)))
 :pattern ( (|Seq#Length_3587| s@@24) (|Seq#Update_3587| s@@24 i@@13 v@@3))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType_70806) (i@@14 Int) ) (!  (and (= (first_1_20839 (aloc_20839 a_2@@0 i@@14)) a_2@@0) (= (second_1_20839 (aloc_20839 a_2@@0 i@@14)) i@@14))
 :qid |stdinbpl.657:19|
 :skolemid |58|
 :pattern ( (aloc_20839 a_2@@0 i@@14))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_30194) (o_20 T@Ref) (f_30 T@Field_46348_46353) (v@@4 T@PolymorphicMapType_30743) ) (! (succHeap Heap@@39 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@39) (store (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@39) o_20 f_30 v@@4) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@39) (store (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@39) o_20 f_30 v@@4) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_30194) (o_20@@0 T@Ref) (f_30@@0 T@Field_44743_44744) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@40) (store (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@40) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@40) (store (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@40) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_30194) (o_20@@1 T@Ref) (f_30@@1 T@Field_20628_3969) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@41) (store (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@41) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@41) (store (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@41) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_30194) (o_20@@2 T@Ref) (f_30@@2 T@Field_20628_30268) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@42) (store (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@42) o_20@@2 f_30@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@42) (store (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@42) o_20@@2 f_30@@2 v@@7)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_30194) (o_20@@3 T@Ref) (f_30@@3 T@Field_20628_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@43) (store (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@43) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@43) (store (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@43) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_30194) (o_20@@4 T@Ref) (f_30@@4 T@Field_20431_46353) (v@@9 T@PolymorphicMapType_30743) ) (! (succHeap Heap@@44 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@44) (store (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@44) o_20@@4 f_30@@4 v@@9) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@44) (store (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@44) o_20@@4 f_30@@4 v@@9) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_30194) (o_20@@5 T@Ref) (f_30@@5 T@Field_20431_20629) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@45) (store (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@45) o_20@@5 f_30@@5 v@@10) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@45) (store (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@45) o_20@@5 f_30@@5 v@@10) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_30194) (o_20@@6 T@Ref) (f_30@@6 T@Field_36597_3969) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@46) (store (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@46) o_20@@6 f_30@@6 v@@11) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@46) (store (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@46) o_20@@6 f_30@@6 v@@11) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_30194) (o_20@@7 T@Ref) (f_30@@7 T@Field_30267_30268) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@47) (store (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@47) o_20@@7 f_30@@7 v@@12) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@47) (store (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@47) o_20@@7 f_30@@7 v@@12) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_30194) (o_20@@8 T@Ref) (f_30@@8 T@Field_30254_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_30194 (store (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@48) o_20@@8 f_30@@8 v@@13) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (store (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@48) o_20@@8 f_30@@8 v@@13) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@48)))
)))
(assert (forall ((s@@25 T@Seq_48185) (t@@9 T@Seq_48185) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_20665| s@@25))) (= (|Seq#Drop_20665| (|Seq#Append_48185| s@@25 t@@9) n@@19) (|Seq#Append_48185| (|Seq#Drop_20665| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.459:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_20665| (|Seq#Append_48185| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3587) (t@@10 T@Seq_3587) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3587| s@@26))) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20) (|Seq#Append_3587| (|Seq#Drop_3587| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.459:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_48185) (n@@21 Int) (i@@15 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@15)) (< i@@15 (|Seq#Length_20665| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@15 n@@21) n@@21) i@@15) (= (|Seq#Index_20665| (|Seq#Drop_20665| s@@27 n@@21) (|Seq#Sub| i@@15 n@@21)) (|Seq#Index_20665| s@@27 i@@15))))
 :qid |stdinbpl.395:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_20665| s@@27 n@@21) (|Seq#Index_20665| s@@27 i@@15))
)))
(assert (forall ((s@@28 T@Seq_3587) (n@@22 Int) (i@@16 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@16)) (< i@@16 (|Seq#Length_3587| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@16 n@@22) n@@22) i@@16) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Sub| i@@16 n@@22)) (|Seq#Index_3587| s@@28 i@@16))))
 :qid |stdinbpl.395:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Index_3587| s@@28 i@@16))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_30194) (Mask@@46 T@PolymorphicMapType_30215) (mat_1@@13 T@IMatrixDomainType) ) (!  (=> (state Heap@@49 Mask@@46) (= (|det'| Heap@@49 mat_1@@13) (|det#frame| (FrameFragment_4557 (|det#condqp1| Heap@@49 mat_1@@13)) mat_1@@13)))
 :qid |stdinbpl.832:15|
 :skolemid |72|
 :pattern ( (state Heap@@49 Mask@@46) (|det'| Heap@@49 mat_1@@13))
)))
(assert (forall ((s0@@7 T@Seq_48185) (s1@@7 T@Seq_48185) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_20665|)) (not (= s1@@7 |Seq#Empty_20665|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_20665| s0@@7))) (= (|Seq#Index_20665| (|Seq#Append_48185| s0@@7 s1@@7) n@@23) (|Seq#Index_20665| s0@@7 n@@23)))
 :qid |stdinbpl.335:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_20665| (|Seq#Append_48185| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_20665| s0@@7 n@@23) (|Seq#Append_48185| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3587) (s1@@8 T@Seq_3587) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3587|)) (not (= s1@@8 |Seq#Empty_3587|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3587| s0@@8))) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24) (|Seq#Index_3587| s0@@8 n@@24)))
 :qid |stdinbpl.335:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3587| s0@@8 n@@24) (|Seq#Append_3587| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_48185) (s1@@9 T@Seq_48185) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_20665|)) (not (= s1@@9 |Seq#Empty_20665|))) (<= 0 m)) (< m (|Seq#Length_20665| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_20665| s0@@9)) (|Seq#Length_20665| s0@@9)) m) (= (|Seq#Index_20665| (|Seq#Append_48185| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_20665| s0@@9))) (|Seq#Index_20665| s1@@9 m))))
 :qid |stdinbpl.340:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_20665| s1@@9 m) (|Seq#Append_48185| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3587) (s1@@10 T@Seq_3587) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3587|)) (not (= s1@@10 |Seq#Empty_3587|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3587| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10)) (|Seq#Length_3587| s0@@10)) m@@0) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10))) (|Seq#Index_3587| s1@@10 m@@0))))
 :qid |stdinbpl.340:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3587| s1@@10 m@@0) (|Seq#Append_3587| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@9 T@Ref) (f_29 T@Field_30267_30268) (Heap@@50 T@PolymorphicMapType_30194) ) (!  (=> (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@50) o_20@@9 $allocated) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@50) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@50) o_20@@9 f_29) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@50) o_20@@9 f_29))
)))
(assert (forall ((s@@29 T@Seq_48185) (x@@12 T@Ref) (i@@17 Int) ) (!  (=> (and (and (<= 0 i@@17) (< i@@17 (|Seq#Length_20665| s@@29))) (= (|Seq#Index_20665| s@@29 i@@17) x@@12)) (|Seq#Contains_48185| s@@29 x@@12))
 :qid |stdinbpl.492:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_48185| s@@29 x@@12) (|Seq#Index_20665| s@@29 i@@17))
)))
(assert (forall ((s@@30 T@Seq_3587) (x@@13 Int) (i@@18 Int) ) (!  (=> (and (and (<= 0 i@@18) (< i@@18 (|Seq#Length_3587| s@@30))) (= (|Seq#Index_3587| s@@30 i@@18) x@@13)) (|Seq#Contains_3587| s@@30 x@@13))
 :qid |stdinbpl.492:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3587| s@@30 x@@13) (|Seq#Index_3587| s@@30 i@@18))
)))
(assert (forall ((s0@@11 T@Seq_48185) (s1@@11 T@Seq_48185) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_48185| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48185| s0@@11 s1@@11))) (not (= (|Seq#Length_20665| s0@@11) (|Seq#Length_20665| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48185| s0@@11 s1@@11))) (= (|Seq#Length_20665| s0@@11) (|Seq#Length_20665| s1@@11))) (= (|Seq#SkolemDiff_48185| s0@@11 s1@@11) (|Seq#SkolemDiff_48185| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_48185| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_48185| s0@@11 s1@@11) (|Seq#Length_20665| s0@@11))) (not (= (|Seq#Index_20665| s0@@11 (|Seq#SkolemDiff_48185| s0@@11 s1@@11)) (|Seq#Index_20665| s1@@11 (|Seq#SkolemDiff_48185| s0@@11 s1@@11))))))
 :qid |stdinbpl.596:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_48185| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3587) (s1@@12 T@Seq_3587) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3587| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (not (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))) (= (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#SkolemDiff_3587| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#Length_3587| s0@@12))) (not (= (|Seq#Index_3587| s0@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12)) (|Seq#Index_3587| s1@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))))))
 :qid |stdinbpl.596:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3587| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_44743_44744) (v_1@@1 T@FrameType) (q T@Field_44743_44744) (w@@1 T@FrameType) (r T@Field_44743_44744) (u T@FrameType) ) (!  (=> (and (InsidePredicate_44743_44743 p@@2 v_1@@1 q w@@1) (InsidePredicate_44743_44743 q w@@1 r u)) (InsidePredicate_44743_44743 p@@2 v_1@@1 r u))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_44743 p@@2 v_1@@1 q w@@1) (InsidePredicate_44743_44743 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_44743_44744) (v_1@@2 T@FrameType) (q@@0 T@Field_44743_44744) (w@@2 T@FrameType) (r@@0 T@Field_20431_20629) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_44743_44743 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_44743_30254 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_44743_30254 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_44743 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_44743_30254 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_44743_44744) (v_1@@3 T@FrameType) (q@@1 T@Field_20431_20629) (w@@3 T@FrameType) (r@@1 T@Field_44743_44744) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_44743_30254 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_30254_44743 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_44743_44743 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_30254 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_30254_44743 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_44743_44744) (v_1@@4 T@FrameType) (q@@2 T@Field_20431_20629) (w@@4 T@FrameType) (r@@2 T@Field_20431_20629) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_44743_30254 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_30254_30254 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_44743_30254 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_30254 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_30254_30254 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_20431_20629) (v_1@@5 T@FrameType) (q@@3 T@Field_44743_44744) (w@@5 T@FrameType) (r@@3 T@Field_44743_44744) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_44743 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_44743_44743 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_30254_44743 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_44743 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_44743_44743 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_20431_20629) (v_1@@6 T@FrameType) (q@@4 T@Field_44743_44744) (w@@6 T@FrameType) (r@@4 T@Field_20431_20629) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_44743 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_44743_30254 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_30254_30254 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_44743 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_44743_30254 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_20431_20629) (v_1@@7 T@FrameType) (q@@5 T@Field_20431_20629) (w@@7 T@FrameType) (r@@5 T@Field_44743_44744) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_30254 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_30254_44743 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_30254_44743 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_30254 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_30254_44743 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_20431_20629) (v_1@@8 T@FrameType) (q@@6 T@Field_20431_20629) (w@@8 T@FrameType) (r@@6 T@Field_20431_20629) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_30254 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_30254_30254 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_30254_30254 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_30254 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_30254_30254 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_48185) ) (!  (=> (= (|Seq#Length_20665| s@@31) 0) (= s@@31 |Seq#Empty_20665|))
 :qid |stdinbpl.299:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_20665| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3587) ) (!  (=> (= (|Seq#Length_3587| s@@32) 0) (= s@@32 |Seq#Empty_3587|))
 :qid |stdinbpl.299:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3587| s@@32))
)))
(assert (forall ((s@@33 T@Seq_48185) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_20665| s@@33 n@@25) |Seq#Empty_20665|))
 :qid |stdinbpl.475:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_20665| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3587) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3587| s@@34 n@@26) |Seq#Empty_3587|))
 :qid |stdinbpl.475:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3587| s@@34 n@@26))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_30194) (Mask@@47 T@PolymorphicMapType_30215) (x@@14 T@Ref) (y@@10 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@47) (< AssumeFunctionsAbove 1)) (= (getP Heap@@51 x@@14 y@@10) (+ (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@51) x@@14 f_7) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@51) y@@10 f_7))))
 :qid |stdinbpl.1120:15|
 :skolemid |102|
 :pattern ( (state Heap@@51 Mask@@47) (getP Heap@@51 x@@14 y@@10))
 :pattern ( (state Heap@@51 Mask@@47) (|getP#triggerStateless| x@@14 y@@10) (|P#trigger_20628| Heap@@51 (P x@@14 y@@10)))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun mat_1@@14 () T@IMatrixDomainType)
(declare-fun col_1@@4 () Int)
(declare-fun Heap@@52 () T@PolymorphicMapType_30194)
(set-info :boogie-vc-id |colsum#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((r_3 Int) (r_3_2 Int) ) (!  (=> (and (and (and (and (not (= r_3 r_3_2)) (and (<= 0 r_3) (< r_3 (rows mat_1@@14)))) (and (<= 0 r_3_2) (< r_3_2 (rows mat_1@@14)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc mat_1@@14 col_1@@4 r_3) (loc mat_1@@14 col_1@@4 r_3_2))))
 :qid |stdinbpl.971:15|
 :skolemid |84|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@52 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 4) (<= 0 col_1@@4)) (and (< col_1@@4 (cols mat_1@@14)) (state Heap@@52 ZeroMask))) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-sort T@Field_30254_53 0)
(declare-sort T@Field_30267_30268 0)
(declare-sort T@Field_36597_3969 0)
(declare-sort T@Field_44743_44744 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_46348_46353 0)
(declare-sort T@Field_20431_20629 0)
(declare-sort T@Field_20431_46353 0)
(declare-sort T@Field_20628_3969 0)
(declare-sort T@Field_20628_53 0)
(declare-sort T@Field_20628_30268 0)
(declare-datatypes ((T@PolymorphicMapType_30215 0)) (((PolymorphicMapType_30215 (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| (Array T@Ref T@Field_36597_3969 Real)) (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| (Array T@Ref T@Field_44743_44744 Real)) (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| (Array T@Ref T@Field_20431_20629 Real)) (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| (Array T@Ref T@Field_30254_53 Real)) (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| (Array T@Ref T@Field_30267_30268 Real)) (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| (Array T@Ref T@Field_20431_46353 Real)) (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| (Array T@Ref T@Field_20628_3969 Real)) (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| (Array T@Ref T@Field_20628_53 Real)) (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| (Array T@Ref T@Field_20628_30268 Real)) (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| (Array T@Ref T@Field_46348_46353 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30743 0)) (((PolymorphicMapType_30743 (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (Array T@Ref T@Field_36597_3969 Bool)) (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (Array T@Ref T@Field_30254_53 Bool)) (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (Array T@Ref T@Field_30267_30268 Bool)) (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (Array T@Ref T@Field_20431_20629 Bool)) (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (Array T@Ref T@Field_20431_46353 Bool)) (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (Array T@Ref T@Field_20628_3969 Bool)) (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (Array T@Ref T@Field_20628_53 Bool)) (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (Array T@Ref T@Field_20628_30268 Bool)) (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (Array T@Ref T@Field_44743_44744 Bool)) (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (Array T@Ref T@Field_46348_46353 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30194 0)) (((PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| (Array T@Ref T@Field_30254_53 Bool)) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| (Array T@Ref T@Field_30267_30268 T@Ref)) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| (Array T@Ref T@Field_36597_3969 Int)) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| (Array T@Ref T@Field_44743_44744 T@FrameType)) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| (Array T@Ref T@Field_46348_46353 T@PolymorphicMapType_30743)) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| (Array T@Ref T@Field_20431_20629 T@FrameType)) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| (Array T@Ref T@Field_20431_46353 T@PolymorphicMapType_30743)) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| (Array T@Ref T@Field_20628_3969 Int)) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| (Array T@Ref T@Field_20628_53 Bool)) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| (Array T@Ref T@Field_20628_30268 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_30254_53)
(declare-fun f_7 () T@Field_36597_3969)
(declare-fun val () T@Field_36597_3969)
(declare-sort T@Seq_48185 0)
(declare-fun |Seq#Length_20665| (T@Seq_48185) Int)
(declare-fun |Seq#Drop_20665| (T@Seq_48185 Int) T@Seq_48185)
(declare-sort T@Seq_3587 0)
(declare-fun |Seq#Length_3587| (T@Seq_3587) Int)
(declare-fun |Seq#Drop_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun succHeap (T@PolymorphicMapType_30194 T@PolymorphicMapType_30194) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_30194 T@PolymorphicMapType_30194) Bool)
(declare-fun state (T@PolymorphicMapType_30194 T@PolymorphicMapType_30215) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_30215) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_30743)
(declare-fun |getP'| (T@PolymorphicMapType_30194 T@Ref T@Ref) Int)
(declare-fun |getP#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun P (T@Ref T@Ref) T@Field_44743_44744)
(declare-sort T@IMatrixDomainType 0)
(declare-fun |colsum#condqp2| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun |sk_colsum#condqp2| (Int Int) Int)
(declare-fun rows (T@IMatrixDomainType) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun loc (T@IMatrixDomainType Int Int) T@Ref)
(declare-fun IsPredicateField_20628_20629 (T@Field_44743_44744) Bool)
(declare-fun |rcvr'| (T@PolymorphicMapType_30194 Int Int) T@Ref)
(declare-fun dummyFunction_20446 (T@Ref) Bool)
(declare-fun |rcvr#triggerStateless| (Int Int) T@Ref)
(declare-fun |colsum'| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun dummyFunction_4884 (Int) Bool)
(declare-fun |colsum#triggerStateless| (T@IMatrixDomainType Int) Int)
(declare-fun |rowsum'| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun |rowsum#triggerStateless| (T@IMatrixDomainType Int) Int)
(declare-fun |getP#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |P#trigger_20628| (T@PolymorphicMapType_30194 T@Field_44743_44744) Bool)
(declare-fun |P#everUsed_20628| (T@Field_44743_44744) Bool)
(declare-fun |Seq#Index_20665| (T@Seq_48185 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3587| (T@Seq_3587 Int) Int)
(declare-fun |rcvr#frame| (T@FrameType Int Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_20665| () T@Seq_48185)
(declare-fun |Seq#Empty_3587| () T@Seq_3587)
(declare-fun |prm'| (T@PolymorphicMapType_30194 Int) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |prm#triggerStateless| (Int) Real)
(declare-fun |det'| (T@PolymorphicMapType_30194 T@IMatrixDomainType) Int)
(declare-fun |det#triggerStateless| (T@IMatrixDomainType) Int)
(declare-fun |Seq#Update_20665| (T@Seq_48185 Int T@Ref) T@Seq_48185)
(declare-fun |Seq#Update_3587| (T@Seq_3587 Int Int) T@Seq_3587)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |prm#trigger| (T@FrameType Int) Bool)
(declare-fun |Seq#Take_20665| (T@Seq_48185 Int) T@Seq_48185)
(declare-fun |Seq#Take_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun loc_mat (T@Ref) T@IMatrixDomainType)
(declare-fun loc_col (T@Ref) Int)
(declare-fun loc_row (T@Ref) Int)
(declare-fun |Seq#Contains_3587| (T@Seq_3587 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3587)
(declare-fun |Seq#Contains_48185| (T@Seq_48185 T@Ref) Bool)
(declare-fun |Seq#Skolem_48185| (T@Seq_48185 T@Ref) Int)
(declare-fun |Seq#Skolem_3587| (T@Seq_3587 Int) Int)
(declare-fun prm (T@PolymorphicMapType_30194 Int) Real)
(declare-fun det (T@PolymorphicMapType_30194 T@IMatrixDomainType) Int)
(declare-fun |det#condqp1| (T@PolymorphicMapType_30194 T@IMatrixDomainType) Int)
(declare-fun |sk_det#condqp1| (Int Int) Int)
(declare-fun cols (T@IMatrixDomainType) Int)
(declare-fun |sk_det#condqp1_1| (Int Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_30194 T@PolymorphicMapType_30194 T@PolymorphicMapType_30215) Bool)
(declare-fun PredicateMaskField_20628 (T@Field_44743_44744) T@Field_46348_46353)
(declare-fun HasDirectPerm_20628_20629 (T@PolymorphicMapType_30215 T@Ref T@Field_44743_44744) Bool)
(declare-fun IsPredicateField_20431_89304 (T@Field_20431_20629) Bool)
(declare-fun PredicateMaskField_20431 (T@Field_20431_20629) T@Field_20431_46353)
(declare-fun HasDirectPerm_20431_20629 (T@PolymorphicMapType_30215 T@Ref T@Field_20431_20629) Bool)
(declare-fun IsWandField_20628_92989 (T@Field_44743_44744) Bool)
(declare-fun WandMaskField_20628 (T@Field_44743_44744) T@Field_46348_46353)
(declare-fun IsWandField_20431_92632 (T@Field_20431_20629) Bool)
(declare-fun WandMaskField_20431 (T@Field_20431_20629) T@Field_20431_46353)
(declare-fun |Seq#Singleton_20665| (T@Ref) T@Seq_48185)
(declare-fun |Seq#Singleton_3587| (Int) T@Seq_3587)
(declare-fun |P#sm| (T@Ref T@Ref) T@Field_46348_46353)
(declare-fun |Seq#Append_48185| (T@Seq_48185 T@Seq_48185) T@Seq_48185)
(declare-fun |Seq#Append_3587| (T@Seq_3587 T@Seq_3587) T@Seq_3587)
(declare-fun dummyHeap () T@PolymorphicMapType_30194)
(declare-fun ZeroMask () T@PolymorphicMapType_30215)
(declare-fun InsidePredicate_44743_44743 (T@Field_44743_44744 T@FrameType T@Field_44743_44744 T@FrameType) Bool)
(declare-fun InsidePredicate_30254_30254 (T@Field_20431_20629 T@FrameType T@Field_20431_20629 T@FrameType) Bool)
(declare-fun IsPredicateField_20431_3969 (T@Field_36597_3969) Bool)
(declare-fun IsWandField_20431_3969 (T@Field_36597_3969) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20628_99921 (T@Field_46348_46353) Bool)
(declare-fun IsWandField_20628_99937 (T@Field_46348_46353) Bool)
(declare-fun IsPredicateField_20628_30268 (T@Field_20628_30268) Bool)
(declare-fun IsWandField_20628_30268 (T@Field_20628_30268) Bool)
(declare-fun IsPredicateField_20628_53 (T@Field_20628_53) Bool)
(declare-fun IsWandField_20628_53 (T@Field_20628_53) Bool)
(declare-fun IsPredicateField_20628_3984 (T@Field_20628_3969) Bool)
(declare-fun IsWandField_20628_3984 (T@Field_20628_3969) Bool)
(declare-fun IsPredicateField_20433_99090 (T@Field_20431_46353) Bool)
(declare-fun IsWandField_20433_99106 (T@Field_20431_46353) Bool)
(declare-fun IsPredicateField_20433_30268 (T@Field_30267_30268) Bool)
(declare-fun IsWandField_20433_30268 (T@Field_30267_30268) Bool)
(declare-fun IsPredicateField_20433_53 (T@Field_30254_53) Bool)
(declare-fun IsWandField_20433_53 (T@Field_30254_53) Bool)
(declare-fun |rowsum#condqp3| (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun |sk_rowsum#condqp3| (Int Int) Int)
(declare-fun HasDirectPerm_20628_89059 (T@PolymorphicMapType_30215 T@Ref T@Field_46348_46353) Bool)
(declare-fun HasDirectPerm_20628_30268 (T@PolymorphicMapType_30215 T@Ref T@Field_20628_30268) Bool)
(declare-fun HasDirectPerm_20628_53 (T@PolymorphicMapType_30215 T@Ref T@Field_20628_53) Bool)
(declare-fun HasDirectPerm_20628_3969 (T@PolymorphicMapType_30215 T@Ref T@Field_20628_3969) Bool)
(declare-fun HasDirectPerm_20431_87918 (T@PolymorphicMapType_30215 T@Ref T@Field_20431_46353) Bool)
(declare-fun HasDirectPerm_20431_30268 (T@PolymorphicMapType_30215 T@Ref T@Field_30267_30268) Bool)
(declare-fun HasDirectPerm_20431_53 (T@PolymorphicMapType_30215 T@Ref T@Field_30254_53) Bool)
(declare-fun HasDirectPerm_20431_3969 (T@PolymorphicMapType_30215 T@Ref T@Field_36597_3969) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun rcvr (T@PolymorphicMapType_30194 Int Int) T@Ref)
(declare-fun colsum (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun rowsum (T@PolymorphicMapType_30194 T@IMatrixDomainType Int) Int)
(declare-fun getP (T@PolymorphicMapType_30194 T@Ref T@Ref) Int)
(declare-fun |colsum#frame| (T@FrameType T@IMatrixDomainType Int) Int)
(declare-fun FrameFragment_4557 (Int) T@FrameType)
(declare-fun |rowsum#frame| (T@FrameType T@IMatrixDomainType Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_30215 T@PolymorphicMapType_30215 T@PolymorphicMapType_30215) Bool)
(declare-fun |Seq#Equal_48185| (T@Seq_48185 T@Seq_48185) Bool)
(declare-fun |Seq#Equal_3587| (T@Seq_3587 T@Seq_3587) Bool)
(declare-sort T@IArrayDomainType_70806 0)
(declare-fun len_20839 (T@IArrayDomainType_70806) Int)
(declare-fun |Seq#ContainsTrigger_20665| (T@Seq_48185 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3587| (T@Seq_3587 Int) Bool)
(declare-fun getPredWandId_20628_20629 (T@Field_44743_44744) Int)
(declare-fun |prm#frame| (T@FrameType Int) Real)
(declare-fun aloc_20839 (T@IArrayDomainType_70806 Int) T@Ref)
(declare-fun first_1_20839 (T@Ref) T@IArrayDomainType_70806)
(declare-fun second_1_20839 (T@Ref) Int)
(declare-fun |det#frame| (T@FrameType T@IMatrixDomainType) Int)
(declare-fun |Seq#SkolemDiff_48185| (T@Seq_48185 T@Seq_48185) Int)
(declare-fun |Seq#SkolemDiff_3587| (T@Seq_3587 T@Seq_3587) Int)
(declare-fun InsidePredicate_44743_30254 (T@Field_44743_44744 T@FrameType T@Field_20431_20629 T@FrameType) Bool)
(declare-fun InsidePredicate_30254_44743 (T@Field_20431_20629 T@FrameType T@Field_44743_44744 T@FrameType) Bool)
(assert (distinct f_7 val)
)
(assert (forall ((s T@Seq_48185) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_20665| s)) (= (|Seq#Length_20665| (|Seq#Drop_20665| s n)) (- (|Seq#Length_20665| s) n))) (=> (< (|Seq#Length_20665| s) n) (= (|Seq#Length_20665| (|Seq#Drop_20665| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_20665| (|Seq#Drop_20665| s n)) (|Seq#Length_20665| s))))
 :qid |stdinbpl.370:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_20665| (|Seq#Drop_20665| s n)))
 :pattern ( (|Seq#Length_20665| s) (|Seq#Drop_20665| s n))
)))
(assert (forall ((s@@0 T@Seq_3587) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3587| s@@0)) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (- (|Seq#Length_3587| s@@0) n@@0))) (=> (< (|Seq#Length_3587| s@@0) n@@0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (|Seq#Length_3587| s@@0))))
 :qid |stdinbpl.370:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3587| s@@0) (|Seq#Drop_3587| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_30194) (Heap1 T@PolymorphicMapType_30194) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_30194) (Mask T@PolymorphicMapType_30215) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_30194) (Heap1@@0 T@PolymorphicMapType_30194) (Heap2 T@PolymorphicMapType_30194) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_46348_46353) ) (!  (not (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_44743_44744) ) (!  (not (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20628_30268) ) (!  (not (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20628_53) ) (!  (not (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20628_3969) ) (!  (not (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_20431_46353) ) (!  (not (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20431_20629) ) (!  (not (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_30267_30268) ) (!  (not (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_30254_53) ) (!  (not (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_36597_3969) ) (!  (not (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_30194) (Mask@@0 T@PolymorphicMapType_30215) (x T@Ref) (y T@Ref) ) (!  (=> (state Heap@@0 Mask@@0) (= (|getP'| Heap@@0 x y) (|getP#frame| (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@0) null (P x y)) x y)))
 :qid |stdinbpl.1127:15|
 :skolemid |103|
 :pattern ( (state Heap@@0 Mask@@0) (|getP'| Heap@@0 x y))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_30194) (Heap1Heap T@PolymorphicMapType_30194) (mat_1 T@IMatrixDomainType) (col_1 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) (< (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)) (rows mat_1))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) (< (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)) (rows mat_1))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) (< (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)) (rows mat_1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap2Heap) (loc mat_1 col_1 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) val) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap1Heap) (loc mat_1 col_1 (|sk_colsum#condqp2| (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1))) val)))) (= (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1)))
 :qid |stdinbpl.937:15|
 :skolemid |83|
 :pattern ( (|colsum#condqp2| Heap2Heap mat_1 col_1) (|colsum#condqp2| Heap1Heap mat_1 col_1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((x@@0 T@Ref) (y@@0 T@Ref) ) (! (IsPredicateField_20628_20629 (P x@@0 y@@0))
 :qid |stdinbpl.1209:15|
 :skolemid |105|
 :pattern ( (P x@@0 y@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_30194) (i Int) (j Int) ) (! (dummyFunction_20446 (|rcvr#triggerStateless| i j))
 :qid |stdinbpl.733:15|
 :skolemid |64|
 :pattern ( (|rcvr'| Heap@@1 i j))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_30194) (mat_1@@0 T@IMatrixDomainType) (col_1@@0 Int) ) (! (dummyFunction_4884 (|colsum#triggerStateless| mat_1@@0 col_1@@0))
 :qid |stdinbpl.920:15|
 :skolemid |81|
 :pattern ( (|colsum'| Heap@@2 mat_1@@0 col_1@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_30194) (mat_1@@1 T@IMatrixDomainType) (row_1 Int) ) (! (dummyFunction_4884 (|rowsum#triggerStateless| mat_1@@1 row_1))
 :qid |stdinbpl.1017:15|
 :skolemid |91|
 :pattern ( (|rowsum'| Heap@@3 mat_1@@1 row_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_30194) (x@@1 T@Ref) (y@@1 T@Ref) ) (! (dummyFunction_4884 (|getP#triggerStateless| x@@1 y@@1))
 :qid |stdinbpl.1114:15|
 :skolemid |101|
 :pattern ( (|getP'| Heap@@4 x@@1 y@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_30194) (x@@2 T@Ref) (y@@2 T@Ref) ) (! (|P#everUsed_20628| (P x@@2 y@@2))
 :qid |stdinbpl.1228:15|
 :skolemid |109|
 :pattern ( (|P#trigger_20628| Heap@@5 (P x@@2 y@@2)))
)))
(assert (forall ((s@@1 T@Seq_48185) (n@@1 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_20665| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@1) n@@1) j@@0) (= (|Seq#Index_20665| (|Seq#Drop_20665| s@@1 n@@1) j@@0) (|Seq#Index_20665| s@@1 (|Seq#Add| j@@0 n@@1)))))
 :qid |stdinbpl.391:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_20665| (|Seq#Drop_20665| s@@1 n@@1) j@@0))
)))
(assert (forall ((s@@2 T@Seq_3587) (n@@2 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_3587| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@2) n@@2) j@@1) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@1) (|Seq#Index_3587| s@@2 (|Seq#Add| j@@1 n@@2)))))
 :qid |stdinbpl.391:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_30194) (Mask@@1 T@PolymorphicMapType_30215) (i@@0 Int) (j@@2 Int) ) (!  (=> (state Heap@@6 Mask@@1) (= (|rcvr'| Heap@@6 i@@0 j@@2) (|rcvr#frame| EmptyFrame i@@0 j@@2)))
 :qid |stdinbpl.740:15|
 :skolemid |65|
 :pattern ( (state Heap@@6 Mask@@1) (|rcvr'| Heap@@6 i@@0 j@@2))
)))
(assert (= (|Seq#Length_20665| |Seq#Empty_20665|) 0))
(assert (= (|Seq#Length_3587| |Seq#Empty_3587|) 0))
(assert (forall ((Heap@@7 T@PolymorphicMapType_30194) (i@@1 Int) ) (! (dummyFunction_645 (|prm#triggerStateless| i@@1))
 :qid |stdinbpl.774:15|
 :skolemid |67|
 :pattern ( (|prm'| Heap@@7 i@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_30194) (mat_1@@2 T@IMatrixDomainType) ) (! (dummyFunction_4884 (|det#triggerStateless| mat_1@@2))
 :qid |stdinbpl.825:15|
 :skolemid |71|
 :pattern ( (|det'| Heap@@8 mat_1@@2))
)))
(assert (forall ((s@@3 T@Seq_48185) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_20665| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_20665| (|Seq#Update_20665| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_20665| (|Seq#Update_20665| s@@3 i@@2 v) n@@3) (|Seq#Index_20665| s@@3 n@@3)))))
 :qid |stdinbpl.346:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_20665| (|Seq#Update_20665| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_20665| s@@3 n@@3) (|Seq#Update_20665| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_3587) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3587| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_3587| s@@4 n@@4)))))
 :qid |stdinbpl.346:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_3587| s@@4 n@@4) (|Seq#Update_3587| s@@4 i@@3 v@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_30194) (Mask@@2 T@PolymorphicMapType_30215) (i@@4 Int) ) (!  (=> (and (state Heap@@9 Mask@@2) (or (< AssumeFunctionsAbove 3) (|prm#trigger| EmptyFrame i@@4))) (< NoPerm (|prm'| Heap@@9 i@@4)))
 :qid |stdinbpl.787:15|
 :skolemid |69|
 :pattern ( (state Heap@@9 Mask@@2) (|prm'| Heap@@9 i@@4))
)))
(assert (forall ((s@@5 T@Seq_48185) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_20665| s@@5)) (= (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_20665| s@@5) n@@5) (= (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)) (|Seq#Length_20665| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)) 0)))
 :qid |stdinbpl.357:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_20665| (|Seq#Take_20665| s@@5 n@@5)))
 :pattern ( (|Seq#Take_20665| s@@5 n@@5) (|Seq#Length_20665| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3587) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3587| s@@6)) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3587| s@@6) n@@6) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) (|Seq#Length_3587| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) 0)))
 :qid |stdinbpl.357:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3587| s@@6 n@@6) (|Seq#Length_3587| s@@6))
)))
(assert (forall ((mat_1@@3 T@IMatrixDomainType) (col_1@@1 Int) (row_1@@0 Int) ) (!  (and (= (loc_mat (loc mat_1@@3 col_1@@1 row_1@@0)) mat_1@@3) (and (= (loc_col (loc mat_1@@3 col_1@@1 row_1@@0)) col_1@@1) (= (loc_row (loc mat_1@@3 col_1@@1 row_1@@0)) row_1@@0)))
 :qid |stdinbpl.694:15|
 :skolemid |60|
 :pattern ( (loc mat_1@@3 col_1@@1 row_1@@0))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.631:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_48185) (x@@3 T@Ref) ) (!  (=> (|Seq#Contains_48185| s@@7 x@@3) (and (and (<= 0 (|Seq#Skolem_48185| s@@7 x@@3)) (< (|Seq#Skolem_48185| s@@7 x@@3) (|Seq#Length_20665| s@@7))) (= (|Seq#Index_20665| s@@7 (|Seq#Skolem_48185| s@@7 x@@3)) x@@3)))
 :qid |stdinbpl.489:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_48185| s@@7 x@@3))
)))
(assert (forall ((s@@8 T@Seq_3587) (x@@4 Int) ) (!  (=> (|Seq#Contains_3587| s@@8 x@@4) (and (and (<= 0 (|Seq#Skolem_3587| s@@8 x@@4)) (< (|Seq#Skolem_3587| s@@8 x@@4) (|Seq#Length_3587| s@@8))) (= (|Seq#Index_3587| s@@8 (|Seq#Skolem_3587| s@@8 x@@4)) x@@4)))
 :qid |stdinbpl.489:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3587| s@@8 x@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_30194) (i@@5 Int) ) (!  (and (= (prm Heap@@10 i@@5) (|prm'| Heap@@10 i@@5)) (dummyFunction_645 (|prm#triggerStateless| i@@5)))
 :qid |stdinbpl.770:15|
 :skolemid |66|
 :pattern ( (prm Heap@@10 i@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_30194) (mat_1@@4 T@IMatrixDomainType) ) (!  (and (= (det Heap@@11 mat_1@@4) (|det'| Heap@@11 mat_1@@4)) (dummyFunction_4884 (|det#triggerStateless| mat_1@@4)))
 :qid |stdinbpl.821:15|
 :skolemid |70|
 :pattern ( (det Heap@@11 mat_1@@4))
)))
(assert (forall ((s@@9 T@Seq_48185) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_20665| s@@9 n@@7) s@@9))
 :qid |stdinbpl.473:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_20665| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3587) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3587| s@@10 n@@8) s@@10))
 :qid |stdinbpl.473:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3587| s@@10 n@@8))
)))
(assert (forall ((i@@6 Int) (j@@3 Int) ) (! (= (|Seq#Sub| i@@6 j@@3) (- i@@6 j@@3))
 :qid |stdinbpl.326:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@6 j@@3))
)))
(assert (forall ((i@@7 Int) (j@@4 Int) ) (! (= (|Seq#Add| i@@7 j@@4) (+ i@@7 j@@4))
 :qid |stdinbpl.324:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@7 j@@4))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_30194) (Heap1Heap@@0 T@PolymorphicMapType_30194) (mat_1@@5 T@IMatrixDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (and (< (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (cols mat_1@@5)) (and (<= 0 (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (< (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (rows mat_1@@5))))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (and (< (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (cols mat_1@@5)) (and (<= 0 (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (< (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (rows mat_1@@5))))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (and (< (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (cols mat_1@@5)) (and (<= 0 (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) (< (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (rows mat_1@@5))))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap2Heap@@0) (loc mat_1@@5 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) val) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap1Heap@@0) (loc mat_1@@5 (|sk_det#condqp1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)) (|sk_det#condqp1_1| (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5))) val)))) (= (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5)))
 :qid |stdinbpl.843:15|
 :skolemid |73|
 :pattern ( (|det#condqp1| Heap2Heap@@0 mat_1@@5) (|det#condqp1| Heap1Heap@@0 mat_1@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_30194) (ExhaleHeap T@PolymorphicMapType_30194) (Mask@@3 T@PolymorphicMapType_30215) (pm_f_8 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_20628_20629 Mask@@3 null pm_f_8) (IsPredicateField_20628_20629 pm_f_8)) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@12) null (PredicateMaskField_20628 pm_f_8)) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap) null (PredicateMaskField_20628 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (IsPredicateField_20628_20629 pm_f_8) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap) null (PredicateMaskField_20628 pm_f_8)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_30194) (ExhaleHeap@@0 T@PolymorphicMapType_30194) (Mask@@4 T@PolymorphicMapType_30215) (pm_f_8@@0 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_20431_20629 Mask@@4 null pm_f_8@@0) (IsPredicateField_20431_89304 pm_f_8@@0)) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@13) null (PredicateMaskField_20431 pm_f_8@@0)) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@0) null (PredicateMaskField_20431 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (IsPredicateField_20431_89304 pm_f_8@@0) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@0) null (PredicateMaskField_20431 pm_f_8@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_30194) (ExhaleHeap@@1 T@PolymorphicMapType_30194) (Mask@@5 T@PolymorphicMapType_30215) (pm_f_8@@1 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_20628_20629 Mask@@5 null pm_f_8@@1) (IsWandField_20628_92989 pm_f_8@@1)) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@14) null (WandMaskField_20628 pm_f_8@@1)) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@1) null (WandMaskField_20628 pm_f_8@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@5) (IsWandField_20628_92989 pm_f_8@@1) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@1) null (WandMaskField_20628 pm_f_8@@1)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_30194) (ExhaleHeap@@2 T@PolymorphicMapType_30194) (Mask@@6 T@PolymorphicMapType_30215) (pm_f_8@@2 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_20431_20629 Mask@@6 null pm_f_8@@2) (IsWandField_20431_92632 pm_f_8@@2)) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@15) null (WandMaskField_20431 pm_f_8@@2)) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@2) null (WandMaskField_20431 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@6) (IsWandField_20431_92632 pm_f_8@@2) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@2) null (WandMaskField_20431 pm_f_8@@2)))
)))
(assert (forall ((x@@5 T@Ref) (y@@3 T@Ref) ) (! (= (|Seq#Contains_48185| (|Seq#Singleton_20665| x@@5) y@@3) (= x@@5 y@@3))
 :qid |stdinbpl.614:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_48185| (|Seq#Singleton_20665| x@@5) y@@3))
)))
(assert (forall ((x@@6 Int) (y@@4 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@6) y@@4) (= x@@6 y@@4))
 :qid |stdinbpl.614:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@6) y@@4))
)))
(assert (forall ((x@@7 T@Ref) (y@@5 T@Ref) (x2 T@Ref) (y2 T@Ref) ) (!  (=> (= (P x@@7 y@@5) (P x2 y2)) (and (= x@@7 x2) (= y@@5 y2)))
 :qid |stdinbpl.1219:15|
 :skolemid |107|
 :pattern ( (P x@@7 y@@5) (P x2 y2))
)))
(assert (forall ((x@@8 T@Ref) (y@@6 T@Ref) (x2@@0 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@8 y@@6) (|P#sm| x2@@0 y2@@0)) (and (= x@@8 x2@@0) (= y@@6 y2@@0)))
 :qid |stdinbpl.1223:15|
 :skolemid |108|
 :pattern ( (|P#sm| x@@8 y@@6) (|P#sm| x2@@0 y2@@0))
)))
(assert (forall ((s@@11 T@Seq_48185) (n@@9 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@9)) (< j@@5 (|Seq#Length_20665| s@@11))) (= (|Seq#Index_20665| (|Seq#Take_20665| s@@11 n@@9) j@@5) (|Seq#Index_20665| s@@11 j@@5)))
 :qid |stdinbpl.365:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_20665| (|Seq#Take_20665| s@@11 n@@9) j@@5))
 :pattern ( (|Seq#Index_20665| s@@11 j@@5) (|Seq#Take_20665| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3587) (n@@10 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@10)) (< j@@6 (|Seq#Length_3587| s@@12))) (= (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@6) (|Seq#Index_3587| s@@12 j@@6)))
 :qid |stdinbpl.365:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@6))
 :pattern ( (|Seq#Index_3587| s@@12 j@@6) (|Seq#Take_3587| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_48185) (t T@Seq_48185) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_20665| s@@13))) (< n@@11 (|Seq#Length_20665| (|Seq#Append_48185| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_20665| s@@13)) (|Seq#Length_20665| s@@13)) n@@11) (= (|Seq#Take_20665| (|Seq#Append_48185| s@@13 t) n@@11) (|Seq#Append_48185| s@@13 (|Seq#Take_20665| t (|Seq#Sub| n@@11 (|Seq#Length_20665| s@@13)))))))
 :qid |stdinbpl.450:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_20665| (|Seq#Append_48185| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3587) (t@@0 T@Seq_3587) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3587| s@@14))) (< n@@12 (|Seq#Length_3587| (|Seq#Append_3587| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)) (|Seq#Length_3587| s@@14)) n@@12) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12) (|Seq#Append_3587| s@@14 (|Seq#Take_3587| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)))))))
 :qid |stdinbpl.450:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_30194) (ExhaleHeap@@3 T@PolymorphicMapType_30194) (Mask@@7 T@PolymorphicMapType_30215) (pm_f_8@@3 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_20628_20629 Mask@@7 null pm_f_8@@3) (IsPredicateField_20628_20629 pm_f_8@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_26 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8 f_26) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@16) o2_8 f_26) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8 f_26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8 f_26))
)) (forall ((o2_8@@0 T@Ref) (f_26@@0 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@0 f_26@@0) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@16) o2_8@@0 f_26@@0) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@0 f_26@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@0 f_26@@0))
))) (forall ((o2_8@@1 T@Ref) (f_26@@1 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@1 f_26@@1) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@16) o2_8@@1 f_26@@1) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@1 f_26@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@1 f_26@@1))
))) (forall ((o2_8@@2 T@Ref) (f_26@@2 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@2 f_26@@2) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@16) o2_8@@2 f_26@@2) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@2 f_26@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@2 f_26@@2))
))) (forall ((o2_8@@3 T@Ref) (f_26@@3 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@3 f_26@@3) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@16) o2_8@@3 f_26@@3) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@3 f_26@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@3 f_26@@3))
))) (forall ((o2_8@@4 T@Ref) (f_26@@4 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@4 f_26@@4) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@16) o2_8@@4 f_26@@4) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@4 f_26@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@4 f_26@@4))
))) (forall ((o2_8@@5 T@Ref) (f_26@@5 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@5 f_26@@5) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@16) o2_8@@5 f_26@@5) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@5 f_26@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@5 f_26@@5))
))) (forall ((o2_8@@6 T@Ref) (f_26@@6 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@6 f_26@@6) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@16) o2_8@@6 f_26@@6) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@6 f_26@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@6 f_26@@6))
))) (forall ((o2_8@@7 T@Ref) (f_26@@7 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@7 f_26@@7) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@16) o2_8@@7 f_26@@7) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@7 f_26@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@7 f_26@@7))
))) (forall ((o2_8@@8 T@Ref) (f_26@@8 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) null (PredicateMaskField_20628 pm_f_8@@3))) o2_8@@8 f_26@@8) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@16) o2_8@@8 f_26@@8) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@8 f_26@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@3) o2_8@@8 f_26@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@7) (IsPredicateField_20628_20629 pm_f_8@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_30194) (ExhaleHeap@@4 T@PolymorphicMapType_30194) (Mask@@8 T@PolymorphicMapType_30215) (pm_f_8@@4 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_20431_20629 Mask@@8 null pm_f_8@@4) (IsPredicateField_20431_89304 pm_f_8@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@9 T@Ref) (f_26@@9 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@9 f_26@@9) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@17) o2_8@@9 f_26@@9) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@9 f_26@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@9 f_26@@9))
)) (forall ((o2_8@@10 T@Ref) (f_26@@10 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@10 f_26@@10) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@17) o2_8@@10 f_26@@10) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@10 f_26@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@10 f_26@@10))
))) (forall ((o2_8@@11 T@Ref) (f_26@@11 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@11 f_26@@11) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@17) o2_8@@11 f_26@@11) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@11 f_26@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@11 f_26@@11))
))) (forall ((o2_8@@12 T@Ref) (f_26@@12 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@12 f_26@@12) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@17) o2_8@@12 f_26@@12) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@12 f_26@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@12 f_26@@12))
))) (forall ((o2_8@@13 T@Ref) (f_26@@13 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@13 f_26@@13) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) o2_8@@13 f_26@@13) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@13 f_26@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@13 f_26@@13))
))) (forall ((o2_8@@14 T@Ref) (f_26@@14 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@14 f_26@@14) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@17) o2_8@@14 f_26@@14) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@14 f_26@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@14 f_26@@14))
))) (forall ((o2_8@@15 T@Ref) (f_26@@15 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@15 f_26@@15) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@17) o2_8@@15 f_26@@15) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@15 f_26@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@15 f_26@@15))
))) (forall ((o2_8@@16 T@Ref) (f_26@@16 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@16 f_26@@16) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@17) o2_8@@16 f_26@@16) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@16 f_26@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@16 f_26@@16))
))) (forall ((o2_8@@17 T@Ref) (f_26@@17 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@17 f_26@@17) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@17) o2_8@@17 f_26@@17) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@17 f_26@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@17 f_26@@17))
))) (forall ((o2_8@@18 T@Ref) (f_26@@18 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@17) null (PredicateMaskField_20431 pm_f_8@@4))) o2_8@@18 f_26@@18) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@17) o2_8@@18 f_26@@18) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@18 f_26@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@4) o2_8@@18 f_26@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@8) (IsPredicateField_20431_89304 pm_f_8@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_30194) (ExhaleHeap@@5 T@PolymorphicMapType_30194) (Mask@@9 T@PolymorphicMapType_30215) (pm_f_8@@5 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_20628_20629 Mask@@9 null pm_f_8@@5) (IsWandField_20628_92989 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@19 T@Ref) (f_26@@19 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@19 f_26@@19) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@18) o2_8@@19 f_26@@19) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@19 f_26@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@19 f_26@@19))
)) (forall ((o2_8@@20 T@Ref) (f_26@@20 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@20 f_26@@20) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@18) o2_8@@20 f_26@@20) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@20 f_26@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@20 f_26@@20))
))) (forall ((o2_8@@21 T@Ref) (f_26@@21 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@21 f_26@@21) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@18) o2_8@@21 f_26@@21) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@21 f_26@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@21 f_26@@21))
))) (forall ((o2_8@@22 T@Ref) (f_26@@22 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@22 f_26@@22) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@18) o2_8@@22 f_26@@22) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@22 f_26@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@22 f_26@@22))
))) (forall ((o2_8@@23 T@Ref) (f_26@@23 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@23 f_26@@23) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@18) o2_8@@23 f_26@@23) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@23 f_26@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@23 f_26@@23))
))) (forall ((o2_8@@24 T@Ref) (f_26@@24 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@24 f_26@@24) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@18) o2_8@@24 f_26@@24) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@24 f_26@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@24 f_26@@24))
))) (forall ((o2_8@@25 T@Ref) (f_26@@25 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@25 f_26@@25) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@18) o2_8@@25 f_26@@25) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@25 f_26@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@25 f_26@@25))
))) (forall ((o2_8@@26 T@Ref) (f_26@@26 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@26 f_26@@26) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@18) o2_8@@26 f_26@@26) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@26 f_26@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@26 f_26@@26))
))) (forall ((o2_8@@27 T@Ref) (f_26@@27 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@27 f_26@@27) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@18) o2_8@@27 f_26@@27) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@27 f_26@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@27 f_26@@27))
))) (forall ((o2_8@@28 T@Ref) (f_26@@28 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) null (WandMaskField_20628 pm_f_8@@5))) o2_8@@28 f_26@@28) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@18) o2_8@@28 f_26@@28) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@28 f_26@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@5) o2_8@@28 f_26@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@9) (IsWandField_20628_92989 pm_f_8@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_30194) (ExhaleHeap@@6 T@PolymorphicMapType_30194) (Mask@@10 T@PolymorphicMapType_30215) (pm_f_8@@6 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_20431_20629 Mask@@10 null pm_f_8@@6) (IsWandField_20431_92632 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_26@@29 T@Field_36597_3969) ) (!  (=> (select (|PolymorphicMapType_30743_20431_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@29 f_26@@29) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@19) o2_8@@29 f_26@@29) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@29 f_26@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@29 f_26@@29))
)) (forall ((o2_8@@30 T@Ref) (f_26@@30 T@Field_30254_53) ) (!  (=> (select (|PolymorphicMapType_30743_20431_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@30 f_26@@30) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@19) o2_8@@30 f_26@@30) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@30 f_26@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@30 f_26@@30))
))) (forall ((o2_8@@31 T@Ref) (f_26@@31 T@Field_30267_30268) ) (!  (=> (select (|PolymorphicMapType_30743_20431_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@31 f_26@@31) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@19) o2_8@@31 f_26@@31) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@31 f_26@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@31 f_26@@31))
))) (forall ((o2_8@@32 T@Ref) (f_26@@32 T@Field_20431_20629) ) (!  (=> (select (|PolymorphicMapType_30743_20431_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@32 f_26@@32) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@19) o2_8@@32 f_26@@32) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@32 f_26@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@32 f_26@@32))
))) (forall ((o2_8@@33 T@Ref) (f_26@@33 T@Field_20431_46353) ) (!  (=> (select (|PolymorphicMapType_30743_20431_90776#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@33 f_26@@33) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) o2_8@@33 f_26@@33) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@33 f_26@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@33 f_26@@33))
))) (forall ((o2_8@@34 T@Ref) (f_26@@34 T@Field_20628_3969) ) (!  (=> (select (|PolymorphicMapType_30743_44743_3969#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@34 f_26@@34) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@19) o2_8@@34 f_26@@34) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@34 f_26@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@34 f_26@@34))
))) (forall ((o2_8@@35 T@Ref) (f_26@@35 T@Field_20628_53) ) (!  (=> (select (|PolymorphicMapType_30743_44743_53#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@35 f_26@@35) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@19) o2_8@@35 f_26@@35) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@35 f_26@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@35 f_26@@35))
))) (forall ((o2_8@@36 T@Ref) (f_26@@36 T@Field_20628_30268) ) (!  (=> (select (|PolymorphicMapType_30743_44743_30268#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@36 f_26@@36) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@19) o2_8@@36 f_26@@36) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@36 f_26@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@36 f_26@@36))
))) (forall ((o2_8@@37 T@Ref) (f_26@@37 T@Field_44743_44744) ) (!  (=> (select (|PolymorphicMapType_30743_44743_44744#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@37 f_26@@37) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@19) o2_8@@37 f_26@@37) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@37 f_26@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@37 f_26@@37))
))) (forall ((o2_8@@38 T@Ref) (f_26@@38 T@Field_46348_46353) ) (!  (=> (select (|PolymorphicMapType_30743_44743_91824#PolymorphicMapType_30743| (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@19) null (WandMaskField_20431 pm_f_8@@6))) o2_8@@38 f_26@@38) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@19) o2_8@@38 f_26@@38) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@38 f_26@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@6) o2_8@@38 f_26@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@10) (IsWandField_20431_92632 pm_f_8@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@20 T@PolymorphicMapType_30194) (ExhaleHeap@@7 T@PolymorphicMapType_30194) (Mask@@11 T@PolymorphicMapType_30215) (o_18 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@11) (=> (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@20) o_18 $allocated) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@7) o_18 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@11) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@7) o_18 $allocated))
)))
(assert (forall ((p T@Field_44743_44744) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_44743_44743 p v_1 p w))
 :qid |stdinbpl.268:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_44743_44743 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_20431_20629) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_30254_30254 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.268:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30254_30254 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_48185) (s1 T@Seq_48185) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_20665|)) (not (= s1 |Seq#Empty_20665|))) (<= (|Seq#Length_20665| s0) n@@13)) (< n@@13 (|Seq#Length_20665| (|Seq#Append_48185| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_20665| s0)) (|Seq#Length_20665| s0)) n@@13) (= (|Seq#Index_20665| (|Seq#Append_48185| s0 s1) n@@13) (|Seq#Index_20665| s1 (|Seq#Sub| n@@13 (|Seq#Length_20665| s0))))))
 :qid |stdinbpl.337:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_20665| (|Seq#Append_48185| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3587) (s1@@0 T@Seq_3587) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3587|)) (not (= s1@@0 |Seq#Empty_3587|))) (<= (|Seq#Length_3587| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3587| (|Seq#Append_3587| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0)) (|Seq#Length_3587| s0@@0)) n@@14) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14) (|Seq#Index_3587| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0))))))
 :qid |stdinbpl.337:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_20431_3969 f_7)))
(assert  (not (IsWandField_20431_3969 f_7)))
(assert  (not (IsPredicateField_20431_3969 val)))
(assert  (not (IsWandField_20431_3969 val)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_30194) (ExhaleHeap@@8 T@PolymorphicMapType_30194) (Mask@@12 T@PolymorphicMapType_30215) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@12) (succHeap Heap@@21 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_30215) (o_2@@9 T@Ref) (f_4@@9 T@Field_46348_46353) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_20628_99921 f_4@@9))) (not (IsWandField_20628_99937 f_4@@9))) (<= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_30215) (o_2@@10 T@Ref) (f_4@@10 T@Field_20628_30268) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_20628_30268 f_4@@10))) (not (IsWandField_20628_30268 f_4@@10))) (<= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_30215) (o_2@@11 T@Ref) (f_4@@11 T@Field_20628_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_20628_53 f_4@@11))) (not (IsWandField_20628_53 f_4@@11))) (<= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_30215) (o_2@@12 T@Ref) (f_4@@12 T@Field_44743_44744) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_20628_20629 f_4@@12))) (not (IsWandField_20628_92989 f_4@@12))) (<= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_30215) (o_2@@13 T@Ref) (f_4@@13 T@Field_20628_3969) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_20628_3984 f_4@@13))) (not (IsWandField_20628_3984 f_4@@13))) (<= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_30215) (o_2@@14 T@Ref) (f_4@@14 T@Field_20431_46353) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20433_99090 f_4@@14))) (not (IsWandField_20433_99106 f_4@@14))) (<= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_30215) (o_2@@15 T@Ref) (f_4@@15 T@Field_30267_30268) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@19) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20433_30268 f_4@@15))) (not (IsWandField_20433_30268 f_4@@15))) (<= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@19) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@19) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_30215) (o_2@@16 T@Ref) (f_4@@16 T@Field_30254_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@20) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_20433_53 f_4@@16))) (not (IsWandField_20433_53 f_4@@16))) (<= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@20) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@20) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_30215) (o_2@@17 T@Ref) (f_4@@17 T@Field_20431_20629) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@21) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_20431_89304 f_4@@17))) (not (IsWandField_20431_92632 f_4@@17))) (<= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@21) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@21) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_30215) (o_2@@18 T@Ref) (f_4@@18 T@Field_36597_3969) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@22) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_20431_3969 f_4@@18))) (not (IsWandField_20431_3969 f_4@@18))) (<= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@22) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@22) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_30194) (Heap1Heap@@1 T@PolymorphicMapType_30194) (mat_1@@6 T@IMatrixDomainType) (row_1@@1 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1))) (< (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) (cols mat_1@@6))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1))) (< (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) (cols mat_1@@6))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1))) (< (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) (cols mat_1@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap2Heap@@1) (loc mat_1@@6 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) row_1@@1) val) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap1Heap@@1) (loc mat_1@@6 (|sk_rowsum#condqp3| (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)) row_1@@1) val)))) (= (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1)))
 :qid |stdinbpl.1034:15|
 :skolemid |93|
 :pattern ( (|rowsum#condqp3| Heap2Heap@@1 mat_1@@6 row_1@@1) (|rowsum#condqp3| Heap1Heap@@1 mat_1@@6 row_1@@1) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_30215) (o_2@@19 T@Ref) (f_4@@19 T@Field_46348_46353) ) (! (= (HasDirectPerm_20628_89059 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_89059 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_30215) (o_2@@20 T@Ref) (f_4@@20 T@Field_20628_30268) ) (! (= (HasDirectPerm_20628_30268 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_30268 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_30215) (o_2@@21 T@Ref) (f_4@@21 T@Field_20628_53) ) (! (= (HasDirectPerm_20628_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_30215) (o_2@@22 T@Ref) (f_4@@22 T@Field_44743_44744) ) (! (= (HasDirectPerm_20628_20629 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_20629 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_30215) (o_2@@23 T@Ref) (f_4@@23 T@Field_20628_3969) ) (! (= (HasDirectPerm_20628_3969 Mask@@27 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| Mask@@27) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20628_3969 Mask@@27 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_30215) (o_2@@24 T@Ref) (f_4@@24 T@Field_20431_46353) ) (! (= (HasDirectPerm_20431_87918 Mask@@28 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| Mask@@28) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_87918 Mask@@28 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_30215) (o_2@@25 T@Ref) (f_4@@25 T@Field_30267_30268) ) (! (= (HasDirectPerm_20431_30268 Mask@@29 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| Mask@@29) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_30268 Mask@@29 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_30215) (o_2@@26 T@Ref) (f_4@@26 T@Field_30254_53) ) (! (= (HasDirectPerm_20431_53 Mask@@30 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| Mask@@30) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_53 Mask@@30 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_30215) (o_2@@27 T@Ref) (f_4@@27 T@Field_20431_20629) ) (! (= (HasDirectPerm_20431_20629 Mask@@31 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| Mask@@31) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_20629 Mask@@31 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_30215) (o_2@@28 T@Ref) (f_4@@28 T@Field_36597_3969) ) (! (= (HasDirectPerm_20431_3969 Mask@@32 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| Mask@@32) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20431_3969 Mask@@32 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.256:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.629:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_30194) (ExhaleHeap@@9 T@PolymorphicMapType_30194) (Mask@@33 T@PolymorphicMapType_30215) (o_18@@0 T@Ref) (f_26@@39 T@Field_46348_46353) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@33) (=> (HasDirectPerm_20628_89059 Mask@@33 o_18@@0 f_26@@39) (= (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@22) o_18@@0 f_26@@39) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@9) o_18@@0 f_26@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@33) (select (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| ExhaleHeap@@9) o_18@@0 f_26@@39))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_30194) (ExhaleHeap@@10 T@PolymorphicMapType_30194) (Mask@@34 T@PolymorphicMapType_30215) (o_18@@1 T@Ref) (f_26@@40 T@Field_20628_30268) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@34) (=> (HasDirectPerm_20628_30268 Mask@@34 o_18@@1 f_26@@40) (= (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@23) o_18@@1 f_26@@40) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@10) o_18@@1 f_26@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@34) (select (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| ExhaleHeap@@10) o_18@@1 f_26@@40))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_30194) (ExhaleHeap@@11 T@PolymorphicMapType_30194) (Mask@@35 T@PolymorphicMapType_30215) (o_18@@2 T@Ref) (f_26@@41 T@Field_20628_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@35) (=> (HasDirectPerm_20628_53 Mask@@35 o_18@@2 f_26@@41) (= (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@24) o_18@@2 f_26@@41) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@11) o_18@@2 f_26@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@35) (select (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| ExhaleHeap@@11) o_18@@2 f_26@@41))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_30194) (ExhaleHeap@@12 T@PolymorphicMapType_30194) (Mask@@36 T@PolymorphicMapType_30215) (o_18@@3 T@Ref) (f_26@@42 T@Field_44743_44744) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@36) (=> (HasDirectPerm_20628_20629 Mask@@36 o_18@@3 f_26@@42) (= (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@25) o_18@@3 f_26@@42) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@12) o_18@@3 f_26@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@36) (select (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| ExhaleHeap@@12) o_18@@3 f_26@@42))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_30194) (ExhaleHeap@@13 T@PolymorphicMapType_30194) (Mask@@37 T@PolymorphicMapType_30215) (o_18@@4 T@Ref) (f_26@@43 T@Field_20628_3969) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@37) (=> (HasDirectPerm_20628_3969 Mask@@37 o_18@@4 f_26@@43) (= (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@26) o_18@@4 f_26@@43) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@13) o_18@@4 f_26@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@37) (select (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| ExhaleHeap@@13) o_18@@4 f_26@@43))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_30194) (ExhaleHeap@@14 T@PolymorphicMapType_30194) (Mask@@38 T@PolymorphicMapType_30215) (o_18@@5 T@Ref) (f_26@@44 T@Field_20431_46353) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@38) (=> (HasDirectPerm_20431_87918 Mask@@38 o_18@@5 f_26@@44) (= (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@27) o_18@@5 f_26@@44) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@14) o_18@@5 f_26@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@38) (select (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| ExhaleHeap@@14) o_18@@5 f_26@@44))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_30194) (ExhaleHeap@@15 T@PolymorphicMapType_30194) (Mask@@39 T@PolymorphicMapType_30215) (o_18@@6 T@Ref) (f_26@@45 T@Field_30267_30268) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@39) (=> (HasDirectPerm_20431_30268 Mask@@39 o_18@@6 f_26@@45) (= (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@28) o_18@@6 f_26@@45) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@15) o_18@@6 f_26@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@39) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| ExhaleHeap@@15) o_18@@6 f_26@@45))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_30194) (ExhaleHeap@@16 T@PolymorphicMapType_30194) (Mask@@40 T@PolymorphicMapType_30215) (o_18@@7 T@Ref) (f_26@@46 T@Field_30254_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@40) (=> (HasDirectPerm_20431_53 Mask@@40 o_18@@7 f_26@@46) (= (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@29) o_18@@7 f_26@@46) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@16) o_18@@7 f_26@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@40) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| ExhaleHeap@@16) o_18@@7 f_26@@46))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_30194) (ExhaleHeap@@17 T@PolymorphicMapType_30194) (Mask@@41 T@PolymorphicMapType_30215) (o_18@@8 T@Ref) (f_26@@47 T@Field_20431_20629) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@17 Mask@@41) (=> (HasDirectPerm_20431_20629 Mask@@41 o_18@@8 f_26@@47) (= (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@30) o_18@@8 f_26@@47) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@17) o_18@@8 f_26@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@17 Mask@@41) (select (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| ExhaleHeap@@17) o_18@@8 f_26@@47))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_30194) (ExhaleHeap@@18 T@PolymorphicMapType_30194) (Mask@@42 T@PolymorphicMapType_30215) (o_18@@9 T@Ref) (f_26@@48 T@Field_36597_3969) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@18 Mask@@42) (=> (HasDirectPerm_20431_3969 Mask@@42 o_18@@9 f_26@@48) (= (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@31) o_18@@9 f_26@@48) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@18) o_18@@9 f_26@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@18 Mask@@42) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| ExhaleHeap@@18) o_18@@9 f_26@@48))
)))
(assert (forall ((s0@@1 T@Seq_48185) (s1@@1 T@Seq_48185) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_20665|)) (not (= s1@@1 |Seq#Empty_20665|))) (= (|Seq#Length_20665| (|Seq#Append_48185| s0@@1 s1@@1)) (+ (|Seq#Length_20665| s0@@1) (|Seq#Length_20665| s1@@1))))
 :qid |stdinbpl.306:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_20665| (|Seq#Append_48185| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3587) (s1@@2 T@Seq_3587) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3587|)) (not (= s1@@2 |Seq#Empty_3587|))) (= (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)) (+ (|Seq#Length_3587| s0@@2) (|Seq#Length_3587| s1@@2))))
 :qid |stdinbpl.306:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_46348_46353) ) (! (= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_20628_30268) ) (! (= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_20628_53) ) (! (= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_44743_44744) ) (! (= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_20628_3969) ) (! (= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_20431_46353) ) (! (= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_30267_30268) ) (! (= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_30254_53) ) (! (= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_20431_20629) ) (! (= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_36597_3969) ) (! (= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_48185) (t@@1 T@Seq_48185) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_20665| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_20665| s@@15)) (|Seq#Length_20665| s@@15)) n@@15) (= (|Seq#Drop_20665| (|Seq#Append_48185| s@@15 t@@1) n@@15) (|Seq#Drop_20665| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_20665| s@@15))))))
 :qid |stdinbpl.463:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_20665| (|Seq#Append_48185| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3587) (t@@2 T@Seq_3587) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3587| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16)) (|Seq#Length_3587| s@@16)) n@@16) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16) (|Seq#Drop_3587| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16))))))
 :qid |stdinbpl.463:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_30194) (i@@8 Int) (j@@8 Int) ) (!  (and (= (rcvr Heap@@32 i@@8 j@@8) (|rcvr'| Heap@@32 i@@8 j@@8)) (dummyFunction_20446 (|rcvr#triggerStateless| i@@8 j@@8)))
 :qid |stdinbpl.729:15|
 :skolemid |63|
 :pattern ( (rcvr Heap@@32 i@@8 j@@8))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_30194) (mat_1@@7 T@IMatrixDomainType) (col_1@@2 Int) ) (!  (and (= (colsum Heap@@33 mat_1@@7 col_1@@2) (|colsum'| Heap@@33 mat_1@@7 col_1@@2)) (dummyFunction_4884 (|colsum#triggerStateless| mat_1@@7 col_1@@2)))
 :qid |stdinbpl.916:15|
 :skolemid |80|
 :pattern ( (colsum Heap@@33 mat_1@@7 col_1@@2))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_30194) (mat_1@@8 T@IMatrixDomainType) (row_1@@2 Int) ) (!  (and (= (rowsum Heap@@34 mat_1@@8 row_1@@2) (|rowsum'| Heap@@34 mat_1@@8 row_1@@2)) (dummyFunction_4884 (|rowsum#triggerStateless| mat_1@@8 row_1@@2)))
 :qid |stdinbpl.1013:15|
 :skolemid |90|
 :pattern ( (rowsum Heap@@34 mat_1@@8 row_1@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_30194) (x@@9 T@Ref) (y@@7 T@Ref) ) (!  (and (= (getP Heap@@35 x@@9 y@@7) (|getP'| Heap@@35 x@@9 y@@7)) (dummyFunction_4884 (|getP#triggerStateless| x@@9 y@@7)))
 :qid |stdinbpl.1110:15|
 :skolemid |100|
 :pattern ( (getP Heap@@35 x@@9 y@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_30194) (Mask@@43 T@PolymorphicMapType_30215) (mat_1@@9 T@IMatrixDomainType) (col_1@@3 Int) ) (!  (=> (state Heap@@36 Mask@@43) (= (|colsum'| Heap@@36 mat_1@@9 col_1@@3) (|colsum#frame| (FrameFragment_4557 (|colsum#condqp2| Heap@@36 mat_1@@9 col_1@@3)) mat_1@@9 col_1@@3)))
 :qid |stdinbpl.927:15|
 :skolemid |82|
 :pattern ( (state Heap@@36 Mask@@43) (|colsum'| Heap@@36 mat_1@@9 col_1@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_30194) (Mask@@44 T@PolymorphicMapType_30215) (mat_1@@10 T@IMatrixDomainType) (row_1@@3 Int) ) (!  (=> (state Heap@@37 Mask@@44) (= (|rowsum'| Heap@@37 mat_1@@10 row_1@@3) (|rowsum#frame| (FrameFragment_4557 (|rowsum#condqp3| Heap@@37 mat_1@@10 row_1@@3)) mat_1@@10 row_1@@3)))
 :qid |stdinbpl.1024:15|
 :skolemid |92|
 :pattern ( (state Heap@@37 Mask@@44) (|rowsum'| Heap@@37 mat_1@@10 row_1@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_30215) (SummandMask1 T@PolymorphicMapType_30215) (SummandMask2 T@PolymorphicMapType_30215) (o_2@@39 T@Ref) (f_4@@39 T@Field_46348_46353) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30215_20628_97629#PolymorphicMapType_30215| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_30215) (SummandMask1@@0 T@PolymorphicMapType_30215) (SummandMask2@@0 T@PolymorphicMapType_30215) (o_2@@40 T@Ref) (f_4@@40 T@Field_20628_30268) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30215_20628_30268#PolymorphicMapType_30215| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_30215) (SummandMask1@@1 T@PolymorphicMapType_30215) (SummandMask2@@1 T@PolymorphicMapType_30215) (o_2@@41 T@Ref) (f_4@@41 T@Field_20628_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30215_20628_53#PolymorphicMapType_30215| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_30215) (SummandMask1@@2 T@PolymorphicMapType_30215) (SummandMask2@@2 T@PolymorphicMapType_30215) (o_2@@42 T@Ref) (f_4@@42 T@Field_44743_44744) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30215_20628_20629#PolymorphicMapType_30215| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_30215) (SummandMask1@@3 T@PolymorphicMapType_30215) (SummandMask2@@3 T@PolymorphicMapType_30215) (o_2@@43 T@Ref) (f_4@@43 T@Field_20628_3969) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30215_20628_3984#PolymorphicMapType_30215| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_30215) (SummandMask1@@4 T@PolymorphicMapType_30215) (SummandMask2@@4 T@PolymorphicMapType_30215) (o_2@@44 T@Ref) (f_4@@44 T@Field_20431_46353) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30215_20433_97218#PolymorphicMapType_30215| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_30215) (SummandMask1@@5 T@PolymorphicMapType_30215) (SummandMask2@@5 T@PolymorphicMapType_30215) (o_2@@45 T@Ref) (f_4@@45 T@Field_30267_30268) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30215_20433_30268#PolymorphicMapType_30215| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_30215) (SummandMask1@@6 T@PolymorphicMapType_30215) (SummandMask2@@6 T@PolymorphicMapType_30215) (o_2@@46 T@Ref) (f_4@@46 T@Field_30254_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30215_20433_53#PolymorphicMapType_30215| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_30215) (SummandMask1@@7 T@PolymorphicMapType_30215) (SummandMask2@@7 T@PolymorphicMapType_30215) (o_2@@47 T@Ref) (f_4@@47 T@Field_20431_20629) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30215_20433_20629#PolymorphicMapType_30215| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_30215) (SummandMask1@@8 T@PolymorphicMapType_30215) (SummandMask2@@8 T@PolymorphicMapType_30215) (o_2@@48 T@Ref) (f_4@@48 T@Field_36597_3969) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30215_20433_3984#PolymorphicMapType_30215| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.628:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_48185) (b T@Seq_48185) ) (!  (=> (|Seq#Equal_48185| a b) (= a b))
 :qid |stdinbpl.601:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_48185| a b))
)))
(assert (forall ((a@@0 T@Seq_3587) (b@@0 T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.601:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3587| a@@0 b@@0))
)))
(assert (forall ((a_2 T@IArrayDomainType_70806) ) (! (>= (len_20839 a_2) 0)
 :qid |stdinbpl.663:19|
 :skolemid |59|
 :pattern ( (len_20839 a_2))
)))
(assert (forall ((mat_1@@11 T@IMatrixDomainType) ) (! (>= (cols mat_1@@11) 0)
 :qid |stdinbpl.700:15|
 :skolemid |61|
 :pattern ( (cols mat_1@@11))
)))
(assert (forall ((mat_1@@12 T@IMatrixDomainType) ) (! (>= (rows mat_1@@12) 0)
 :qid |stdinbpl.706:15|
 :skolemid |62|
 :pattern ( (rows mat_1@@12))
)))
(assert (forall ((s@@17 T@Seq_48185) (i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_20665| s@@17))) (|Seq#ContainsTrigger_20665| s@@17 (|Seq#Index_20665| s@@17 i@@9)))
 :qid |stdinbpl.494:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_20665| s@@17 i@@9))
)))
(assert (forall ((s@@18 T@Seq_3587) (i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3587| s@@18))) (|Seq#ContainsTrigger_3587| s@@18 (|Seq#Index_3587| s@@18 i@@10)))
 :qid |stdinbpl.494:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3587| s@@18 i@@10))
)))
(assert (forall ((s0@@3 T@Seq_48185) (s1@@3 T@Seq_48185) ) (!  (and (=> (= s0@@3 |Seq#Empty_20665|) (= (|Seq#Append_48185| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_20665|) (= (|Seq#Append_48185| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.312:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_48185| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3587) (s1@@4 T@Seq_3587) ) (!  (and (=> (= s0@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.312:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3587| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_20665| (|Seq#Singleton_20665| t@@3) 0) t@@3)
 :qid |stdinbpl.316:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_20665| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3587| (|Seq#Singleton_3587| t@@4) 0) t@@4)
 :qid |stdinbpl.316:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3587| t@@4))
)))
(assert (forall ((s@@19 T@Seq_48185) ) (! (<= 0 (|Seq#Length_20665| s@@19))
 :qid |stdinbpl.295:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_20665| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3587) ) (! (<= 0 (|Seq#Length_3587| s@@20))
 :qid |stdinbpl.295:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3587| s@@20))
)))
(assert (forall ((x@@10 T@Ref) (y@@8 T@Ref) ) (! (= (getPredWandId_20628_20629 (P x@@10 y@@8)) 0)
 :qid |stdinbpl.1213:15|
 :skolemid |106|
 :pattern ( (P x@@10 y@@8))
)))
(assert (forall ((s0@@5 T@Seq_48185) (s1@@5 T@Seq_48185) ) (!  (=> (|Seq#Equal_48185| s0@@5 s1@@5) (and (= (|Seq#Length_20665| s0@@5) (|Seq#Length_20665| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_20665| s0@@5))) (= (|Seq#Index_20665| s0@@5 j@@9) (|Seq#Index_20665| s1@@5 j@@9)))
 :qid |stdinbpl.591:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_20665| s0@@5 j@@9))
 :pattern ( (|Seq#Index_20665| s1@@5 j@@9))
))))
 :qid |stdinbpl.588:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_48185| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3587) (s1@@6 T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| s0@@6 s1@@6) (and (= (|Seq#Length_3587| s0@@6) (|Seq#Length_3587| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3587| s0@@6))) (= (|Seq#Index_3587| s0@@6 j@@10) (|Seq#Index_3587| s1@@6 j@@10)))
 :qid |stdinbpl.591:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3587| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3587| s1@@6 j@@10))
))))
 :qid |stdinbpl.588:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3587| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_20665| (|Seq#Singleton_20665| t@@5)) 1)
 :qid |stdinbpl.303:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_20665| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3587| (|Seq#Singleton_3587| t@@6)) 1)
 :qid |stdinbpl.303:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3587| t@@6))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_30194) (Mask@@45 T@PolymorphicMapType_30215) (i@@11 Int) ) (!  (=> (state Heap@@38 Mask@@45) (= (|prm'| Heap@@38 i@@11) (|prm#frame| EmptyFrame i@@11)))
 :qid |stdinbpl.781:15|
 :skolemid |68|
 :pattern ( (state Heap@@38 Mask@@45) (|prm'| Heap@@38 i@@11))
)))
(assert (forall ((x@@11 T@Ref) (y@@9 T@Ref) ) (! (= (PredicateMaskField_20628 (P x@@11 y@@9)) (|P#sm| x@@11 y@@9))
 :qid |stdinbpl.1205:15|
 :skolemid |104|
 :pattern ( (PredicateMaskField_20628 (P x@@11 y@@9)))
)))
(assert (forall ((s@@21 T@Seq_48185) (t@@7 T@Seq_48185) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_20665| s@@21))) (= (|Seq#Take_20665| (|Seq#Append_48185| s@@21 t@@7) n@@17) (|Seq#Take_20665| s@@21 n@@17)))
 :qid |stdinbpl.445:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_20665| (|Seq#Append_48185| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3587) (t@@8 T@Seq_3587) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3587| s@@22))) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18) (|Seq#Take_3587| s@@22 n@@18)))
 :qid |stdinbpl.445:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_48185) (i@@12 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_20665| s@@23))) (= (|Seq#Length_20665| (|Seq#Update_20665| s@@23 i@@12 v@@2)) (|Seq#Length_20665| s@@23)))
 :qid |stdinbpl.344:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_20665| (|Seq#Update_20665| s@@23 i@@12 v@@2)))
 :pattern ( (|Seq#Length_20665| s@@23) (|Seq#Update_20665| s@@23 i@@12 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3587) (i@@13 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length_3587| s@@24))) (= (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@13 v@@3)) (|Seq#Length_3587| s@@24)))
 :qid |stdinbpl.344:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@13 v@@3)))
 :pattern ( (|Seq#Length_3587| s@@24) (|Seq#Update_3587| s@@24 i@@13 v@@3))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType_70806) (i@@14 Int) ) (!  (and (= (first_1_20839 (aloc_20839 a_2@@0 i@@14)) a_2@@0) (= (second_1_20839 (aloc_20839 a_2@@0 i@@14)) i@@14))
 :qid |stdinbpl.657:19|
 :skolemid |58|
 :pattern ( (aloc_20839 a_2@@0 i@@14))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_30194) (o_20 T@Ref) (f_30 T@Field_46348_46353) (v@@4 T@PolymorphicMapType_30743) ) (! (succHeap Heap@@39 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@39) (store (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@39) o_20 f_30 v@@4) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@39) (store (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@39) o_20 f_30 v@@4) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@39) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_30194) (o_20@@0 T@Ref) (f_30@@0 T@Field_44743_44744) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@40) (store (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@40) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@40) (store (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@40) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@40) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_30194) (o_20@@1 T@Ref) (f_30@@1 T@Field_20628_3969) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@41) (store (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@41) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@41) (store (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@41) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@41) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_30194) (o_20@@2 T@Ref) (f_30@@2 T@Field_20628_30268) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@42) (store (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@42) o_20@@2 f_30@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@42) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@42) (store (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@42) o_20@@2 f_30@@2 v@@7)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_30194) (o_20@@3 T@Ref) (f_30@@3 T@Field_20628_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@43) (store (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@43) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@43) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@43) (store (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@43) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_30194) (o_20@@4 T@Ref) (f_30@@4 T@Field_20431_46353) (v@@9 T@PolymorphicMapType_30743) ) (! (succHeap Heap@@44 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@44) (store (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@44) o_20@@4 f_30@@4 v@@9) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@44) (store (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@44) o_20@@4 f_30@@4 v@@9) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@44) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_30194) (o_20@@5 T@Ref) (f_30@@5 T@Field_20431_20629) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@45) (store (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@45) o_20@@5 f_30@@5 v@@10) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@45) (store (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@45) o_20@@5 f_30@@5 v@@10) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@45) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_30194) (o_20@@6 T@Ref) (f_30@@6 T@Field_36597_3969) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@46) (store (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@46) o_20@@6 f_30@@6 v@@11) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@46) (store (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@46) o_20@@6 f_30@@6 v@@11) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@46) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_30194) (o_20@@7 T@Ref) (f_30@@7 T@Field_30267_30268) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@47) (store (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@47) o_20@@7 f_30@@7 v@@12) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@47) (store (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@47) o_20@@7 f_30@@7 v@@12) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@47) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_30194) (o_20@@8 T@Ref) (f_30@@8 T@Field_30254_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_30194 (store (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@48) o_20@@8 f_30@@8 v@@13) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30194 (store (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@48) o_20@@8 f_30@@8 v@@13) (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20633_46445#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_20629#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20431_87960#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_3969#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_53#PolymorphicMapType_30194| Heap@@48) (|PolymorphicMapType_30194_20628_30268#PolymorphicMapType_30194| Heap@@48)))
)))
(assert (forall ((s@@25 T@Seq_48185) (t@@9 T@Seq_48185) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_20665| s@@25))) (= (|Seq#Drop_20665| (|Seq#Append_48185| s@@25 t@@9) n@@19) (|Seq#Append_48185| (|Seq#Drop_20665| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.459:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_20665| (|Seq#Append_48185| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3587) (t@@10 T@Seq_3587) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3587| s@@26))) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20) (|Seq#Append_3587| (|Seq#Drop_3587| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.459:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_48185) (n@@21 Int) (i@@15 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@15)) (< i@@15 (|Seq#Length_20665| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@15 n@@21) n@@21) i@@15) (= (|Seq#Index_20665| (|Seq#Drop_20665| s@@27 n@@21) (|Seq#Sub| i@@15 n@@21)) (|Seq#Index_20665| s@@27 i@@15))))
 :qid |stdinbpl.395:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_20665| s@@27 n@@21) (|Seq#Index_20665| s@@27 i@@15))
)))
(assert (forall ((s@@28 T@Seq_3587) (n@@22 Int) (i@@16 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@16)) (< i@@16 (|Seq#Length_3587| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@16 n@@22) n@@22) i@@16) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Sub| i@@16 n@@22)) (|Seq#Index_3587| s@@28 i@@16))))
 :qid |stdinbpl.395:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Index_3587| s@@28 i@@16))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_30194) (Mask@@46 T@PolymorphicMapType_30215) (mat_1@@13 T@IMatrixDomainType) ) (!  (=> (state Heap@@49 Mask@@46) (= (|det'| Heap@@49 mat_1@@13) (|det#frame| (FrameFragment_4557 (|det#condqp1| Heap@@49 mat_1@@13)) mat_1@@13)))
 :qid |stdinbpl.832:15|
 :skolemid |72|
 :pattern ( (state Heap@@49 Mask@@46) (|det'| Heap@@49 mat_1@@13))
)))
(assert (forall ((s0@@7 T@Seq_48185) (s1@@7 T@Seq_48185) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_20665|)) (not (= s1@@7 |Seq#Empty_20665|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_20665| s0@@7))) (= (|Seq#Index_20665| (|Seq#Append_48185| s0@@7 s1@@7) n@@23) (|Seq#Index_20665| s0@@7 n@@23)))
 :qid |stdinbpl.335:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_20665| (|Seq#Append_48185| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_20665| s0@@7 n@@23) (|Seq#Append_48185| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3587) (s1@@8 T@Seq_3587) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3587|)) (not (= s1@@8 |Seq#Empty_3587|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3587| s0@@8))) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24) (|Seq#Index_3587| s0@@8 n@@24)))
 :qid |stdinbpl.335:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3587| s0@@8 n@@24) (|Seq#Append_3587| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_48185) (s1@@9 T@Seq_48185) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_20665|)) (not (= s1@@9 |Seq#Empty_20665|))) (<= 0 m)) (< m (|Seq#Length_20665| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_20665| s0@@9)) (|Seq#Length_20665| s0@@9)) m) (= (|Seq#Index_20665| (|Seq#Append_48185| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_20665| s0@@9))) (|Seq#Index_20665| s1@@9 m))))
 :qid |stdinbpl.340:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_20665| s1@@9 m) (|Seq#Append_48185| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3587) (s1@@10 T@Seq_3587) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3587|)) (not (= s1@@10 |Seq#Empty_3587|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3587| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10)) (|Seq#Length_3587| s0@@10)) m@@0) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10))) (|Seq#Index_3587| s1@@10 m@@0))))
 :qid |stdinbpl.340:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3587| s1@@10 m@@0) (|Seq#Append_3587| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@9 T@Ref) (f_29 T@Field_30267_30268) (Heap@@50 T@PolymorphicMapType_30194) ) (!  (=> (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@50) o_20@@9 $allocated) (select (|PolymorphicMapType_30194_20153_53#PolymorphicMapType_30194| Heap@@50) (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@50) o_20@@9 f_29) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_30194_20156_20157#PolymorphicMapType_30194| Heap@@50) o_20@@9 f_29))
)))
(assert (forall ((s@@29 T@Seq_48185) (x@@12 T@Ref) (i@@17 Int) ) (!  (=> (and (and (<= 0 i@@17) (< i@@17 (|Seq#Length_20665| s@@29))) (= (|Seq#Index_20665| s@@29 i@@17) x@@12)) (|Seq#Contains_48185| s@@29 x@@12))
 :qid |stdinbpl.492:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_48185| s@@29 x@@12) (|Seq#Index_20665| s@@29 i@@17))
)))
(assert (forall ((s@@30 T@Seq_3587) (x@@13 Int) (i@@18 Int) ) (!  (=> (and (and (<= 0 i@@18) (< i@@18 (|Seq#Length_3587| s@@30))) (= (|Seq#Index_3587| s@@30 i@@18) x@@13)) (|Seq#Contains_3587| s@@30 x@@13))
 :qid |stdinbpl.492:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3587| s@@30 x@@13) (|Seq#Index_3587| s@@30 i@@18))
)))
(assert (forall ((s0@@11 T@Seq_48185) (s1@@11 T@Seq_48185) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_48185| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48185| s0@@11 s1@@11))) (not (= (|Seq#Length_20665| s0@@11) (|Seq#Length_20665| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48185| s0@@11 s1@@11))) (= (|Seq#Length_20665| s0@@11) (|Seq#Length_20665| s1@@11))) (= (|Seq#SkolemDiff_48185| s0@@11 s1@@11) (|Seq#SkolemDiff_48185| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_48185| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_48185| s0@@11 s1@@11) (|Seq#Length_20665| s0@@11))) (not (= (|Seq#Index_20665| s0@@11 (|Seq#SkolemDiff_48185| s0@@11 s1@@11)) (|Seq#Index_20665| s1@@11 (|Seq#SkolemDiff_48185| s0@@11 s1@@11))))))
 :qid |stdinbpl.596:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_48185| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3587) (s1@@12 T@Seq_3587) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3587| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (not (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))) (= (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#SkolemDiff_3587| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#Length_3587| s0@@12))) (not (= (|Seq#Index_3587| s0@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12)) (|Seq#Index_3587| s1@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))))))
 :qid |stdinbpl.596:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3587| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_44743_44744) (v_1@@1 T@FrameType) (q T@Field_44743_44744) (w@@1 T@FrameType) (r T@Field_44743_44744) (u T@FrameType) ) (!  (=> (and (InsidePredicate_44743_44743 p@@2 v_1@@1 q w@@1) (InsidePredicate_44743_44743 q w@@1 r u)) (InsidePredicate_44743_44743 p@@2 v_1@@1 r u))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_44743 p@@2 v_1@@1 q w@@1) (InsidePredicate_44743_44743 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_44743_44744) (v_1@@2 T@FrameType) (q@@0 T@Field_44743_44744) (w@@2 T@FrameType) (r@@0 T@Field_20431_20629) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_44743_44743 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_44743_30254 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_44743_30254 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_44743 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_44743_30254 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_44743_44744) (v_1@@3 T@FrameType) (q@@1 T@Field_20431_20629) (w@@3 T@FrameType) (r@@1 T@Field_44743_44744) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_44743_30254 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_30254_44743 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_44743_44743 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_30254 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_30254_44743 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_44743_44744) (v_1@@4 T@FrameType) (q@@2 T@Field_20431_20629) (w@@4 T@FrameType) (r@@2 T@Field_20431_20629) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_44743_30254 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_30254_30254 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_44743_30254 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44743_30254 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_30254_30254 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_20431_20629) (v_1@@5 T@FrameType) (q@@3 T@Field_44743_44744) (w@@5 T@FrameType) (r@@3 T@Field_44743_44744) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_44743 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_44743_44743 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_30254_44743 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_44743 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_44743_44743 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_20431_20629) (v_1@@6 T@FrameType) (q@@4 T@Field_44743_44744) (w@@6 T@FrameType) (r@@4 T@Field_20431_20629) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_44743 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_44743_30254 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_30254_30254 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_44743 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_44743_30254 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_20431_20629) (v_1@@7 T@FrameType) (q@@5 T@Field_20431_20629) (w@@7 T@FrameType) (r@@5 T@Field_44743_44744) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_30254 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_30254_44743 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_30254_44743 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_30254 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_30254_44743 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_20431_20629) (v_1@@8 T@FrameType) (q@@6 T@Field_20431_20629) (w@@8 T@FrameType) (r@@6 T@Field_20431_20629) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_30254_30254 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_30254_30254 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_30254_30254 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.263:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30254_30254 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_30254_30254 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_48185) ) (!  (=> (= (|Seq#Length_20665| s@@31) 0) (= s@@31 |Seq#Empty_20665|))
 :qid |stdinbpl.299:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_20665| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3587) ) (!  (=> (= (|Seq#Length_3587| s@@32) 0) (= s@@32 |Seq#Empty_3587|))
 :qid |stdinbpl.299:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3587| s@@32))
)))
(assert (forall ((s@@33 T@Seq_48185) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_20665| s@@33 n@@25) |Seq#Empty_20665|))
 :qid |stdinbpl.475:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_20665| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3587) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3587| s@@34 n@@26) |Seq#Empty_3587|))
 :qid |stdinbpl.475:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3587| s@@34 n@@26))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_30194) (Mask@@47 T@PolymorphicMapType_30215) (x@@14 T@Ref) (y@@10 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@47) (< AssumeFunctionsAbove 1)) (= (getP Heap@@51 x@@14 y@@10) (+ (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@51) x@@14 f_7) (select (|PolymorphicMapType_30194_20433_3984#PolymorphicMapType_30194| Heap@@51) y@@10 f_7))))
 :qid |stdinbpl.1120:15|
 :skolemid |102|
 :pattern ( (state Heap@@51 Mask@@47) (getP Heap@@51 x@@14 y@@10))
 :pattern ( (state Heap@@51 Mask@@47) (|getP#triggerStateless| x@@14 y@@10) (|P#trigger_20628| Heap@@51 (P x@@14 y@@10)))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

