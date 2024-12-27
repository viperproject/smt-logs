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
(declare-sort T@Field_4919_53 0)
(declare-sort T@Field_4932_4933 0)
(declare-sort T@Field_8253_1234 0)
(declare-sort T@Field_8300_8301 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8313_8318 0)
(declare-sort T@Field_2540_2544 0)
(declare-sort T@Field_2540_8318 0)
(declare-sort T@Field_2543_1234 0)
(declare-sort T@Field_2543_53 0)
(declare-sort T@Field_2543_4933 0)
(declare-datatypes ((T@PolymorphicMapType_4880 0)) (((PolymorphicMapType_4880 (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| (Array T@Ref T@Field_8253_1234 Real)) (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| (Array T@Ref T@Field_8300_8301 Real)) (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| (Array T@Ref T@Field_2540_2544 Real)) (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| (Array T@Ref T@Field_4919_53 Real)) (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| (Array T@Ref T@Field_4932_4933 Real)) (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| (Array T@Ref T@Field_2540_8318 Real)) (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| (Array T@Ref T@Field_2543_1234 Real)) (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| (Array T@Ref T@Field_2543_53 Real)) (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| (Array T@Ref T@Field_2543_4933 Real)) (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| (Array T@Ref T@Field_8313_8318 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5408 0)) (((PolymorphicMapType_5408 (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| (Array T@Ref T@Field_8253_1234 Bool)) (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| (Array T@Ref T@Field_4919_53 Bool)) (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| (Array T@Ref T@Field_4932_4933 Bool)) (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| (Array T@Ref T@Field_2540_2544 Bool)) (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| (Array T@Ref T@Field_2540_8318 Bool)) (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| (Array T@Ref T@Field_2543_1234 Bool)) (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| (Array T@Ref T@Field_2543_53 Bool)) (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| (Array T@Ref T@Field_2543_4933 Bool)) (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| (Array T@Ref T@Field_8300_8301 Bool)) (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| (Array T@Ref T@Field_8313_8318 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4859 0)) (((PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| (Array T@Ref T@Field_4919_53 Bool)) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| (Array T@Ref T@Field_4932_4933 T@Ref)) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| (Array T@Ref T@Field_8253_1234 Int)) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| (Array T@Ref T@Field_8300_8301 T@FrameType)) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| (Array T@Ref T@Field_8313_8318 T@PolymorphicMapType_5408)) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| (Array T@Ref T@Field_2540_2544 T@FrameType)) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| (Array T@Ref T@Field_2540_8318 T@PolymorphicMapType_5408)) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| (Array T@Ref T@Field_2543_1234 Int)) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| (Array T@Ref T@Field_2543_53 Bool)) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| (Array T@Ref T@Field_2543_4933 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_4919_53)
(declare-fun f_7 () T@Field_8253_1234)
(declare-fun succHeap (T@PolymorphicMapType_4859 T@PolymorphicMapType_4859) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4859 T@PolymorphicMapType_4859) Bool)
(declare-fun state (T@PolymorphicMapType_4859 T@PolymorphicMapType_4880) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4880) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5408)
(declare-fun P (T@Ref) T@Field_8300_8301)
(declare-fun IsPredicateField_2543_2544 (T@Field_8300_8301) Bool)
(declare-fun |P#trigger_2543| (T@PolymorphicMapType_4859 T@Field_8300_8301) Bool)
(declare-fun |P#everUsed_2543| (T@Field_8300_8301) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4859 T@PolymorphicMapType_4859 T@PolymorphicMapType_4880) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2543 (T@Field_8300_8301) T@Field_8313_8318)
(declare-fun HasDirectPerm_2543_2544 (T@PolymorphicMapType_4880 T@Ref T@Field_8300_8301) Bool)
(declare-fun IsPredicateField_2540_16845 (T@Field_2540_2544) Bool)
(declare-fun PredicateMaskField_2540 (T@Field_2540_2544) T@Field_2540_8318)
(declare-fun HasDirectPerm_2540_2544 (T@PolymorphicMapType_4880 T@Ref T@Field_2540_2544) Bool)
(declare-fun IsWandField_2543_20530 (T@Field_8300_8301) Bool)
(declare-fun WandMaskField_2543 (T@Field_8300_8301) T@Field_8313_8318)
(declare-fun IsWandField_2540_20173 (T@Field_2540_2544) Bool)
(declare-fun WandMaskField_2540 (T@Field_2540_2544) T@Field_2540_8318)
(declare-fun |P#sm| (T@Ref) T@Field_8313_8318)
(declare-fun dummyHeap () T@PolymorphicMapType_4859)
(declare-fun ZeroMask () T@PolymorphicMapType_4880)
(declare-fun InsidePredicate_8300_8300 (T@Field_8300_8301 T@FrameType T@Field_8300_8301 T@FrameType) Bool)
(declare-fun InsidePredicate_4919_4919 (T@Field_2540_2544 T@FrameType T@Field_2540_2544 T@FrameType) Bool)
(declare-fun IsPredicateField_2540_1234 (T@Field_8253_1234) Bool)
(declare-fun IsWandField_2540_1234 (T@Field_8253_1234) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2543_27462 (T@Field_8313_8318) Bool)
(declare-fun IsWandField_2543_27478 (T@Field_8313_8318) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2543_4933 (T@Field_2543_4933) Bool)
(declare-fun IsWandField_2543_4933 (T@Field_2543_4933) Bool)
(declare-fun IsPredicateField_2543_53 (T@Field_2543_53) Bool)
(declare-fun IsWandField_2543_53 (T@Field_2543_53) Bool)
(declare-fun IsPredicateField_2543_1234 (T@Field_2543_1234) Bool)
(declare-fun IsWandField_2543_1234 (T@Field_2543_1234) Bool)
(declare-fun IsPredicateField_2540_26631 (T@Field_2540_8318) Bool)
(declare-fun IsWandField_2540_26647 (T@Field_2540_8318) Bool)
(declare-fun IsPredicateField_2540_4933 (T@Field_4932_4933) Bool)
(declare-fun IsWandField_2540_4933 (T@Field_4932_4933) Bool)
(declare-fun IsPredicateField_2540_53 (T@Field_4919_53) Bool)
(declare-fun IsWandField_2540_53 (T@Field_4919_53) Bool)
(declare-fun HasDirectPerm_2543_16600 (T@PolymorphicMapType_4880 T@Ref T@Field_8313_8318) Bool)
(declare-fun HasDirectPerm_2543_4933 (T@PolymorphicMapType_4880 T@Ref T@Field_2543_4933) Bool)
(declare-fun HasDirectPerm_2543_53 (T@PolymorphicMapType_4880 T@Ref T@Field_2543_53) Bool)
(declare-fun HasDirectPerm_2543_1234 (T@PolymorphicMapType_4880 T@Ref T@Field_2543_1234) Bool)
(declare-fun HasDirectPerm_2540_15459 (T@PolymorphicMapType_4880 T@Ref T@Field_2540_8318) Bool)
(declare-fun HasDirectPerm_2540_4933 (T@PolymorphicMapType_4880 T@Ref T@Field_4932_4933) Bool)
(declare-fun HasDirectPerm_2540_53 (T@PolymorphicMapType_4880 T@Ref T@Field_4919_53) Bool)
(declare-fun HasDirectPerm_2540_1234 (T@PolymorphicMapType_4880 T@Ref T@Field_8253_1234) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4880 T@PolymorphicMapType_4880 T@PolymorphicMapType_4880) Bool)
(declare-fun getPredWandId_2543_2544 (T@Field_8300_8301) Int)
(declare-fun InsidePredicate_8300_4919 (T@Field_8300_8301 T@FrameType T@Field_2540_2544 T@FrameType) Bool)
(declare-fun InsidePredicate_4919_8300 (T@Field_2540_2544 T@FrameType T@Field_8300_8301 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4859) (Heap1 T@PolymorphicMapType_4859) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4859) (Mask T@PolymorphicMapType_4880) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4859) (Heap1@@0 T@PolymorphicMapType_4859) (Heap2 T@PolymorphicMapType_4859) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8313_8318) ) (!  (not (select (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8300_8301) ) (!  (not (select (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2543_4933) ) (!  (not (select (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2543_53) ) (!  (not (select (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2543_1234) ) (!  (not (select (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2540_8318) ) (!  (not (select (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_2540_2544) ) (!  (not (select (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4932_4933) ) (!  (not (select (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4919_53) ) (!  (not (select (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8253_1234) ) (!  (not (select (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_2543_2544 (P x))
 :qid |stdinbpl.213:15|
 :skolemid |23|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4859) (x@@0 T@Ref) ) (! (|P#everUsed_2543| (P x@@0))
 :qid |stdinbpl.232:15|
 :skolemid |27|
 :pattern ( (|P#trigger_2543| Heap@@0 (P x@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4859) (ExhaleHeap T@PolymorphicMapType_4859) (Mask@@0 T@PolymorphicMapType_4880) (pm_f_5 T@Field_8300_8301) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2543_2544 Mask@@0 null pm_f_5) (IsPredicateField_2543_2544 pm_f_5)) (= (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@1) null (PredicateMaskField_2543 pm_f_5)) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap) null (PredicateMaskField_2543 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_2543_2544 pm_f_5) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap) null (PredicateMaskField_2543 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4859) (ExhaleHeap@@0 T@PolymorphicMapType_4859) (Mask@@1 T@PolymorphicMapType_4880) (pm_f_5@@0 T@Field_2540_2544) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2540_2544 Mask@@1 null pm_f_5@@0) (IsPredicateField_2540_16845 pm_f_5@@0)) (= (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@2) null (PredicateMaskField_2540 pm_f_5@@0)) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@0) null (PredicateMaskField_2540 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2540_16845 pm_f_5@@0) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@0) null (PredicateMaskField_2540 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4859) (ExhaleHeap@@1 T@PolymorphicMapType_4859) (Mask@@2 T@PolymorphicMapType_4880) (pm_f_5@@1 T@Field_8300_8301) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2543_2544 Mask@@2 null pm_f_5@@1) (IsWandField_2543_20530 pm_f_5@@1)) (= (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@3) null (WandMaskField_2543 pm_f_5@@1)) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@1) null (WandMaskField_2543 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_2543_20530 pm_f_5@@1) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@1) null (WandMaskField_2543 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4859) (ExhaleHeap@@2 T@PolymorphicMapType_4859) (Mask@@3 T@PolymorphicMapType_4880) (pm_f_5@@2 T@Field_2540_2544) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2540_2544 Mask@@3 null pm_f_5@@2) (IsWandField_2540_20173 pm_f_5@@2)) (= (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@4) null (WandMaskField_2540 pm_f_5@@2)) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@2) null (WandMaskField_2540 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_2540_20173 pm_f_5@@2) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@2) null (WandMaskField_2540 pm_f_5@@2)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.227:15|
 :skolemid |26|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4859) (ExhaleHeap@@3 T@PolymorphicMapType_4859) (Mask@@4 T@PolymorphicMapType_4880) (pm_f_5@@3 T@Field_8300_8301) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_2543_2544 Mask@@4 null pm_f_5@@3) (IsPredicateField_2543_2544 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_8253_1234) ) (!  (=> (select (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@5) o2_5 f_16) (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_4919_53) ) (!  (=> (select (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@5) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_4932_4933) ) (!  (=> (select (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@5) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_2540_2544) ) (!  (=> (select (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@5) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_2540_8318) ) (!  (=> (select (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@5) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_2543_1234) ) (!  (=> (select (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@5) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_2543_53) ) (!  (=> (select (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@5) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_2543_4933) ) (!  (=> (select (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@5) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_8300_8301) ) (!  (=> (select (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@5) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_8313_8318) ) (!  (=> (select (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) null (PredicateMaskField_2543 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@5) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2543_2544 pm_f_5@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4859) (ExhaleHeap@@4 T@PolymorphicMapType_4859) (Mask@@5 T@PolymorphicMapType_4880) (pm_f_5@@4 T@Field_2540_2544) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2540_2544 Mask@@5 null pm_f_5@@4) (IsPredicateField_2540_16845 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_8253_1234) ) (!  (=> (select (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@6) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_4919_53) ) (!  (=> (select (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@6) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_4932_4933) ) (!  (=> (select (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@6) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_2540_2544) ) (!  (=> (select (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@6) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_2540_8318) ) (!  (=> (select (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_2543_1234) ) (!  (=> (select (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@6) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_2543_53) ) (!  (=> (select (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@6) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_2543_4933) ) (!  (=> (select (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@6) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_8300_8301) ) (!  (=> (select (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@6) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_8313_8318) ) (!  (=> (select (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@6) null (PredicateMaskField_2540 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@6) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2540_16845 pm_f_5@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4859) (ExhaleHeap@@5 T@PolymorphicMapType_4859) (Mask@@6 T@PolymorphicMapType_4880) (pm_f_5@@5 T@Field_8300_8301) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_2543_2544 Mask@@6 null pm_f_5@@5) (IsWandField_2543_20530 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_8253_1234) ) (!  (=> (select (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@7) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_4919_53) ) (!  (=> (select (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@7) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_4932_4933) ) (!  (=> (select (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@7) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_2540_2544) ) (!  (=> (select (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@7) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_2540_8318) ) (!  (=> (select (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@7) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_2543_1234) ) (!  (=> (select (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@7) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_2543_53) ) (!  (=> (select (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@7) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_2543_4933) ) (!  (=> (select (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@7) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_8300_8301) ) (!  (=> (select (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@7) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_8313_8318) ) (!  (=> (select (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) null (WandMaskField_2543 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@7) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_2543_20530 pm_f_5@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4859) (ExhaleHeap@@6 T@PolymorphicMapType_4859) (Mask@@7 T@PolymorphicMapType_4880) (pm_f_5@@6 T@Field_2540_2544) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2540_2544 Mask@@7 null pm_f_5@@6) (IsWandField_2540_20173 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_8253_1234) ) (!  (=> (select (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@8) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_4919_53) ) (!  (=> (select (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@8) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_4932_4933) ) (!  (=> (select (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@8) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_2540_2544) ) (!  (=> (select (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@8) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_2540_8318) ) (!  (=> (select (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_2543_1234) ) (!  (=> (select (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@8) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_2543_53) ) (!  (=> (select (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@8) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_2543_4933) ) (!  (=> (select (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@8) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_8300_8301) ) (!  (=> (select (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@8) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_8313_8318) ) (!  (=> (select (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@8) null (WandMaskField_2540 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@8) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_2540_20173 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4859) (ExhaleHeap@@7 T@PolymorphicMapType_4859) (Mask@@8 T@PolymorphicMapType_4880) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@9) o_12 $allocated) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_8300_8301) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8300_8300 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8300_8300 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_2540_2544) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4919_4919 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4919_4919 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2540_1234 f_7)))
(assert  (not (IsWandField_2540_1234 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4859) (ExhaleHeap@@8 T@PolymorphicMapType_4859) (Mask@@9 T@PolymorphicMapType_4880) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4880) (o_2@@9 T@Ref) (f_4@@9 T@Field_8313_8318) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2543_27462 f_4@@9))) (not (IsWandField_2543_27478 f_4@@9))) (<= (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4880) (o_2@@10 T@Ref) (f_4@@10 T@Field_2543_4933) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2543_4933 f_4@@10))) (not (IsWandField_2543_4933 f_4@@10))) (<= (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4880) (o_2@@11 T@Ref) (f_4@@11 T@Field_2543_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2543_53 f_4@@11))) (not (IsWandField_2543_53 f_4@@11))) (<= (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4880) (o_2@@12 T@Ref) (f_4@@12 T@Field_8300_8301) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2543_2544 f_4@@12))) (not (IsWandField_2543_20530 f_4@@12))) (<= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4880) (o_2@@13 T@Ref) (f_4@@13 T@Field_2543_1234) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2543_1234 f_4@@13))) (not (IsWandField_2543_1234 f_4@@13))) (<= (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4880) (o_2@@14 T@Ref) (f_4@@14 T@Field_2540_8318) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2540_26631 f_4@@14))) (not (IsWandField_2540_26647 f_4@@14))) (<= (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4880) (o_2@@15 T@Ref) (f_4@@15 T@Field_4932_4933) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2540_4933 f_4@@15))) (not (IsWandField_2540_4933 f_4@@15))) (<= (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4880) (o_2@@16 T@Ref) (f_4@@16 T@Field_4919_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2540_53 f_4@@16))) (not (IsWandField_2540_53 f_4@@16))) (<= (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4880) (o_2@@17 T@Ref) (f_4@@17 T@Field_2540_2544) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2540_16845 f_4@@17))) (not (IsWandField_2540_20173 f_4@@17))) (<= (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4880) (o_2@@18 T@Ref) (f_4@@18 T@Field_8253_1234) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2540_1234 f_4@@18))) (not (IsWandField_2540_1234 f_4@@18))) (<= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4880) (o_2@@19 T@Ref) (f_4@@19 T@Field_8313_8318) ) (! (= (HasDirectPerm_2543_16600 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2543_16600 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4880) (o_2@@20 T@Ref) (f_4@@20 T@Field_2543_4933) ) (! (= (HasDirectPerm_2543_4933 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2543_4933 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4880) (o_2@@21 T@Ref) (f_4@@21 T@Field_2543_53) ) (! (= (HasDirectPerm_2543_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2543_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4880) (o_2@@22 T@Ref) (f_4@@22 T@Field_8300_8301) ) (! (= (HasDirectPerm_2543_2544 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2543_2544 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4880) (o_2@@23 T@Ref) (f_4@@23 T@Field_2543_1234) ) (! (= (HasDirectPerm_2543_1234 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2543_1234 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4880) (o_2@@24 T@Ref) (f_4@@24 T@Field_2540_8318) ) (! (= (HasDirectPerm_2540_15459 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2540_15459 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4880) (o_2@@25 T@Ref) (f_4@@25 T@Field_4932_4933) ) (! (= (HasDirectPerm_2540_4933 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2540_4933 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4880) (o_2@@26 T@Ref) (f_4@@26 T@Field_4919_53) ) (! (= (HasDirectPerm_2540_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2540_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4880) (o_2@@27 T@Ref) (f_4@@27 T@Field_2540_2544) ) (! (= (HasDirectPerm_2540_2544 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2540_2544 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4880) (o_2@@28 T@Ref) (f_4@@28 T@Field_8253_1234) ) (! (= (HasDirectPerm_2540_1234 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2540_1234 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4859) (ExhaleHeap@@9 T@PolymorphicMapType_4859) (Mask@@30 T@PolymorphicMapType_4880) (o_12@@0 T@Ref) (f_16@@39 T@Field_8313_8318) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_2543_16600 Mask@@30 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@11) o_12@@0 f_16@@39) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4859) (ExhaleHeap@@10 T@PolymorphicMapType_4859) (Mask@@31 T@PolymorphicMapType_4880) (o_12@@1 T@Ref) (f_16@@40 T@Field_2543_4933) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_2543_4933 Mask@@31 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@12) o_12@@1 f_16@@40) (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4859) (ExhaleHeap@@11 T@PolymorphicMapType_4859) (Mask@@32 T@PolymorphicMapType_4880) (o_12@@2 T@Ref) (f_16@@41 T@Field_2543_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_2543_53 Mask@@32 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@13) o_12@@2 f_16@@41) (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4859) (ExhaleHeap@@12 T@PolymorphicMapType_4859) (Mask@@33 T@PolymorphicMapType_4880) (o_12@@3 T@Ref) (f_16@@42 T@Field_8300_8301) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_2543_2544 Mask@@33 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@14) o_12@@3 f_16@@42) (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4859) (ExhaleHeap@@13 T@PolymorphicMapType_4859) (Mask@@34 T@PolymorphicMapType_4880) (o_12@@4 T@Ref) (f_16@@43 T@Field_2543_1234) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_2543_1234 Mask@@34 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@15) o_12@@4 f_16@@43) (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4859) (ExhaleHeap@@14 T@PolymorphicMapType_4859) (Mask@@35 T@PolymorphicMapType_4880) (o_12@@5 T@Ref) (f_16@@44 T@Field_2540_8318) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_2540_15459 Mask@@35 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@16) o_12@@5 f_16@@44) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4859) (ExhaleHeap@@15 T@PolymorphicMapType_4859) (Mask@@36 T@PolymorphicMapType_4880) (o_12@@6 T@Ref) (f_16@@45 T@Field_4932_4933) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_2540_4933 Mask@@36 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@17) o_12@@6 f_16@@45) (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4859) (ExhaleHeap@@16 T@PolymorphicMapType_4859) (Mask@@37 T@PolymorphicMapType_4880) (o_12@@7 T@Ref) (f_16@@46 T@Field_4919_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_2540_53 Mask@@37 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@18) o_12@@7 f_16@@46) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4859) (ExhaleHeap@@17 T@PolymorphicMapType_4859) (Mask@@38 T@PolymorphicMapType_4880) (o_12@@8 T@Ref) (f_16@@47 T@Field_2540_2544) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_2540_2544 Mask@@38 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@19) o_12@@8 f_16@@47) (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4859) (ExhaleHeap@@18 T@PolymorphicMapType_4859) (Mask@@39 T@PolymorphicMapType_4880) (o_12@@9 T@Ref) (f_16@@48 T@Field_8253_1234) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_2540_1234 Mask@@39 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@20) o_12@@9 f_16@@48) (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8313_8318) ) (! (= (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_2543_4933) ) (! (= (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_2543_53) ) (! (= (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8300_8301) ) (! (= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_2543_1234) ) (! (= (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_2540_8318) ) (! (= (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4932_4933) ) (! (= (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4919_53) ) (! (= (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_2540_2544) ) (! (= (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8253_1234) ) (! (= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4880) (SummandMask1 T@PolymorphicMapType_4880) (SummandMask2 T@PolymorphicMapType_4880) (o_2@@39 T@Ref) (f_4@@39 T@Field_8313_8318) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4880) (SummandMask1@@0 T@PolymorphicMapType_4880) (SummandMask2@@0 T@PolymorphicMapType_4880) (o_2@@40 T@Ref) (f_4@@40 T@Field_2543_4933) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4880) (SummandMask1@@1 T@PolymorphicMapType_4880) (SummandMask2@@1 T@PolymorphicMapType_4880) (o_2@@41 T@Ref) (f_4@@41 T@Field_2543_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4880) (SummandMask1@@2 T@PolymorphicMapType_4880) (SummandMask2@@2 T@PolymorphicMapType_4880) (o_2@@42 T@Ref) (f_4@@42 T@Field_8300_8301) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4880) (SummandMask1@@3 T@PolymorphicMapType_4880) (SummandMask2@@3 T@PolymorphicMapType_4880) (o_2@@43 T@Ref) (f_4@@43 T@Field_2543_1234) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4880) (SummandMask1@@4 T@PolymorphicMapType_4880) (SummandMask2@@4 T@PolymorphicMapType_4880) (o_2@@44 T@Ref) (f_4@@44 T@Field_2540_8318) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4880) (SummandMask1@@5 T@PolymorphicMapType_4880) (SummandMask2@@5 T@PolymorphicMapType_4880) (o_2@@45 T@Ref) (f_4@@45 T@Field_4932_4933) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4880) (SummandMask1@@6 T@PolymorphicMapType_4880) (SummandMask2@@6 T@PolymorphicMapType_4880) (o_2@@46 T@Ref) (f_4@@46 T@Field_4919_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4880) (SummandMask1@@7 T@PolymorphicMapType_4880) (SummandMask2@@7 T@PolymorphicMapType_4880) (o_2@@47 T@Ref) (f_4@@47 T@Field_2540_2544) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4880) (SummandMask1@@8 T@PolymorphicMapType_4880) (SummandMask2@@8 T@PolymorphicMapType_4880) (o_2@@48 T@Ref) (f_4@@48 T@Field_8253_1234) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_2543_2544 (P x@@3)) 0)
 :qid |stdinbpl.217:15|
 :skolemid |24|
 :pattern ( (P x@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4859) (o_11 T@Ref) (f_17 T@Field_8313_8318) (v T@PolymorphicMapType_5408) ) (! (succHeap Heap@@21 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@21) (store (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@21) o_11 f_17 v) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@21) (store (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@21) o_11 f_17 v) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@21) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4859) (o_11@@0 T@Ref) (f_17@@0 T@Field_8300_8301) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@22) (store (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@22) (store (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@22) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4859) (o_11@@1 T@Ref) (f_17@@1 T@Field_2543_1234) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@23) (store (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@23) (store (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@23) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4859) (o_11@@2 T@Ref) (f_17@@2 T@Field_2543_4933) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@24) (store (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@24) o_11@@2 f_17@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@24) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@24) (store (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@24) o_11@@2 f_17@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4859) (o_11@@3 T@Ref) (f_17@@3 T@Field_2543_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@25) (store (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@25) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@25) (store (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4859) (o_11@@4 T@Ref) (f_17@@4 T@Field_2540_8318) (v@@4 T@PolymorphicMapType_5408) ) (! (succHeap Heap@@26 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@26) (store (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@26) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@26) (store (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@26) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@26) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4859) (o_11@@5 T@Ref) (f_17@@5 T@Field_2540_2544) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@27) (store (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@27) (store (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@27) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4859) (o_11@@6 T@Ref) (f_17@@6 T@Field_8253_1234) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@28) (store (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@28) (store (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@28) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4859) (o_11@@7 T@Ref) (f_17@@7 T@Field_4932_4933) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@29) (store (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@29) (store (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@29) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4859) (o_11@@8 T@Ref) (f_17@@8 T@Field_4919_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_4859 (store (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4859 (store (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@@30) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@@30)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_2543 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.209:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2543 (P x@@4)))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_4932_4933) (Heap@@31 T@PolymorphicMapType_4859) ) (!  (=> (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@31) o_11@@9 $allocated) (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@31) (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@31) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@@31) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_8300_8301) (v_1@@1 T@FrameType) (q T@Field_8300_8301) (w@@1 T@FrameType) (r T@Field_8300_8301) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8300_8300 p@@2 v_1@@1 q w@@1) (InsidePredicate_8300_8300 q w@@1 r u)) (InsidePredicate_8300_8300 p@@2 v_1@@1 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8300_8300 p@@2 v_1@@1 q w@@1) (InsidePredicate_8300_8300 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8300_8301) (v_1@@2 T@FrameType) (q@@0 T@Field_8300_8301) (w@@2 T@FrameType) (r@@0 T@Field_2540_2544) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8300_8300 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8300_4919 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8300_4919 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8300_8300 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8300_4919 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8300_8301) (v_1@@3 T@FrameType) (q@@1 T@Field_2540_2544) (w@@3 T@FrameType) (r@@1 T@Field_8300_8301) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8300_4919 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4919_8300 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8300_8300 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8300_4919 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4919_8300 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8300_8301) (v_1@@4 T@FrameType) (q@@2 T@Field_2540_2544) (w@@4 T@FrameType) (r@@2 T@Field_2540_2544) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8300_4919 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4919_4919 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8300_4919 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8300_4919 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4919_4919 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_2540_2544) (v_1@@5 T@FrameType) (q@@3 T@Field_8300_8301) (w@@5 T@FrameType) (r@@3 T@Field_8300_8301) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4919_8300 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8300_8300 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4919_8300 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4919_8300 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8300_8300 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_2540_2544) (v_1@@6 T@FrameType) (q@@4 T@Field_8300_8301) (w@@6 T@FrameType) (r@@4 T@Field_2540_2544) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4919_8300 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8300_4919 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4919_4919 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4919_8300 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8300_4919 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_2540_2544) (v_1@@7 T@FrameType) (q@@5 T@Field_2540_2544) (w@@7 T@FrameType) (r@@5 T@Field_8300_8301) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4919_4919 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4919_8300 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4919_8300 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4919_4919 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4919_8300 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_2540_2544) (v_1@@8 T@FrameType) (q@@6 T@Field_2540_2544) (w@@8 T@FrameType) (r@@6 T@Field_2540_2544) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4919_4919 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4919_4919 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4919_4919 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4919_4919 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4919_4919 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@5 () T@PolymorphicMapType_4859)
(declare-fun Heap@4 () T@PolymorphicMapType_4859)
(declare-fun x@@5 () T@Ref)
(declare-fun Mask@4 () T@PolymorphicMapType_4880)
(declare-fun Heap@1 () T@PolymorphicMapType_4859)
(declare-fun Heap@2 () T@PolymorphicMapType_4859)
(declare-fun Heap@3 () T@PolymorphicMapType_4859)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@3 () T@PolymorphicMapType_4880)
(declare-fun Mask@2 () T@PolymorphicMapType_4880)
(declare-fun FrameFragment_1234 (Int) T@FrameType)
(declare-fun Mask@1 () T@PolymorphicMapType_4880)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_4859)
(declare-fun Heap@0 () T@PolymorphicMapType_4859)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_4880)
(declare-fun QPMask@0 () T@PolymorphicMapType_4880)
(declare-fun getPredWandId_2540_1234 (T@Field_8253_1234) Int)
(declare-fun getPredWandId_2540_2544 (T@Field_2540_2544) Int)
(declare-fun getPredWandId_2540_53 (T@Field_4919_53) Int)
(declare-fun getPredWandId_2540_4933 (T@Field_4932_4933) Int)
(declare-fun getPredWandId_2540_34137 (T@Field_2540_8318) Int)
(declare-fun getPredWandId_2543_1234 (T@Field_2543_1234) Int)
(declare-fun getPredWandId_2543_53 (T@Field_2543_53) Int)
(declare-fun getPredWandId_2543_4933 (T@Field_2543_4933) Int)
(declare-fun getPredWandId_2543_34946 (T@Field_8313_8318) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_4859)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon10_correct  (=> (= Heap@5 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@4) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@4) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@4) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@4) (store (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5) (PolymorphicMapType_5408 (store (|PolymorphicMapType_5408_2540_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) x@@5 f_7 true) (|PolymorphicMapType_5408_2540_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_2540_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_2540_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_2540_18317#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_8300_1234#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_8300_53#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_8300_4933#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_8300_8301#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))) (|PolymorphicMapType_5408_8300_19365#PolymorphicMapType_5408| (select (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@4) null (|P#sm| x@@5))))) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@4) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@4) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@4) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@4) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@4))) (=> (and (state Heap@5 Mask@4) (state Heap@5 Mask@4)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@4) x@@5 f_7) NoPerm)) (=> (= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@4) x@@5 f_7) NoPerm) (=> (and (state Heap@5 Mask@4) (= (ControlFlow 0 3) (- 0 2))) (= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@4) null (P x@@5)) FullPerm))))))))
(let ((anon15_Else_correct  (=> (HasDirectPerm_2543_2544 Mask@4 null (P x@@5)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 6) 3)) anon10_correct))))
(let ((anon15_Then_correct  (=> (not (HasDirectPerm_2543_2544 Mask@4 null (P x@@5))) (=> (and (and (= Heap@2 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@1) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@1) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@1) (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@1) (store (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@1) null (|P#sm| x@@5) ZeroPMask) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@1) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@1) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@1) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@1) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@1))) (= Heap@3 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@2) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| Heap@2) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@2) (store (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@2) null (P x@@5) freshVersion@0) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| Heap@2) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| Heap@2) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| Heap@2) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| Heap@2) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| Heap@2) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 5) 3))) anon10_correct))))
(let ((anon8_correct  (=> (= Mask@3 (PolymorphicMapType_4880 (store (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@2) x@@5 f_7 (- (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@2) x@@5 f_7) FullPerm)) (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@2) (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@2))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (> (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@1) x@@5 f_7) 0)) (=> (> (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@1) x@@5 f_7) 0) (=> (= Mask@4 (PolymorphicMapType_4880 (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@3) (store (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@3) null (P x@@5) (+ (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@3) null (P x@@5)) FullPerm)) (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@3) (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@3) (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@3) (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@3) (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@3) (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@3) (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@3) (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@3))) (=> (and (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (|P#trigger_2543| Heap@1 (P x@@5)) (= (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| Heap@1) null (P x@@5)) (FrameFragment_1234 (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@1) x@@5 f_7))))) (and (=> (= (ControlFlow 0 7) 5) anon15_Then_correct) (=> (= (ControlFlow 0 7) 6) anon15_Else_correct)))))))))
(let ((anon14_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 7)) anon8_correct)))
(let ((anon14_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@2) x@@5 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@2) x@@5 f_7)) (=> (= (ControlFlow 0 9) 7) anon8_correct))))))
(let ((anon6_correct  (=> (and (not (= x@@5 null)) (= Mask@2 (PolymorphicMapType_4880 (store (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@1) x@@5 f_7 (+ (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@1) x@@5 f_7) FullPerm)) (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@1) (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@1)))) (=> (and (and (state Heap@1 Mask@2) (> (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| Heap@1) x@@5 f_7) 0)) (and (state Heap@1 Mask@2) (state Heap@1 Mask@2))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@2) x@@5 f_7) FullPerm)) (=> (= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@2) x@@5 f_7) FullPerm) (=> (state Heap@1 Mask@2) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@2) null (P x@@5)) NoPerm)) (=> (= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@2) null (P x@@5)) NoPerm) (=> (state Heap@1 Mask@2) (and (=> (= (ControlFlow 0 12) 9) anon14_Then_correct) (=> (= (ControlFlow 0 12) 11) anon14_Else_correct))))))))))))
(let ((anon13_Else_correct  (=> (HasDirectPerm_2543_2544 Mask@1 null (P x@@5)) (=> (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 16) 12)) anon6_correct))))
(let ((anon13_Then_correct  (=> (and (and (not (HasDirectPerm_2543_2544 Mask@1 null (P x@@5))) (= Heap@0 (PolymorphicMapType_4859 (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| ExhaleHeap@0) (|PolymorphicMapType_4859_2407_2408#PolymorphicMapType_4859| ExhaleHeap@0) (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@0) (store (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@0) null (P x@@5) newVersion@0) (|PolymorphicMapType_4859_2547_13740#PolymorphicMapType_4859| ExhaleHeap@0) (|PolymorphicMapType_4859_2540_2544#PolymorphicMapType_4859| ExhaleHeap@0) (|PolymorphicMapType_4859_2540_15501#PolymorphicMapType_4859| ExhaleHeap@0) (|PolymorphicMapType_4859_2543_1234#PolymorphicMapType_4859| ExhaleHeap@0) (|PolymorphicMapType_4859_2543_53#PolymorphicMapType_4859| ExhaleHeap@0) (|PolymorphicMapType_4859_2543_4933#PolymorphicMapType_4859| ExhaleHeap@0)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 15) 12))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_4880 (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| Mask@0) (store (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@0) null (P x@@5) (- (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@0) null (P x@@5)) FullPerm)) (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| Mask@0) (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| Mask@0) (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| Mask@0) (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| Mask@0) (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| Mask@0) (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| Mask@0) (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| Mask@0) (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| Mask@0))) (and (=> (= (ControlFlow 0 17) 15) anon13_Then_correct) (=> (= (ControlFlow 0 17) 16) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 17)) anon4_correct)))
(let ((anon12_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@0) null (P x@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| Mask@0) null (P x@@5))) (=> (= (ControlFlow 0 18) 17) anon4_correct))))))
(let ((anon11_Else_correct  (=> (forall ((x_1_1_1 T@Ref) ) (! (= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| QPMask@0) null (P x_1_1_1)) (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| ZeroMask) null (P x_1_1_1)))
 :qid |stdinbpl.417:22|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| QPMask@0) null (P x_1_1_1)))
)) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_8253_1234) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_2540_1234 f_5))) (not (= (getPredWandId_2540_1234 f_5) 0))) (= (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_2540_2544) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_2540_16845 f_5@@0))) (not (= (getPredWandId_2540_2544 f_5@@0) 0))) (= (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_4919_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_2540_53 f_5@@1))) (not (= (getPredWandId_2540_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_4932_4933) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_2540_4933 f_5@@2))) (not (= (getPredWandId_2540_4933 f_5@@2) 0))) (= (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_2540_8318) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_2540_26631 f_5@@3))) (not (= (getPredWandId_2540_34137 f_5@@3) 0))) (= (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_2543_1234) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_2543_1234 f_5@@4))) (not (= (getPredWandId_2543_1234 f_5@@4) 0))) (= (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_8300_8301) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_2543_2544 f_5@@5))) (not (= (getPredWandId_2543_2544 f_5@@5) 0))) (= (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_2543_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_2543_53 f_5@@6))) (not (= (getPredWandId_2543_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_2543_4933) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_2543_4933 f_5@@7))) (not (= (getPredWandId_2543_4933 f_5@@7) 0))) (= (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| ZeroMask) o_4@@7 f_5@@7) (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| QPMask@0) o_4@@7 f_5@@7)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| ZeroMask) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| QPMask@0) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_8313_8318) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_2543_27462 f_5@@8))) (not (= (getPredWandId_2543_34946 f_5@@8) 0))) (= (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| ZeroMask) o_4@@8 f_5@@8) (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| QPMask@0) o_4@@8 f_5@@8)))
 :qid |stdinbpl.423:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| ZeroMask) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| QPMask@0) o_4@@8 f_5@@8))
))) (and (and (and (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@0 QPMask@0) (state ExhaleHeap@0 QPMask@0)) (and (= Mask@0 (PolymorphicMapType_4880 (|PolymorphicMapType_4880_2540_1234#PolymorphicMapType_4880| QPMask@0) (store (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| QPMask@0) null (P x@@5) (+ (select (|PolymorphicMapType_4880_2543_2544#PolymorphicMapType_4880| QPMask@0) null (P x@@5)) FullPerm)) (|PolymorphicMapType_4880_2540_2544#PolymorphicMapType_4880| QPMask@0) (|PolymorphicMapType_4880_2540_53#PolymorphicMapType_4880| QPMask@0) (|PolymorphicMapType_4880_2540_4933#PolymorphicMapType_4880| QPMask@0) (|PolymorphicMapType_4880_2540_24759#PolymorphicMapType_4880| QPMask@0) (|PolymorphicMapType_4880_2543_1234#PolymorphicMapType_4880| QPMask@0) (|PolymorphicMapType_4880_2543_53#PolymorphicMapType_4880| QPMask@0) (|PolymorphicMapType_4880_2543_4933#PolymorphicMapType_4880| QPMask@0) (|PolymorphicMapType_4880_2543_25170#PolymorphicMapType_4880| QPMask@0))) (state ExhaleHeap@0 Mask@0))) (and (and (state ExhaleHeap@0 Mask@0) (state ExhaleHeap@0 Mask@0)) (and (|P#trigger_2543| ExhaleHeap@0 (P x@@5)) (= (select (|PolymorphicMapType_4859_2543_2544#PolymorphicMapType_4859| ExhaleHeap@0) null (P x@@5)) (FrameFragment_1234 (select (|PolymorphicMapType_4859_2540_1234#PolymorphicMapType_4859| ExhaleHeap@0) x@@5 f_7))))))) (and (=> (= (ControlFlow 0 21) 18) anon12_Then_correct) (=> (= (ControlFlow 0 21) 20) anon12_Else_correct))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_4859_2404_53#PolymorphicMapType_4859| Heap@@32) x@@5 $allocated)) (and (=> (= (ControlFlow 0 22) 1) anon11_Then_correct) (=> (= (ControlFlow 0 22) 21) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 22) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid