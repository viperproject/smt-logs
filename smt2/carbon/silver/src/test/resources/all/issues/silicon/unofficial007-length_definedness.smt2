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
(declare-fun length (T@PolymorphicMapType_9934 T@Ref) Int)
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_9934) (Mask@@0 T@PolymorphicMapType_9955) (xs@@4 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@0) (< AssumeFunctionsAbove 0)) (= (ascending Heap@@4 xs@@4) (forall ((i@@0 Int) (j_9 Int) ) (!  (=> (and (<= 0 i@@0) (and (< i@@0 j_9) (< j_9 (length Heap@@4 xs@@4)))) (<= (itemAt Heap@@4 xs@@4 i@@0) (itemAt Heap@@4 xs@@4 j_9)))
 :qid |stdinbpl.534:84|
 :skolemid |36|
 :pattern ( (|itemAt#frame| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@4) null (SortedList xs@@4)) xs@@4 i@@0) (|itemAt#frame| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@4) null (SortedList xs@@4)) xs@@4 j_9))
))))
 :qid |stdinbpl.532:15|
 :skolemid |37|
 :pattern ( (state Heap@@4 Mask@@0) (ascending Heap@@4 xs@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9934) (xs@@5 T@Ref) ) (!  (and (= (length Heap@@5 xs@@5) (|length'| Heap@@5 xs@@5)) (dummyFunction_1479 (|length#triggerStateless| xs@@5)))
 :qid |stdinbpl.199:15|
 :skolemid |22|
 :pattern ( (length Heap@@5 xs@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9934) (ExhaleHeap T@PolymorphicMapType_9934) (Mask@@1 T@PolymorphicMapType_9955) (pm_f_21 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_13755_13756 Mask@@1 null pm_f_21) (IsPredicateField_5259_5260 pm_f_21)) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@6) null (PredicateMaskField_5259 pm_f_21)) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap) null (PredicateMaskField_5259 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (IsPredicateField_5259_5260 pm_f_21) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap) null (PredicateMaskField_5259 pm_f_21)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9934) (ExhaleHeap@@0 T@PolymorphicMapType_9934) (Mask@@2 T@PolymorphicMapType_9955) (pm_f_21@@0 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5165_13756 Mask@@2 null pm_f_21@@0) (IsPredicateField_5165_35023 pm_f_21@@0)) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@7) null (PredicateMaskField_5165 pm_f_21@@0)) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@0) null (PredicateMaskField_5165 pm_f_21@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5165_35023 pm_f_21@@0) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@0) null (PredicateMaskField_5165 pm_f_21@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9934) (ExhaleHeap@@1 T@PolymorphicMapType_9934) (Mask@@3 T@PolymorphicMapType_9955) (pm_f_21@@1 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_13755_13756 Mask@@3 null pm_f_21@@1) (IsWandField_13755_38693 pm_f_21@@1)) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@8) null (WandMaskField_13755 pm_f_21@@1)) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@1) null (WandMaskField_13755 pm_f_21@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (IsWandField_13755_38693 pm_f_21@@1) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@1) null (WandMaskField_13755 pm_f_21@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9934) (ExhaleHeap@@2 T@PolymorphicMapType_9934) (Mask@@4 T@PolymorphicMapType_9955) (pm_f_21@@2 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5165_13756 Mask@@4 null pm_f_21@@2) (IsWandField_5165_38336 pm_f_21@@2)) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@9) null (WandMaskField_5165 pm_f_21@@2)) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@2) null (WandMaskField_5165 pm_f_21@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (IsWandField_5165_38336 pm_f_21@@2) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@2) null (WandMaskField_5165 pm_f_21@@2)))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_9934) (ExhaleHeap@@3 T@PolymorphicMapType_9934) (Mask@@5 T@PolymorphicMapType_9955) (pm_f_21@@3 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_13755_13756 Mask@@5 null pm_f_21@@3) (IsPredicateField_5259_5260 pm_f_21@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_21 T@Ref) (f_44 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21 f_44) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@10) o2_21 f_44) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21 f_44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21 f_44))
)) (forall ((o2_21@@0 T@Ref) (f_44@@0 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@0 f_44@@0) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@10) o2_21@@0 f_44@@0) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@0 f_44@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@0 f_44@@0))
))) (forall ((o2_21@@1 T@Ref) (f_44@@1 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@1 f_44@@1) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@10) o2_21@@1 f_44@@1) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@1 f_44@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@1 f_44@@1))
))) (forall ((o2_21@@2 T@Ref) (f_44@@2 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@2 f_44@@2) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@10) o2_21@@2 f_44@@2) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@2 f_44@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@2 f_44@@2))
))) (forall ((o2_21@@3 T@Ref) (f_44@@3 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@3 f_44@@3) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@10) o2_21@@3 f_44@@3) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@3 f_44@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@3 f_44@@3))
))) (forall ((o2_21@@4 T@Ref) (f_44@@4 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@4 f_44@@4) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@10) o2_21@@4 f_44@@4) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@4 f_44@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@4 f_44@@4))
))) (forall ((o2_21@@5 T@Ref) (f_44@@5 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@5 f_44@@5) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@10) o2_21@@5 f_44@@5) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@5 f_44@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@5 f_44@@5))
))) (forall ((o2_21@@6 T@Ref) (f_44@@6 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@6 f_44@@6) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@10) o2_21@@6 f_44@@6) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@6 f_44@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@6 f_44@@6))
))) (forall ((o2_21@@7 T@Ref) (f_44@@7 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@7 f_44@@7) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@10) o2_21@@7 f_44@@7) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@7 f_44@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@7 f_44@@7))
))) (forall ((o2_21@@8 T@Ref) (f_44@@8 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) null (PredicateMaskField_5259 pm_f_21@@3))) o2_21@@8 f_44@@8) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@10) o2_21@@8 f_44@@8) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@8 f_44@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@3) o2_21@@8 f_44@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (IsPredicateField_5259_5260 pm_f_21@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9934) (ExhaleHeap@@4 T@PolymorphicMapType_9934) (Mask@@6 T@PolymorphicMapType_9955) (pm_f_21@@4 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5165_13756 Mask@@6 null pm_f_21@@4) (IsPredicateField_5165_35023 pm_f_21@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_21@@9 T@Ref) (f_44@@9 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@9 f_44@@9) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@11) o2_21@@9 f_44@@9) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@9 f_44@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@9 f_44@@9))
)) (forall ((o2_21@@10 T@Ref) (f_44@@10 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@10 f_44@@10) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@11) o2_21@@10 f_44@@10) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@10 f_44@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@10 f_44@@10))
))) (forall ((o2_21@@11 T@Ref) (f_44@@11 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@11 f_44@@11) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@11) o2_21@@11 f_44@@11) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@11 f_44@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@11 f_44@@11))
))) (forall ((o2_21@@12 T@Ref) (f_44@@12 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@12 f_44@@12) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@11) o2_21@@12 f_44@@12) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@12 f_44@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@12 f_44@@12))
))) (forall ((o2_21@@13 T@Ref) (f_44@@13 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@13 f_44@@13) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) o2_21@@13 f_44@@13) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@13 f_44@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@13 f_44@@13))
))) (forall ((o2_21@@14 T@Ref) (f_44@@14 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@14 f_44@@14) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@11) o2_21@@14 f_44@@14) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@14 f_44@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@14 f_44@@14))
))) (forall ((o2_21@@15 T@Ref) (f_44@@15 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@15 f_44@@15) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@11) o2_21@@15 f_44@@15) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@15 f_44@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@15 f_44@@15))
))) (forall ((o2_21@@16 T@Ref) (f_44@@16 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@16 f_44@@16) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@11) o2_21@@16 f_44@@16) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@16 f_44@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@16 f_44@@16))
))) (forall ((o2_21@@17 T@Ref) (f_44@@17 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@17 f_44@@17) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@11) o2_21@@17 f_44@@17) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@17 f_44@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@17 f_44@@17))
))) (forall ((o2_21@@18 T@Ref) (f_44@@18 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@11) null (PredicateMaskField_5165 pm_f_21@@4))) o2_21@@18 f_44@@18) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@11) o2_21@@18 f_44@@18) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@18 f_44@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@4) o2_21@@18 f_44@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (IsPredicateField_5165_35023 pm_f_21@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9934) (ExhaleHeap@@5 T@PolymorphicMapType_9934) (Mask@@7 T@PolymorphicMapType_9955) (pm_f_21@@5 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_13755_13756 Mask@@7 null pm_f_21@@5) (IsWandField_13755_38693 pm_f_21@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_21@@19 T@Ref) (f_44@@19 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@19 f_44@@19) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@12) o2_21@@19 f_44@@19) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@19 f_44@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@19 f_44@@19))
)) (forall ((o2_21@@20 T@Ref) (f_44@@20 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@20 f_44@@20) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@12) o2_21@@20 f_44@@20) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@20 f_44@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@20 f_44@@20))
))) (forall ((o2_21@@21 T@Ref) (f_44@@21 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@21 f_44@@21) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@12) o2_21@@21 f_44@@21) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@21 f_44@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@21 f_44@@21))
))) (forall ((o2_21@@22 T@Ref) (f_44@@22 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@22 f_44@@22) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@12) o2_21@@22 f_44@@22) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@22 f_44@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@22 f_44@@22))
))) (forall ((o2_21@@23 T@Ref) (f_44@@23 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@23 f_44@@23) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@12) o2_21@@23 f_44@@23) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@23 f_44@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@23 f_44@@23))
))) (forall ((o2_21@@24 T@Ref) (f_44@@24 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@24 f_44@@24) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@12) o2_21@@24 f_44@@24) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@24 f_44@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@24 f_44@@24))
))) (forall ((o2_21@@25 T@Ref) (f_44@@25 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@25 f_44@@25) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@12) o2_21@@25 f_44@@25) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@25 f_44@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@25 f_44@@25))
))) (forall ((o2_21@@26 T@Ref) (f_44@@26 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@26 f_44@@26) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@12) o2_21@@26 f_44@@26) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@26 f_44@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@26 f_44@@26))
))) (forall ((o2_21@@27 T@Ref) (f_44@@27 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@27 f_44@@27) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@12) o2_21@@27 f_44@@27) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@27 f_44@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@27 f_44@@27))
))) (forall ((o2_21@@28 T@Ref) (f_44@@28 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) null (WandMaskField_13755 pm_f_21@@5))) o2_21@@28 f_44@@28) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@12) o2_21@@28 f_44@@28) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@28 f_44@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@5) o2_21@@28 f_44@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (IsWandField_13755_38693 pm_f_21@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9934) (ExhaleHeap@@6 T@PolymorphicMapType_9934) (Mask@@8 T@PolymorphicMapType_9955) (pm_f_21@@6 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_5165_13756 Mask@@8 null pm_f_21@@6) (IsWandField_5165_38336 pm_f_21@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_21@@29 T@Ref) (f_44@@29 T@Field_13321_1189) ) (!  (=> (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@29 f_44@@29) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@13) o2_21@@29 f_44@@29) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@29 f_44@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@29 f_44@@29))
)) (forall ((o2_21@@30 T@Ref) (f_44@@30 T@Field_10007_10008) ) (!  (=> (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@30 f_44@@30) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@13) o2_21@@30 f_44@@30) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@30 f_44@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@30 f_44@@30))
))) (forall ((o2_21@@31 T@Ref) (f_44@@31 T@Field_9994_53) ) (!  (=> (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@31 f_44@@31) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@13) o2_21@@31 f_44@@31) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@31 f_44@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@31 f_44@@31))
))) (forall ((o2_21@@32 T@Ref) (f_44@@32 T@Field_5165_13756) ) (!  (=> (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@32 f_44@@32) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@13) o2_21@@32 f_44@@32) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@32 f_44@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@32 f_44@@32))
))) (forall ((o2_21@@33 T@Ref) (f_44@@33 T@Field_5165_16998) ) (!  (=> (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@33 f_44@@33) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) o2_21@@33 f_44@@33) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@33 f_44@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@33 f_44@@33))
))) (forall ((o2_21@@34 T@Ref) (f_44@@34 T@Field_13755_1189) ) (!  (=> (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@34 f_44@@34) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@13) o2_21@@34 f_44@@34) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@34 f_44@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@34 f_44@@34))
))) (forall ((o2_21@@35 T@Ref) (f_44@@35 T@Field_13755_5166) ) (!  (=> (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@35 f_44@@35) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@13) o2_21@@35 f_44@@35) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@35 f_44@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@35 f_44@@35))
))) (forall ((o2_21@@36 T@Ref) (f_44@@36 T@Field_13755_53) ) (!  (=> (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@36 f_44@@36) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@13) o2_21@@36 f_44@@36) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@36 f_44@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@36 f_44@@36))
))) (forall ((o2_21@@37 T@Ref) (f_44@@37 T@Field_13755_13756) ) (!  (=> (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@37 f_44@@37) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@13) o2_21@@37 f_44@@37) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@37 f_44@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@37 f_44@@37))
))) (forall ((o2_21@@38 T@Ref) (f_44@@38 T@Field_16993_16998) ) (!  (=> (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@13) null (WandMaskField_5165 pm_f_21@@6))) o2_21@@38 f_44@@38) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@13) o2_21@@38 f_44@@38) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@38 f_44@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@6) o2_21@@38 f_44@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (IsWandField_5165_38336 pm_f_21@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9934) (ExhaleHeap@@7 T@PolymorphicMapType_9934) (Mask@@9 T@PolymorphicMapType_9955) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@14) o_38 $allocated) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@7) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@7) o_38 $allocated))
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_9934) (ExhaleHeap@@9 T@PolymorphicMapType_9934) (Mask@@31 T@PolymorphicMapType_9955) (o_38@@0 T@Ref) (f_44@@39 T@Field_16993_16998) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_13755_34778 Mask@@31 o_38@@0 f_44@@39) (= (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@16) o_38@@0 f_44@@39) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@9) o_38@@0 f_44@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| ExhaleHeap@@9) o_38@@0 f_44@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9934) (ExhaleHeap@@10 T@PolymorphicMapType_9934) (Mask@@32 T@PolymorphicMapType_9955) (o_38@@1 T@Ref) (f_44@@40 T@Field_13755_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_13755_13756 Mask@@32 o_38@@1 f_44@@40) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@17) o_38@@1 f_44@@40) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@10) o_38@@1 f_44@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| ExhaleHeap@@10) o_38@@1 f_44@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9934) (ExhaleHeap@@11 T@PolymorphicMapType_9934) (Mask@@33 T@PolymorphicMapType_9955) (o_38@@2 T@Ref) (f_44@@41 T@Field_13755_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_13755_53 Mask@@33 o_38@@2 f_44@@41) (= (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@18) o_38@@2 f_44@@41) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@11) o_38@@2 f_44@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| ExhaleHeap@@11) o_38@@2 f_44@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9934) (ExhaleHeap@@12 T@PolymorphicMapType_9934) (Mask@@34 T@PolymorphicMapType_9955) (o_38@@3 T@Ref) (f_44@@42 T@Field_13755_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_13755_1189 Mask@@34 o_38@@3 f_44@@42) (= (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@19) o_38@@3 f_44@@42) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@12) o_38@@3 f_44@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| ExhaleHeap@@12) o_38@@3 f_44@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9934) (ExhaleHeap@@13 T@PolymorphicMapType_9934) (Mask@@35 T@PolymorphicMapType_9955) (o_38@@4 T@Ref) (f_44@@43 T@Field_13755_5166) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_13755_5166 Mask@@35 o_38@@4 f_44@@43) (= (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@20) o_38@@4 f_44@@43) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@13) o_38@@4 f_44@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| ExhaleHeap@@13) o_38@@4 f_44@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9934) (ExhaleHeap@@14 T@PolymorphicMapType_9934) (Mask@@36 T@PolymorphicMapType_9955) (o_38@@5 T@Ref) (f_44@@44 T@Field_5165_16998) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_5165_33617 Mask@@36 o_38@@5 f_44@@44) (= (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@21) o_38@@5 f_44@@44) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@14) o_38@@5 f_44@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| ExhaleHeap@@14) o_38@@5 f_44@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9934) (ExhaleHeap@@15 T@PolymorphicMapType_9934) (Mask@@37 T@PolymorphicMapType_9955) (o_38@@6 T@Ref) (f_44@@45 T@Field_5165_13756) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_5165_13756 Mask@@37 o_38@@6 f_44@@45) (= (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@22) o_38@@6 f_44@@45) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@15) o_38@@6 f_44@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| ExhaleHeap@@15) o_38@@6 f_44@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9934) (ExhaleHeap@@16 T@PolymorphicMapType_9934) (Mask@@38 T@PolymorphicMapType_9955) (o_38@@7 T@Ref) (f_44@@46 T@Field_9994_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_5165_53 Mask@@38 o_38@@7 f_44@@46) (= (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@23) o_38@@7 f_44@@46) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@16) o_38@@7 f_44@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| ExhaleHeap@@16) o_38@@7 f_44@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9934) (ExhaleHeap@@17 T@PolymorphicMapType_9934) (Mask@@39 T@PolymorphicMapType_9955) (o_38@@8 T@Ref) (f_44@@47 T@Field_13321_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_5163_1189 Mask@@39 o_38@@8 f_44@@47) (= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@24) o_38@@8 f_44@@47) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@17) o_38@@8 f_44@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| ExhaleHeap@@17) o_38@@8 f_44@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9934) (ExhaleHeap@@18 T@PolymorphicMapType_9934) (Mask@@40 T@PolymorphicMapType_9955) (o_38@@9 T@Ref) (f_44@@48 T@Field_10007_10008) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_5165_5166 Mask@@40 o_38@@9 f_44@@48) (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@25) o_38@@9 f_44@@48) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@18) o_38@@9 f_44@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| ExhaleHeap@@18) o_38@@9 f_44@@48))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9934) (Mask@@41 T@PolymorphicMapType_9955) (xs@@8 T@Ref) (i@@1 Int) ) (!  (=> (and (state Heap@@26 Mask@@41) (< AssumeFunctionsAbove 1)) (=> (and (<= 0 i@@1) (< i@@1 (length Heap@@26 xs@@8))) (= (itemAt Heap@@26 xs@@8 i@@1) (ite (= i@@1 0) (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@26) xs@@8 val) (|itemAt'| Heap@@26 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@26) xs@@8 next) (- i@@1 1))))))
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
(assert (forall ((Heap@@30 T@PolymorphicMapType_9934) (Mask@@44 T@PolymorphicMapType_9955) (xs@@12 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@44) (< AssumeFunctionsAbove 2)) (= (length Heap@@30 xs@@12) (+ 1 (ite (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@30) xs@@12 next) null) 0 (|length'| Heap@@30 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@30) xs@@12 next))))))
 :qid |stdinbpl.209:15|
 :skolemid |24|
 :pattern ( (state Heap@@30 Mask@@44) (length Heap@@30 xs@@12))
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
(assert (forall ((Heap@@34 T@PolymorphicMapType_9934) (o_8 T@Ref) (f_8 T@Field_16993_16998) (v T@PolymorphicMapType_10483) ) (! (succHeap Heap@@34 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@34) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@34) o_8 f_8 v) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@34) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@34) o_8 f_8 v) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@34) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9934) (o_8@@0 T@Ref) (f_8@@0 T@Field_13755_1189) (v@@0 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@35) (store (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@35) o_8@@0 f_8@@0 v@@0) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@35) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@35) (store (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@35) o_8@@0 f_8@@0 v@@0) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9934) (o_8@@1 T@Ref) (f_8@@1 T@Field_13755_13756) (v@@1 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@36) (store (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@36) o_8@@1 f_8@@1 v@@1) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@36) (store (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@36) o_8@@1 f_8@@1 v@@1) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@36) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9934) (o_8@@2 T@Ref) (f_8@@2 T@Field_13755_5166) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@37) (store (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@37) o_8@@2 f_8@@2 v@@2) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@37) (store (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@37) o_8@@2 f_8@@2 v@@2) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@37) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9934) (o_8@@3 T@Ref) (f_8@@3 T@Field_13755_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@38) (store (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@38) o_8@@3 f_8@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@38) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@38) (store (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@38) o_8@@3 f_8@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9934) (o_8@@4 T@Ref) (f_8@@4 T@Field_5165_16998) (v@@4 T@PolymorphicMapType_10483) ) (! (succHeap Heap@@39 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@39) (store (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@39) o_8@@4 f_8@@4 v@@4) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@39) (store (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@39) o_8@@4 f_8@@4 v@@4) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@39) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9934) (o_8@@5 T@Ref) (f_8@@5 T@Field_13321_1189) (v@@5 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@40) (store (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@40) o_8@@5 f_8@@5 v@@5) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@40) (store (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@40) o_8@@5 f_8@@5 v@@5) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@40) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9934) (o_8@@6 T@Ref) (f_8@@6 T@Field_5165_13756) (v@@6 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@41) (store (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@41) o_8@@6 f_8@@6 v@@6) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@41) (store (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@41) o_8@@6 f_8@@6 v@@6) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@41) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9934) (o_8@@7 T@Ref) (f_8@@7 T@Field_10007_10008) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@42) (store (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@42) o_8@@7 f_8@@7 v@@7) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@42) (store (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@42) o_8@@7 f_8@@7 v@@7) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@42) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9934) (o_8@@8 T@Ref) (f_8@@8 T@Field_9994_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_9934 (store (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@43) o_8@@8 f_8@@8 v@@8) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9934 (store (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@43) o_8@@8 f_8@@8 v@@8) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@43) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@43)))
)))
(assert (forall ((xs@@17 T@Ref) ) (! (= (PredicateMaskField_5259 (SortedList xs@@17)) (|SortedList#sm| xs@@17))
 :qid |stdinbpl.654:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_5259 (SortedList xs@@17)))
)))
(assert (forall ((o_8@@9 T@Ref) (f_12 T@Field_10007_10008) (Heap@@44 T@PolymorphicMapType_9934) ) (!  (=> (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@44) o_8@@9 $allocated) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@44) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@44) o_8@@9 f_12) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@44) o_8@@9 f_12))
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
(declare-fun Heap@7 () T@PolymorphicMapType_9934)
(declare-fun Mask@0 () T@PolymorphicMapType_9955)
(declare-fun Result@0 () Int)
(declare-fun xs@@18 () T@Ref)
(declare-fun Heap@5 () T@PolymorphicMapType_9934)
(declare-fun newPMask@1 () T@PolymorphicMapType_10483)
(declare-fun Heap@6 () T@PolymorphicMapType_9934)
(declare-fun Heap@3 () T@PolymorphicMapType_9934)
(declare-fun Heap@4 () T@PolymorphicMapType_9934)
(declare-fun Heap@1 () T@PolymorphicMapType_9934)
(declare-fun newPMask@0 () T@PolymorphicMapType_10483)
(declare-fun Heap@2 () T@PolymorphicMapType_9934)
(declare-fun Heap@0 () T@PolymorphicMapType_9934)
(declare-fun Heap@@45 () T@PolymorphicMapType_9934)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_9955)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9955)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_9955)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_5166 (T@Ref) T@FrameType)
(declare-fun FrameFragment_5260 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9955)
(set-info :boogie-vc-id |length#definedness|)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon13_correct  (=> (state Heap@7 Mask@0) (=> (and (= Result@0 (+ 1 (ite (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@7) xs@@18 next) null) 0 (length Heap@7 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@7) xs@@18 next))))) (= (ControlFlow 0 4) (- 0 3))) (> Result@0 0)))))
(let ((anon19_Else_correct  (=> (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next) null) (=> (and (= Heap@7 Heap@5) (= (ControlFlow 0 6) 4)) anon13_correct))))
(let ((anon19_Then_correct  (=> (not (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_13321_1189) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16 f_21) (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16 f_21)) (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| newPMask@1) o_16 f_21))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| newPMask@1) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_10007_10008) ) (!  (=> (or (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| newPMask@1) o_16@@0 f_21@@0))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| newPMask@1) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_9994_53) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| newPMask@1) o_16@@1 f_21@@1))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| newPMask@1) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_5165_13756) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| newPMask@1) o_16@@2 f_21@@2))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| newPMask@1) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_5165_16998) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| newPMask@1) o_16@@3 f_21@@3))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| newPMask@1) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_13755_1189) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| newPMask@1) o_16@@4 f_21@@4))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| newPMask@1) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_13755_5166) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| newPMask@1) o_16@@5 f_21@@5))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| newPMask@1) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_13755_53) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| newPMask@1) o_16@@6 f_21@@6))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| newPMask@1) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_13755_13756) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| newPMask@1) o_16@@7 f_21@@7))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| newPMask@1) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_16993_16998) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) xs@@18 next)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| newPMask@1) o_16@@8 f_21@@8))
 :qid |stdinbpl.336:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| newPMask@1) o_16@@8 f_21@@8))
))) (= Heap@6 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@5) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@5) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@5) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@5) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@5) null (|SortedList#sm| xs@@18) newPMask@1) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@5) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@5) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@5) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@5) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 5) 4))) anon13_correct))))
(let ((anon11_correct  (=> (state Heap@3 Mask@0) (=> (and (= Heap@4 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@3) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@3) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@3) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@3) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18) (PolymorphicMapType_10483 (store (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) xs@@18 val true) (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@3) null (|SortedList#sm| xs@@18))))) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@3) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@3) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@3) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@3) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@3))) (= Heap@5 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@4) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@4) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@4) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@4) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18) (PolymorphicMapType_10483 (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (store (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) xs@@18 next true) (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@4) null (|SortedList#sm| xs@@18))))) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@4) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@4) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@4) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@4) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@4)))) (and (=> (= (ControlFlow 0 7) 5) anon19_Then_correct) (=> (= (ControlFlow 0 7) 6) anon19_Else_correct))))))
(let ((anon18_Else_correct  (=> (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 9) 7)) anon11_correct))))
(let ((anon18_Then_correct  (=> (not (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_13321_1189) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15 f_20) (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15 f_20)) (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| newPMask@0) o_15 f_20))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_10007_10008) ) (!  (=> (or (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_9994_53) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_5165_13756) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_5165_16998) ) (!  (=> (or (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_13755_1189) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_13755_5166) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_13755_53) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_13755_13756) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_16993_16998) ) (!  (=> (or (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) xs@@18 next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.323:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@2 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@1) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@1) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@1) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@1) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@1) null (|SortedList#sm| xs@@18) newPMask@0) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@1) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@1) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@1) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@1) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 8) 7))) anon11_correct))))
(let ((anon9_correct  (=> (and (= Heap@0 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@45) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@45) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@45) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18) (PolymorphicMapType_10483 (store (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) xs@@18 val true) (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@@45) null (|SortedList#sm| xs@@18))))) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@@45) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@@45) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@@45) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@@45) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@@45))) (= Heap@1 (PolymorphicMapType_9934 (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@0) (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@0) (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@0) (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@0) (store (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18) (PolymorphicMapType_10483 (|PolymorphicMapType_10483_5163_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (store (|PolymorphicMapType_10483_5165_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) xs@@18 next true) (|PolymorphicMapType_10483_5163_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_5163_36480#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_1189#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_5166#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_53#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_13756#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))) (|PolymorphicMapType_10483_13755_37528#PolymorphicMapType_10483| (select (|PolymorphicMapType_9934_5263_17085#PolymorphicMapType_9934| Heap@0) null (|SortedList#sm| xs@@18))))) (|PolymorphicMapType_9934_5165_13756#PolymorphicMapType_9934| Heap@0) (|PolymorphicMapType_9934_5165_33659#PolymorphicMapType_9934| Heap@0) (|PolymorphicMapType_9934_13755_5166#PolymorphicMapType_9934| Heap@0) (|PolymorphicMapType_9934_13755_1189#PolymorphicMapType_9934| Heap@0) (|PolymorphicMapType_9934_13755_53#PolymorphicMapType_9934| Heap@0)))) (and (=> (= (ControlFlow 0 10) 8) anon18_Then_correct) (=> (= (ControlFlow 0 10) 9) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (|length#trigger| (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@45) null (SortedList (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next))) (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next)) (= (ControlFlow 0 12) 10)) anon9_correct)))
(let ((anon16_Then_correct  (=> (and (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null) (= (ControlFlow 0 11) 10)) anon9_correct)))
(let ((anon17_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| UnfoldingMask@3) null (SortedList (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next))))))))
(let ((anon16_Else_correct  (=> (not (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_5165_5166 UnfoldingMask@3 xs@@18 next)) (=> (HasDirectPerm_5165_5166 UnfoldingMask@3 xs@@18 next) (and (=> (= (ControlFlow 0 13) 2) anon17_Then_correct) (=> (= (ControlFlow 0 13) 12) anon17_Else_correct)))))))
(let ((anon4_correct  (=> (state Heap@@45 UnfoldingMask@3) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_5165_5166 UnfoldingMask@3 xs@@18 next)) (=> (HasDirectPerm_5165_5166 UnfoldingMask@3 xs@@18 next) (and (=> (= (ControlFlow 0 15) 11) anon16_Then_correct) (=> (= (ControlFlow 0 15) 13) anon16_Else_correct)))))))
(let ((anon15_Else_correct  (=> (and (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null) (= (ControlFlow 0 18) 15)) anon4_correct)))
(let ((anon15_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null)) (state Heap@@45 UnfoldingMask@3)) (=> (and (and (<= (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@45) xs@@18 val) (itemAt Heap@@45 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) 0)) (state Heap@@45 UnfoldingMask@3)) (and (ascending Heap@@45 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next)) (= (ControlFlow 0 17) 15))) anon4_correct))))
(let ((anon14_Else_correct  (=> (and (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null) (= UnfoldingMask@3 UnfoldingMask@1)) (and (=> (= (ControlFlow 0 20) 17) anon15_Then_correct) (=> (= (ControlFlow 0 20) 18) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (not (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null)) (=> (and (and (= UnfoldingMask@2 (PolymorphicMapType_9955 (store (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| UnfoldingMask@1) null (SortedList (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next)) (+ (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| UnfoldingMask@1) null (SortedList (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next))) FullPerm)) (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| UnfoldingMask@1) (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| UnfoldingMask@1))) (InsidePredicate_5259_5259 (SortedList xs@@18) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@45) null (SortedList xs@@18)) (SortedList (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next)) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@45) null (SortedList (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next))))) (and (state Heap@@45 UnfoldingMask@2) (= UnfoldingMask@3 UnfoldingMask@2))) (and (=> (= (ControlFlow 0 19) 17) anon15_Then_correct) (=> (= (ControlFlow 0 19) 18) anon15_Else_correct))))))
(let ((anon0_correct  (=> (state Heap@@45 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_9934_5035_53#PolymorphicMapType_9934| Heap@@45) xs@@18 $allocated)) (and (= AssumeFunctionsAbove 2) (= Mask@0 (PolymorphicMapType_9955 (store (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ZeroMask) null (SortedList xs@@18) (+ (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| ZeroMask) null (SortedList xs@@18)) FullPerm)) (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| ZeroMask) (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| ZeroMask))))) (and (and (state Heap@@45 Mask@0) (state Heap@@45 Mask@0)) (and (|SortedList#trigger_5259| Heap@@45 (SortedList xs@@18)) (= (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@45) null (SortedList xs@@18)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_9934_5163_1189#PolymorphicMapType_9934| Heap@@45) xs@@18 val)) (CombineFrames (FrameFragment_5166 (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next)) (CombineFrames (FrameFragment_5260 (ite (not (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null)) (select (|PolymorphicMapType_9934_5259_5260#PolymorphicMapType_9934| Heap@@45) null (SortedList (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next))) EmptyFrame)) (FrameFragment_5260 (ite (not (= (select (|PolymorphicMapType_9934_5038_5039#PolymorphicMapType_9934| Heap@@45) xs@@18 next) null)) EmptyFrame EmptyFrame))))))))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) null (SortedList xs@@18))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) null (SortedList xs@@18)))) (=> (and (not (= xs@@18 null)) (= UnfoldingMask@0 (PolymorphicMapType_9955 (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| Mask@0) (store (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| Mask@0) xs@@18 val (+ (select (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| Mask@0) xs@@18 val) FullPerm)) (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| Mask@0) (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| Mask@0) (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| Mask@0) (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| Mask@0) (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| Mask@0) (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| Mask@0) (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| Mask@0) (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| Mask@0)))) (=> (and (and (state Heap@@45 UnfoldingMask@0) (not (= xs@@18 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_9955 (|PolymorphicMapType_9955_5259_5260#PolymorphicMapType_9955| UnfoldingMask@0) (|PolymorphicMapType_9955_5163_1189#PolymorphicMapType_9955| UnfoldingMask@0) (store (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| UnfoldingMask@0) xs@@18 next (+ (select (|PolymorphicMapType_9955_5165_5166#PolymorphicMapType_9955| UnfoldingMask@0) xs@@18 next) FullPerm)) (|PolymorphicMapType_9955_5259_1189#PolymorphicMapType_9955| UnfoldingMask@0) (|PolymorphicMapType_9955_5259_5166#PolymorphicMapType_9955| UnfoldingMask@0) (|PolymorphicMapType_9955_5259_53#PolymorphicMapType_9955| UnfoldingMask@0) (|PolymorphicMapType_9955_5259_42919#PolymorphicMapType_9955| UnfoldingMask@0) (|PolymorphicMapType_9955_5163_5260#PolymorphicMapType_9955| UnfoldingMask@0) (|PolymorphicMapType_9955_5163_53#PolymorphicMapType_9955| UnfoldingMask@0) (|PolymorphicMapType_9955_5163_43318#PolymorphicMapType_9955| UnfoldingMask@0))) (state Heap@@45 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 21) 19) anon14_Then_correct) (=> (= (ControlFlow 0 21) 20) anon14_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 21) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
