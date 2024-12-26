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
(declare-sort T@Field_21016_53 0)
(declare-sort T@Field_21029_21030 0)
(declare-sort T@Field_27625_4100 0)
(declare-sort T@Field_13664_59234 0)
(declare-sort T@Field_13664_59101 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_20977 0)) (((PolymorphicMapType_20977 (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| (Array T@Ref T@Field_27625_4100 Real)) (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| (Array T@Ref T@Field_21016_53 Real)) (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| (Array T@Ref T@Field_21029_21030 Real)) (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| (Array T@Ref T@Field_13664_59101 Real)) (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| (Array T@Ref T@Field_13664_59234 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21505 0)) (((PolymorphicMapType_21505 (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| (Array T@Ref T@Field_21016_53 Bool)) (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| (Array T@Ref T@Field_21029_21030 Bool)) (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| (Array T@Ref T@Field_27625_4100 Bool)) (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| (Array T@Ref T@Field_13664_59101 Bool)) (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| (Array T@Ref T@Field_13664_59234 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20956 0)) (((PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| (Array T@Ref T@Field_21016_53 Bool)) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| (Array T@Ref T@Field_21029_21030 T@Ref)) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| (Array T@Ref T@Field_27625_4100 Int)) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| (Array T@Ref T@Field_13664_59234 T@PolymorphicMapType_21505)) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| (Array T@Ref T@Field_13664_59101 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_21016_53)
(declare-fun f_7 () T@Field_27625_4100)
(declare-fun cell_value () T@Field_27625_4100)
(declare-fun succHeap (T@PolymorphicMapType_20956 T@PolymorphicMapType_20956) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_20956 T@PolymorphicMapType_20956) Bool)
(declare-sort T@HeapMatrixDomainType 0)
(declare-fun state (T@PolymorphicMapType_20956 T@PolymorphicMapType_20977) Bool)
(declare-sort T@MatrixDomainType 0)
(declare-fun |hm2m'| (T@PolymorphicMapType_20956 T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |hm2m#trigger| (T@FrameType T@HeapMatrixDomainType) Bool)
(declare-fun FrameFragment_4300 (Int) T@FrameType)
(declare-fun |hm2m#condqp6| (T@PolymorphicMapType_20956 T@HeapMatrixDomainType) Int)
(declare-fun loc (T@HeapMatrixDomainType Int Int) T@Ref)
(declare-fun get_1 (T@MatrixDomainType Int Int) Int)
(declare-fun hm_in_range (T@HeapMatrixDomainType Int Int) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_20977) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_21505)
(declare-fun |foo'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun dummyFunction_4472 (Bool) Bool)
(declare-fun |foo#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun |fun01#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |fun02'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun |fun02#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |bar01'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun |bar01#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |bar02'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun dummyFunction_7036 (Int) Bool)
(declare-fun |bar02#triggerStateless| ((Array T@Ref Bool) Int) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun dummyFunction_13990 (T@MatrixDomainType) Bool)
(declare-fun |hm2m#triggerStateless| (T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun rev_loc_hm (T@Ref) T@HeapMatrixDomainType)
(declare-fun rev_loc_i (T@Ref) Int)
(declare-fun rev_loc_j (T@Ref) Int)
(declare-fun hm2m (T@PolymorphicMapType_20956 T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun height (T@HeapMatrixDomainType) Int)
(declare-fun width (T@HeapMatrixDomainType) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_20956 T@PolymorphicMapType_20956 T@PolymorphicMapType_20977) Bool)
(declare-fun IsPredicateField_13664_59192 (T@Field_13664_59101) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13664 (T@Field_13664_59101) T@Field_13664_59234)
(declare-fun HasDirectPerm_13664_59165 (T@PolymorphicMapType_20977 T@Ref T@Field_13664_59101) Bool)
(declare-fun IsWandField_13664_60939 (T@Field_13664_59101) Bool)
(declare-fun WandMaskField_13664 (T@Field_13664_59101) T@Field_13664_59234)
(declare-fun dummyHeap () T@PolymorphicMapType_20956)
(declare-fun ZeroMask () T@PolymorphicMapType_20977)
(declare-fun InsidePredicate_21016_21016 (T@Field_13664_59101 T@FrameType T@Field_13664_59101 T@FrameType) Bool)
(declare-fun IsPredicateField_13662_4100 (T@Field_27625_4100) Bool)
(declare-fun IsWandField_13662_4100 (T@Field_27625_4100) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13662_64485 (T@Field_13664_59234) Bool)
(declare-fun IsWandField_13662_64501 (T@Field_13664_59234) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13662_21030 (T@Field_21029_21030) Bool)
(declare-fun IsWandField_13662_21030 (T@Field_21029_21030) Bool)
(declare-fun IsPredicateField_13662_53 (T@Field_21016_53) Bool)
(declare-fun IsWandField_13662_53 (T@Field_21016_53) Bool)
(declare-fun |foo#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |foo#condqp1| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |fun01#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |fun01#condqp2| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |fun02#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |fun02#condqp3| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |bar01#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |bar01#condqp4| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun HasDirectPerm_13664_64939 (T@PolymorphicMapType_20977 T@Ref T@Field_13664_59234) Bool)
(declare-fun HasDirectPerm_13664_21030 (T@PolymorphicMapType_20977 T@Ref T@Field_21029_21030) Bool)
(declare-fun HasDirectPerm_13664_53 (T@PolymorphicMapType_20977 T@Ref T@Field_21016_53) Bool)
(declare-fun HasDirectPerm_13664_4115 (T@PolymorphicMapType_20977 T@Ref T@Field_27625_4100) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun bar02 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |bar02#frame| (T@FrameType (Array T@Ref Bool) Int) Int)
(declare-fun |bar02#condqp5| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_20977 T@PolymorphicMapType_20977 T@PolymorphicMapType_20977) Bool)
(declare-fun |sk_foo#condqp1| (Int Int) T@Ref)
(declare-fun |sk_fun01#condqp2| (Int Int) T@Ref)
(declare-fun |sk_fun02#condqp3| (Int Int) T@Ref)
(declare-fun |sk_bar01#condqp4| (Int Int) T@Ref)
(declare-fun |sk_bar02#condqp5| (Int Int) T@Ref)
(declare-fun hm2set (T@HeapMatrixDomainType) (Array T@Ref Bool))
(declare-fun |sk_hm2m#condqp6| (Int Int) T@Ref)
(declare-fun |hm2m#frame| (T@FrameType T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun foo_2 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun fun01 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun fun02 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun bar01 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(assert (distinct f_7 cell_value)
)
(assert (forall ((Heap0 T@PolymorphicMapType_20956) (Heap1 T@PolymorphicMapType_20956) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_20956) (Mask T@PolymorphicMapType_20977) (hm_1 T@HeapMatrixDomainType) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 3) (|hm2m#trigger| (FrameFragment_4300 (|hm2m#condqp6| Heap hm_1)) hm_1))) (forall ((i Int) (j_9 Int) ) (!  (=> (hm_in_range hm_1 i j_9) (= (get_1 (|hm2m'| Heap hm_1) i j_9) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap) (loc hm_1 i j_9) cell_value)))
 :qid |stdinbpl.1053:126|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap) (loc hm_1 i j_9) cell_value))
 :pattern ( (get_1 (|hm2m'| Heap hm_1) i j_9))
)))
 :qid |stdinbpl.1051:15|
 :skolemid |142|
 :pattern ( (state Heap Mask) (|hm2m'| Heap hm_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_20956) (Mask@@0 T@PolymorphicMapType_20977) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_20956) (Heap1@@0 T@PolymorphicMapType_20956) (Heap2 T@PolymorphicMapType_20956) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13664_59234) ) (!  (not (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13664_59101) ) (!  (not (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27625_4100) ) (!  (not (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_21029_21030) ) (!  (not (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21016_53) ) (!  (not (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_20956) (xs (Array T@Ref Bool)) (i@@0 Int) ) (! (dummyFunction_4472 (|foo#triggerStateless| xs i@@0))
 :qid |stdinbpl.558:15|
 :skolemid |88|
 :pattern ( (|foo'| Heap@@1 xs i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_20956) (xs@@0 (Array T@Ref Bool)) (i@@1 Int) ) (! (dummyFunction_4472 (|fun01#triggerStateless| xs@@0 i@@1))
 :qid |stdinbpl.652:15|
 :skolemid |98|
 :pattern ( (|fun01'| Heap@@2 xs@@0 i@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_20956) (xs@@1 (Array T@Ref Bool)) (i@@2 Int) ) (! (dummyFunction_4472 (|fun02#triggerStateless| xs@@1 i@@2))
 :qid |stdinbpl.746:15|
 :skolemid |108|
 :pattern ( (|fun02'| Heap@@3 xs@@1 i@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_20956) (xs@@2 (Array T@Ref Bool)) (i@@3 Int) ) (! (dummyFunction_4472 (|bar01#triggerStateless| xs@@2 i@@3))
 :qid |stdinbpl.840:15|
 :skolemid |118|
 :pattern ( (|bar01'| Heap@@4 xs@@2 i@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_20956) (xs@@3 (Array T@Ref Bool)) (i@@4 Int) ) (! (dummyFunction_7036 (|bar02#triggerStateless| xs@@3 i@@4))
 :qid |stdinbpl.934:15|
 :skolemid |128|
 :pattern ( (|bar02'| Heap@@5 xs@@3 i@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.371:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_20956) (hm_1@@0 T@HeapMatrixDomainType) ) (! (dummyFunction_13990 (|hm2m#triggerStateless| hm_1@@0))
 :qid |stdinbpl.1028:15|
 :skolemid |138|
 :pattern ( (|hm2m'| Heap@@6 hm_1@@0))
)))
(assert (forall ((hm_1@@1 T@HeapMatrixDomainType) (i@@5 Int) (j_9@@0 Int) ) (!  (and (= (rev_loc_hm (loc hm_1@@1 i@@5 j_9@@0)) hm_1@@1) (and (= (rev_loc_i (loc hm_1@@1 i@@5 j_9@@0)) i@@5) (= (rev_loc_j (loc hm_1@@1 i@@5 j_9@@0)) j_9@@0)))
 :qid |stdinbpl.519:15|
 :skolemid |84|
 :pattern ( (loc hm_1@@1 i@@5 j_9@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_20956) (hm_1@@2 T@HeapMatrixDomainType) ) (!  (and (= (hm2m Heap@@7 hm_1@@2) (|hm2m'| Heap@@7 hm_1@@2)) (dummyFunction_13990 (|hm2m#triggerStateless| hm_1@@2)))
 :qid |stdinbpl.1024:15|
 :skolemid |137|
 :pattern ( (hm2m Heap@@7 hm_1@@2))
)))
(assert (forall ((hm_1@@3 T@HeapMatrixDomainType) (i@@6 Int) (j_9@@1 Int) ) (! (= (hm_in_range hm_1@@3 i@@6 j_9@@1)  (and (<= 0 i@@6) (and (< i@@6 (height hm_1@@3)) (and (<= 0 j_9@@1) (< j_9@@1 (width hm_1@@3))))))
 :qid |stdinbpl.525:15|
 :skolemid |85|
 :pattern ( (hm_in_range hm_1@@3 i@@6 j_9@@1))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.374:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_20956) (ExhaleHeap T@PolymorphicMapType_20956) (Mask@@1 T@PolymorphicMapType_20977) (pm_f_32 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_13664_59165 Mask@@1 null pm_f_32) (IsPredicateField_13664_59192 pm_f_32)) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@8) null (PredicateMaskField_13664 pm_f_32)) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap) null (PredicateMaskField_13664 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (IsPredicateField_13664_59192 pm_f_32) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap) null (PredicateMaskField_13664 pm_f_32)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_20956) (ExhaleHeap@@0 T@PolymorphicMapType_20956) (Mask@@2 T@PolymorphicMapType_20977) (pm_f_32@@0 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_13664_59165 Mask@@2 null pm_f_32@@0) (IsWandField_13664_60939 pm_f_32@@0)) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@9) null (WandMaskField_13664 pm_f_32@@0)) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@0) null (WandMaskField_13664 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (IsWandField_13664_60939 pm_f_32@@0) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@0) null (WandMaskField_13664 pm_f_32@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_20956) (ExhaleHeap@@1 T@PolymorphicMapType_20956) (Mask@@3 T@PolymorphicMapType_20977) (o_36 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@10) o_36 $allocated) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@1) o_36 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@1) o_36 $allocated))
)))
(assert (forall ((p T@Field_13664_59101) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21016_21016 p v_1 p w))
 :qid |stdinbpl.269:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21016_21016 p v_1 p w))
)))
(assert  (not (IsPredicateField_13662_4100 f_7)))
(assert  (not (IsWandField_13662_4100 f_7)))
(assert  (not (IsPredicateField_13662_4100 cell_value)))
(assert  (not (IsWandField_13662_4100 cell_value)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_20956) (ExhaleHeap@@2 T@PolymorphicMapType_20956) (Mask@@4 T@PolymorphicMapType_20977) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@11 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_20977) (o_2@@4 T@Ref) (f_4@@4 T@Field_13664_59234) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_13662_64485 f_4@@4))) (not (IsWandField_13662_64501 f_4@@4))) (<= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_20977) (o_2@@5 T@Ref) (f_4@@5 T@Field_13664_59101) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_13664_59192 f_4@@5))) (not (IsWandField_13664_60939 f_4@@5))) (<= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_20977) (o_2@@6 T@Ref) (f_4@@6 T@Field_21029_21030) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_13662_21030 f_4@@6))) (not (IsWandField_13662_21030 f_4@@6))) (<= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_20977) (o_2@@7 T@Ref) (f_4@@7 T@Field_21016_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_13662_53 f_4@@7))) (not (IsWandField_13662_53 f_4@@7))) (<= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_20977) (o_2@@8 T@Ref) (f_4@@8 T@Field_27625_4100) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_13662_4100 f_4@@8))) (not (IsWandField_13662_4100 f_4@@8))) (<= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_20956) (Mask@@10 T@PolymorphicMapType_20977) (xs@@4 (Array T@Ref Bool)) (i@@7 Int) ) (!  (=> (state Heap@@12 Mask@@10) (= (|foo'| Heap@@12 xs@@4 i@@7) (|foo#frame| (FrameFragment_4300 (|foo#condqp1| Heap@@12 xs@@4 i@@7)) xs@@4 i@@7)))
 :qid |stdinbpl.565:15|
 :skolemid |89|
 :pattern ( (state Heap@@12 Mask@@10) (|foo'| Heap@@12 xs@@4 i@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_20956) (Mask@@11 T@PolymorphicMapType_20977) (xs@@5 (Array T@Ref Bool)) (i@@8 Int) ) (!  (=> (state Heap@@13 Mask@@11) (= (|fun01'| Heap@@13 xs@@5 i@@8) (|fun01#frame| (FrameFragment_4300 (|fun01#condqp2| Heap@@13 xs@@5 i@@8)) xs@@5 i@@8)))
 :qid |stdinbpl.659:15|
 :skolemid |99|
 :pattern ( (state Heap@@13 Mask@@11) (|fun01'| Heap@@13 xs@@5 i@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_20956) (Mask@@12 T@PolymorphicMapType_20977) (xs@@6 (Array T@Ref Bool)) (i@@9 Int) ) (!  (=> (state Heap@@14 Mask@@12) (= (|fun02'| Heap@@14 xs@@6 i@@9) (|fun02#frame| (FrameFragment_4300 (|fun02#condqp3| Heap@@14 xs@@6 i@@9)) xs@@6 i@@9)))
 :qid |stdinbpl.753:15|
 :skolemid |109|
 :pattern ( (state Heap@@14 Mask@@12) (|fun02'| Heap@@14 xs@@6 i@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_20956) (Mask@@13 T@PolymorphicMapType_20977) (xs@@7 (Array T@Ref Bool)) (i@@10 Int) ) (!  (=> (state Heap@@15 Mask@@13) (= (|bar01'| Heap@@15 xs@@7 i@@10) (|bar01#frame| (FrameFragment_4300 (|bar01#condqp4| Heap@@15 xs@@7 i@@10)) xs@@7 i@@10)))
 :qid |stdinbpl.847:15|
 :skolemid |119|
 :pattern ( (state Heap@@15 Mask@@13) (|bar01'| Heap@@15 xs@@7 i@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_20977) (o_2@@9 T@Ref) (f_4@@9 T@Field_13664_59234) ) (! (= (HasDirectPerm_13664_64939 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_64939 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_20977) (o_2@@10 T@Ref) (f_4@@10 T@Field_13664_59101) ) (! (= (HasDirectPerm_13664_59165 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_59165 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_20977) (o_2@@11 T@Ref) (f_4@@11 T@Field_21029_21030) ) (! (= (HasDirectPerm_13664_21030 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_21030 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_20977) (o_2@@12 T@Ref) (f_4@@12 T@Field_21016_53) ) (! (= (HasDirectPerm_13664_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_20977) (o_2@@13 T@Ref) (f_4@@13 T@Field_27625_4100) ) (! (= (HasDirectPerm_13664_4115 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_4115 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_20956) (ExhaleHeap@@3 T@PolymorphicMapType_20956) (Mask@@19 T@PolymorphicMapType_20977) (pm_f_32@@1 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_13664_59165 Mask@@19 null pm_f_32@@1) (IsPredicateField_13664_59192 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_41 T@Field_21016_53) ) (!  (=> (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32 f_41) (= (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@16) o2_32 f_41) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32 f_41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32 f_41))
)) (forall ((o2_32@@0 T@Ref) (f_41@@0 T@Field_21029_21030) ) (!  (=> (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@0 f_41@@0) (= (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@16) o2_32@@0 f_41@@0) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@0 f_41@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@0 f_41@@0))
))) (forall ((o2_32@@1 T@Ref) (f_41@@1 T@Field_27625_4100) ) (!  (=> (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@1 f_41@@1) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@16) o2_32@@1 f_41@@1) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@1 f_41@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@1 f_41@@1))
))) (forall ((o2_32@@2 T@Ref) (f_41@@2 T@Field_13664_59101) ) (!  (=> (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@2 f_41@@2) (= (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@16) o2_32@@2 f_41@@2) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@2 f_41@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@2 f_41@@2))
))) (forall ((o2_32@@3 T@Ref) (f_41@@3 T@Field_13664_59234) ) (!  (=> (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@3 f_41@@3) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) o2_32@@3 f_41@@3) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@3 f_41@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@3 f_41@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@19) (IsPredicateField_13664_59192 pm_f_32@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_20956) (ExhaleHeap@@4 T@PolymorphicMapType_20956) (Mask@@20 T@PolymorphicMapType_20977) (pm_f_32@@2 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_13664_59165 Mask@@20 null pm_f_32@@2) (IsWandField_13664_60939 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_41@@4 T@Field_21016_53) ) (!  (=> (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@4 f_41@@4) (= (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@17) o2_32@@4 f_41@@4) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@4 f_41@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@4 f_41@@4))
)) (forall ((o2_32@@5 T@Ref) (f_41@@5 T@Field_21029_21030) ) (!  (=> (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@5 f_41@@5) (= (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@17) o2_32@@5 f_41@@5) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@5 f_41@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@5 f_41@@5))
))) (forall ((o2_32@@6 T@Ref) (f_41@@6 T@Field_27625_4100) ) (!  (=> (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@6 f_41@@6) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@17) o2_32@@6 f_41@@6) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@6 f_41@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@6 f_41@@6))
))) (forall ((o2_32@@7 T@Ref) (f_41@@7 T@Field_13664_59101) ) (!  (=> (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@7 f_41@@7) (= (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@17) o2_32@@7 f_41@@7) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@7 f_41@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@7 f_41@@7))
))) (forall ((o2_32@@8 T@Ref) (f_41@@8 T@Field_13664_59234) ) (!  (=> (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@8 f_41@@8) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) o2_32@@8 f_41@@8) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@8 f_41@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@8 f_41@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@20) (IsWandField_13664_60939 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.257:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_20956) (ExhaleHeap@@5 T@PolymorphicMapType_20956) (Mask@@21 T@PolymorphicMapType_20977) (o_36@@0 T@Ref) (f_41@@9 T@Field_13664_59234) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_13664_64939 Mask@@21 o_36@@0 f_41@@9) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@18) o_36@@0 f_41@@9) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@5) o_36@@0 f_41@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@5) o_36@@0 f_41@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_20956) (ExhaleHeap@@6 T@PolymorphicMapType_20956) (Mask@@22 T@PolymorphicMapType_20977) (o_36@@1 T@Ref) (f_41@@10 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_13664_59165 Mask@@22 o_36@@1 f_41@@10) (= (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@19) o_36@@1 f_41@@10) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@6) o_36@@1 f_41@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@6) o_36@@1 f_41@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_20956) (ExhaleHeap@@7 T@PolymorphicMapType_20956) (Mask@@23 T@PolymorphicMapType_20977) (o_36@@2 T@Ref) (f_41@@11 T@Field_21029_21030) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_13664_21030 Mask@@23 o_36@@2 f_41@@11) (= (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@20) o_36@@2 f_41@@11) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@7) o_36@@2 f_41@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@7) o_36@@2 f_41@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_20956) (ExhaleHeap@@8 T@PolymorphicMapType_20956) (Mask@@24 T@PolymorphicMapType_20977) (o_36@@3 T@Ref) (f_41@@12 T@Field_21016_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_13664_53 Mask@@24 o_36@@3 f_41@@12) (= (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@21) o_36@@3 f_41@@12) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@8) o_36@@3 f_41@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@8) o_36@@3 f_41@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_20956) (ExhaleHeap@@9 T@PolymorphicMapType_20956) (Mask@@25 T@PolymorphicMapType_20977) (o_36@@4 T@Ref) (f_41@@13 T@Field_27625_4100) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_13664_4115 Mask@@25 o_36@@4 f_41@@13) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@22) o_36@@4 f_41@@13) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@9) o_36@@4 f_41@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@9) o_36@@4 f_41@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_13664_59234) ) (! (= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_13664_59101) ) (! (= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_21029_21030) ) (! (= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_21016_53) ) (! (= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_27625_4100) ) (! (= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_20956) (xs@@8 (Array T@Ref Bool)) (i@@11 Int) ) (!  (and (= (bar02 Heap@@23 xs@@8 i@@11) (|bar02'| Heap@@23 xs@@8 i@@11)) (dummyFunction_7036 (|bar02#triggerStateless| xs@@8 i@@11)))
 :qid |stdinbpl.930:15|
 :skolemid |127|
 :pattern ( (bar02 Heap@@23 xs@@8 i@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_20956) (Mask@@26 T@PolymorphicMapType_20977) (xs@@9 (Array T@Ref Bool)) (i@@12 Int) ) (!  (=> (state Heap@@24 Mask@@26) (= (|bar02'| Heap@@24 xs@@9 i@@12) (|bar02#frame| (FrameFragment_4300 (|bar02#condqp5| Heap@@24 xs@@9 i@@12)) xs@@9 i@@12)))
 :qid |stdinbpl.941:15|
 :skolemid |129|
 :pattern ( (state Heap@@24 Mask@@26) (|bar02'| Heap@@24 xs@@9 i@@12))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_20977) (SummandMask1 T@PolymorphicMapType_20977) (SummandMask2 T@PolymorphicMapType_20977) (o_2@@19 T@Ref) (f_4@@19 T@Field_13664_59234) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_20977) (SummandMask1@@0 T@PolymorphicMapType_20977) (SummandMask2@@0 T@PolymorphicMapType_20977) (o_2@@20 T@Ref) (f_4@@20 T@Field_13664_59101) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_20977) (SummandMask1@@1 T@PolymorphicMapType_20977) (SummandMask2@@1 T@PolymorphicMapType_20977) (o_2@@21 T@Ref) (f_4@@21 T@Field_21029_21030) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_20977) (SummandMask1@@2 T@PolymorphicMapType_20977) (SummandMask2@@2 T@PolymorphicMapType_20977) (o_2@@22 T@Ref) (f_4@@22 T@Field_21016_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_20977) (SummandMask1@@3 T@PolymorphicMapType_20977) (SummandMask2@@3 T@PolymorphicMapType_20977) (o_2@@23 T@Ref) (f_4@@23 T@Field_27625_4100) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_20956) (Heap1Heap T@PolymorphicMapType_20956) (xs@@10 (Array T@Ref Bool)) (i@@13 Int) ) (!  (=> (and (=  (and (select xs@@10 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13))) (< NoPerm FullPerm))  (and (select xs@@10 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13))) (< NoPerm FullPerm))) (=> (and (select xs@@10 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap) (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap) (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13)) f_7)))) (= (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13)))
 :qid |stdinbpl.575:15|
 :skolemid |90|
 :pattern ( (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_20956) (Heap1Heap@@0 T@PolymorphicMapType_20956) (xs@@11 (Array T@Ref Bool)) (i@@14 Int) ) (!  (=> (and (=  (and (select xs@@11 (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14))) (< NoPerm FullPerm))  (and (select xs@@11 (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14))) (< NoPerm FullPerm))) (=> (and (select xs@@11 (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@0) (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@0) (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14)) f_7)))) (= (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14)))
 :qid |stdinbpl.669:15|
 :skolemid |100|
 :pattern ( (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_20956) (Heap1Heap@@1 T@PolymorphicMapType_20956) (xs@@12 (Array T@Ref Bool)) (i@@15 Int) ) (!  (=> (and (=  (and (select xs@@12 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15))) (< NoPerm FullPerm))  (and (select xs@@12 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15))) (< NoPerm FullPerm))) (=> (and (select xs@@12 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@1) (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@1) (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15)) f_7)))) (= (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15)))
 :qid |stdinbpl.763:15|
 :skolemid |110|
 :pattern ( (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_20956) (Heap1Heap@@2 T@PolymorphicMapType_20956) (xs@@13 (Array T@Ref Bool)) (i@@16 Int) ) (!  (=> (and (=  (and (select xs@@13 (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16))) (< NoPerm FullPerm))  (and (select xs@@13 (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16))) (< NoPerm FullPerm))) (=> (and (select xs@@13 (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@2) (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@2) (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16)) f_7)))) (= (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16)))
 :qid |stdinbpl.857:15|
 :skolemid |120|
 :pattern ( (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_20956) (Heap1Heap@@3 T@PolymorphicMapType_20956) (xs@@14 (Array T@Ref Bool)) (i@@17 Int) ) (!  (=> (and (=  (and (select xs@@14 (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17))) (< NoPerm FullPerm))  (and (select xs@@14 (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17))) (< NoPerm FullPerm))) (=> (and (select xs@@14 (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@3) (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@3) (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17)) f_7)))) (= (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17)))
 :qid |stdinbpl.951:15|
 :skolemid |130|
 :pattern ( (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((hm_1@@4 T@HeapMatrixDomainType) ) (! (>= (height hm_1@@4) 0)
 :qid |stdinbpl.507:15|
 :skolemid |82|
 :pattern ( (height hm_1@@4))
)))
(assert (forall ((hm_1@@5 T@HeapMatrixDomainType) ) (! (>= (width hm_1@@5) 0)
 :qid |stdinbpl.513:15|
 :skolemid |83|
 :pattern ( (width hm_1@@5))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_20956) (Heap1Heap@@4 T@PolymorphicMapType_20956) (hm_1@@6 T@HeapMatrixDomainType) ) (!  (=> (and (=  (and (select (hm2set hm_1@@6) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select (hm2set hm_1@@6) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select (hm2set hm_1@@6) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@4) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6)) cell_value) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@4) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6)) cell_value)))) (= (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6)))
 :qid |stdinbpl.1045:15|
 :skolemid |140|
 :pattern ( (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6) (succHeapTrans Heap2Heap@@4 Heap1Heap@@4))
)))
(assert (forall ((hm_1@@7 T@HeapMatrixDomainType) (i@@18 Int) (j_9@@2 Int) ) (! (= (hm_in_range hm_1@@7 i@@18 j_9@@2) (select (hm2set hm_1@@7) (loc hm_1@@7 i@@18 j_9@@2)))
 :qid |stdinbpl.531:15|
 :skolemid |86|
 :pattern ( (loc hm_1@@7 i@@18 j_9@@2))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_20956) (o_24 T@Ref) (f_48 T@Field_13664_59101) (v T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@25) (store (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@25) o_24 f_48 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@25) (store (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@25) o_24 f_48 v)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_20956) (o_24@@0 T@Ref) (f_48@@0 T@Field_13664_59234) (v@@0 T@PolymorphicMapType_21505) ) (! (succHeap Heap@@26 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@26) (store (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@26) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@26) (store (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@26) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_20956) (o_24@@1 T@Ref) (f_48@@1 T@Field_27625_4100) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@27) (store (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@27) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@27) (store (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@27) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_20956) (o_24@@2 T@Ref) (f_48@@2 T@Field_21029_21030) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@28) (store (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@28) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@28) (store (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@28) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_20956) (o_24@@3 T@Ref) (f_48@@3 T@Field_21016_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_20956 (store (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@29) o_24@@3 f_48@@3 v@@3) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (store (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@29) o_24@@3 f_48@@3 v@@3) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@29)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.369:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.370:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_20956) (Mask@@27 T@PolymorphicMapType_20977) (hm_1@@8 T@HeapMatrixDomainType) ) (!  (=> (state Heap@@30 Mask@@27) (= (|hm2m'| Heap@@30 hm_1@@8) (|hm2m#frame| (FrameFragment_4300 (|hm2m#condqp6| Heap@@30 hm_1@@8)) hm_1@@8)))
 :qid |stdinbpl.1035:15|
 :skolemid |139|
 :pattern ( (state Heap@@30 Mask@@27) (|hm2m'| Heap@@30 hm_1@@8))
)))
(assert (forall ((o_24@@4 T@Ref) (f_26 T@Field_21029_21030) (Heap@@31 T@PolymorphicMapType_20956) ) (!  (=> (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@31) o_24@@4 $allocated) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@31) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@31) o_24@@4 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@31) o_24@@4 f_26))
)))
(assert (forall ((p@@1 T@Field_13664_59101) (v_1@@0 T@FrameType) (q T@Field_13664_59101) (w@@0 T@FrameType) (r T@Field_13664_59101) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21016_21016 p@@1 v_1@@0 q w@@0) (InsidePredicate_21016_21016 q w@@0 r u)) (InsidePredicate_21016_21016 p@@1 v_1@@0 r u))
 :qid |stdinbpl.264:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21016_21016 p@@1 v_1@@0 q w@@0) (InsidePredicate_21016_21016 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.375:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@32 T@PolymorphicMapType_20956) (xs@@15 (Array T@Ref Bool)) (i@@19 Int) ) (!  (and (= (foo_2 Heap@@32 xs@@15 i@@19) (|foo'| Heap@@32 xs@@15 i@@19)) (dummyFunction_4472 (|foo#triggerStateless| xs@@15 i@@19)))
 :qid |stdinbpl.554:15|
 :skolemid |87|
 :pattern ( (foo_2 Heap@@32 xs@@15 i@@19))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_20956) (xs@@16 (Array T@Ref Bool)) (i@@20 Int) ) (!  (and (= (fun01 Heap@@33 xs@@16 i@@20) (|fun01'| Heap@@33 xs@@16 i@@20)) (dummyFunction_4472 (|fun01#triggerStateless| xs@@16 i@@20)))
 :qid |stdinbpl.648:15|
 :skolemid |97|
 :pattern ( (fun01 Heap@@33 xs@@16 i@@20))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_20956) (xs@@17 (Array T@Ref Bool)) (i@@21 Int) ) (!  (and (= (fun02 Heap@@34 xs@@17 i@@21) (|fun02'| Heap@@34 xs@@17 i@@21)) (dummyFunction_4472 (|fun02#triggerStateless| xs@@17 i@@21)))
 :qid |stdinbpl.742:15|
 :skolemid |107|
 :pattern ( (fun02 Heap@@34 xs@@17 i@@21))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_20956) (xs@@18 (Array T@Ref Bool)) (i@@22 Int) ) (!  (and (= (bar01 Heap@@35 xs@@18 i@@22) (|bar01'| Heap@@35 xs@@18 i@@22)) (dummyFunction_4472 (|bar01#triggerStateless| xs@@18 i@@22)))
 :qid |stdinbpl.836:15|
 :skolemid |117|
 :pattern ( (bar01 Heap@@35 xs@@18 i@@22))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs@@19 () (Array T@Ref Bool))
(declare-fun Heap@@36 () T@PolymorphicMapType_20956)
(set-info :boogie-vc-id |bar01#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (select xs@@19 x_3)) (select xs@@19 x_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_3 x_3_1)))
 :qid |stdinbpl.888:15|
 :skolemid |121|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 2)) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
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
(declare-sort T@Field_21016_53 0)
(declare-sort T@Field_21029_21030 0)
(declare-sort T@Field_27625_4100 0)
(declare-sort T@Field_13664_59234 0)
(declare-sort T@Field_13664_59101 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_20977 0)) (((PolymorphicMapType_20977 (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| (Array T@Ref T@Field_27625_4100 Real)) (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| (Array T@Ref T@Field_21016_53 Real)) (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| (Array T@Ref T@Field_21029_21030 Real)) (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| (Array T@Ref T@Field_13664_59101 Real)) (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| (Array T@Ref T@Field_13664_59234 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21505 0)) (((PolymorphicMapType_21505 (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| (Array T@Ref T@Field_21016_53 Bool)) (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| (Array T@Ref T@Field_21029_21030 Bool)) (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| (Array T@Ref T@Field_27625_4100 Bool)) (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| (Array T@Ref T@Field_13664_59101 Bool)) (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| (Array T@Ref T@Field_13664_59234 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20956 0)) (((PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| (Array T@Ref T@Field_21016_53 Bool)) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| (Array T@Ref T@Field_21029_21030 T@Ref)) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| (Array T@Ref T@Field_27625_4100 Int)) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| (Array T@Ref T@Field_13664_59234 T@PolymorphicMapType_21505)) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| (Array T@Ref T@Field_13664_59101 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_21016_53)
(declare-fun f_7 () T@Field_27625_4100)
(declare-fun cell_value () T@Field_27625_4100)
(declare-fun succHeap (T@PolymorphicMapType_20956 T@PolymorphicMapType_20956) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_20956 T@PolymorphicMapType_20956) Bool)
(declare-sort T@HeapMatrixDomainType 0)
(declare-fun state (T@PolymorphicMapType_20956 T@PolymorphicMapType_20977) Bool)
(declare-sort T@MatrixDomainType 0)
(declare-fun |hm2m'| (T@PolymorphicMapType_20956 T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |hm2m#trigger| (T@FrameType T@HeapMatrixDomainType) Bool)
(declare-fun FrameFragment_4300 (Int) T@FrameType)
(declare-fun |hm2m#condqp6| (T@PolymorphicMapType_20956 T@HeapMatrixDomainType) Int)
(declare-fun loc (T@HeapMatrixDomainType Int Int) T@Ref)
(declare-fun get_1 (T@MatrixDomainType Int Int) Int)
(declare-fun hm_in_range (T@HeapMatrixDomainType Int Int) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_20977) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_21505)
(declare-fun |foo'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun dummyFunction_4472 (Bool) Bool)
(declare-fun |foo#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun |fun01#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |fun02'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun |fun02#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |bar01'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun |bar01#triggerStateless| ((Array T@Ref Bool) Int) Bool)
(declare-fun |bar02'| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun dummyFunction_7036 (Int) Bool)
(declare-fun |bar02#triggerStateless| ((Array T@Ref Bool) Int) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun dummyFunction_13990 (T@MatrixDomainType) Bool)
(declare-fun |hm2m#triggerStateless| (T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun rev_loc_hm (T@Ref) T@HeapMatrixDomainType)
(declare-fun rev_loc_i (T@Ref) Int)
(declare-fun rev_loc_j (T@Ref) Int)
(declare-fun hm2m (T@PolymorphicMapType_20956 T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun height (T@HeapMatrixDomainType) Int)
(declare-fun width (T@HeapMatrixDomainType) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_20956 T@PolymorphicMapType_20956 T@PolymorphicMapType_20977) Bool)
(declare-fun IsPredicateField_13664_59192 (T@Field_13664_59101) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13664 (T@Field_13664_59101) T@Field_13664_59234)
(declare-fun HasDirectPerm_13664_59165 (T@PolymorphicMapType_20977 T@Ref T@Field_13664_59101) Bool)
(declare-fun IsWandField_13664_60939 (T@Field_13664_59101) Bool)
(declare-fun WandMaskField_13664 (T@Field_13664_59101) T@Field_13664_59234)
(declare-fun dummyHeap () T@PolymorphicMapType_20956)
(declare-fun ZeroMask () T@PolymorphicMapType_20977)
(declare-fun InsidePredicate_21016_21016 (T@Field_13664_59101 T@FrameType T@Field_13664_59101 T@FrameType) Bool)
(declare-fun IsPredicateField_13662_4100 (T@Field_27625_4100) Bool)
(declare-fun IsWandField_13662_4100 (T@Field_27625_4100) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13662_64485 (T@Field_13664_59234) Bool)
(declare-fun IsWandField_13662_64501 (T@Field_13664_59234) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13662_21030 (T@Field_21029_21030) Bool)
(declare-fun IsWandField_13662_21030 (T@Field_21029_21030) Bool)
(declare-fun IsPredicateField_13662_53 (T@Field_21016_53) Bool)
(declare-fun IsWandField_13662_53 (T@Field_21016_53) Bool)
(declare-fun |foo#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |foo#condqp1| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |fun01#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |fun01#condqp2| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |fun02#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |fun02#condqp3| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |bar01#frame| (T@FrameType (Array T@Ref Bool) Int) Bool)
(declare-fun |bar01#condqp4| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun HasDirectPerm_13664_64939 (T@PolymorphicMapType_20977 T@Ref T@Field_13664_59234) Bool)
(declare-fun HasDirectPerm_13664_21030 (T@PolymorphicMapType_20977 T@Ref T@Field_21029_21030) Bool)
(declare-fun HasDirectPerm_13664_53 (T@PolymorphicMapType_20977 T@Ref T@Field_21016_53) Bool)
(declare-fun HasDirectPerm_13664_4115 (T@PolymorphicMapType_20977 T@Ref T@Field_27625_4100) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun bar02 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun |bar02#frame| (T@FrameType (Array T@Ref Bool) Int) Int)
(declare-fun |bar02#condqp5| (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_20977 T@PolymorphicMapType_20977 T@PolymorphicMapType_20977) Bool)
(declare-fun |sk_foo#condqp1| (Int Int) T@Ref)
(declare-fun |sk_fun01#condqp2| (Int Int) T@Ref)
(declare-fun |sk_fun02#condqp3| (Int Int) T@Ref)
(declare-fun |sk_bar01#condqp4| (Int Int) T@Ref)
(declare-fun |sk_bar02#condqp5| (Int Int) T@Ref)
(declare-fun hm2set (T@HeapMatrixDomainType) (Array T@Ref Bool))
(declare-fun |sk_hm2m#condqp6| (Int Int) T@Ref)
(declare-fun |hm2m#frame| (T@FrameType T@HeapMatrixDomainType) T@MatrixDomainType)
(declare-fun foo_2 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun fun01 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun fun02 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(declare-fun bar01 (T@PolymorphicMapType_20956 (Array T@Ref Bool) Int) Bool)
(assert (distinct f_7 cell_value)
)
(assert (forall ((Heap0 T@PolymorphicMapType_20956) (Heap1 T@PolymorphicMapType_20956) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_20956) (Mask T@PolymorphicMapType_20977) (hm_1 T@HeapMatrixDomainType) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 3) (|hm2m#trigger| (FrameFragment_4300 (|hm2m#condqp6| Heap hm_1)) hm_1))) (forall ((i Int) (j_9 Int) ) (!  (=> (hm_in_range hm_1 i j_9) (= (get_1 (|hm2m'| Heap hm_1) i j_9) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap) (loc hm_1 i j_9) cell_value)))
 :qid |stdinbpl.1053:126|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap) (loc hm_1 i j_9) cell_value))
 :pattern ( (get_1 (|hm2m'| Heap hm_1) i j_9))
)))
 :qid |stdinbpl.1051:15|
 :skolemid |142|
 :pattern ( (state Heap Mask) (|hm2m'| Heap hm_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_20956) (Mask@@0 T@PolymorphicMapType_20977) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_20956) (Heap1@@0 T@PolymorphicMapType_20956) (Heap2 T@PolymorphicMapType_20956) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13664_59234) ) (!  (not (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13664_59101) ) (!  (not (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27625_4100) ) (!  (not (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_21029_21030) ) (!  (not (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21016_53) ) (!  (not (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_20956) (xs (Array T@Ref Bool)) (i@@0 Int) ) (! (dummyFunction_4472 (|foo#triggerStateless| xs i@@0))
 :qid |stdinbpl.558:15|
 :skolemid |88|
 :pattern ( (|foo'| Heap@@1 xs i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_20956) (xs@@0 (Array T@Ref Bool)) (i@@1 Int) ) (! (dummyFunction_4472 (|fun01#triggerStateless| xs@@0 i@@1))
 :qid |stdinbpl.652:15|
 :skolemid |98|
 :pattern ( (|fun01'| Heap@@2 xs@@0 i@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_20956) (xs@@1 (Array T@Ref Bool)) (i@@2 Int) ) (! (dummyFunction_4472 (|fun02#triggerStateless| xs@@1 i@@2))
 :qid |stdinbpl.746:15|
 :skolemid |108|
 :pattern ( (|fun02'| Heap@@3 xs@@1 i@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_20956) (xs@@2 (Array T@Ref Bool)) (i@@3 Int) ) (! (dummyFunction_4472 (|bar01#triggerStateless| xs@@2 i@@3))
 :qid |stdinbpl.840:15|
 :skolemid |118|
 :pattern ( (|bar01'| Heap@@4 xs@@2 i@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_20956) (xs@@3 (Array T@Ref Bool)) (i@@4 Int) ) (! (dummyFunction_7036 (|bar02#triggerStateless| xs@@3 i@@4))
 :qid |stdinbpl.934:15|
 :skolemid |128|
 :pattern ( (|bar02'| Heap@@5 xs@@3 i@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.371:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_20956) (hm_1@@0 T@HeapMatrixDomainType) ) (! (dummyFunction_13990 (|hm2m#triggerStateless| hm_1@@0))
 :qid |stdinbpl.1028:15|
 :skolemid |138|
 :pattern ( (|hm2m'| Heap@@6 hm_1@@0))
)))
(assert (forall ((hm_1@@1 T@HeapMatrixDomainType) (i@@5 Int) (j_9@@0 Int) ) (!  (and (= (rev_loc_hm (loc hm_1@@1 i@@5 j_9@@0)) hm_1@@1) (and (= (rev_loc_i (loc hm_1@@1 i@@5 j_9@@0)) i@@5) (= (rev_loc_j (loc hm_1@@1 i@@5 j_9@@0)) j_9@@0)))
 :qid |stdinbpl.519:15|
 :skolemid |84|
 :pattern ( (loc hm_1@@1 i@@5 j_9@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_20956) (hm_1@@2 T@HeapMatrixDomainType) ) (!  (and (= (hm2m Heap@@7 hm_1@@2) (|hm2m'| Heap@@7 hm_1@@2)) (dummyFunction_13990 (|hm2m#triggerStateless| hm_1@@2)))
 :qid |stdinbpl.1024:15|
 :skolemid |137|
 :pattern ( (hm2m Heap@@7 hm_1@@2))
)))
(assert (forall ((hm_1@@3 T@HeapMatrixDomainType) (i@@6 Int) (j_9@@1 Int) ) (! (= (hm_in_range hm_1@@3 i@@6 j_9@@1)  (and (<= 0 i@@6) (and (< i@@6 (height hm_1@@3)) (and (<= 0 j_9@@1) (< j_9@@1 (width hm_1@@3))))))
 :qid |stdinbpl.525:15|
 :skolemid |85|
 :pattern ( (hm_in_range hm_1@@3 i@@6 j_9@@1))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.374:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_20956) (ExhaleHeap T@PolymorphicMapType_20956) (Mask@@1 T@PolymorphicMapType_20977) (pm_f_32 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_13664_59165 Mask@@1 null pm_f_32) (IsPredicateField_13664_59192 pm_f_32)) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@8) null (PredicateMaskField_13664 pm_f_32)) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap) null (PredicateMaskField_13664 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (IsPredicateField_13664_59192 pm_f_32) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap) null (PredicateMaskField_13664 pm_f_32)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_20956) (ExhaleHeap@@0 T@PolymorphicMapType_20956) (Mask@@2 T@PolymorphicMapType_20977) (pm_f_32@@0 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_13664_59165 Mask@@2 null pm_f_32@@0) (IsWandField_13664_60939 pm_f_32@@0)) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@9) null (WandMaskField_13664 pm_f_32@@0)) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@0) null (WandMaskField_13664 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (IsWandField_13664_60939 pm_f_32@@0) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@0) null (WandMaskField_13664 pm_f_32@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_20956) (ExhaleHeap@@1 T@PolymorphicMapType_20956) (Mask@@3 T@PolymorphicMapType_20977) (o_36 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@10) o_36 $allocated) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@1) o_36 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@1) o_36 $allocated))
)))
(assert (forall ((p T@Field_13664_59101) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21016_21016 p v_1 p w))
 :qid |stdinbpl.269:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21016_21016 p v_1 p w))
)))
(assert  (not (IsPredicateField_13662_4100 f_7)))
(assert  (not (IsWandField_13662_4100 f_7)))
(assert  (not (IsPredicateField_13662_4100 cell_value)))
(assert  (not (IsWandField_13662_4100 cell_value)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_20956) (ExhaleHeap@@2 T@PolymorphicMapType_20956) (Mask@@4 T@PolymorphicMapType_20977) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@11 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_20977) (o_2@@4 T@Ref) (f_4@@4 T@Field_13664_59234) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_13662_64485 f_4@@4))) (not (IsWandField_13662_64501 f_4@@4))) (<= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_20977) (o_2@@5 T@Ref) (f_4@@5 T@Field_13664_59101) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_13664_59192 f_4@@5))) (not (IsWandField_13664_60939 f_4@@5))) (<= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_20977) (o_2@@6 T@Ref) (f_4@@6 T@Field_21029_21030) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_13662_21030 f_4@@6))) (not (IsWandField_13662_21030 f_4@@6))) (<= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_20977) (o_2@@7 T@Ref) (f_4@@7 T@Field_21016_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_13662_53 f_4@@7))) (not (IsWandField_13662_53 f_4@@7))) (<= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_20977) (o_2@@8 T@Ref) (f_4@@8 T@Field_27625_4100) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_13662_4100 f_4@@8))) (not (IsWandField_13662_4100 f_4@@8))) (<= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_20956) (Mask@@10 T@PolymorphicMapType_20977) (xs@@4 (Array T@Ref Bool)) (i@@7 Int) ) (!  (=> (state Heap@@12 Mask@@10) (= (|foo'| Heap@@12 xs@@4 i@@7) (|foo#frame| (FrameFragment_4300 (|foo#condqp1| Heap@@12 xs@@4 i@@7)) xs@@4 i@@7)))
 :qid |stdinbpl.565:15|
 :skolemid |89|
 :pattern ( (state Heap@@12 Mask@@10) (|foo'| Heap@@12 xs@@4 i@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_20956) (Mask@@11 T@PolymorphicMapType_20977) (xs@@5 (Array T@Ref Bool)) (i@@8 Int) ) (!  (=> (state Heap@@13 Mask@@11) (= (|fun01'| Heap@@13 xs@@5 i@@8) (|fun01#frame| (FrameFragment_4300 (|fun01#condqp2| Heap@@13 xs@@5 i@@8)) xs@@5 i@@8)))
 :qid |stdinbpl.659:15|
 :skolemid |99|
 :pattern ( (state Heap@@13 Mask@@11) (|fun01'| Heap@@13 xs@@5 i@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_20956) (Mask@@12 T@PolymorphicMapType_20977) (xs@@6 (Array T@Ref Bool)) (i@@9 Int) ) (!  (=> (state Heap@@14 Mask@@12) (= (|fun02'| Heap@@14 xs@@6 i@@9) (|fun02#frame| (FrameFragment_4300 (|fun02#condqp3| Heap@@14 xs@@6 i@@9)) xs@@6 i@@9)))
 :qid |stdinbpl.753:15|
 :skolemid |109|
 :pattern ( (state Heap@@14 Mask@@12) (|fun02'| Heap@@14 xs@@6 i@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_20956) (Mask@@13 T@PolymorphicMapType_20977) (xs@@7 (Array T@Ref Bool)) (i@@10 Int) ) (!  (=> (state Heap@@15 Mask@@13) (= (|bar01'| Heap@@15 xs@@7 i@@10) (|bar01#frame| (FrameFragment_4300 (|bar01#condqp4| Heap@@15 xs@@7 i@@10)) xs@@7 i@@10)))
 :qid |stdinbpl.847:15|
 :skolemid |119|
 :pattern ( (state Heap@@15 Mask@@13) (|bar01'| Heap@@15 xs@@7 i@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_20977) (o_2@@9 T@Ref) (f_4@@9 T@Field_13664_59234) ) (! (= (HasDirectPerm_13664_64939 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_64939 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_20977) (o_2@@10 T@Ref) (f_4@@10 T@Field_13664_59101) ) (! (= (HasDirectPerm_13664_59165 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_59165 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_20977) (o_2@@11 T@Ref) (f_4@@11 T@Field_21029_21030) ) (! (= (HasDirectPerm_13664_21030 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_21030 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_20977) (o_2@@12 T@Ref) (f_4@@12 T@Field_21016_53) ) (! (= (HasDirectPerm_13664_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_20977) (o_2@@13 T@Ref) (f_4@@13 T@Field_27625_4100) ) (! (= (HasDirectPerm_13664_4115 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13664_4115 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_20956) (ExhaleHeap@@3 T@PolymorphicMapType_20956) (Mask@@19 T@PolymorphicMapType_20977) (pm_f_32@@1 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_13664_59165 Mask@@19 null pm_f_32@@1) (IsPredicateField_13664_59192 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_41 T@Field_21016_53) ) (!  (=> (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32 f_41) (= (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@16) o2_32 f_41) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32 f_41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32 f_41))
)) (forall ((o2_32@@0 T@Ref) (f_41@@0 T@Field_21029_21030) ) (!  (=> (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@0 f_41@@0) (= (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@16) o2_32@@0 f_41@@0) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@0 f_41@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@0 f_41@@0))
))) (forall ((o2_32@@1 T@Ref) (f_41@@1 T@Field_27625_4100) ) (!  (=> (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@1 f_41@@1) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@16) o2_32@@1 f_41@@1) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@1 f_41@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@1 f_41@@1))
))) (forall ((o2_32@@2 T@Ref) (f_41@@2 T@Field_13664_59101) ) (!  (=> (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@2 f_41@@2) (= (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@16) o2_32@@2 f_41@@2) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@2 f_41@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@2 f_41@@2))
))) (forall ((o2_32@@3 T@Ref) (f_41@@3 T@Field_13664_59234) ) (!  (=> (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) null (PredicateMaskField_13664 pm_f_32@@1))) o2_32@@3 f_41@@3) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@16) o2_32@@3 f_41@@3) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@3 f_41@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@3) o2_32@@3 f_41@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@19) (IsPredicateField_13664_59192 pm_f_32@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_20956) (ExhaleHeap@@4 T@PolymorphicMapType_20956) (Mask@@20 T@PolymorphicMapType_20977) (pm_f_32@@2 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_13664_59165 Mask@@20 null pm_f_32@@2) (IsWandField_13664_60939 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_41@@4 T@Field_21016_53) ) (!  (=> (select (|PolymorphicMapType_21505_21016_53#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@4 f_41@@4) (= (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@17) o2_32@@4 f_41@@4) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@4 f_41@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@4 f_41@@4))
)) (forall ((o2_32@@5 T@Ref) (f_41@@5 T@Field_21029_21030) ) (!  (=> (select (|PolymorphicMapType_21505_21016_21030#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@5 f_41@@5) (= (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@17) o2_32@@5 f_41@@5) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@5 f_41@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@5 f_41@@5))
))) (forall ((o2_32@@6 T@Ref) (f_41@@6 T@Field_27625_4100) ) (!  (=> (select (|PolymorphicMapType_21505_21016_4100#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@6 f_41@@6) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@17) o2_32@@6 f_41@@6) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@6 f_41@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@6 f_41@@6))
))) (forall ((o2_32@@7 T@Ref) (f_41@@7 T@Field_13664_59101) ) (!  (=> (select (|PolymorphicMapType_21505_21016_59101#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@7 f_41@@7) (= (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@17) o2_32@@7 f_41@@7) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@7 f_41@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@7 f_41@@7))
))) (forall ((o2_32@@8 T@Ref) (f_41@@8 T@Field_13664_59234) ) (!  (=> (select (|PolymorphicMapType_21505_21016_60412#PolymorphicMapType_21505| (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) null (WandMaskField_13664 pm_f_32@@2))) o2_32@@8 f_41@@8) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@17) o2_32@@8 f_41@@8) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@8 f_41@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@4) o2_32@@8 f_41@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@20) (IsWandField_13664_60939 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.257:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_20956) (ExhaleHeap@@5 T@PolymorphicMapType_20956) (Mask@@21 T@PolymorphicMapType_20977) (o_36@@0 T@Ref) (f_41@@9 T@Field_13664_59234) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_13664_64939 Mask@@21 o_36@@0 f_41@@9) (= (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@18) o_36@@0 f_41@@9) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@5) o_36@@0 f_41@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| ExhaleHeap@@5) o_36@@0 f_41@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_20956) (ExhaleHeap@@6 T@PolymorphicMapType_20956) (Mask@@22 T@PolymorphicMapType_20977) (o_36@@1 T@Ref) (f_41@@10 T@Field_13664_59101) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_13664_59165 Mask@@22 o_36@@1 f_41@@10) (= (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@19) o_36@@1 f_41@@10) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@6) o_36@@1 f_41@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| ExhaleHeap@@6) o_36@@1 f_41@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_20956) (ExhaleHeap@@7 T@PolymorphicMapType_20956) (Mask@@23 T@PolymorphicMapType_20977) (o_36@@2 T@Ref) (f_41@@11 T@Field_21029_21030) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_13664_21030 Mask@@23 o_36@@2 f_41@@11) (= (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@20) o_36@@2 f_41@@11) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@7) o_36@@2 f_41@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| ExhaleHeap@@7) o_36@@2 f_41@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_20956) (ExhaleHeap@@8 T@PolymorphicMapType_20956) (Mask@@24 T@PolymorphicMapType_20977) (o_36@@3 T@Ref) (f_41@@12 T@Field_21016_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_13664_53 Mask@@24 o_36@@3 f_41@@12) (= (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@21) o_36@@3 f_41@@12) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@8) o_36@@3 f_41@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| ExhaleHeap@@8) o_36@@3 f_41@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_20956) (ExhaleHeap@@9 T@PolymorphicMapType_20956) (Mask@@25 T@PolymorphicMapType_20977) (o_36@@4 T@Ref) (f_41@@13 T@Field_27625_4100) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_13664_4115 Mask@@25 o_36@@4 f_41@@13) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@22) o_36@@4 f_41@@13) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@9) o_36@@4 f_41@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| ExhaleHeap@@9) o_36@@4 f_41@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_13664_59234) ) (! (= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_13664_59101) ) (! (= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_21029_21030) ) (! (= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_21016_53) ) (! (= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_27625_4100) ) (! (= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_20956) (xs@@8 (Array T@Ref Bool)) (i@@11 Int) ) (!  (and (= (bar02 Heap@@23 xs@@8 i@@11) (|bar02'| Heap@@23 xs@@8 i@@11)) (dummyFunction_7036 (|bar02#triggerStateless| xs@@8 i@@11)))
 :qid |stdinbpl.930:15|
 :skolemid |127|
 :pattern ( (bar02 Heap@@23 xs@@8 i@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_20956) (Mask@@26 T@PolymorphicMapType_20977) (xs@@9 (Array T@Ref Bool)) (i@@12 Int) ) (!  (=> (state Heap@@24 Mask@@26) (= (|bar02'| Heap@@24 xs@@9 i@@12) (|bar02#frame| (FrameFragment_4300 (|bar02#condqp5| Heap@@24 xs@@9 i@@12)) xs@@9 i@@12)))
 :qid |stdinbpl.941:15|
 :skolemid |129|
 :pattern ( (state Heap@@24 Mask@@26) (|bar02'| Heap@@24 xs@@9 i@@12))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_20977) (SummandMask1 T@PolymorphicMapType_20977) (SummandMask2 T@PolymorphicMapType_20977) (o_2@@19 T@Ref) (f_4@@19 T@Field_13664_59234) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20977_13662_63356#PolymorphicMapType_20977| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_20977) (SummandMask1@@0 T@PolymorphicMapType_20977) (SummandMask2@@0 T@PolymorphicMapType_20977) (o_2@@20 T@Ref) (f_4@@20 T@Field_13664_59101) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20977_13662_59101#PolymorphicMapType_20977| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_20977) (SummandMask1@@1 T@PolymorphicMapType_20977) (SummandMask2@@1 T@PolymorphicMapType_20977) (o_2@@21 T@Ref) (f_4@@21 T@Field_21029_21030) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20977_13662_21030#PolymorphicMapType_20977| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_20977) (SummandMask1@@2 T@PolymorphicMapType_20977) (SummandMask2@@2 T@PolymorphicMapType_20977) (o_2@@22 T@Ref) (f_4@@22 T@Field_21016_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20977_13662_53#PolymorphicMapType_20977| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_20977) (SummandMask1@@3 T@PolymorphicMapType_20977) (SummandMask2@@3 T@PolymorphicMapType_20977) (o_2@@23 T@Ref) (f_4@@23 T@Field_27625_4100) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20977_13662_4100#PolymorphicMapType_20977| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_20956) (Heap1Heap T@PolymorphicMapType_20956) (xs@@10 (Array T@Ref Bool)) (i@@13 Int) ) (!  (=> (and (=  (and (select xs@@10 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13))) (< NoPerm FullPerm))  (and (select xs@@10 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13))) (< NoPerm FullPerm))) (=> (and (select xs@@10 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap) (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap) (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13)) f_7)))) (= (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13)))
 :qid |stdinbpl.575:15|
 :skolemid |90|
 :pattern ( (|foo#condqp1| Heap2Heap xs@@10 i@@13) (|foo#condqp1| Heap1Heap xs@@10 i@@13) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_20956) (Heap1Heap@@0 T@PolymorphicMapType_20956) (xs@@11 (Array T@Ref Bool)) (i@@14 Int) ) (!  (=> (and (=  (and (select xs@@11 (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14))) (< NoPerm FullPerm))  (and (select xs@@11 (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14))) (< NoPerm FullPerm))) (=> (and (select xs@@11 (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@0) (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@0) (|sk_fun01#condqp2| (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14)) f_7)))) (= (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14)))
 :qid |stdinbpl.669:15|
 :skolemid |100|
 :pattern ( (|fun01#condqp2| Heap2Heap@@0 xs@@11 i@@14) (|fun01#condqp2| Heap1Heap@@0 xs@@11 i@@14) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_20956) (Heap1Heap@@1 T@PolymorphicMapType_20956) (xs@@12 (Array T@Ref Bool)) (i@@15 Int) ) (!  (=> (and (=  (and (select xs@@12 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15))) (< NoPerm FullPerm))  (and (select xs@@12 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15))) (< NoPerm FullPerm))) (=> (and (select xs@@12 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@1) (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@1) (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15)) f_7)))) (= (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15)))
 :qid |stdinbpl.763:15|
 :skolemid |110|
 :pattern ( (|fun02#condqp3| Heap2Heap@@1 xs@@12 i@@15) (|fun02#condqp3| Heap1Heap@@1 xs@@12 i@@15) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_20956) (Heap1Heap@@2 T@PolymorphicMapType_20956) (xs@@13 (Array T@Ref Bool)) (i@@16 Int) ) (!  (=> (and (=  (and (select xs@@13 (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16))) (< NoPerm FullPerm))  (and (select xs@@13 (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16))) (< NoPerm FullPerm))) (=> (and (select xs@@13 (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@2) (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@2) (|sk_bar01#condqp4| (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16)) f_7)))) (= (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16)))
 :qid |stdinbpl.857:15|
 :skolemid |120|
 :pattern ( (|bar01#condqp4| Heap2Heap@@2 xs@@13 i@@16) (|bar01#condqp4| Heap1Heap@@2 xs@@13 i@@16) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_20956) (Heap1Heap@@3 T@PolymorphicMapType_20956) (xs@@14 (Array T@Ref Bool)) (i@@17 Int) ) (!  (=> (and (=  (and (select xs@@14 (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17))) (< NoPerm FullPerm))  (and (select xs@@14 (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17))) (< NoPerm FullPerm))) (=> (and (select xs@@14 (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@3) (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17)) f_7) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@3) (|sk_bar02#condqp5| (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17)) f_7)))) (= (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17)))
 :qid |stdinbpl.951:15|
 :skolemid |130|
 :pattern ( (|bar02#condqp5| Heap2Heap@@3 xs@@14 i@@17) (|bar02#condqp5| Heap1Heap@@3 xs@@14 i@@17) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((hm_1@@4 T@HeapMatrixDomainType) ) (! (>= (height hm_1@@4) 0)
 :qid |stdinbpl.507:15|
 :skolemid |82|
 :pattern ( (height hm_1@@4))
)))
(assert (forall ((hm_1@@5 T@HeapMatrixDomainType) ) (! (>= (width hm_1@@5) 0)
 :qid |stdinbpl.513:15|
 :skolemid |83|
 :pattern ( (width hm_1@@5))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_20956) (Heap1Heap@@4 T@PolymorphicMapType_20956) (hm_1@@6 T@HeapMatrixDomainType) ) (!  (=> (and (=  (and (select (hm2set hm_1@@6) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select (hm2set hm_1@@6) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select (hm2set hm_1@@6) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap2Heap@@4) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6)) cell_value) (select (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap1Heap@@4) (|sk_hm2m#condqp6| (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6)) cell_value)))) (= (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6)))
 :qid |stdinbpl.1045:15|
 :skolemid |140|
 :pattern ( (|hm2m#condqp6| Heap2Heap@@4 hm_1@@6) (|hm2m#condqp6| Heap1Heap@@4 hm_1@@6) (succHeapTrans Heap2Heap@@4 Heap1Heap@@4))
)))
(assert (forall ((hm_1@@7 T@HeapMatrixDomainType) (i@@18 Int) (j_9@@2 Int) ) (! (= (hm_in_range hm_1@@7 i@@18 j_9@@2) (select (hm2set hm_1@@7) (loc hm_1@@7 i@@18 j_9@@2)))
 :qid |stdinbpl.531:15|
 :skolemid |86|
 :pattern ( (loc hm_1@@7 i@@18 j_9@@2))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_20956) (o_24 T@Ref) (f_48 T@Field_13664_59101) (v T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@25) (store (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@25) o_24 f_48 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@25) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@25) (store (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@25) o_24 f_48 v)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_20956) (o_24@@0 T@Ref) (f_48@@0 T@Field_13664_59234) (v@@0 T@PolymorphicMapType_21505) ) (! (succHeap Heap@@26 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@26) (store (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@26) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@26) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@26) (store (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@26) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_20956) (o_24@@1 T@Ref) (f_48@@1 T@Field_27625_4100) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@27) (store (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@27) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@27) (store (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@27) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@27) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_20956) (o_24@@2 T@Ref) (f_48@@2 T@Field_21029_21030) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@28) (store (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@28) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@28) (store (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@28) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@28) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_20956) (o_24@@3 T@Ref) (f_48@@3 T@Field_21016_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_20956 (store (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@29) o_24@@3 f_48@@3 v@@3) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20956 (store (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@29) o_24@@3 f_48@@3 v@@3) (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13662_4100#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_13664_59278#PolymorphicMapType_20956| Heap@@29) (|PolymorphicMapType_20956_21016_59101#PolymorphicMapType_20956| Heap@@29)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.369:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.370:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_20956) (Mask@@27 T@PolymorphicMapType_20977) (hm_1@@8 T@HeapMatrixDomainType) ) (!  (=> (state Heap@@30 Mask@@27) (= (|hm2m'| Heap@@30 hm_1@@8) (|hm2m#frame| (FrameFragment_4300 (|hm2m#condqp6| Heap@@30 hm_1@@8)) hm_1@@8)))
 :qid |stdinbpl.1035:15|
 :skolemid |139|
 :pattern ( (state Heap@@30 Mask@@27) (|hm2m'| Heap@@30 hm_1@@8))
)))
(assert (forall ((o_24@@4 T@Ref) (f_26 T@Field_21029_21030) (Heap@@31 T@PolymorphicMapType_20956) ) (!  (=> (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@31) o_24@@4 $allocated) (select (|PolymorphicMapType_20956_13240_53#PolymorphicMapType_20956| Heap@@31) (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@31) o_24@@4 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_20956_13243_13244#PolymorphicMapType_20956| Heap@@31) o_24@@4 f_26))
)))
(assert (forall ((p@@1 T@Field_13664_59101) (v_1@@0 T@FrameType) (q T@Field_13664_59101) (w@@0 T@FrameType) (r T@Field_13664_59101) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21016_21016 p@@1 v_1@@0 q w@@0) (InsidePredicate_21016_21016 q w@@0 r u)) (InsidePredicate_21016_21016 p@@1 v_1@@0 r u))
 :qid |stdinbpl.264:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21016_21016 p@@1 v_1@@0 q w@@0) (InsidePredicate_21016_21016 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.375:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@32 T@PolymorphicMapType_20956) (xs@@15 (Array T@Ref Bool)) (i@@19 Int) ) (!  (and (= (foo_2 Heap@@32 xs@@15 i@@19) (|foo'| Heap@@32 xs@@15 i@@19)) (dummyFunction_4472 (|foo#triggerStateless| xs@@15 i@@19)))
 :qid |stdinbpl.554:15|
 :skolemid |87|
 :pattern ( (foo_2 Heap@@32 xs@@15 i@@19))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_20956) (xs@@16 (Array T@Ref Bool)) (i@@20 Int) ) (!  (and (= (fun01 Heap@@33 xs@@16 i@@20) (|fun01'| Heap@@33 xs@@16 i@@20)) (dummyFunction_4472 (|fun01#triggerStateless| xs@@16 i@@20)))
 :qid |stdinbpl.648:15|
 :skolemid |97|
 :pattern ( (fun01 Heap@@33 xs@@16 i@@20))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_20956) (xs@@17 (Array T@Ref Bool)) (i@@21 Int) ) (!  (and (= (fun02 Heap@@34 xs@@17 i@@21) (|fun02'| Heap@@34 xs@@17 i@@21)) (dummyFunction_4472 (|fun02#triggerStateless| xs@@17 i@@21)))
 :qid |stdinbpl.742:15|
 :skolemid |107|
 :pattern ( (fun02 Heap@@34 xs@@17 i@@21))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_20956) (xs@@18 (Array T@Ref Bool)) (i@@22 Int) ) (!  (and (= (bar01 Heap@@35 xs@@18 i@@22) (|bar01'| Heap@@35 xs@@18 i@@22)) (dummyFunction_4472 (|bar01#triggerStateless| xs@@18 i@@22)))
 :qid |stdinbpl.836:15|
 :skolemid |117|
 :pattern ( (bar01 Heap@@35 xs@@18 i@@22))
)))
; Valid

