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
(declare-sort T@Field_10763_53 0)
(declare-sort T@Field_10776_10777 0)
(declare-sort T@Field_16318_1718 0)
(declare-sort T@Field_5147_33543 0)
(declare-sort T@Field_5147_33410 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10724 0)) (((PolymorphicMapType_10724 (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| (Array T@Ref T@Field_16318_1718 Real)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| (Array T@Ref T@Field_10763_53 Real)) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| (Array T@Ref T@Field_10776_10777 Real)) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| (Array T@Ref T@Field_5147_33410 Real)) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| (Array T@Ref T@Field_5147_33543 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11268 0)) (((PolymorphicMapType_11268 (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (Array T@Ref T@Field_10763_53 Bool)) (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (Array T@Ref T@Field_10776_10777 Bool)) (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (Array T@Ref T@Field_16318_1718 Bool)) (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (Array T@Ref T@Field_5147_33410 Bool)) (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (Array T@Ref T@Field_5147_33543 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10703 0)) (((PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| (Array T@Ref T@Field_10763_53 Bool)) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| (Array T@Ref T@Field_10776_10777 T@Ref)) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| (Array T@Ref T@Field_16318_1718 Int)) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| (Array T@Ref T@Field_5147_33543 T@PolymorphicMapType_11268)) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| (Array T@Ref T@Field_5147_33410 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10763_53)
(declare-fun f_7 () T@Field_16318_1718)
(declare-fun succHeap (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703) Bool)
(declare-fun state (T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10724) Bool)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(declare-fun IsPredicateField_5147_33501 (T@Field_5147_33410) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5147 (T@Field_5147_33410) T@Field_5147_33543)
(declare-fun HasDirectPerm_5147_33474 (T@PolymorphicMapType_10724 T@Ref T@Field_5147_33410) Bool)
(declare-fun IsWandField_5147_35248 (T@Field_5147_33410) Bool)
(declare-fun WandMaskField_5147 (T@Field_5147_33410) T@Field_5147_33543)
(declare-fun ZeroPMask () T@PolymorphicMapType_11268)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_10703)
(declare-fun ZeroMask () T@PolymorphicMapType_10724)
(declare-fun InsidePredicate_10763_10763 (T@Field_5147_33410 T@FrameType T@Field_5147_33410 T@FrameType) Bool)
(declare-fun IsPredicateField_5147_1718 (T@Field_16318_1718) Bool)
(declare-fun IsWandField_5147_1718 (T@Field_16318_1718) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5147_45970 (T@Field_5147_33543) Bool)
(declare-fun IsWandField_5147_45986 (T@Field_5147_33543) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5147_10777 (T@Field_10776_10777) Bool)
(declare-fun IsWandField_5147_10777 (T@Field_10776_10777) Bool)
(declare-fun IsPredicateField_5147_53 (T@Field_10763_53) Bool)
(declare-fun IsWandField_5147_53 (T@Field_10763_53) Bool)
(declare-fun HasDirectPerm_5147_38166 (T@PolymorphicMapType_10724 T@Ref T@Field_5147_33543) Bool)
(declare-fun HasDirectPerm_5147_10777 (T@PolymorphicMapType_10724 T@Ref T@Field_10776_10777) Bool)
(declare-fun HasDirectPerm_5147_53 (T@PolymorphicMapType_10724 T@Ref T@Field_10763_53) Bool)
(declare-fun HasDirectPerm_5147_1718 (T@PolymorphicMapType_10724 T@Ref T@Field_16318_1718) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10724 T@PolymorphicMapType_10724 T@PolymorphicMapType_10724) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10703) (Heap1 T@PolymorphicMapType_10703) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10703) (Mask T@PolymorphicMapType_10724) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10703) (Heap1@@0 T@PolymorphicMapType_10703) (Heap2 T@PolymorphicMapType_10703) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10703) (ExhaleHeap T@PolymorphicMapType_10703) (Mask@@0 T@PolymorphicMapType_10724) (pm_f_22 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5147_33474 Mask@@0 null pm_f_22) (IsPredicateField_5147_33501 pm_f_22)) (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22 f_37) (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22 f_37))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@0 f_37@@0))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@1 f_37@@1))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@2 f_37@@2))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@3 f_37@@3))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@3 f_37@@3))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5147_33501 pm_f_22) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10703) (ExhaleHeap@@0 T@PolymorphicMapType_10703) (Mask@@1 T@PolymorphicMapType_10724) (pm_f_22@@0 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5147_33474 Mask@@1 null pm_f_22@@0) (IsWandField_5147_35248 pm_f_22@@0)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@4 f_37@@4))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@4 f_37@@4))
)) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@5 f_37@@5))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@6 f_37@@6))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@7 f_37@@7))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@8 f_37@@8))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5147_35248 pm_f_22@@0) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5147_33543) ) (!  (not (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5147_33410) ) (!  (not (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16318_1718) ) (!  (not (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10776_10777) ) (!  (not (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10763_53) ) (!  (not (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10703) (ExhaleHeap@@1 T@PolymorphicMapType_10703) (Mask@@2 T@PolymorphicMapType_10724) (pm_f_13 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5147_33474 Mask@@2 null pm_f_13) (IsPredicateField_5147_33501 pm_f_13)) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@2) null (PredicateMaskField_5147 pm_f_13)) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@1) null (PredicateMaskField_5147 pm_f_13)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5147_33501 pm_f_13) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@1) null (PredicateMaskField_5147 pm_f_13)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10703) (ExhaleHeap@@2 T@PolymorphicMapType_10703) (Mask@@3 T@PolymorphicMapType_10724) (pm_f_13@@0 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5147_33474 Mask@@3 null pm_f_13@@0) (IsWandField_5147_35248 pm_f_13@@0)) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@3) null (WandMaskField_5147 pm_f_13@@0)) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@2) null (WandMaskField_5147 pm_f_13@@0)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5147_35248 pm_f_13@@0) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@2) null (WandMaskField_5147 pm_f_13@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10703) (ExhaleHeap@@3 T@PolymorphicMapType_10703) (Mask@@4 T@PolymorphicMapType_10724) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@4) o_22 $allocated) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@3) o_22 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@3) o_22 $allocated))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10703) (ExhaleHeap@@4 T@PolymorphicMapType_10703) (Mask@@5 T@PolymorphicMapType_10724) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@5) o_46 $allocated) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@4) o_46 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@4) o_46 $allocated))
)))
(assert (forall ((p T@Field_5147_33410) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10763_10763 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_10763_10763 p v_1 p w))
)))
(assert  (not (IsPredicateField_5147_1718 f_7)))
(assert  (not (IsWandField_5147_1718 f_7)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10703) (ExhaleHeap@@5 T@PolymorphicMapType_10703) (Mask@@6 T@PolymorphicMapType_10724) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (succHeap Heap@@6 ExhaleHeap@@5))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10703) (ExhaleHeap@@6 T@PolymorphicMapType_10703) (Mask@@7 T@PolymorphicMapType_10724) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10724) (o_2@@4 T@Ref) (f_4@@4 T@Field_5147_33543) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5147_45970 f_4@@4))) (not (IsWandField_5147_45986 f_4@@4))) (<= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10724) (o_2@@5 T@Ref) (f_4@@5 T@Field_5147_33410) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5147_33501 f_4@@5))) (not (IsWandField_5147_35248 f_4@@5))) (<= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10724) (o_2@@6 T@Ref) (f_4@@6 T@Field_10776_10777) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5147_10777 f_4@@6))) (not (IsWandField_5147_10777 f_4@@6))) (<= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10724) (o_2@@7 T@Ref) (f_4@@7 T@Field_10763_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5147_53 f_4@@7))) (not (IsWandField_5147_53 f_4@@7))) (<= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10724) (o_2@@8 T@Ref) (f_4@@8 T@Field_16318_1718) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5147_1718 f_4@@8))) (not (IsWandField_5147_1718 f_4@@8))) (<= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10724) (o_2@@9 T@Ref) (f_4@@9 T@Field_5147_33543) ) (! (= (HasDirectPerm_5147_38166 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_38166 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10724) (o_2@@10 T@Ref) (f_4@@10 T@Field_5147_33410) ) (! (= (HasDirectPerm_5147_33474 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_33474 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10724) (o_2@@11 T@Ref) (f_4@@11 T@Field_10776_10777) ) (! (= (HasDirectPerm_5147_10777 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_10777 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10724) (o_2@@12 T@Ref) (f_4@@12 T@Field_10763_53) ) (! (= (HasDirectPerm_5147_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10724) (o_2@@13 T@Ref) (f_4@@13 T@Field_16318_1718) ) (! (= (HasDirectPerm_5147_1718 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_1718 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10703) (ExhaleHeap@@7 T@PolymorphicMapType_10703) (Mask@@18 T@PolymorphicMapType_10724) (pm_f_13@@1 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (and (HasDirectPerm_5147_33474 Mask@@18 null pm_f_13@@1) (IsPredicateField_5147_33501 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@8) o2_13 f_30) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13 f_30)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@8) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@8) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@8) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (IsPredicateField_5147_33501 pm_f_13@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10703) (ExhaleHeap@@8 T@PolymorphicMapType_10703) (Mask@@19 T@PolymorphicMapType_10724) (pm_f_13@@2 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (and (HasDirectPerm_5147_33474 Mask@@19 null pm_f_13@@2) (IsWandField_5147_35248 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@9) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@9) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@9) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@9) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (IsWandField_5147_35248 pm_f_13@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10703) (ExhaleHeap@@9 T@PolymorphicMapType_10703) (Mask@@20 T@PolymorphicMapType_10724) (pm_f_22@@1 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (and (HasDirectPerm_5147_33474 Mask@@20 null pm_f_22@@1) (IsPredicateField_5147_33501 pm_f_22@@1)) (and (and (and (and (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@10) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@9 f_37@@9))
)) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@10) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@10) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@10) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@13 f_37@@13))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@20) (IsPredicateField_5147_33501 pm_f_22@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10703) (ExhaleHeap@@10 T@PolymorphicMapType_10703) (Mask@@21 T@PolymorphicMapType_10724) (pm_f_22@@2 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@21) (=> (and (HasDirectPerm_5147_33474 Mask@@21 null pm_f_22@@2) (IsWandField_5147_35248 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@11) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@14 f_37@@14))
)) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@11) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@11) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@11) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@21) (IsWandField_5147_35248 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10703) (ExhaleHeap@@11 T@PolymorphicMapType_10703) (Mask@@22 T@PolymorphicMapType_10724) (o_22@@0 T@Ref) (f_30@@9 T@Field_5147_33543) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@22) (=> (HasDirectPerm_5147_38166 Mask@@22 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@12) o_22@@0 f_30@@9) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@11) o_22@@0 f_30@@9))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@22) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@11) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10703) (ExhaleHeap@@12 T@PolymorphicMapType_10703) (Mask@@23 T@PolymorphicMapType_10724) (o_22@@1 T@Ref) (f_30@@10 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@23) (=> (HasDirectPerm_5147_33474 Mask@@23 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@13) o_22@@1 f_30@@10) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@12) o_22@@1 f_30@@10))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@23) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@12) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10703) (ExhaleHeap@@13 T@PolymorphicMapType_10703) (Mask@@24 T@PolymorphicMapType_10724) (o_22@@2 T@Ref) (f_30@@11 T@Field_10776_10777) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@24) (=> (HasDirectPerm_5147_10777 Mask@@24 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@14) o_22@@2 f_30@@11) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@13) o_22@@2 f_30@@11))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@24) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@13) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10703) (ExhaleHeap@@14 T@PolymorphicMapType_10703) (Mask@@25 T@PolymorphicMapType_10724) (o_22@@3 T@Ref) (f_30@@12 T@Field_10763_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@25) (=> (HasDirectPerm_5147_53 Mask@@25 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@15) o_22@@3 f_30@@12) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@14) o_22@@3 f_30@@12))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@25) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@14) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10703) (ExhaleHeap@@15 T@PolymorphicMapType_10703) (Mask@@26 T@PolymorphicMapType_10724) (o_22@@4 T@Ref) (f_30@@13 T@Field_16318_1718) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@26) (=> (HasDirectPerm_5147_1718 Mask@@26 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@16) o_22@@4 f_30@@13) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@15) o_22@@4 f_30@@13))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@26) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@15) o_22@@4 f_30@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10703) (ExhaleHeap@@16 T@PolymorphicMapType_10703) (Mask@@27 T@PolymorphicMapType_10724) (o_46@@0 T@Ref) (f_37@@19 T@Field_5147_33543) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@27) (=> (HasDirectPerm_5147_38166 Mask@@27 o_46@@0 f_37@@19) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@17) o_46@@0 f_37@@19) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@16) o_46@@0 f_37@@19))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@27) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@16) o_46@@0 f_37@@19))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10703) (ExhaleHeap@@17 T@PolymorphicMapType_10703) (Mask@@28 T@PolymorphicMapType_10724) (o_46@@1 T@Ref) (f_37@@20 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@28) (=> (HasDirectPerm_5147_33474 Mask@@28 o_46@@1 f_37@@20) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@18) o_46@@1 f_37@@20) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@17) o_46@@1 f_37@@20))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@28) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@17) o_46@@1 f_37@@20))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10703) (ExhaleHeap@@18 T@PolymorphicMapType_10703) (Mask@@29 T@PolymorphicMapType_10724) (o_46@@2 T@Ref) (f_37@@21 T@Field_10776_10777) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@29) (=> (HasDirectPerm_5147_10777 Mask@@29 o_46@@2 f_37@@21) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@19) o_46@@2 f_37@@21) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@18) o_46@@2 f_37@@21))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@29) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@18) o_46@@2 f_37@@21))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10703) (ExhaleHeap@@19 T@PolymorphicMapType_10703) (Mask@@30 T@PolymorphicMapType_10724) (o_46@@3 T@Ref) (f_37@@22 T@Field_10763_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@20 ExhaleHeap@@19 Mask@@30) (=> (HasDirectPerm_5147_53 Mask@@30 o_46@@3 f_37@@22) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@20) o_46@@3 f_37@@22) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@19) o_46@@3 f_37@@22))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@20 ExhaleHeap@@19 Mask@@30) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@19) o_46@@3 f_37@@22))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10703) (ExhaleHeap@@20 T@PolymorphicMapType_10703) (Mask@@31 T@PolymorphicMapType_10724) (o_46@@4 T@Ref) (f_37@@23 T@Field_16318_1718) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@21 ExhaleHeap@@20 Mask@@31) (=> (HasDirectPerm_5147_1718 Mask@@31 o_46@@4 f_37@@23) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@21) o_46@@4 f_37@@23) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@20) o_46@@4 f_37@@23))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@21 ExhaleHeap@@20 Mask@@31) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@20) o_46@@4 f_37@@23))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5147_33543) ) (! (= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5147_33410) ) (! (= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10776_10777) ) (! (= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10763_53) ) (! (= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16318_1718) ) (! (= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10724) (SummandMask1 T@PolymorphicMapType_10724) (SummandMask2 T@PolymorphicMapType_10724) (o_2@@19 T@Ref) (f_4@@19 T@Field_5147_33543) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10724) (SummandMask1@@0 T@PolymorphicMapType_10724) (SummandMask2@@0 T@PolymorphicMapType_10724) (o_2@@20 T@Ref) (f_4@@20 T@Field_5147_33410) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10724) (SummandMask1@@1 T@PolymorphicMapType_10724) (SummandMask2@@1 T@PolymorphicMapType_10724) (o_2@@21 T@Ref) (f_4@@21 T@Field_10776_10777) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10724) (SummandMask1@@2 T@PolymorphicMapType_10724) (SummandMask2@@2 T@PolymorphicMapType_10724) (o_2@@22 T@Ref) (f_4@@22 T@Field_10763_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10724) (SummandMask1@@3 T@PolymorphicMapType_10724) (SummandMask2@@3 T@PolymorphicMapType_10724) (o_2@@23 T@Ref) (f_4@@23 T@Field_16318_1718) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10703) (Heap1@@1 T@PolymorphicMapType_10703) (Mask1 T@PolymorphicMapType_10724) (Heap2@@0 T@PolymorphicMapType_10703) (Mask2 T@PolymorphicMapType_10724) ) (! (= (SumHeap Heap@@22 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@22 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@22 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@22 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10703) (o_35 T@Ref) (f_11 T@Field_5147_33410) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@23) (store (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@23) o_35 f_11 v)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@23) (store (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@23) o_35 f_11 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10703) (o_35@@0 T@Ref) (f_11@@0 T@Field_5147_33543) (v@@0 T@PolymorphicMapType_11268) ) (! (succHeap Heap@@24 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@24) (store (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@24) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@24)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@24) (store (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@24) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10703) (o_35@@1 T@Ref) (f_11@@1 T@Field_16318_1718) (v@@1 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@25) (store (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@25) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@25)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@25) (store (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@25) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10703) (o_35@@2 T@Ref) (f_11@@2 T@Field_10776_10777) (v@@2 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@26) (store (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@26) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@26)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@26) (store (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@26) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10703) (o_35@@3 T@Ref) (f_11@@3 T@Field_10763_53) (v@@3 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_10703 (store (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@27) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@27)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (store (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@27) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@27)))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_10776_10777) (Heap@@28 T@PolymorphicMapType_10703) ) (!  (=> (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@28) o_35@@4 $allocated) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@28) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@28) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@28) o_35@@4 f_31))
)))
(assert (forall ((p@@1 T@Field_5147_33410) (v_1@@0 T@FrameType) (q T@Field_5147_33410) (w@@0 T@FrameType) (r T@Field_5147_33410) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10763_10763 p@@1 v_1@@0 q w@@0) (InsidePredicate_10763_10763 q w@@0 r u)) (InsidePredicate_10763_10763 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_10763_10763 p@@1 v_1@@0 q w@@0) (InsidePredicate_10763_10763 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun perm@3 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_10724)
(declare-fun x () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_10703)
(declare-fun perm@2 () Real)
(declare-fun b_24@0 () Bool)
(declare-fun b_24@1 () Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_10724)
(declare-fun Mask@4 () T@PolymorphicMapType_10724)
(declare-fun Heap@@29 () T@PolymorphicMapType_10703)
(declare-fun Mask@1 () T@PolymorphicMapType_10724)
(declare-fun perm@4 () Real)
(declare-fun perm@1 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_10724)
(declare-fun perm@0 () Real)
(declare-fun PostHeap@0 () T@PolymorphicMapType_10703)
(declare-fun PostMask@0 () T@PolymorphicMapType_10724)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon9_correct true))
(let ((anon17_Else_correct  (=> (and (= perm@3 NoPerm) (= (ControlFlow 0 16) 13)) anon9_correct)))
(let ((anon17_Then_correct  (=> (not (= perm@3 NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= perm@3 (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@3) x f_7))) (=> (<= perm@3 (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@3) x f_7)) (=> (= (ControlFlow 0 14) 13) anon9_correct))))))
(let ((anon16_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (= perm@2 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= x null))) (=> (and (and (and (= Mask@3 (PolymorphicMapType_10724 (store (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) x f_7) perm@2)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ZeroMask))) (state ExhaleHeap@0 Mask@3)) (and (state ExhaleHeap@0 Mask@3) b_24@0)) (and (and (state ExhaleHeap@0 Mask@3) (= b_24@1  (not b_24@0))) (and (state ExhaleHeap@0 Mask@3) (= perm@3 (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (and (=> (= (ControlFlow 0 17) 14) anon17_Then_correct) (=> (= (ControlFlow 0 17) 16) anon17_Else_correct)))))))))))
(let ((anon12_correct  (=> (and (= Mask@5 (PolymorphicMapType_10724 (store (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@4) x f_7 (- (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@4) x f_7) FullPerm)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@4) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@4) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@4) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@4))) (= (ControlFlow 0 7) (- 0 6))) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@0) x f_7) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@29) x f_7)))))
(let ((anon18_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 10) 7)) anon12_correct)))
(let ((anon18_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= FullPerm (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@4) x f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@4) x f_7)) (=> (= (ControlFlow 0 8) 7) anon12_correct))))))
(let ((anon16_Else_correct  (=> (not b_24@0) (=> (and (state ExhaleHeap@0 Mask@1) (= perm@4 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (=> (> perm@4 NoPerm) (not (= x null))) (=> (and (and (= Mask@4 (PolymorphicMapType_10724 (store (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@1) x f_7 (+ (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@1) x f_7) perm@4)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@1) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@1) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@1) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@1))) (state ExhaleHeap@0 Mask@4)) (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4))) (and (=> (= (ControlFlow 0 11) 8) anon18_Then_correct) (=> (= (ControlFlow 0 11) 10) anon18_Else_correct))))))))))
(let ((anon15_Then_correct  (=> (and (= perm@1 (/ (to_real 1) (to_real 2))) (= (ControlFlow 0 5) (- 0 4))) (>= perm@1 NoPerm))))
(let ((anon4_correct  (=> (and (= Mask@1 (PolymorphicMapType_10724 (store (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@0) x f_7 (- (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@0) x f_7) perm@0)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@0) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@0) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@0) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@0))) (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@0 Mask@1)) (and (and (=> (= (ControlFlow 0 20) 5) anon15_Then_correct) (=> (= (ControlFlow 0 20) 17) anon16_Then_correct)) (=> (= (ControlFlow 0 20) 11) anon16_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 23) 20)) anon4_correct)))
(let ((anon14_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= perm@0 (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@0) x f_7))) (=> (<= perm@0 (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@0) x f_7)) (=> (= (ControlFlow 0 21) 20) anon4_correct))))))
(let ((anon13_Else_correct  (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 24) 21) anon14_Then_correct) (=> (= (ControlFlow 0 24) 23) anon14_Else_correct)))))))
(let ((anon13_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (not (= x null))) (and (= PostMask@0 (PolymorphicMapType_10724 (store (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ZeroMask))) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_5147_1718 PostMask@0 x f_7)) (=> (HasDirectPerm_5147_1718 PostMask@0 x f_7) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_5147_1718 Mask@0 x f_7)))))))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@29) x $allocated)) (=> (and (and (not (= x null)) (= Mask@0 (PolymorphicMapType_10724 (store (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ZeroMask) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ZeroMask)))) (and (state Heap@@29 Mask@0) (state Heap@@29 Mask@0))) (and (=> (= (ControlFlow 0 26) 2) anon13_Then_correct) (=> (= (ControlFlow 0 26) 24) anon13_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27) 26) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
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
(declare-sort T@Field_10763_53 0)
(declare-sort T@Field_10776_10777 0)
(declare-sort T@Field_16318_1718 0)
(declare-sort T@Field_5147_33543 0)
(declare-sort T@Field_5147_33410 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10724 0)) (((PolymorphicMapType_10724 (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| (Array T@Ref T@Field_16318_1718 Real)) (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| (Array T@Ref T@Field_10763_53 Real)) (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| (Array T@Ref T@Field_10776_10777 Real)) (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| (Array T@Ref T@Field_5147_33410 Real)) (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| (Array T@Ref T@Field_5147_33543 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11268 0)) (((PolymorphicMapType_11268 (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (Array T@Ref T@Field_10763_53 Bool)) (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (Array T@Ref T@Field_10776_10777 Bool)) (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (Array T@Ref T@Field_16318_1718 Bool)) (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (Array T@Ref T@Field_5147_33410 Bool)) (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (Array T@Ref T@Field_5147_33543 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10703 0)) (((PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| (Array T@Ref T@Field_10763_53 Bool)) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| (Array T@Ref T@Field_10776_10777 T@Ref)) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| (Array T@Ref T@Field_16318_1718 Int)) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| (Array T@Ref T@Field_5147_33543 T@PolymorphicMapType_11268)) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| (Array T@Ref T@Field_5147_33410 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10763_53)
(declare-fun f_7 () T@Field_16318_1718)
(declare-fun succHeap (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703) Bool)
(declare-fun state (T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10724) Bool)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(declare-fun IsPredicateField_5147_33501 (T@Field_5147_33410) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5147 (T@Field_5147_33410) T@Field_5147_33543)
(declare-fun HasDirectPerm_5147_33474 (T@PolymorphicMapType_10724 T@Ref T@Field_5147_33410) Bool)
(declare-fun IsWandField_5147_35248 (T@Field_5147_33410) Bool)
(declare-fun WandMaskField_5147 (T@Field_5147_33410) T@Field_5147_33543)
(declare-fun ZeroPMask () T@PolymorphicMapType_11268)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_10703)
(declare-fun ZeroMask () T@PolymorphicMapType_10724)
(declare-fun InsidePredicate_10763_10763 (T@Field_5147_33410 T@FrameType T@Field_5147_33410 T@FrameType) Bool)
(declare-fun IsPredicateField_5147_1718 (T@Field_16318_1718) Bool)
(declare-fun IsWandField_5147_1718 (T@Field_16318_1718) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5147_45970 (T@Field_5147_33543) Bool)
(declare-fun IsWandField_5147_45986 (T@Field_5147_33543) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5147_10777 (T@Field_10776_10777) Bool)
(declare-fun IsWandField_5147_10777 (T@Field_10776_10777) Bool)
(declare-fun IsPredicateField_5147_53 (T@Field_10763_53) Bool)
(declare-fun IsWandField_5147_53 (T@Field_10763_53) Bool)
(declare-fun HasDirectPerm_5147_38166 (T@PolymorphicMapType_10724 T@Ref T@Field_5147_33543) Bool)
(declare-fun HasDirectPerm_5147_10777 (T@PolymorphicMapType_10724 T@Ref T@Field_10776_10777) Bool)
(declare-fun HasDirectPerm_5147_53 (T@PolymorphicMapType_10724 T@Ref T@Field_10763_53) Bool)
(declare-fun HasDirectPerm_5147_1718 (T@PolymorphicMapType_10724 T@Ref T@Field_16318_1718) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10724 T@PolymorphicMapType_10724 T@PolymorphicMapType_10724) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_10703 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724 T@PolymorphicMapType_10703 T@PolymorphicMapType_10724) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10703) (Heap1 T@PolymorphicMapType_10703) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10703) (Mask T@PolymorphicMapType_10724) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10703) (Heap1@@0 T@PolymorphicMapType_10703) (Heap2 T@PolymorphicMapType_10703) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10703) (ExhaleHeap T@PolymorphicMapType_10703) (Mask@@0 T@PolymorphicMapType_10724) (pm_f_22 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5147_33474 Mask@@0 null pm_f_22) (IsPredicateField_5147_33501 pm_f_22)) (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22 f_37) (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22 f_37))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@0 f_37@@0))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@1 f_37@@1))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@2 f_37@@2))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@0) null (PredicateMaskField_5147 pm_f_22))) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@3 f_37@@3))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22))) o2_22@@3 f_37@@3))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5147_33501 pm_f_22) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap) null (PredicateMaskField_5147 pm_f_22)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10703) (ExhaleHeap@@0 T@PolymorphicMapType_10703) (Mask@@1 T@PolymorphicMapType_10724) (pm_f_22@@0 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5147_33474 Mask@@1 null pm_f_22@@0) (IsWandField_5147_35248 pm_f_22@@0)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@4 f_37@@4))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@4 f_37@@4))
)) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@5 f_37@@5))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@6 f_37@@6))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@7 f_37@@7))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@1) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@8 f_37@@8))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0))) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5147_35248 pm_f_22@@0) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@0) null (WandMaskField_5147 pm_f_22@@0)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5147_33543) ) (!  (not (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5147_33410) ) (!  (not (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16318_1718) ) (!  (not (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10776_10777) ) (!  (not (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10763_53) ) (!  (not (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10703) (ExhaleHeap@@1 T@PolymorphicMapType_10703) (Mask@@2 T@PolymorphicMapType_10724) (pm_f_13 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5147_33474 Mask@@2 null pm_f_13) (IsPredicateField_5147_33501 pm_f_13)) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@2) null (PredicateMaskField_5147 pm_f_13)) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@1) null (PredicateMaskField_5147 pm_f_13)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5147_33501 pm_f_13) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@1) null (PredicateMaskField_5147 pm_f_13)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10703) (ExhaleHeap@@2 T@PolymorphicMapType_10703) (Mask@@3 T@PolymorphicMapType_10724) (pm_f_13@@0 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5147_33474 Mask@@3 null pm_f_13@@0) (IsWandField_5147_35248 pm_f_13@@0)) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@3) null (WandMaskField_5147 pm_f_13@@0)) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@2) null (WandMaskField_5147 pm_f_13@@0)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5147_35248 pm_f_13@@0) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@2) null (WandMaskField_5147 pm_f_13@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10703) (ExhaleHeap@@3 T@PolymorphicMapType_10703) (Mask@@4 T@PolymorphicMapType_10724) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@4) o_22 $allocated) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@3) o_22 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@3) o_22 $allocated))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10703) (ExhaleHeap@@4 T@PolymorphicMapType_10703) (Mask@@5 T@PolymorphicMapType_10724) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@5) o_46 $allocated) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@4) o_46 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@4) o_46 $allocated))
)))
(assert (forall ((p T@Field_5147_33410) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10763_10763 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_10763_10763 p v_1 p w))
)))
(assert  (not (IsPredicateField_5147_1718 f_7)))
(assert  (not (IsWandField_5147_1718 f_7)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10703) (ExhaleHeap@@5 T@PolymorphicMapType_10703) (Mask@@6 T@PolymorphicMapType_10724) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (succHeap Heap@@6 ExhaleHeap@@5))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10703) (ExhaleHeap@@6 T@PolymorphicMapType_10703) (Mask@@7 T@PolymorphicMapType_10724) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10724) (o_2@@4 T@Ref) (f_4@@4 T@Field_5147_33543) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5147_45970 f_4@@4))) (not (IsWandField_5147_45986 f_4@@4))) (<= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10724) (o_2@@5 T@Ref) (f_4@@5 T@Field_5147_33410) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5147_33501 f_4@@5))) (not (IsWandField_5147_35248 f_4@@5))) (<= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10724) (o_2@@6 T@Ref) (f_4@@6 T@Field_10776_10777) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5147_10777 f_4@@6))) (not (IsWandField_5147_10777 f_4@@6))) (<= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10724) (o_2@@7 T@Ref) (f_4@@7 T@Field_10763_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5147_53 f_4@@7))) (not (IsWandField_5147_53 f_4@@7))) (<= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10724) (o_2@@8 T@Ref) (f_4@@8 T@Field_16318_1718) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5147_1718 f_4@@8))) (not (IsWandField_5147_1718 f_4@@8))) (<= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10724) (o_2@@9 T@Ref) (f_4@@9 T@Field_5147_33543) ) (! (= (HasDirectPerm_5147_38166 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_38166 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10724) (o_2@@10 T@Ref) (f_4@@10 T@Field_5147_33410) ) (! (= (HasDirectPerm_5147_33474 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_33474 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10724) (o_2@@11 T@Ref) (f_4@@11 T@Field_10776_10777) ) (! (= (HasDirectPerm_5147_10777 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_10777 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10724) (o_2@@12 T@Ref) (f_4@@12 T@Field_10763_53) ) (! (= (HasDirectPerm_5147_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10724) (o_2@@13 T@Ref) (f_4@@13 T@Field_16318_1718) ) (! (= (HasDirectPerm_5147_1718 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5147_1718 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10703) (ExhaleHeap@@7 T@PolymorphicMapType_10703) (Mask@@18 T@PolymorphicMapType_10724) (pm_f_13@@1 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (and (HasDirectPerm_5147_33474 Mask@@18 null pm_f_13@@1) (IsPredicateField_5147_33501 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@8) o2_13 f_30) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13 f_30)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@8) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@8) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@8) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) null (PredicateMaskField_5147 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@8) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@7) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (IsPredicateField_5147_33501 pm_f_13@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10703) (ExhaleHeap@@8 T@PolymorphicMapType_10703) (Mask@@19 T@PolymorphicMapType_10724) (pm_f_13@@2 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (and (HasDirectPerm_5147_33474 Mask@@19 null pm_f_13@@2) (IsWandField_5147_35248 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@9) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@9) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@9) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@9) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) null (WandMaskField_5147 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@9) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@8) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (IsWandField_5147_35248 pm_f_13@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10703) (ExhaleHeap@@9 T@PolymorphicMapType_10703) (Mask@@20 T@PolymorphicMapType_10724) (pm_f_22@@1 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (and (HasDirectPerm_5147_33474 Mask@@20 null pm_f_22@@1) (IsPredicateField_5147_33501 pm_f_22@@1)) (and (and (and (and (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@10) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@9 f_37@@9))
)) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@10) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@10) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@10) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) null (PredicateMaskField_5147 pm_f_22@@1))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@10) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@9) o2_22@@13 f_37@@13))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@20) (IsPredicateField_5147_33501 pm_f_22@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10703) (ExhaleHeap@@10 T@PolymorphicMapType_10703) (Mask@@21 T@PolymorphicMapType_10724) (pm_f_22@@2 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@21) (=> (and (HasDirectPerm_5147_33474 Mask@@21 null pm_f_22@@2) (IsWandField_5147_35248 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_10763_53) ) (!  (=> (select (|PolymorphicMapType_11268_10763_53#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@11) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@14 f_37@@14))
)) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_10776_10777) ) (!  (=> (select (|PolymorphicMapType_11268_10763_10777#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@11) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_16318_1718) ) (!  (=> (select (|PolymorphicMapType_11268_10763_1718#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@11) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_5147_33410) ) (!  (=> (select (|PolymorphicMapType_11268_10763_33410#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@11) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_5147_33543) ) (!  (=> (select (|PolymorphicMapType_11268_10763_34721#PolymorphicMapType_11268| (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) null (WandMaskField_5147 pm_f_22@@2))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@11) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@10) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@21) (IsWandField_5147_35248 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10703) (ExhaleHeap@@11 T@PolymorphicMapType_10703) (Mask@@22 T@PolymorphicMapType_10724) (o_22@@0 T@Ref) (f_30@@9 T@Field_5147_33543) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@22) (=> (HasDirectPerm_5147_38166 Mask@@22 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@12) o_22@@0 f_30@@9) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@11) o_22@@0 f_30@@9))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@22) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@11) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10703) (ExhaleHeap@@12 T@PolymorphicMapType_10703) (Mask@@23 T@PolymorphicMapType_10724) (o_22@@1 T@Ref) (f_30@@10 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@23) (=> (HasDirectPerm_5147_33474 Mask@@23 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@13) o_22@@1 f_30@@10) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@12) o_22@@1 f_30@@10))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@23) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@12) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10703) (ExhaleHeap@@13 T@PolymorphicMapType_10703) (Mask@@24 T@PolymorphicMapType_10724) (o_22@@2 T@Ref) (f_30@@11 T@Field_10776_10777) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@24) (=> (HasDirectPerm_5147_10777 Mask@@24 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@14) o_22@@2 f_30@@11) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@13) o_22@@2 f_30@@11))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@24) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@13) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10703) (ExhaleHeap@@14 T@PolymorphicMapType_10703) (Mask@@25 T@PolymorphicMapType_10724) (o_22@@3 T@Ref) (f_30@@12 T@Field_10763_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@25) (=> (HasDirectPerm_5147_53 Mask@@25 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@15) o_22@@3 f_30@@12) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@14) o_22@@3 f_30@@12))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@25) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@14) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10703) (ExhaleHeap@@15 T@PolymorphicMapType_10703) (Mask@@26 T@PolymorphicMapType_10724) (o_22@@4 T@Ref) (f_30@@13 T@Field_16318_1718) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@26) (=> (HasDirectPerm_5147_1718 Mask@@26 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@16) o_22@@4 f_30@@13) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@15) o_22@@4 f_30@@13))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@26) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@15) o_22@@4 f_30@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10703) (ExhaleHeap@@16 T@PolymorphicMapType_10703) (Mask@@27 T@PolymorphicMapType_10724) (o_46@@0 T@Ref) (f_37@@19 T@Field_5147_33543) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@27) (=> (HasDirectPerm_5147_38166 Mask@@27 o_46@@0 f_37@@19) (= (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@17) o_46@@0 f_37@@19) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@16) o_46@@0 f_37@@19))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@27) (select (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| ExhaleHeap@@16) o_46@@0 f_37@@19))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10703) (ExhaleHeap@@17 T@PolymorphicMapType_10703) (Mask@@28 T@PolymorphicMapType_10724) (o_46@@1 T@Ref) (f_37@@20 T@Field_5147_33410) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@28) (=> (HasDirectPerm_5147_33474 Mask@@28 o_46@@1 f_37@@20) (= (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@18) o_46@@1 f_37@@20) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@17) o_46@@1 f_37@@20))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@28) (select (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| ExhaleHeap@@17) o_46@@1 f_37@@20))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10703) (ExhaleHeap@@18 T@PolymorphicMapType_10703) (Mask@@29 T@PolymorphicMapType_10724) (o_46@@2 T@Ref) (f_37@@21 T@Field_10776_10777) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@29) (=> (HasDirectPerm_5147_10777 Mask@@29 o_46@@2 f_37@@21) (= (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@19) o_46@@2 f_37@@21) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@18) o_46@@2 f_37@@21))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@29) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| ExhaleHeap@@18) o_46@@2 f_37@@21))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10703) (ExhaleHeap@@19 T@PolymorphicMapType_10703) (Mask@@30 T@PolymorphicMapType_10724) (o_46@@3 T@Ref) (f_37@@22 T@Field_10763_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@20 ExhaleHeap@@19 Mask@@30) (=> (HasDirectPerm_5147_53 Mask@@30 o_46@@3 f_37@@22) (= (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@20) o_46@@3 f_37@@22) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@19) o_46@@3 f_37@@22))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@20 ExhaleHeap@@19 Mask@@30) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| ExhaleHeap@@19) o_46@@3 f_37@@22))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10703) (ExhaleHeap@@20 T@PolymorphicMapType_10703) (Mask@@31 T@PolymorphicMapType_10724) (o_46@@4 T@Ref) (f_37@@23 T@Field_16318_1718) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@21 ExhaleHeap@@20 Mask@@31) (=> (HasDirectPerm_5147_1718 Mask@@31 o_46@@4 f_37@@23) (= (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@21) o_46@@4 f_37@@23) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@20) o_46@@4 f_37@@23))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@21 ExhaleHeap@@20 Mask@@31) (select (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| ExhaleHeap@@20) o_46@@4 f_37@@23))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5147_33543) ) (! (= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5147_33410) ) (! (= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10776_10777) ) (! (= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10763_53) ) (! (= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16318_1718) ) (! (= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10724) (SummandMask1 T@PolymorphicMapType_10724) (SummandMask2 T@PolymorphicMapType_10724) (o_2@@19 T@Ref) (f_4@@19 T@Field_5147_33543) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10724_5147_44841#PolymorphicMapType_10724| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10724) (SummandMask1@@0 T@PolymorphicMapType_10724) (SummandMask2@@0 T@PolymorphicMapType_10724) (o_2@@20 T@Ref) (f_4@@20 T@Field_5147_33410) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10724_5147_33410#PolymorphicMapType_10724| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10724) (SummandMask1@@1 T@PolymorphicMapType_10724) (SummandMask2@@1 T@PolymorphicMapType_10724) (o_2@@21 T@Ref) (f_4@@21 T@Field_10776_10777) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10724_5147_10777#PolymorphicMapType_10724| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10724) (SummandMask1@@2 T@PolymorphicMapType_10724) (SummandMask2@@2 T@PolymorphicMapType_10724) (o_2@@22 T@Ref) (f_4@@22 T@Field_10763_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10724_5147_53#PolymorphicMapType_10724| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10724) (SummandMask1@@3 T@PolymorphicMapType_10724) (SummandMask2@@3 T@PolymorphicMapType_10724) (o_2@@23 T@Ref) (f_4@@23 T@Field_16318_1718) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10724_5147_1718#PolymorphicMapType_10724| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10703) (Heap1@@1 T@PolymorphicMapType_10703) (Mask1 T@PolymorphicMapType_10724) (Heap2@@0 T@PolymorphicMapType_10703) (Mask2 T@PolymorphicMapType_10724) ) (! (= (SumHeap Heap@@22 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@22 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@22 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@22 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10703) (o_35 T@Ref) (f_11 T@Field_5147_33410) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@23) (store (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@23) o_35 f_11 v)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@23) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@23) (store (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@23) o_35 f_11 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10703) (o_35@@0 T@Ref) (f_11@@0 T@Field_5147_33543) (v@@0 T@PolymorphicMapType_11268) ) (! (succHeap Heap@@24 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@24) (store (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@24) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@24)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@24) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@24) (store (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@24) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10703) (o_35@@1 T@Ref) (f_11@@1 T@Field_16318_1718) (v@@1 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@25) (store (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@25) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@25)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@25) (store (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@25) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@25) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10703) (o_35@@2 T@Ref) (f_11@@2 T@Field_10776_10777) (v@@2 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@26) (store (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@26) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@26)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@26) (store (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@26) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@26) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10703) (o_35@@3 T@Ref) (f_11@@3 T@Field_10763_53) (v@@3 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_10703 (store (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@27) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@27)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10703 (store (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@27) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_1718#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_5147_33587#PolymorphicMapType_10703| Heap@@27) (|PolymorphicMapType_10703_10763_33410#PolymorphicMapType_10703| Heap@@27)))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_10776_10777) (Heap@@28 T@PolymorphicMapType_10703) ) (!  (=> (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@28) o_35@@4 $allocated) (select (|PolymorphicMapType_10703_4966_53#PolymorphicMapType_10703| Heap@@28) (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@28) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10703_4969_4970#PolymorphicMapType_10703| Heap@@28) o_35@@4 f_31))
)))
(assert (forall ((p@@1 T@Field_5147_33410) (v_1@@0 T@FrameType) (q T@Field_5147_33410) (w@@0 T@FrameType) (r T@Field_5147_33410) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10763_10763 p@@1 v_1@@0 q w@@0) (InsidePredicate_10763_10763 q w@@0 r u)) (InsidePredicate_10763_10763 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_10763_10763 p@@1 v_1@@0 q w@@0) (InsidePredicate_10763_10763 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
