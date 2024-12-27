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
(declare-sort T@Field_8298_53 0)
(declare-sort T@Field_8311_8312 0)
(declare-sort T@Field_14584_14585 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14474_14476 0)
(declare-sort T@Field_14597_14602 0)
(declare-sort T@Field_4992_14585 0)
(declare-sort T@Field_4992_14602 0)
(declare-sort T@Field_14584_17753 0)
(declare-sort T@Field_14584_3227 0)
(declare-sort T@Field_14584_8312 0)
(declare-datatypes ((T@PolymorphicMapType_8259 0)) (((PolymorphicMapType_8259 (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| (Array T@Ref T@Field_14474_14476 Real)) (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| (Array T@Ref T@Field_8298_53 Real)) (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| (Array T@Ref T@Field_14584_14585 Real)) (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| (Array T@Ref T@Field_4992_14585 Real)) (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| (Array T@Ref T@Field_8311_8312 Real)) (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| (Array T@Ref T@Field_4992_14602 Real)) (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| (Array T@Ref T@Field_14584_17753 Real)) (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| (Array T@Ref T@Field_14584_3227 Real)) (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| (Array T@Ref T@Field_14584_8312 Real)) (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| (Array T@Ref T@Field_14597_14602 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8787 0)) (((PolymorphicMapType_8787 (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (Array T@Ref T@Field_14474_14476 Bool)) (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (Array T@Ref T@Field_8298_53 Bool)) (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (Array T@Ref T@Field_8311_8312 Bool)) (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (Array T@Ref T@Field_4992_14585 Bool)) (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (Array T@Ref T@Field_4992_14602 Bool)) (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (Array T@Ref T@Field_14584_17753 Bool)) (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (Array T@Ref T@Field_14584_3227 Bool)) (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (Array T@Ref T@Field_14584_8312 Bool)) (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (Array T@Ref T@Field_14584_14585 Bool)) (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (Array T@Ref T@Field_14597_14602 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8238 0)) (((PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| (Array T@Ref T@Field_8298_53 Bool)) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| (Array T@Ref T@Field_8311_8312 T@Ref)) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| (Array T@Ref T@Field_14584_14585 T@FrameType)) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| (Array T@Ref T@Field_14474_14476 (Array T@Ref Bool))) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| (Array T@Ref T@Field_14597_14602 T@PolymorphicMapType_8787)) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| (Array T@Ref T@Field_4992_14585 T@FrameType)) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| (Array T@Ref T@Field_4992_14602 T@PolymorphicMapType_8787)) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| (Array T@Ref T@Field_14584_17753 (Array T@Ref Bool))) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| (Array T@Ref T@Field_14584_3227 Bool)) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| (Array T@Ref T@Field_14584_8312 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_8298_53)
(declare-fun neighbour () T@Field_14474_14476)
(declare-fun visited () T@Field_8298_53)
(declare-fun succHeap (T@PolymorphicMapType_8238 T@PolymorphicMapType_8238) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8238 T@PolymorphicMapType_8238) Bool)
(declare-fun state (T@PolymorphicMapType_8238 T@PolymorphicMapType_8259) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8259) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8787)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun access_fields (T@Ref) T@Field_14584_14585)
(declare-fun IsPredicateField_5000_5001 (T@Field_14584_14585) Bool)
(declare-fun |access_fields#trigger_5000| (T@PolymorphicMapType_8238 T@Field_14584_14585) Bool)
(declare-fun |access_fields#everUsed_5000| (T@Field_14584_14585) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8238 T@PolymorphicMapType_8238 T@PolymorphicMapType_8259) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5000 (T@Field_14584_14585) T@Field_14597_14602)
(declare-fun HasDirectPerm_14584_14585 (T@PolymorphicMapType_8259 T@Ref T@Field_14584_14585) Bool)
(declare-fun IsPredicateField_4992_24183 (T@Field_4992_14585) Bool)
(declare-fun PredicateMaskField_4992 (T@Field_4992_14585) T@Field_4992_14602)
(declare-fun HasDirectPerm_4992_14585 (T@PolymorphicMapType_8259 T@Ref T@Field_4992_14585) Bool)
(declare-fun IsWandField_14584_27889 (T@Field_14584_14585) Bool)
(declare-fun WandMaskField_14584 (T@Field_14584_14585) T@Field_14597_14602)
(declare-fun IsWandField_4992_27532 (T@Field_4992_14585) Bool)
(declare-fun WandMaskField_4992 (T@Field_4992_14585) T@Field_4992_14602)
(declare-fun |access_fields#sm| (T@Ref) T@Field_14597_14602)
(declare-fun dummyHeap () T@PolymorphicMapType_8238)
(declare-fun ZeroMask () T@PolymorphicMapType_8259)
(declare-fun InsidePredicate_14584_14584 (T@Field_14584_14585 T@FrameType T@Field_14584_14585 T@FrameType) Bool)
(declare-fun InsidePredicate_8298_8298 (T@Field_4992_14585 T@FrameType T@Field_4992_14585 T@FrameType) Bool)
(declare-fun IsPredicateField_4992_14500 (T@Field_14474_14476) Bool)
(declare-fun IsWandField_4992_14527 (T@Field_14474_14476) Bool)
(declare-fun IsPredicateField_4997_3227 (T@Field_8298_53) Bool)
(declare-fun IsWandField_4997_3227 (T@Field_8298_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5000_34862 (T@Field_14597_14602) Bool)
(declare-fun IsWandField_5000_34878 (T@Field_14597_14602) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5000_8312 (T@Field_14584_8312) Bool)
(declare-fun IsWandField_5000_8312 (T@Field_14584_8312) Bool)
(declare-fun IsPredicateField_5000_3227 (T@Field_14584_3227) Bool)
(declare-fun IsWandField_5000_3227 (T@Field_14584_3227) Bool)
(declare-fun IsPredicateField_5000_34199 (T@Field_14584_17753) Bool)
(declare-fun IsWandField_5000_34215 (T@Field_14584_17753) Bool)
(declare-fun IsPredicateField_4992_34026 (T@Field_4992_14602) Bool)
(declare-fun IsWandField_4992_34042 (T@Field_4992_14602) Bool)
(declare-fun IsPredicateField_4992_8312 (T@Field_8311_8312) Bool)
(declare-fun IsWandField_4992_8312 (T@Field_8311_8312) Bool)
(declare-fun HasDirectPerm_14584_23938 (T@PolymorphicMapType_8259 T@Ref T@Field_14597_14602) Bool)
(declare-fun HasDirectPerm_14584_8312 (T@PolymorphicMapType_8259 T@Ref T@Field_14584_8312) Bool)
(declare-fun HasDirectPerm_14584_3227 (T@PolymorphicMapType_8259 T@Ref T@Field_14584_3227) Bool)
(declare-fun HasDirectPerm_14584_23032 (T@PolymorphicMapType_8259 T@Ref T@Field_14584_17753) Bool)
(declare-fun HasDirectPerm_4992_22752 (T@PolymorphicMapType_8259 T@Ref T@Field_4992_14602) Bool)
(declare-fun HasDirectPerm_4992_8312 (T@PolymorphicMapType_8259 T@Ref T@Field_8311_8312) Bool)
(declare-fun HasDirectPerm_4997_3227 (T@PolymorphicMapType_8259 T@Ref T@Field_8298_53) Bool)
(declare-fun HasDirectPerm_4992_17753 (T@PolymorphicMapType_8259 T@Ref T@Field_14474_14476) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8259 T@PolymorphicMapType_8259 T@PolymorphicMapType_8259) Bool)
(declare-fun getPredWandId_5000_5001 (T@Field_14584_14585) Int)
(declare-fun |Set#Subset_4993| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun InsidePredicate_14584_8298 (T@Field_14584_14585 T@FrameType T@Field_4992_14585 T@FrameType) Bool)
(declare-fun InsidePredicate_8298_14584 (T@Field_4992_14585 T@FrameType T@Field_14584_14585 T@FrameType) Bool)
(assert (distinct $allocated visited)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8238) (Heap1 T@PolymorphicMapType_8238) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8238) (Mask T@PolymorphicMapType_8259) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8238) (Heap1@@0 T@PolymorphicMapType_8238) (Heap2 T@PolymorphicMapType_8238) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14597_14602) ) (!  (not (select (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14584_14585) ) (!  (not (select (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14584_8312) ) (!  (not (select (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14584_3227) ) (!  (not (select (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14584_17753) ) (!  (not (select (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4992_14602) ) (!  (not (select (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4992_14585) ) (!  (not (select (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8311_8312) ) (!  (not (select (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8298_53) ) (!  (not (select (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14474_14476) ) (!  (not (select (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((node T@Ref) ) (! (IsPredicateField_5000_5001 (access_fields node))
 :qid |stdinbpl.404:15|
 :skolemid |83|
 :pattern ( (access_fields node))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8238) (node@@0 T@Ref) ) (! (|access_fields#everUsed_5000| (access_fields node@@0))
 :qid |stdinbpl.423:15|
 :skolemid |87|
 :pattern ( (|access_fields#trigger_5000| Heap@@0 (access_fields node@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8238) (ExhaleHeap T@PolymorphicMapType_8238) (Mask@@0 T@PolymorphicMapType_8259) (pm_f_13 T@Field_14584_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14584_14585 Mask@@0 null pm_f_13) (IsPredicateField_5000_5001 pm_f_13)) (= (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@1) null (PredicateMaskField_5000 pm_f_13)) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap) null (PredicateMaskField_5000 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5000_5001 pm_f_13) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap) null (PredicateMaskField_5000 pm_f_13)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8238) (ExhaleHeap@@0 T@PolymorphicMapType_8238) (Mask@@1 T@PolymorphicMapType_8259) (pm_f_13@@0 T@Field_4992_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4992_14585 Mask@@1 null pm_f_13@@0) (IsPredicateField_4992_24183 pm_f_13@@0)) (= (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@2) null (PredicateMaskField_4992 pm_f_13@@0)) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@0) null (PredicateMaskField_4992 pm_f_13@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4992_24183 pm_f_13@@0) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@0) null (PredicateMaskField_4992 pm_f_13@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8238) (ExhaleHeap@@1 T@PolymorphicMapType_8238) (Mask@@2 T@PolymorphicMapType_8259) (pm_f_13@@1 T@Field_14584_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14584_14585 Mask@@2 null pm_f_13@@1) (IsWandField_14584_27889 pm_f_13@@1)) (= (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@3) null (WandMaskField_14584 pm_f_13@@1)) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@1) null (WandMaskField_14584 pm_f_13@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_14584_27889 pm_f_13@@1) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@1) null (WandMaskField_14584 pm_f_13@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8238) (ExhaleHeap@@2 T@PolymorphicMapType_8238) (Mask@@3 T@PolymorphicMapType_8259) (pm_f_13@@2 T@Field_4992_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4992_14585 Mask@@3 null pm_f_13@@2) (IsWandField_4992_27532 pm_f_13@@2)) (= (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@4) null (WandMaskField_4992 pm_f_13@@2)) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@2) null (WandMaskField_4992 pm_f_13@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_4992_27532 pm_f_13@@2) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@2) null (WandMaskField_4992 pm_f_13@@2)))
)))
(assert (forall ((node@@1 T@Ref) (node2 T@Ref) ) (!  (=> (= (access_fields node@@1) (access_fields node2)) (= node@@1 node2))
 :qid |stdinbpl.414:15|
 :skolemid |85|
 :pattern ( (access_fields node@@1) (access_fields node2))
)))
(assert (forall ((node@@2 T@Ref) (node2@@0 T@Ref) ) (!  (=> (= (|access_fields#sm| node@@2) (|access_fields#sm| node2@@0)) (= node@@2 node2@@0))
 :qid |stdinbpl.418:15|
 :skolemid |86|
 :pattern ( (|access_fields#sm| node@@2) (|access_fields#sm| node2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8238) (ExhaleHeap@@3 T@PolymorphicMapType_8238) (Mask@@4 T@PolymorphicMapType_8259) (pm_f_13@@3 T@Field_14584_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14584_14585 Mask@@4 null pm_f_13@@3) (IsPredicateField_5000_5001 pm_f_13@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_14474_14476) ) (!  (=> (select (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13 f_30) (= (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@5) o2_13 f_30) (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_8298_53) ) (!  (=> (select (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@5) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_8311_8312) ) (!  (=> (select (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@5) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_4992_14585) ) (!  (=> (select (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@5) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_4992_14602) ) (!  (=> (select (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@5) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_14584_17753) ) (!  (=> (select (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@5) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_14584_3227) ) (!  (=> (select (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@5) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_14584_8312) ) (!  (=> (select (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@5) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_14584_14585) ) (!  (=> (select (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@5) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_14597_14602) ) (!  (=> (select (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) null (PredicateMaskField_5000 pm_f_13@@3))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@5) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@3) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5000_5001 pm_f_13@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8238) (ExhaleHeap@@4 T@PolymorphicMapType_8238) (Mask@@5 T@PolymorphicMapType_8259) (pm_f_13@@4 T@Field_4992_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4992_14585 Mask@@5 null pm_f_13@@4) (IsPredicateField_4992_24183 pm_f_13@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_14474_14476) ) (!  (=> (select (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@6) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@9 f_30@@9))
)) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_8298_53) ) (!  (=> (select (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@6) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_8311_8312) ) (!  (=> (select (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@6) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_4992_14585) ) (!  (=> (select (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@6) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_4992_14602) ) (!  (=> (select (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_14584_17753) ) (!  (=> (select (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@6) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@14 f_30@@14))
))) (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_14584_3227) ) (!  (=> (select (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@6) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@15 f_30@@15))
))) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_14584_8312) ) (!  (=> (select (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@6) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_14584_14585) ) (!  (=> (select (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@6) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_14597_14602) ) (!  (=> (select (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@6) null (PredicateMaskField_4992 pm_f_13@@4))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@6) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@4) o2_13@@18 f_30@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4992_24183 pm_f_13@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8238) (ExhaleHeap@@5 T@PolymorphicMapType_8238) (Mask@@6 T@PolymorphicMapType_8259) (pm_f_13@@5 T@Field_14584_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_14584_14585 Mask@@6 null pm_f_13@@5) (IsWandField_14584_27889 pm_f_13@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_14474_14476) ) (!  (=> (select (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@7) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@19 f_30@@19))
)) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_8298_53) ) (!  (=> (select (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@7) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_8311_8312) ) (!  (=> (select (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@7) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_4992_14585) ) (!  (=> (select (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@7) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@22 f_30@@22))
))) (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_4992_14602) ) (!  (=> (select (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@7) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@23 f_30@@23))
))) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_14584_17753) ) (!  (=> (select (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@7) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_14584_3227) ) (!  (=> (select (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@7) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_14584_8312) ) (!  (=> (select (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@7) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_14584_14585) ) (!  (=> (select (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@7) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_14597_14602) ) (!  (=> (select (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) null (WandMaskField_14584 pm_f_13@@5))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@7) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@5) o2_13@@28 f_30@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_14584_27889 pm_f_13@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8238) (ExhaleHeap@@6 T@PolymorphicMapType_8238) (Mask@@7 T@PolymorphicMapType_8259) (pm_f_13@@6 T@Field_4992_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4992_14585 Mask@@7 null pm_f_13@@6) (IsWandField_4992_27532 pm_f_13@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_14474_14476) ) (!  (=> (select (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@8) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@29 f_30@@29))
)) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_8298_53) ) (!  (=> (select (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@8) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@30 f_30@@30))
))) (forall ((o2_13@@31 T@Ref) (f_30@@31 T@Field_8311_8312) ) (!  (=> (select (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@31 f_30@@31) (= (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@8) o2_13@@31 f_30@@31) (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@31 f_30@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@31 f_30@@31))
))) (forall ((o2_13@@32 T@Ref) (f_30@@32 T@Field_4992_14585) ) (!  (=> (select (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@32 f_30@@32) (= (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@8) o2_13@@32 f_30@@32) (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@32 f_30@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@32 f_30@@32))
))) (forall ((o2_13@@33 T@Ref) (f_30@@33 T@Field_4992_14602) ) (!  (=> (select (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@33 f_30@@33) (= (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) o2_13@@33 f_30@@33) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@33 f_30@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@33 f_30@@33))
))) (forall ((o2_13@@34 T@Ref) (f_30@@34 T@Field_14584_17753) ) (!  (=> (select (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@34 f_30@@34) (= (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@8) o2_13@@34 f_30@@34) (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@34 f_30@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@34 f_30@@34))
))) (forall ((o2_13@@35 T@Ref) (f_30@@35 T@Field_14584_3227) ) (!  (=> (select (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@35 f_30@@35) (= (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@8) o2_13@@35 f_30@@35) (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@35 f_30@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@35 f_30@@35))
))) (forall ((o2_13@@36 T@Ref) (f_30@@36 T@Field_14584_8312) ) (!  (=> (select (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@36 f_30@@36) (= (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@8) o2_13@@36 f_30@@36) (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@36 f_30@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@36 f_30@@36))
))) (forall ((o2_13@@37 T@Ref) (f_30@@37 T@Field_14584_14585) ) (!  (=> (select (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@37 f_30@@37) (= (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@8) o2_13@@37 f_30@@37) (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@37 f_30@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@37 f_30@@37))
))) (forall ((o2_13@@38 T@Ref) (f_30@@38 T@Field_14597_14602) ) (!  (=> (select (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@8) null (WandMaskField_4992 pm_f_13@@6))) o2_13@@38 f_30@@38) (= (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@8) o2_13@@38 f_30@@38) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@38 f_30@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@6) o2_13@@38 f_30@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_4992_27532 pm_f_13@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8238) (ExhaleHeap@@7 T@PolymorphicMapType_8238) (Mask@@8 T@PolymorphicMapType_8259) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@9) o_22 $allocated) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_14584_14585) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14584_14584 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14584_14584 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4992_14585) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8298_8298 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8298_8298 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4992_14500 neighbour)))
(assert  (not (IsWandField_4992_14527 neighbour)))
(assert  (not (IsPredicateField_4997_3227 visited)))
(assert  (not (IsWandField_4997_3227 visited)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8238) (ExhaleHeap@@8 T@PolymorphicMapType_8238) (Mask@@9 T@PolymorphicMapType_8259) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8259) (o_2@@9 T@Ref) (f_4@@9 T@Field_14597_14602) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5000_34862 f_4@@9))) (not (IsWandField_5000_34878 f_4@@9))) (<= (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8259) (o_2@@10 T@Ref) (f_4@@10 T@Field_14584_8312) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5000_8312 f_4@@10))) (not (IsWandField_5000_8312 f_4@@10))) (<= (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8259) (o_2@@11 T@Ref) (f_4@@11 T@Field_14584_14585) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5000_5001 f_4@@11))) (not (IsWandField_14584_27889 f_4@@11))) (<= (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8259) (o_2@@12 T@Ref) (f_4@@12 T@Field_14584_3227) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5000_3227 f_4@@12))) (not (IsWandField_5000_3227 f_4@@12))) (<= (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8259) (o_2@@13 T@Ref) (f_4@@13 T@Field_14584_17753) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5000_34199 f_4@@13))) (not (IsWandField_5000_34215 f_4@@13))) (<= (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8259) (o_2@@14 T@Ref) (f_4@@14 T@Field_4992_14602) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4992_34026 f_4@@14))) (not (IsWandField_4992_34042 f_4@@14))) (<= (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8259) (o_2@@15 T@Ref) (f_4@@15 T@Field_8311_8312) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4992_8312 f_4@@15))) (not (IsWandField_4992_8312 f_4@@15))) (<= (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8259) (o_2@@16 T@Ref) (f_4@@16 T@Field_4992_14585) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4992_24183 f_4@@16))) (not (IsWandField_4992_27532 f_4@@16))) (<= (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8259) (o_2@@17 T@Ref) (f_4@@17 T@Field_8298_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4997_3227 f_4@@17))) (not (IsWandField_4997_3227 f_4@@17))) (<= (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8259) (o_2@@18 T@Ref) (f_4@@18 T@Field_14474_14476) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4992_14500 f_4@@18))) (not (IsWandField_4992_14527 f_4@@18))) (<= (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8259) (o_2@@19 T@Ref) (f_4@@19 T@Field_14597_14602) ) (! (= (HasDirectPerm_14584_23938 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14584_23938 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8259) (o_2@@20 T@Ref) (f_4@@20 T@Field_14584_14585) ) (! (= (HasDirectPerm_14584_14585 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14584_14585 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8259) (o_2@@21 T@Ref) (f_4@@21 T@Field_14584_8312) ) (! (= (HasDirectPerm_14584_8312 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14584_8312 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8259) (o_2@@22 T@Ref) (f_4@@22 T@Field_14584_3227) ) (! (= (HasDirectPerm_14584_3227 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14584_3227 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8259) (o_2@@23 T@Ref) (f_4@@23 T@Field_14584_17753) ) (! (= (HasDirectPerm_14584_23032 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14584_23032 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8259) (o_2@@24 T@Ref) (f_4@@24 T@Field_4992_14602) ) (! (= (HasDirectPerm_4992_22752 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4992_22752 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8259) (o_2@@25 T@Ref) (f_4@@25 T@Field_4992_14585) ) (! (= (HasDirectPerm_4992_14585 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4992_14585 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8259) (o_2@@26 T@Ref) (f_4@@26 T@Field_8311_8312) ) (! (= (HasDirectPerm_4992_8312 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4992_8312 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8259) (o_2@@27 T@Ref) (f_4@@27 T@Field_8298_53) ) (! (= (HasDirectPerm_4997_3227 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4997_3227 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8259) (o_2@@28 T@Ref) (f_4@@28 T@Field_14474_14476) ) (! (= (HasDirectPerm_4992_17753 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4992_17753 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8238) (ExhaleHeap@@9 T@PolymorphicMapType_8238) (Mask@@30 T@PolymorphicMapType_8259) (o_22@@0 T@Ref) (f_30@@39 T@Field_14597_14602) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_14584_23938 Mask@@30 o_22@@0 f_30@@39) (= (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@11) o_22@@0 f_30@@39) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@9) o_22@@0 f_30@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| ExhaleHeap@@9) o_22@@0 f_30@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8238) (ExhaleHeap@@10 T@PolymorphicMapType_8238) (Mask@@31 T@PolymorphicMapType_8259) (o_22@@1 T@Ref) (f_30@@40 T@Field_14584_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_14584_14585 Mask@@31 o_22@@1 f_30@@40) (= (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@12) o_22@@1 f_30@@40) (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@10) o_22@@1 f_30@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| ExhaleHeap@@10) o_22@@1 f_30@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8238) (ExhaleHeap@@11 T@PolymorphicMapType_8238) (Mask@@32 T@PolymorphicMapType_8259) (o_22@@2 T@Ref) (f_30@@41 T@Field_14584_8312) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_14584_8312 Mask@@32 o_22@@2 f_30@@41) (= (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@13) o_22@@2 f_30@@41) (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@11) o_22@@2 f_30@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| ExhaleHeap@@11) o_22@@2 f_30@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8238) (ExhaleHeap@@12 T@PolymorphicMapType_8238) (Mask@@33 T@PolymorphicMapType_8259) (o_22@@3 T@Ref) (f_30@@42 T@Field_14584_3227) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_14584_3227 Mask@@33 o_22@@3 f_30@@42) (= (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@14) o_22@@3 f_30@@42) (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@12) o_22@@3 f_30@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| ExhaleHeap@@12) o_22@@3 f_30@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8238) (ExhaleHeap@@13 T@PolymorphicMapType_8238) (Mask@@34 T@PolymorphicMapType_8259) (o_22@@4 T@Ref) (f_30@@43 T@Field_14584_17753) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_14584_23032 Mask@@34 o_22@@4 f_30@@43) (= (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@15) o_22@@4 f_30@@43) (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@13) o_22@@4 f_30@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| ExhaleHeap@@13) o_22@@4 f_30@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8238) (ExhaleHeap@@14 T@PolymorphicMapType_8238) (Mask@@35 T@PolymorphicMapType_8259) (o_22@@5 T@Ref) (f_30@@44 T@Field_4992_14602) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_4992_22752 Mask@@35 o_22@@5 f_30@@44) (= (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@16) o_22@@5 f_30@@44) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@14) o_22@@5 f_30@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| ExhaleHeap@@14) o_22@@5 f_30@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8238) (ExhaleHeap@@15 T@PolymorphicMapType_8238) (Mask@@36 T@PolymorphicMapType_8259) (o_22@@6 T@Ref) (f_30@@45 T@Field_4992_14585) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_4992_14585 Mask@@36 o_22@@6 f_30@@45) (= (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@17) o_22@@6 f_30@@45) (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@15) o_22@@6 f_30@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| ExhaleHeap@@15) o_22@@6 f_30@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8238) (ExhaleHeap@@16 T@PolymorphicMapType_8238) (Mask@@37 T@PolymorphicMapType_8259) (o_22@@7 T@Ref) (f_30@@46 T@Field_8311_8312) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_4992_8312 Mask@@37 o_22@@7 f_30@@46) (= (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@18) o_22@@7 f_30@@46) (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@16) o_22@@7 f_30@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| ExhaleHeap@@16) o_22@@7 f_30@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8238) (ExhaleHeap@@17 T@PolymorphicMapType_8238) (Mask@@38 T@PolymorphicMapType_8259) (o_22@@8 T@Ref) (f_30@@47 T@Field_8298_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_4997_3227 Mask@@38 o_22@@8 f_30@@47) (= (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@19) o_22@@8 f_30@@47) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@17) o_22@@8 f_30@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| ExhaleHeap@@17) o_22@@8 f_30@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8238) (ExhaleHeap@@18 T@PolymorphicMapType_8238) (Mask@@39 T@PolymorphicMapType_8259) (o_22@@9 T@Ref) (f_30@@48 T@Field_14474_14476) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_4992_17753 Mask@@39 o_22@@9 f_30@@48) (= (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@20) o_22@@9 f_30@@48) (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@18) o_22@@9 f_30@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| ExhaleHeap@@18) o_22@@9 f_30@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_14597_14602) ) (! (= (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_14584_8312) ) (! (= (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_14584_14585) ) (! (= (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14584_3227) ) (! (= (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_14584_17753) ) (! (= (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_4992_14602) ) (! (= (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8311_8312) ) (! (= (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4992_14585) ) (! (= (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8298_53) ) (! (= (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14474_14476) ) (! (= (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8259) (SummandMask1 T@PolymorphicMapType_8259) (SummandMask2 T@PolymorphicMapType_8259) (o_2@@39 T@Ref) (f_4@@39 T@Field_14597_14602) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8259) (SummandMask1@@0 T@PolymorphicMapType_8259) (SummandMask2@@0 T@PolymorphicMapType_8259) (o_2@@40 T@Ref) (f_4@@40 T@Field_14584_8312) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8259) (SummandMask1@@1 T@PolymorphicMapType_8259) (SummandMask2@@1 T@PolymorphicMapType_8259) (o_2@@41 T@Ref) (f_4@@41 T@Field_14584_14585) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8259) (SummandMask1@@2 T@PolymorphicMapType_8259) (SummandMask2@@2 T@PolymorphicMapType_8259) (o_2@@42 T@Ref) (f_4@@42 T@Field_14584_3227) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8259) (SummandMask1@@3 T@PolymorphicMapType_8259) (SummandMask2@@3 T@PolymorphicMapType_8259) (o_2@@43 T@Ref) (f_4@@43 T@Field_14584_17753) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8259) (SummandMask1@@4 T@PolymorphicMapType_8259) (SummandMask2@@4 T@PolymorphicMapType_8259) (o_2@@44 T@Ref) (f_4@@44 T@Field_4992_14602) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8259) (SummandMask1@@5 T@PolymorphicMapType_8259) (SummandMask2@@5 T@PolymorphicMapType_8259) (o_2@@45 T@Ref) (f_4@@45 T@Field_8311_8312) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8259) (SummandMask1@@6 T@PolymorphicMapType_8259) (SummandMask2@@6 T@PolymorphicMapType_8259) (o_2@@46 T@Ref) (f_4@@46 T@Field_4992_14585) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8259) (SummandMask1@@7 T@PolymorphicMapType_8259) (SummandMask2@@7 T@PolymorphicMapType_8259) (o_2@@47 T@Ref) (f_4@@47 T@Field_8298_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8259) (SummandMask1@@8 T@PolymorphicMapType_8259) (SummandMask2@@8 T@PolymorphicMapType_8259) (o_2@@48 T@Ref) (f_4@@48 T@Field_14474_14476) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((node@@3 T@Ref) ) (! (= (getPredWandId_5000_5001 (access_fields node@@3)) 0)
 :qid |stdinbpl.408:15|
 :skolemid |84|
 :pattern ( (access_fields node@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8238) (o_35 T@Ref) (f_11 T@Field_14597_14602) (v T@PolymorphicMapType_8787) ) (! (succHeap Heap@@21 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@21) (store (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@21) o_35 f_11 v) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@21) (store (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@21) o_35 f_11 v) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@21) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8238) (o_35@@0 T@Ref) (f_11@@0 T@Field_14584_17753) (v@@0 (Array T@Ref Bool)) ) (! (succHeap Heap@@22 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@22) (store (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@22) (store (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@22) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8238) (o_35@@1 T@Ref) (f_11@@1 T@Field_14584_14585) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@23) (store (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@23) (store (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@23) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8238) (o_35@@2 T@Ref) (f_11@@2 T@Field_14584_8312) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@24) (store (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@24) o_35@@2 f_11@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@24) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@24) (store (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@24) o_35@@2 f_11@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8238) (o_35@@3 T@Ref) (f_11@@3 T@Field_14584_3227) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@25) (store (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@25) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@25) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@25) (store (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@25) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8238) (o_35@@4 T@Ref) (f_11@@4 T@Field_4992_14602) (v@@4 T@PolymorphicMapType_8787) ) (! (succHeap Heap@@26 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@26) (store (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@26) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@26) (store (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@26) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@26) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8238) (o_35@@5 T@Ref) (f_11@@5 T@Field_14474_14476) (v@@5 (Array T@Ref Bool)) ) (! (succHeap Heap@@27 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@27) (store (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@27) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@27) (store (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@27) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@27) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8238) (o_35@@6 T@Ref) (f_11@@6 T@Field_4992_14585) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@28) (store (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@28) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@28) (store (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@28) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@28) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8238) (o_35@@7 T@Ref) (f_11@@7 T@Field_8311_8312) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@29) (store (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@29) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@29) (store (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@29) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@29) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8238) (o_35@@8 T@Ref) (f_11@@8 T@Field_8298_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_8238 (store (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@30) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8238 (store (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@30) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@30) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@30)))
)))
(assert (forall ((node@@4 T@Ref) ) (! (= (PredicateMaskField_5000 (access_fields node@@4)) (|access_fields#sm| node@@4))
 :qid |stdinbpl.400:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5000 (access_fields node@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((a@@3 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (|Set#Subset_4993| a@@3 b@@2) (forall ((o T@Ref) ) (!  (=> (select a@@3 o) (select b@@2 o))
 :qid |stdinbpl.265:32|
 :skolemid |46|
 :pattern ( (select a@@3 o))
 :pattern ( (select b@@2 o))
)))
 :qid |stdinbpl.264:17|
 :skolemid |47|
 :pattern ( (|Set#Subset_4993| a@@3 b@@2))
)))
(assert (forall ((o_35@@9 T@Ref) (f_31 T@Field_8311_8312) (Heap@@31 T@PolymorphicMapType_8238) ) (!  (=> (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@31) o_35@@9 $allocated) (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@31) (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@31) o_35@@9 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@31) o_35@@9 f_31))
)))
(assert (forall ((p@@2 T@Field_14584_14585) (v_1@@1 T@FrameType) (q T@Field_14584_14585) (w@@1 T@FrameType) (r T@Field_14584_14585) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14584_14584 p@@2 v_1@@1 q w@@1) (InsidePredicate_14584_14584 q w@@1 r u)) (InsidePredicate_14584_14584 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14584_14584 p@@2 v_1@@1 q w@@1) (InsidePredicate_14584_14584 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14584_14585) (v_1@@2 T@FrameType) (q@@0 T@Field_14584_14585) (w@@2 T@FrameType) (r@@0 T@Field_4992_14585) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14584_14584 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14584_8298 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14584_8298 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14584_14584 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14584_8298 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14584_14585) (v_1@@3 T@FrameType) (q@@1 T@Field_4992_14585) (w@@3 T@FrameType) (r@@1 T@Field_14584_14585) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14584_8298 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8298_14584 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14584_14584 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14584_8298 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8298_14584 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14584_14585) (v_1@@4 T@FrameType) (q@@2 T@Field_4992_14585) (w@@4 T@FrameType) (r@@2 T@Field_4992_14585) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14584_8298 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8298_8298 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14584_8298 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14584_8298 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8298_8298 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4992_14585) (v_1@@5 T@FrameType) (q@@3 T@Field_14584_14585) (w@@5 T@FrameType) (r@@3 T@Field_14584_14585) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8298_14584 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14584_14584 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8298_14584 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8298_14584 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14584_14584 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4992_14585) (v_1@@6 T@FrameType) (q@@4 T@Field_14584_14585) (w@@6 T@FrameType) (r@@4 T@Field_4992_14585) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8298_14584 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14584_8298 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8298_8298 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8298_14584 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14584_8298 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4992_14585) (v_1@@7 T@FrameType) (q@@5 T@Field_4992_14585) (w@@7 T@FrameType) (r@@5 T@Field_14584_14585) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8298_8298 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8298_14584 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8298_14584 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8298_8298 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8298_14584 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4992_14585) (v_1@@8 T@FrameType) (q@@6 T@Field_4992_14585) (w@@8 T@FrameType) (r@@6 T@Field_4992_14585) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8298_8298 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8298_8298 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8298_8298 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8298_8298 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8298_8298 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@4 Int) ) (!  (=> (< a@@4 0) (= (|Math#clip| a@@4) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@4))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8259)
(declare-fun QPMask@0 () T@PolymorphicMapType_8259)
(declare-fun nn () T@Ref)
(declare-fun perm@0 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8259)
(declare-fun Heap@@32 () T@PolymorphicMapType_8238)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_8259)
(declare-fun Heap@0 () T@PolymorphicMapType_8238)
(declare-fun Heap@1 () T@PolymorphicMapType_8238)
(declare-fun curr_node () T@Ref)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_17030 ((Array T@Ref Bool)) T@FrameType)
(declare-fun FrameFragment_3227 (Bool) T@FrameType)
(declare-fun all_nodes () (Array T@Ref Bool))
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_8259)
(declare-fun n_85 () T@Ref)
(declare-fun perm@1 () Real)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_8259)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_8259)
(declare-fun Heap@2 () T@PolymorphicMapType_8238)
(declare-fun Heap@3 () T@PolymorphicMapType_8238)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun getPredWandId_4992_39948 (T@Field_14474_14476) Int)
(declare-fun getPredWandId_4992_3227 (T@Field_8298_53) Int)
(declare-fun getPredWandId_4992_5001 (T@Field_4992_14585) Int)
(declare-fun getPredWandId_4992_8312 (T@Field_8311_8312) Int)
(declare-fun getPredWandId_4992_40602 (T@Field_4992_14602) Int)
(declare-fun getPredWandId_5000_40770 (T@Field_14584_17753) Int)
(declare-fun getPredWandId_5000_3227 (T@Field_14584_3227) Int)
(declare-fun getPredWandId_5000_8312 (T@Field_14584_8312) Int)
(declare-fun getPredWandId_5000_41417 (T@Field_14597_14602) Int)
(set-info :boogie-vc-id test1)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon14_correct true))
(let ((anon13_correct  (=> (and (= UnfoldingMask@0 (PolymorphicMapType_8259 (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| QPMask@0) (store (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields nn) (- (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields nn)) FullPerm)) (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| QPMask@0))) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= nn null))) (=> (and (= UnfoldingMask@1 (PolymorphicMapType_8259 (store (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| UnfoldingMask@0) nn neighbour (+ (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| UnfoldingMask@0) nn neighbour) perm@0)) (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| UnfoldingMask@0) (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| UnfoldingMask@0))) (state Heap@@32 UnfoldingMask@1)) (=> (and (and (not (= nn null)) (= UnfoldingMask@2 (PolymorphicMapType_8259 (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| UnfoldingMask@1) (store (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| UnfoldingMask@1) nn visited (+ (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| UnfoldingMask@1) nn visited) FullPerm)) (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| UnfoldingMask@1) (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| UnfoldingMask@1) (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| UnfoldingMask@1) (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| UnfoldingMask@1) (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| UnfoldingMask@1) (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| UnfoldingMask@1) (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| UnfoldingMask@1) (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| UnfoldingMask@1)))) (and (state Heap@@32 UnfoldingMask@2) (state Heap@@32 UnfoldingMask@2))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_4997_3227 UnfoldingMask@2 nn visited)) (=> (HasDirectPerm_4997_3227 UnfoldingMask@2 nn visited) (=> (and (and (= Heap@0 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@32) (store (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn) (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) nn neighbour true) (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| nn))))) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@32))) (= Heap@1 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@0) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@0) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@0) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@0) (store (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn) (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (store (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) nn visited true) (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))) (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@0) null (|access_fields#sm| nn))))) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@0) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@0) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@0) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@0) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@0)))) (and (state Heap@1 QPMask@0) (= (ControlFlow 0 15) 12))) anon14_correct)))))))))))
(let ((anon23_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 15)) anon13_correct)))
(let ((anon23_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields nn)))) (=> (<= FullPerm (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields nn))) (=> (= (ControlFlow 0 18) 15) anon13_correct))))))
(let ((anon22_Then_correct  (=> (not (= nn curr_node)) (=> (and (|access_fields#trigger_5000| Heap@@32 (access_fields nn)) (= (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@32) null (access_fields nn)) (CombineFrames (FrameFragment_17030 (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@32) nn neighbour)) (FrameFragment_3227 (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@32) nn visited))))) (and (=> (= (ControlFlow 0 21) 18) anon23_Then_correct) (=> (= (ControlFlow 0 21) 20) anon23_Else_correct))))))
(let ((anon22_Else_correct  (=> (and (= nn curr_node) (= (ControlFlow 0 14) 12)) anon14_correct)))
(let ((anon21_Then_correct  (=> (select all_nodes nn) (and (=> (= (ControlFlow 0 22) 21) anon22_Then_correct) (=> (= (ControlFlow 0 22) 14) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (select all_nodes nn)) (= (ControlFlow 0 13) 12)) anon14_correct)))
(let ((anon20_Else_correct true))
(let ((anon17_Else_correct  (=> (and (and (forall ((n_4_1 T@Ref) ) (!  (=> (select all_nodes n_4_1) (|Set#Subset_4993| (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@32) n_4_1 neighbour) all_nodes))
 :qid |stdinbpl.558:20|
 :skolemid |94|
 :pattern ( (select all_nodes n_4_1))
)) (state Heap@@32 QPMask@0)) (and (select all_nodes curr_node) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 23) 11) anon20_Else_correct) (=> (= (ControlFlow 0 23) 22) anon21_Then_correct)) (=> (= (ControlFlow 0 23) 13) anon21_Else_correct)))))
(let ((anon7_correct true))
(let ((anon6_correct  (=> (and (= UnfoldingMask@3 (PolymorphicMapType_8259 (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| QPMask@0) (store (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields n_85) (- (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields n_85)) FullPerm)) (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| QPMask@0) (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| QPMask@0))) (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= n_85 null))) (=> (and (= UnfoldingMask@4 (PolymorphicMapType_8259 (store (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| UnfoldingMask@3) n_85 neighbour (+ (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| UnfoldingMask@3) n_85 neighbour) perm@1)) (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| UnfoldingMask@3) (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| UnfoldingMask@3))) (state Heap@@32 UnfoldingMask@4)) (=> (and (and (not (= n_85 null)) (= UnfoldingMask@5 (PolymorphicMapType_8259 (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| UnfoldingMask@4) (store (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| UnfoldingMask@4) n_85 visited (+ (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| UnfoldingMask@4) n_85 visited) FullPerm)) (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| UnfoldingMask@4) (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| UnfoldingMask@4) (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| UnfoldingMask@4) (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| UnfoldingMask@4) (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| UnfoldingMask@4) (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| UnfoldingMask@4) (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| UnfoldingMask@4) (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| UnfoldingMask@4)))) (and (state Heap@@32 UnfoldingMask@5) (state Heap@@32 UnfoldingMask@5))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_4992_17753 UnfoldingMask@5 n_85 neighbour)) (=> (HasDirectPerm_4992_17753 UnfoldingMask@5 n_85 neighbour) (=> (and (and (= Heap@2 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@32) (store (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85) (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) n_85 neighbour true) (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@@32) null (|access_fields#sm| n_85))))) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@@32) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@@32))) (= Heap@3 (PolymorphicMapType_8238 (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@2) (|PolymorphicMapType_8238_4702_4703#PolymorphicMapType_8238| Heap@2) (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@2) (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@2) (store (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85) (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4992_17984#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (store (|PolymorphicMapType_8787_4997_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) n_85 visited true) (|PolymorphicMapType_8787_4992_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_4992_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_4992_25656#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_25900#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_3227#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_8312#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_14585#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))) (|PolymorphicMapType_8787_14584_26724#PolymorphicMapType_8787| (select (|PolymorphicMapType_8238_5004_17903#PolymorphicMapType_8238| Heap@2) null (|access_fields#sm| n_85))))) (|PolymorphicMapType_8238_4992_14585#PolymorphicMapType_8238| Heap@2) (|PolymorphicMapType_8238_4992_22794#PolymorphicMapType_8238| Heap@2) (|PolymorphicMapType_8238_14584_23074#PolymorphicMapType_8238| Heap@2) (|PolymorphicMapType_8238_14584_3227#PolymorphicMapType_8238| Heap@2) (|PolymorphicMapType_8238_14584_8312#PolymorphicMapType_8238| Heap@2)))) (and (state Heap@3 QPMask@0) (= (ControlFlow 0 4) 2))) anon7_correct)))))))))))
(let ((anon19_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 4)) anon6_correct)))
(let ((anon19_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields n_85)))) (=> (<= FullPerm (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields n_85))) (=> (= (ControlFlow 0 7) 4) anon6_correct))))))
(let ((anon18_Then_correct  (=> (select all_nodes n_85) (=> (and (|access_fields#trigger_5000| Heap@@32 (access_fields n_85)) (= (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@32) null (access_fields n_85)) (CombineFrames (FrameFragment_17030 (select (|PolymorphicMapType_8238_4992_17000#PolymorphicMapType_8238| Heap@@32) n_85 neighbour)) (FrameFragment_3227 (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@32) n_85 visited))))) (and (=> (= (ControlFlow 0 10) 7) anon19_Then_correct) (=> (= (ControlFlow 0 10) 9) anon19_Else_correct))))))
(let ((anon18_Else_correct  (=> (and (not (select all_nodes n_85)) (= (ControlFlow 0 3) 2)) anon7_correct)))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select all_nodes n_1)) (select all_nodes n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.489:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 n_1) (neverTriggered1 n_1_1))
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select all_nodes n_1@@0)) (select all_nodes n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.489:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 n_1@@0) (neverTriggered1 n_1_1@@0))
)) (=> (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select all_nodes n_1@@1) (< NoPerm FullPerm)) (and (= (invRecv1 n_1@@1) n_1@@1) (qpRange1 n_1@@1)))
 :qid |stdinbpl.495:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_8238_5000_5001#PolymorphicMapType_8238| Heap@@32) null (access_fields n_1@@1)))
 :pattern ( (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ZeroMask) null (access_fields n_1@@1)))
 :pattern ( (select all_nodes n_1@@1))
)) (=> (and (forall ((node@@5 T@Ref) ) (!  (=> (and (and (select all_nodes (invRecv1 node@@5)) (< NoPerm FullPerm)) (qpRange1 node@@5)) (= (invRecv1 node@@5) node@@5))
 :qid |stdinbpl.499:22|
 :skolemid |90|
 :pattern ( (invRecv1 node@@5))
)) (forall ((node@@6 T@Ref) ) (!  (=> (and (and (select all_nodes (invRecv1 node@@6)) (< NoPerm FullPerm)) (qpRange1 node@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv1 node@@6) node@@6)) (= (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields node@@6)) (+ (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ZeroMask) null (access_fields node@@6)) FullPerm))))
 :qid |stdinbpl.505:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields node@@6)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_14474_14476) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_4992_14500 f_5))) (not (= (getPredWandId_4992_39948 f_5) 0))) (= (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_8259_4992_15384#PolymorphicMapType_8259| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_8298_53) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_4997_3227 f_5@@0))) (not (= (getPredWandId_4992_3227 f_5@@0) 0))) (= (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8259_4997_3227#PolymorphicMapType_8259| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_4992_14585) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_4992_24183 f_5@@1))) (not (= (getPredWandId_4992_5001 f_5@@1) 0))) (= (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8259_4992_5001#PolymorphicMapType_8259| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_8311_8312) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_4992_8312 f_5@@2))) (not (= (getPredWandId_4992_8312 f_5@@2) 0))) (= (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8259_4992_8312#PolymorphicMapType_8259| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_4992_14602) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_4992_34026 f_5@@3))) (not (= (getPredWandId_4992_40602 f_5@@3) 0))) (= (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8259_4992_32150#PolymorphicMapType_8259| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_14584_17753) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_5000_34199 f_5@@4))) (not (= (getPredWandId_5000_40770 f_5@@4) 0))) (= (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8259_5000_32250#PolymorphicMapType_8259| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_14584_3227) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_5000_3227 f_5@@5))) (not (= (getPredWandId_5000_3227 f_5@@5) 0))) (= (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8259_5000_3227#PolymorphicMapType_8259| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_14584_14585) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_5000_5001 f_5@@6))) (not (= (getPredWandId_5000_5001 f_5@@6) 0))) (= (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_14584_8312) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_5000_8312 f_5@@7))) (not (= (getPredWandId_5000_8312 f_5@@7) 0))) (= (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| ZeroMask) o_4@@7 f_5@@7) (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| QPMask@0) o_4@@7 f_5@@7)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| ZeroMask) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8259_5000_8312#PolymorphicMapType_8259| QPMask@0) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_14597_14602) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_5000_34862 f_5@@8))) (not (= (getPredWandId_5000_41417 f_5@@8) 0))) (= (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| ZeroMask) o_4@@8 f_5@@8) (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| QPMask@0) o_4@@8 f_5@@8)))
 :qid |stdinbpl.511:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| ZeroMask) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8259_5000_32570#PolymorphicMapType_8259| QPMask@0) o_4@@8 f_5@@8))
))) (and (forall ((node@@7 T@Ref) ) (!  (=> (not (and (and (select all_nodes (invRecv1 node@@7)) (< NoPerm FullPerm)) (qpRange1 node@@7))) (= (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields node@@7)) (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| ZeroMask) null (access_fields node@@7))))
 :qid |stdinbpl.515:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8259_5000_5001#PolymorphicMapType_8259| QPMask@0) null (access_fields node@@7)))
)) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 24) 23) anon17_Else_correct) (=> (= (ControlFlow 0 24) 10) anon18_Then_correct)) (=> (= (ControlFlow 0 24) 3) anon18_Else_correct)))))))))
(let ((anon16_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_8238_4699_53#PolymorphicMapType_8238| Heap@@32) curr_node $allocated)) (and (=> (= (ControlFlow 0 26) 1) anon16_Then_correct) (=> (= (ControlFlow 0 26) 24) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27) 26) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid