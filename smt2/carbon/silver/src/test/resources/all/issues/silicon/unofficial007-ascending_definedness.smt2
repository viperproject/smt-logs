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
(declare-sort T@Field_9994_53 0)
(declare-sort T@Field_10007_10008 0)
(declare-sort T@Field_13755_13756 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13321_1189 0)
(declare-sort T@Field_16993_16998 0)
(declare-sort T@Field_5165_13756 0)
(declare-sort T@Field_5165_16998 0)
(declare-sort T@Field_13755_5166 0)
(declare-sort T@Field_13755_1189 0)
(declare-sort T@Field_13755_53 0)
(declare-datatypes ((T@PolymorphicMapType_9955 0)) (((PolymorphicMapType_9955 (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| (Array T@Ref T@Field_13755_13756 Real)) (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| (Array T@Ref T@Field_13321_1189 Real)) (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| (Array T@Ref T@Field_10007_10008 Real)) (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| (Array T@Ref T@Field_13755_1189 Real)) (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| (Array T@Ref T@Field_13755_5166 Real)) (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| (Array T@Ref T@Field_13755_53 Real)) (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| (Array T@Ref T@Field_16993_16998 Real)) (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| (Array T@Ref T@Field_5165_13756 Real)) (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| (Array T@Ref T@Field_9994_53 Real)) (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| (Array T@Ref T@Field_5165_16998 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10483 0)) (((PolymorphicMapType_10483 (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (Array T@Ref T@Field_13321_1189 Bool)) (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (Array T@Ref T@Field_10007_10008 Bool)) (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (Array T@Ref T@Field_9994_53 Bool)) (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (Array T@Ref T@Field_5165_13756 Bool)) (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (Array T@Ref T@Field_5165_16998 Bool)) (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (Array T@Ref T@Field_13755_1189 Bool)) (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (Array T@Ref T@Field_13755_5166 Bool)) (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (Array T@Ref T@Field_13755_53 Bool)) (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (Array T@Ref T@Field_13755_13756 Bool)) (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (Array T@Ref T@Field_16993_16998 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9934 0)) (((PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| (Array T@Ref T@Field_9994_53 Bool)) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| (Array T@Ref T@Field_10007_10008 T@Ref)) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| (Array T@Ref T@Field_13755_13756 T@FrameType)) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| (Array T@Ref T@Field_13321_1189 Int)) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| (Array T@Ref T@Field_16993_16998 T@PolymorphicMapType_10483)) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| (Array T@Ref T@Field_5165_13756 T@FrameType)) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| (Array T@Ref T@Field_5165_16998 T@PolymorphicMapType_10483)) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| (Array T@Ref T@Field_13755_5166 T@Ref)) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| (Array T@Ref T@Field_13755_1189 Int)) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| (Array T@Ref T@Field_13755_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_9994_53)
(declare-fun val () T@Field_13321_1189)
(declare-fun next () T@Field_10007_10008)
(declare-fun succHeap (T@PolymorphicMapType_9934 T@PolymorphicMapType_9934) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9934 T@PolymorphicMapType_9934) Bool)
(declare-fun state (T@PolymorphicMapType_9934 T@PolymorphicMapType_9955) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9955) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10483)
(declare-fun |itemAt'| (T@PolymorphicMapType_9934 T@Ref Int) Int)
(declare-fun dummyFunction_1479 (Int) Bool)
(declare-fun |itemAt#triggerStateless| (T@Ref Int) Int)
(declare-fun SortedList (T@Ref) T@Field_13755_13756)
(declare-fun IsPredicateField_5259_5260 (T@Field_13755_13756) Bool)
(declare-fun |length'| (T@PolymorphicMapType_9934 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |ascending'| (T@PolymorphicMapType_9934 T@Ref) Bool)
(declare-fun dummyFunction_3407 (Bool) Bool)
(declare-fun |ascending#triggerStateless| (T@Ref) Bool)
(declare-fun |SortedList#trigger_5259| (T@PolymorphicMapType_9934 T@Field_13755_13756) Bool)
(declare-fun |SortedList#everUsed_5259| (T@Field_13755_13756) Bool)
(declare-fun ascending (T@PolymorphicMapType_9934 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |itemAt#frame| (T@FrameType T@Ref Int) Int)
(declare-fun null () T@Ref)
(declare-fun length_1 (T@PolymorphicMapType_9934 T@Ref) Int)
(declare-fun itemAt (T@PolymorphicMapType_9934 T@Ref Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9934 T@PolymorphicMapType_9934 T@PolymorphicMapType_9955) Bool)
(declare-fun PredicateMaskField_5259 (T@Field_13755_13756) T@Field_16993_16998)
(declare-fun HasDirectPerm_13755_13756 (T@PolymorphicMapType_9955 T@Ref T@Field_13755_13756) Bool)
(declare-fun IsPredicateField_5165_35023 (T@Field_5165_13756) Bool)
(declare-fun PredicateMaskField_5165 (T@Field_5165_13756) T@Field_5165_16998)
(declare-fun HasDirectPerm_5165_13756 (T@PolymorphicMapType_9955 T@Ref T@Field_5165_13756) Bool)
(declare-fun IsWandField_13755_38693 (T@Field_13755_13756) Bool)
(declare-fun WandMaskField_13755 (T@Field_13755_13756) T@Field_16993_16998)
(declare-fun IsWandField_5165_38336 (T@Field_5165_13756) Bool)
(declare-fun WandMaskField_5165 (T@Field_5165_13756) T@Field_5165_16998)
(declare-fun |SortedList#sm| (T@Ref) T@Field_16993_16998)
(declare-fun dummyHeap () T@PolymorphicMapType_9934)
(declare-fun ZeroMask () T@PolymorphicMapType_9955)
(declare-fun InsidePredicate_9994_9994 (T@Field_5165_13756 T@FrameType T@Field_5165_13756 T@FrameType) Bool)
(declare-fun InsidePredicate_5259_5259 (T@Field_13755_13756 T@FrameType T@Field_13755_13756 T@FrameType) Bool)
(declare-fun IsPredicateField_5163_1189 (T@Field_13321_1189) Bool)
(declare-fun IsWandField_5163_1189 (T@Field_13321_1189) Bool)
(declare-fun IsPredicateField_5165_5166 (T@Field_10007_10008) Bool)
(declare-fun IsWandField_5165_5166 (T@Field_10007_10008) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5163_45596 (T@Field_5165_16998) Bool)
(declare-fun IsWandField_5163_45612 (T@Field_5165_16998) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5163_53 (T@Field_9994_53) Bool)
(declare-fun IsWandField_5163_53 (T@Field_9994_53) Bool)
(declare-fun IsPredicateField_5259_44793 (T@Field_16993_16998) Bool)
(declare-fun IsWandField_5259_44809 (T@Field_16993_16998) Bool)
(declare-fun IsPredicateField_5259_53 (T@Field_13755_53) Bool)
(declare-fun IsWandField_5259_53 (T@Field_13755_53) Bool)
(declare-fun IsPredicateField_5259_5166 (T@Field_13755_5166) Bool)
(declare-fun IsWandField_5259_5166 (T@Field_13755_5166) Bool)
(declare-fun IsPredicateField_5259_1189 (T@Field_13755_1189) Bool)
(declare-fun IsWandField_5259_1189 (T@Field_13755_1189) Bool)
(declare-fun HasDirectPerm_13755_34778 (T@PolymorphicMapType_9955 T@Ref T@Field_16993_16998) Bool)
(declare-fun HasDirectPerm_13755_53 (T@PolymorphicMapType_9955 T@Ref T@Field_13755_53) Bool)
(declare-fun HasDirectPerm_13755_1189 (T@PolymorphicMapType_9955 T@Ref T@Field_13755_1189) Bool)
(declare-fun HasDirectPerm_13755_5166 (T@PolymorphicMapType_9955 T@Ref T@Field_13755_5166) Bool)
(declare-fun HasDirectPerm_5165_33617 (T@PolymorphicMapType_9955 T@Ref T@Field_5165_16998) Bool)
(declare-fun HasDirectPerm_5165_53 (T@PolymorphicMapType_9955 T@Ref T@Field_9994_53) Bool)
(declare-fun HasDirectPerm_5163_1189 (T@PolymorphicMapType_9955 T@Ref T@Field_13321_1189) Bool)
(declare-fun HasDirectPerm_5165_5166 (T@PolymorphicMapType_9955 T@Ref T@Field_10007_10008) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9955 T@PolymorphicMapType_9955 T@PolymorphicMapType_9955) Bool)
(declare-fun |ascending#frame| (T@FrameType T@Ref) Bool)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_5259_5260 (T@Field_13755_13756) Int)
(declare-fun InsidePredicate_9994_5259 (T@Field_5165_13756 T@FrameType T@Field_13755_13756 T@FrameType) Bool)
(declare-fun InsidePredicate_5259_9994 (T@Field_13755_13756 T@FrameType T@Field_5165_13756 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9934) (Heap1 T@PolymorphicMapType_9934) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9934) (Mask T@PolymorphicMapType_9955) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9934) (Heap1@@0 T@PolymorphicMapType_9934) (Heap2 T@PolymorphicMapType_9934) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16993_16998) ) (!  (not (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13755_13756) ) (!  (not (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13755_53) ) (!  (not (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13755_5166) ) (!  (not (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13755_1189) ) (!  (not (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5165_16998) ) (!  (not (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5165_13756) ) (!  (not (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9994_53) ) (!  (not (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10007_10008) ) (!  (not (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13321_1189) ) (!  (not (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9934) (xs T@Ref) (i Int) ) (! (dummyFunction_1479 (|itemAt#triggerStateless| xs i))
 :qid |stdinbpl.365:15|
 :skolemid |30|
 :pattern ( (|itemAt'| Heap@@0 xs i))
)))
(assert (forall ((xs@@0 T@Ref) ) (! (IsPredicateField_5259_5260 (SortedList xs@@0))
 :qid |stdinbpl.658:15|
 :skolemid |41|
 :pattern ( (SortedList xs@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9934) (xs@@1 T@Ref) ) (! (dummyFunction_1479 (|length#triggerStateless| xs@@1))
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (|length'| Heap@@1 xs@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9934) (xs@@2 T@Ref) ) (! (dummyFunction_3407 (|ascending#triggerStateless| xs@@2))
 :qid |stdinbpl.526:15|
 :skolemid |35|
 :pattern ( (|ascending'| Heap@@2 xs@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9934) (xs@@3 T@Ref) ) (! (|SortedList#everUsed_5259| (SortedList xs@@3))
 :qid |stdinbpl.677:15|
 :skolemid |45|
 :pattern ( (|SortedList#trigger_5259| Heap@@3 (SortedList xs@@3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9934) (Mask@@0 T@PolymorphicMapType_9955) (xs@@4 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@0) (< AssumeFunctionsAbove 0)) (= (ascending Heap@@4 xs@@4) (forall ((i@@0 Int) (j Int) ) (!  (=> (and (<= 0 i@@0) (and (< i@@0 j) (< j (length_1 Heap@@4 xs@@4)))) (<= (itemAt Heap@@4 xs@@4 i@@0) (itemAt Heap@@4 xs@@4 j)))
 :qid |stdinbpl.534:84|
 :skolemid |36|
 :pattern ( (|itemAt#frame| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@4) null (SortedList xs@@4)) xs@@4 i@@0) (|itemAt#frame| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@4) null (SortedList xs@@4)) xs@@4 j))
))))
 :qid |stdinbpl.532:15|
 :skolemid |37|
 :pattern ( (state Heap@@4 Mask@@0) (ascending Heap@@4 xs@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9934) (xs@@5 T@Ref) ) (!  (and (= (length_1 Heap@@5 xs@@5) (|length'| Heap@@5 xs@@5)) (dummyFunction_1479 (|length#triggerStateless| xs@@5)))
 :qid |stdinbpl.199:15|
 :skolemid |22|
 :pattern ( (length_1 Heap@@5 xs@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9934) (ExhaleHeap T@PolymorphicMapType_9934) (Mask@@1 T@PolymorphicMapType_9955) (pm_f_34 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_13755_13756 Mask@@1 null pm_f_34) (IsPredicateField_5259_5260 pm_f_34)) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@6) null (PredicateMaskField_5259 pm_f_34)) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap) null (PredicateMaskField_5259 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (IsPredicateField_5259_5260 pm_f_34) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap) null (PredicateMaskField_5259 pm_f_34)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9934) (ExhaleHeap@@0 T@PolymorphicMapType_9934) (Mask@@2 T@PolymorphicMapType_9955) (pm_f_34@@0 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5165_13756 Mask@@2 null pm_f_34@@0) (IsPredicateField_5165_35023 pm_f_34@@0)) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@7) null (PredicateMaskField_5165 pm_f_34@@0)) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@0) null (PredicateMaskField_5165 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5165_35023 pm_f_34@@0) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@0) null (PredicateMaskField_5165 pm_f_34@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9934) (ExhaleHeap@@1 T@PolymorphicMapType_9934) (Mask@@3 T@PolymorphicMapType_9955) (pm_f_34@@1 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_13755_13756 Mask@@3 null pm_f_34@@1) (IsWandField_13755_38693 pm_f_34@@1)) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@8) null (WandMaskField_13755 pm_f_34@@1)) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@1) null (WandMaskField_13755 pm_f_34@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (IsWandField_13755_38693 pm_f_34@@1) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@1) null (WandMaskField_13755 pm_f_34@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9934) (ExhaleHeap@@2 T@PolymorphicMapType_9934) (Mask@@4 T@PolymorphicMapType_9955) (pm_f_34@@2 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5165_13756 Mask@@4 null pm_f_34@@2) (IsWandField_5165_38336 pm_f_34@@2)) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@9) null (WandMaskField_5165 pm_f_34@@2)) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@2) null (WandMaskField_5165 pm_f_34@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (IsWandField_5165_38336 pm_f_34@@2) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@2) null (WandMaskField_5165 pm_f_34@@2)))
)))
(assert (forall ((xs@@6 T@Ref) (xs2 T@Ref) ) (!  (=> (= (SortedList xs@@6) (SortedList xs2)) (= xs@@6 xs2))
 :qid |stdinbpl.668:15|
 :skolemid |43|
 :pattern ( (SortedList xs@@6) (SortedList xs2))
)))
(assert (forall ((xs@@7 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|SortedList#sm| xs@@7) (|SortedList#sm| xs2@@0)) (= xs@@7 xs2@@0))
 :qid |stdinbpl.672:15|
 :skolemid |44|
 :pattern ( (|SortedList#sm| xs@@7) (|SortedList#sm| xs2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9934) (ExhaleHeap@@3 T@PolymorphicMapType_9934) (Mask@@5 T@PolymorphicMapType_9955) (pm_f_34@@3 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_13755_13756 Mask@@5 null pm_f_34@@3) (IsPredicateField_5259_5260 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34 f_65) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@10) o2_34 f_65) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@10) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@10) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@10) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@10) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@3 f_65@@3))
))) (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@10) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@4 f_65@@4))
))) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@10) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@10) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@10) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_34@@3))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@3) o2_34@@8 f_65@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (IsPredicateField_5259_5260 pm_f_34@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9934) (ExhaleHeap@@4 T@PolymorphicMapType_9934) (Mask@@6 T@PolymorphicMapType_9955) (pm_f_34@@4 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5165_13756 Mask@@6 null pm_f_34@@4) (IsPredicateField_5165_35023 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@9 T@Ref) (f_65@@9 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@9 f_65@@9) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@11) o2_34@@9 f_65@@9) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@9 f_65@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@9 f_65@@9))
)) (forall ((o2_34@@10 T@Ref) (f_65@@10 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@10 f_65@@10) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@11) o2_34@@10 f_65@@10) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@10 f_65@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@10 f_65@@10))
))) (forall ((o2_34@@11 T@Ref) (f_65@@11 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@11 f_65@@11) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@11) o2_34@@11 f_65@@11) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@11 f_65@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@11 f_65@@11))
))) (forall ((o2_34@@12 T@Ref) (f_65@@12 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@12 f_65@@12) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@11) o2_34@@12 f_65@@12) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@12 f_65@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@12 f_65@@12))
))) (forall ((o2_34@@13 T@Ref) (f_65@@13 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@13 f_65@@13) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) o2_34@@13 f_65@@13) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@13 f_65@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@13 f_65@@13))
))) (forall ((o2_34@@14 T@Ref) (f_65@@14 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@14 f_65@@14) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@11) o2_34@@14 f_65@@14) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@14 f_65@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@14 f_65@@14))
))) (forall ((o2_34@@15 T@Ref) (f_65@@15 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@15 f_65@@15) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@11) o2_34@@15 f_65@@15) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@15 f_65@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@15 f_65@@15))
))) (forall ((o2_34@@16 T@Ref) (f_65@@16 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@16 f_65@@16) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@11) o2_34@@16 f_65@@16) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@16 f_65@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@16 f_65@@16))
))) (forall ((o2_34@@17 T@Ref) (f_65@@17 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@17 f_65@@17) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@11) o2_34@@17 f_65@@17) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@17 f_65@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@17 f_65@@17))
))) (forall ((o2_34@@18 T@Ref) (f_65@@18 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_34@@4))) o2_34@@18 f_65@@18) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@11) o2_34@@18 f_65@@18) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@18 f_65@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@4) o2_34@@18 f_65@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (IsPredicateField_5165_35023 pm_f_34@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9934) (ExhaleHeap@@5 T@PolymorphicMapType_9934) (Mask@@7 T@PolymorphicMapType_9955) (pm_f_34@@5 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_13755_13756 Mask@@7 null pm_f_34@@5) (IsWandField_13755_38693 pm_f_34@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_65@@19 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@19 f_65@@19) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@12) o2_34@@19 f_65@@19) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@19 f_65@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@19 f_65@@19))
)) (forall ((o2_34@@20 T@Ref) (f_65@@20 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@20 f_65@@20) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@12) o2_34@@20 f_65@@20) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@20 f_65@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@20 f_65@@20))
))) (forall ((o2_34@@21 T@Ref) (f_65@@21 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@21 f_65@@21) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@12) o2_34@@21 f_65@@21) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@21 f_65@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@21 f_65@@21))
))) (forall ((o2_34@@22 T@Ref) (f_65@@22 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@22 f_65@@22) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@12) o2_34@@22 f_65@@22) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@22 f_65@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@22 f_65@@22))
))) (forall ((o2_34@@23 T@Ref) (f_65@@23 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@23 f_65@@23) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@12) o2_34@@23 f_65@@23) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@23 f_65@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@23 f_65@@23))
))) (forall ((o2_34@@24 T@Ref) (f_65@@24 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@24 f_65@@24) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@12) o2_34@@24 f_65@@24) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@24 f_65@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@24 f_65@@24))
))) (forall ((o2_34@@25 T@Ref) (f_65@@25 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@25 f_65@@25) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@12) o2_34@@25 f_65@@25) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@25 f_65@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@25 f_65@@25))
))) (forall ((o2_34@@26 T@Ref) (f_65@@26 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@26 f_65@@26) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@12) o2_34@@26 f_65@@26) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@26 f_65@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@26 f_65@@26))
))) (forall ((o2_34@@27 T@Ref) (f_65@@27 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@27 f_65@@27) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@12) o2_34@@27 f_65@@27) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@27 f_65@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@27 f_65@@27))
))) (forall ((o2_34@@28 T@Ref) (f_65@@28 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_34@@5))) o2_34@@28 f_65@@28) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) o2_34@@28 f_65@@28) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@28 f_65@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@5) o2_34@@28 f_65@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (IsWandField_13755_38693 pm_f_34@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9934) (ExhaleHeap@@6 T@PolymorphicMapType_9934) (Mask@@8 T@PolymorphicMapType_9955) (pm_f_34@@6 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_5165_13756 Mask@@8 null pm_f_34@@6) (IsWandField_5165_38336 pm_f_34@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@29 T@Ref) (f_65@@29 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@29 f_65@@29) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@13) o2_34@@29 f_65@@29) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@29 f_65@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@29 f_65@@29))
)) (forall ((o2_34@@30 T@Ref) (f_65@@30 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@30 f_65@@30) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@13) o2_34@@30 f_65@@30) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@30 f_65@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@30 f_65@@30))
))) (forall ((o2_34@@31 T@Ref) (f_65@@31 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@31 f_65@@31) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@13) o2_34@@31 f_65@@31) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@31 f_65@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@31 f_65@@31))
))) (forall ((o2_34@@32 T@Ref) (f_65@@32 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@32 f_65@@32) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@13) o2_34@@32 f_65@@32) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@32 f_65@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@32 f_65@@32))
))) (forall ((o2_34@@33 T@Ref) (f_65@@33 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@33 f_65@@33) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) o2_34@@33 f_65@@33) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@33 f_65@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@33 f_65@@33))
))) (forall ((o2_34@@34 T@Ref) (f_65@@34 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@34 f_65@@34) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@13) o2_34@@34 f_65@@34) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@34 f_65@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@34 f_65@@34))
))) (forall ((o2_34@@35 T@Ref) (f_65@@35 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@35 f_65@@35) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@13) o2_34@@35 f_65@@35) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@35 f_65@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@35 f_65@@35))
))) (forall ((o2_34@@36 T@Ref) (f_65@@36 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@36 f_65@@36) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@13) o2_34@@36 f_65@@36) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@36 f_65@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@36 f_65@@36))
))) (forall ((o2_34@@37 T@Ref) (f_65@@37 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@37 f_65@@37) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@13) o2_34@@37 f_65@@37) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@37 f_65@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@37 f_65@@37))
))) (forall ((o2_34@@38 T@Ref) (f_65@@38 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_34@@6))) o2_34@@38 f_65@@38) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@13) o2_34@@38 f_65@@38) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@38 f_65@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@6) o2_34@@38 f_65@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (IsWandField_5165_38336 pm_f_34@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9934) (ExhaleHeap@@7 T@PolymorphicMapType_9934) (Mask@@9 T@PolymorphicMapType_9955) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@14) o_47 $allocated) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@7) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@7) o_47 $allocated))
)))
(assert (forall ((p T@Field_5165_13756) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9994_9994 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9994_9994 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13755_13756) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5259_5259 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5259_5259 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5163_1189 val)))
(assert  (not (IsWandField_5163_1189 val)))
(assert  (not (IsPredicateField_5165_5166 next)))
(assert  (not (IsWandField_5165_5166 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9934) (ExhaleHeap@@8 T@PolymorphicMapType_9934) (Mask@@10 T@PolymorphicMapType_9955) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9955) (o_2@@9 T@Ref) (f_4@@9 T@Field_5165_16998) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5163_45596 f_4@@9))) (not (IsWandField_5163_45612 f_4@@9))) (<= (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9955) (o_2@@10 T@Ref) (f_4@@10 T@Field_9994_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5163_53 f_4@@10))) (not (IsWandField_5163_53 f_4@@10))) (<= (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9955) (o_2@@11 T@Ref) (f_4@@11 T@Field_10007_10008) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5165_5166 f_4@@11))) (not (IsWandField_5165_5166 f_4@@11))) (<= (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9955) (o_2@@12 T@Ref) (f_4@@12 T@Field_13321_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5163_1189 f_4@@12))) (not (IsWandField_5163_1189 f_4@@12))) (<= (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9955) (o_2@@13 T@Ref) (f_4@@13 T@Field_5165_13756) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5165_35023 f_4@@13))) (not (IsWandField_5165_38336 f_4@@13))) (<= (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9955) (o_2@@14 T@Ref) (f_4@@14 T@Field_16993_16998) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5259_44793 f_4@@14))) (not (IsWandField_5259_44809 f_4@@14))) (<= (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9955) (o_2@@15 T@Ref) (f_4@@15 T@Field_13755_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5259_53 f_4@@15))) (not (IsWandField_5259_53 f_4@@15))) (<= (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9955) (o_2@@16 T@Ref) (f_4@@16 T@Field_13755_5166) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5259_5166 f_4@@16))) (not (IsWandField_5259_5166 f_4@@16))) (<= (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9955) (o_2@@17 T@Ref) (f_4@@17 T@Field_13755_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5259_1189 f_4@@17))) (not (IsWandField_5259_1189 f_4@@17))) (<= (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9955) (o_2@@18 T@Ref) (f_4@@18 T@Field_13755_13756) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5259_5260 f_4@@18))) (not (IsWandField_13755_38693 f_4@@18))) (<= (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9955) (o_2@@19 T@Ref) (f_4@@19 T@Field_16993_16998) ) (! (= (HasDirectPerm_13755_34778 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_34778 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9955) (o_2@@20 T@Ref) (f_4@@20 T@Field_13755_13756) ) (! (= (HasDirectPerm_13755_13756 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_13756 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9955) (o_2@@21 T@Ref) (f_4@@21 T@Field_13755_53) ) (! (= (HasDirectPerm_13755_53 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_53 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9955) (o_2@@22 T@Ref) (f_4@@22 T@Field_13755_1189) ) (! (= (HasDirectPerm_13755_1189 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_1189 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9955) (o_2@@23 T@Ref) (f_4@@23 T@Field_13755_5166) ) (! (= (HasDirectPerm_13755_5166 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13755_5166 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9955) (o_2@@24 T@Ref) (f_4@@24 T@Field_5165_16998) ) (! (= (HasDirectPerm_5165_33617 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5165_33617 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9955) (o_2@@25 T@Ref) (f_4@@25 T@Field_5165_13756) ) (! (= (HasDirectPerm_5165_13756 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5165_13756 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9955) (o_2@@26 T@Ref) (f_4@@26 T@Field_9994_53) ) (! (= (HasDirectPerm_5165_53 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5165_53 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9955) (o_2@@27 T@Ref) (f_4@@27 T@Field_13321_1189) ) (! (= (HasDirectPerm_5163_1189 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5163_1189 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9955) (o_2@@28 T@Ref) (f_4@@28 T@Field_10007_10008) ) (! (= (HasDirectPerm_5165_5166 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5165_5166 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9934) (ExhaleHeap@@9 T@PolymorphicMapType_9934) (Mask@@31 T@PolymorphicMapType_9955) (o_47@@0 T@Ref) (f_65@@39 T@Field_16993_16998) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_13755_34778 Mask@@31 o_47@@0 f_65@@39) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@16) o_47@@0 f_65@@39) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@9) o_47@@0 f_65@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@9) o_47@@0 f_65@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9934) (ExhaleHeap@@10 T@PolymorphicMapType_9934) (Mask@@32 T@PolymorphicMapType_9955) (o_47@@1 T@Ref) (f_65@@40 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_13755_13756 Mask@@32 o_47@@1 f_65@@40) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@17) o_47@@1 f_65@@40) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@10) o_47@@1 f_65@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@10) o_47@@1 f_65@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9934) (ExhaleHeap@@11 T@PolymorphicMapType_9934) (Mask@@33 T@PolymorphicMapType_9955) (o_47@@2 T@Ref) (f_65@@41 T@Field_13755_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_13755_53 Mask@@33 o_47@@2 f_65@@41) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@18) o_47@@2 f_65@@41) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@11) o_47@@2 f_65@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@11) o_47@@2 f_65@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9934) (ExhaleHeap@@12 T@PolymorphicMapType_9934) (Mask@@34 T@PolymorphicMapType_9955) (o_47@@3 T@Ref) (f_65@@42 T@Field_13755_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_13755_1189 Mask@@34 o_47@@3 f_65@@42) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@19) o_47@@3 f_65@@42) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@12) o_47@@3 f_65@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@12) o_47@@3 f_65@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9934) (ExhaleHeap@@13 T@PolymorphicMapType_9934) (Mask@@35 T@PolymorphicMapType_9955) (o_47@@4 T@Ref) (f_65@@43 T@Field_13755_5166) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_13755_5166 Mask@@35 o_47@@4 f_65@@43) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@20) o_47@@4 f_65@@43) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@13) o_47@@4 f_65@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@13) o_47@@4 f_65@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9934) (ExhaleHeap@@14 T@PolymorphicMapType_9934) (Mask@@36 T@PolymorphicMapType_9955) (o_47@@5 T@Ref) (f_65@@44 T@Field_5165_16998) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_5165_33617 Mask@@36 o_47@@5 f_65@@44) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@21) o_47@@5 f_65@@44) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@14) o_47@@5 f_65@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@14) o_47@@5 f_65@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9934) (ExhaleHeap@@15 T@PolymorphicMapType_9934) (Mask@@37 T@PolymorphicMapType_9955) (o_47@@6 T@Ref) (f_65@@45 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_5165_13756 Mask@@37 o_47@@6 f_65@@45) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@22) o_47@@6 f_65@@45) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@15) o_47@@6 f_65@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@15) o_47@@6 f_65@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9934) (ExhaleHeap@@16 T@PolymorphicMapType_9934) (Mask@@38 T@PolymorphicMapType_9955) (o_47@@7 T@Ref) (f_65@@46 T@Field_9994_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_5165_53 Mask@@38 o_47@@7 f_65@@46) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@23) o_47@@7 f_65@@46) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@16) o_47@@7 f_65@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@16) o_47@@7 f_65@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9934) (ExhaleHeap@@17 T@PolymorphicMapType_9934) (Mask@@39 T@PolymorphicMapType_9955) (o_47@@8 T@Ref) (f_65@@47 T@Field_13321_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_5163_1189 Mask@@39 o_47@@8 f_65@@47) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@24) o_47@@8 f_65@@47) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@17) o_47@@8 f_65@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@17) o_47@@8 f_65@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9934) (ExhaleHeap@@18 T@PolymorphicMapType_9934) (Mask@@40 T@PolymorphicMapType_9955) (o_47@@9 T@Ref) (f_65@@48 T@Field_10007_10008) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_5165_5166 Mask@@40 o_47@@9 f_65@@48) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@25) o_47@@9 f_65@@48) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@18) o_47@@9 f_65@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@18) o_47@@9 f_65@@48))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9934) (Mask@@41 T@PolymorphicMapType_9955) (xs@@8 T@Ref) (i@@1 Int) ) (!  (=> (and (state Heap@@26 Mask@@41) (< AssumeFunctionsAbove 1)) (=> (and (<= 0 i@@1) (< i@@1 (length_1 Heap@@26 xs@@8))) (= (itemAt Heap@@26 xs@@8 i@@1) (ite (= i@@1 0) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@26) xs@@8 val) (|itemAt'| Heap@@26 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@26) xs@@8 next) (- i@@1 1))))))
 :qid |stdinbpl.371:15|
 :skolemid |31|
 :pattern ( (state Heap@@26 Mask@@41) (itemAt Heap@@26 xs@@8 i@@1))
 :pattern ( (state Heap@@26 Mask@@41) (|itemAt#triggerStateless| xs@@8 i@@1) (|SortedList#trigger_5259| Heap@@26 (SortedList xs@@8)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_5165_16998) ) (! (= (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9994_53) ) (! (= (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_10007_10008) ) (! (= (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_13321_1189) ) (! (= (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5165_13756) ) (! (= (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_16993_16998) ) (! (= (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_13755_53) ) (! (= (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_13755_5166) ) (! (= (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_13755_1189) ) (! (= (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_13755_13756) ) (! (= (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9934) (xs@@9 T@Ref) (i@@2 Int) ) (!  (and (= (itemAt Heap@@27 xs@@9 i@@2) (|itemAt'| Heap@@27 xs@@9 i@@2)) (dummyFunction_1479 (|itemAt#triggerStateless| xs@@9 i@@2)))
 :qid |stdinbpl.361:15|
 :skolemid |29|
 :pattern ( (itemAt Heap@@27 xs@@9 i@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9955) (SummandMask1 T@PolymorphicMapType_9955) (SummandMask2 T@PolymorphicMapType_9955) (o_2@@39 T@Ref) (f_4@@39 T@Field_5165_16998) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9955) (SummandMask1@@0 T@PolymorphicMapType_9955) (SummandMask2@@0 T@PolymorphicMapType_9955) (o_2@@40 T@Ref) (f_4@@40 T@Field_9994_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9955) (SummandMask1@@1 T@PolymorphicMapType_9955) (SummandMask2@@1 T@PolymorphicMapType_9955) (o_2@@41 T@Ref) (f_4@@41 T@Field_10007_10008) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9955) (SummandMask1@@2 T@PolymorphicMapType_9955) (SummandMask2@@2 T@PolymorphicMapType_9955) (o_2@@42 T@Ref) (f_4@@42 T@Field_13321_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9955) (SummandMask1@@3 T@PolymorphicMapType_9955) (SummandMask2@@3 T@PolymorphicMapType_9955) (o_2@@43 T@Ref) (f_4@@43 T@Field_5165_13756) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9955) (SummandMask1@@4 T@PolymorphicMapType_9955) (SummandMask2@@4 T@PolymorphicMapType_9955) (o_2@@44 T@Ref) (f_4@@44 T@Field_16993_16998) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9955) (SummandMask1@@5 T@PolymorphicMapType_9955) (SummandMask2@@5 T@PolymorphicMapType_9955) (o_2@@45 T@Ref) (f_4@@45 T@Field_13755_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9955) (SummandMask1@@6 T@PolymorphicMapType_9955) (SummandMask2@@6 T@PolymorphicMapType_9955) (o_2@@46 T@Ref) (f_4@@46 T@Field_13755_5166) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9955) (SummandMask1@@7 T@PolymorphicMapType_9955) (SummandMask2@@7 T@PolymorphicMapType_9955) (o_2@@47 T@Ref) (f_4@@47 T@Field_13755_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9955) (SummandMask1@@8 T@PolymorphicMapType_9955) (SummandMask2@@8 T@PolymorphicMapType_9955) (o_2@@48 T@Ref) (f_4@@48 T@Field_13755_13756) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9934) (Mask@@42 T@PolymorphicMapType_9955) (xs@@10 T@Ref) ) (!  (=> (state Heap@@28 Mask@@42) (= (|ascending'| Heap@@28 xs@@10) (|ascending#frame| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@28) null (SortedList xs@@10)) xs@@10)))
 :qid |stdinbpl.542:15|
 :skolemid |38|
 :pattern ( (state Heap@@28 Mask@@42) (|ascending'| Heap@@28 xs@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9934) (Mask@@43 T@PolymorphicMapType_9955) (xs@@11 T@Ref) (i@@3 Int) ) (!  (=> (state Heap@@29 Mask@@43) (= (|itemAt'| Heap@@29 xs@@11 i@@3) (|itemAt#frame| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@29) null (SortedList xs@@11)) xs@@11 i@@3)))
 :qid |stdinbpl.378:15|
 :skolemid |32|
 :pattern ( (state Heap@@29 Mask@@43) (|itemAt'| Heap@@29 xs@@11 i@@3))
 :pattern ( (state Heap@@29 Mask@@43) (|itemAt#triggerStateless| xs@@11 i@@3) (|SortedList#trigger_5259| Heap@@29 (SortedList xs@@11)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9934) (Mask@@44 T@PolymorphicMapType_9955) (xs@@12 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@44) (< AssumeFunctionsAbove 2)) (= (length_1 Heap@@30 xs@@12) (+ 1 (ite (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@30) xs@@12 next) null) 0 (|length'| Heap@@30 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@30) xs@@12 next))))))
 :qid |stdinbpl.209:15|
 :skolemid |24|
 :pattern ( (state Heap@@30 Mask@@44) (length_1 Heap@@30 xs@@12))
 :pattern ( (state Heap@@30 Mask@@44) (|length#triggerStateless| xs@@12) (|SortedList#trigger_5259| Heap@@30 (SortedList xs@@12)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9934) (xs@@13 T@Ref) ) (!  (and (= (ascending Heap@@31 xs@@13) (|ascending'| Heap@@31 xs@@13)) (dummyFunction_3407 (|ascending#triggerStateless| xs@@13)))
 :qid |stdinbpl.522:15|
 :skolemid |34|
 :pattern ( (ascending Heap@@31 xs@@13))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9934) (Mask@@45 T@PolymorphicMapType_9955) (xs@@14 T@Ref) ) (!  (=> (state Heap@@32 Mask@@45) (= (|length'| Heap@@32 xs@@14) (|length#frame| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@32) null (SortedList xs@@14)) xs@@14)))
 :qid |stdinbpl.216:15|
 :skolemid |25|
 :pattern ( (state Heap@@32 Mask@@45) (|length'| Heap@@32 xs@@14))
 :pattern ( (state Heap@@32 Mask@@45) (|length#triggerStateless| xs@@14) (|SortedList#trigger_5259| Heap@@32 (SortedList xs@@14)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9934) (Mask@@46 T@PolymorphicMapType_9955) (xs@@15 T@Ref) ) (!  (=> (and (state Heap@@33 Mask@@46) (or (< AssumeFunctionsAbove 2) (|length#trigger| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@33) null (SortedList xs@@15)) xs@@15))) (> (|length'| Heap@@33 xs@@15) 0))
 :qid |stdinbpl.222:15|
 :skolemid |26|
 :pattern ( (state Heap@@33 Mask@@46) (|length'| Heap@@33 xs@@15))
)))
(assert (forall ((xs@@16 T@Ref) ) (! (= (getPredWandId_5259_5260 (SortedList xs@@16)) 0)
 :qid |stdinbpl.662:15|
 :skolemid |42|
 :pattern ( (SortedList xs@@16))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9934) (o_17 T@Ref) (f_19 T@Field_16993_16998) (v T@PolymorphicMapType_10483) ) (! (succHeap Heap@@34 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@34) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@34) o_17 f_19 v) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@34) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@34) o_17 f_19 v) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9934) (o_17@@0 T@Ref) (f_19@@0 T@Field_13755_1189) (v@@0 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@35) (store (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@35) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@35) (store (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@35) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9934) (o_17@@1 T@Ref) (f_19@@1 T@Field_13755_13756) (v@@1 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@36) (store (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@36) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@36) (store (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@36) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9934) (o_17@@2 T@Ref) (f_19@@2 T@Field_13755_5166) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@37) (store (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@37) o_17@@2 f_19@@2 v@@2) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@37) (store (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@37) o_17@@2 f_19@@2 v@@2) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9934) (o_17@@3 T@Ref) (f_19@@3 T@Field_13755_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@38) (store (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@38) o_17@@3 f_19@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@38) (store (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@38) o_17@@3 f_19@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9934) (o_17@@4 T@Ref) (f_19@@4 T@Field_5165_16998) (v@@4 T@PolymorphicMapType_10483) ) (! (succHeap Heap@@39 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@39) (store (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@39) o_17@@4 f_19@@4 v@@4) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@39) (store (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@39) o_17@@4 f_19@@4 v@@4) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9934) (o_17@@5 T@Ref) (f_19@@5 T@Field_13321_1189) (v@@5 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@40) (store (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@40) o_17@@5 f_19@@5 v@@5) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@40) (store (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@40) o_17@@5 f_19@@5 v@@5) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9934) (o_17@@6 T@Ref) (f_19@@6 T@Field_5165_13756) (v@@6 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@41) (store (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@41) o_17@@6 f_19@@6 v@@6) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@41) (store (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@41) o_17@@6 f_19@@6 v@@6) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9934) (o_17@@7 T@Ref) (f_19@@7 T@Field_10007_10008) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@42) (store (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@42) o_17@@7 f_19@@7 v@@7) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@42) (store (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@42) o_17@@7 f_19@@7 v@@7) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9934) (o_17@@8 T@Ref) (f_19@@8 T@Field_9994_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_9934 (store (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@43) o_17@@8 f_19@@8 v@@8) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (store (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@43) o_17@@8 f_19@@8 v@@8) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@43)))
)))
(assert (forall ((xs@@17 T@Ref) ) (! (= (PredicateMaskField_5259 (SortedList xs@@17)) (|SortedList#sm| xs@@17))
 :qid |stdinbpl.654:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_5259 (SortedList xs@@17)))
)))
(assert (forall ((o_17@@9 T@Ref) (f_25 T@Field_10007_10008) (Heap@@44 T@PolymorphicMapType_9934) ) (!  (=> (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@44) o_17@@9 $allocated) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@44) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@44) o_17@@9 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@44) o_17@@9 f_25))
)))
(assert (forall ((p@@2 T@Field_5165_13756) (v_1@@1 T@FrameType) (q T@Field_5165_13756) (w@@1 T@FrameType) (r T@Field_5165_13756) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9994_9994 p@@2 v_1@@1 q w@@1) (InsidePredicate_9994_9994 q w@@1 r u)) (InsidePredicate_9994_9994 p@@2 v_1@@1 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9994_9994 p@@2 v_1@@1 q w@@1) (InsidePredicate_9994_9994 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_5165_13756) (v_1@@2 T@FrameType) (q@@0 T@Field_5165_13756) (w@@2 T@FrameType) (r@@0 T@Field_13755_13756) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9994_9994 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9994_5259 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_9994_5259 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9994_9994 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9994_5259 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_5165_13756) (v_1@@3 T@FrameType) (q@@1 T@Field_13755_13756) (w@@3 T@FrameType) (r@@1 T@Field_5165_13756) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9994_5259 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5259_9994 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_9994_9994 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9994_5259 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5259_9994 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_5165_13756) (v_1@@4 T@FrameType) (q@@2 T@Field_13755_13756) (w@@4 T@FrameType) (r@@2 T@Field_13755_13756) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9994_5259 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5259_5259 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_9994_5259 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9994_5259 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5259_5259 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_13755_13756) (v_1@@5 T@FrameType) (q@@3 T@Field_5165_13756) (w@@5 T@FrameType) (r@@3 T@Field_5165_13756) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5259_9994 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9994_9994 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5259_9994 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5259_9994 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9994_9994 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_13755_13756) (v_1@@6 T@FrameType) (q@@4 T@Field_5165_13756) (w@@6 T@FrameType) (r@@4 T@Field_13755_13756) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5259_9994 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9994_5259 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5259_5259 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5259_9994 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9994_5259 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_13755_13756) (v_1@@7 T@FrameType) (q@@5 T@Field_13755_13756) (w@@7 T@FrameType) (r@@5 T@Field_5165_13756) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5259_5259 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5259_9994 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5259_9994 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5259_5259 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5259_9994 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_13755_13756) (v_1@@8 T@FrameType) (q@@6 T@Field_13755_13756) (w@@8 T@FrameType) (r@@6 T@Field_13755_13756) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5259_5259 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5259_5259 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5259_5259 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5259_5259 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5259_5259 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_9955)
(declare-fun xs@@18 () T@Ref)
(declare-fun j_4 () Int)
(declare-fun Heap@@45 () T@PolymorphicMapType_9934)
(declare-fun i_7 () Int)
(set-info :boogie-vc-id |ascending#definedness|)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon15_Then_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) null (SortedList xs@@18)))))))
(let ((anon18_Then_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) null (SortedList xs@@18))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) null (SortedList xs@@18)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= 0 j_4)) (=> (<= 0 j_4) (=> (= (ControlFlow 0 9) (- 0 8)) (< j_4 (length_1 Heap@@45 xs@@18)))))))))
(let ((anon17_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) null (SortedList xs@@18))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) null (SortedList xs@@18)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= 0 i_7)) (=> (<= 0 i_7) (=> (= (ControlFlow 0 5) (- 0 4)) (< i_7 (length_1 Heap@@45 xs@@18)))))))))
(let ((anon10_correct true))
(let ((anon16_Then_correct  (=> (and (<= 0 i_7) (and (< i_7 j_4) (< j_4 (length_1 Heap@@45 xs@@18)))) (and (and (=> (= (ControlFlow 0 12) 5) anon17_Then_correct) (=> (= (ControlFlow 0 12) 9) anon18_Then_correct)) (=> (= (ControlFlow 0 12) 2) anon10_correct)))))
(let ((anon16_Else_correct  (=> (and (not (and (<= 0 i_7) (and (< i_7 j_4) (< j_4 (length_1 Heap@@45 xs@@18))))) (= (ControlFlow 0 3) 2)) anon10_correct)))
(let ((anon14_Then_correct  (=> (< i_7 j_4) (and (and (=> (= (ControlFlow 0 17) 16) anon15_Then_correct) (=> (= (ControlFlow 0 17) 12) anon16_Then_correct)) (=> (= (ControlFlow 0 17) 3) anon16_Else_correct)))))
(let ((anon14_Else_correct  (=> (<= j_4 i_7) (and (=> (= (ControlFlow 0 14) 12) anon16_Then_correct) (=> (= (ControlFlow 0 14) 3) anon16_Else_correct)))))
(let ((anon13_Then_correct  (=> (<= 0 i_7) (and (=> (= (ControlFlow 0 18) 17) anon14_Then_correct) (=> (= (ControlFlow 0 18) 14) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (< i_7 0) (and (=> (= (ControlFlow 0 13) 12) anon16_Then_correct) (=> (= (ControlFlow 0 13) 3) anon16_Else_correct)))))
(let ((anon12_Else_correct true))
(let ((anon0_correct  (=> (state Heap@@45 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@45) xs@@18 $allocated)) (=> (and (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_9955 (store (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ZeroMask) null (SortedList xs@@18) (+ (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ZeroMask) null (SortedList xs@@18)) FullPerm)) (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| ZeroMask)))) (and (state Heap@@45 Mask@0) (state Heap@@45 Mask@0))) (and (and (=> (= (ControlFlow 0 19) 1) anon12_Else_correct) (=> (= (ControlFlow 0 19) 18) anon13_Then_correct)) (=> (= (ControlFlow 0 19) 13) anon13_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 19) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
