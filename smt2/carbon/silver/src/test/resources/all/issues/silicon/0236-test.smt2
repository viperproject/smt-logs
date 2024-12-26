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
(declare-sort T@Field_6237_53 0)
(declare-sort T@Field_6250_6251 0)
(declare-sort T@Field_12408_12409 0)
(declare-sort T@Field_6237_12935 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_6237_12951 0)
(declare-sort T@Field_12934_53 0)
(declare-sort T@Field_12934_6251 0)
(declare-sort T@Field_12934_12409 0)
(declare-sort T@Field_12934_12935 0)
(declare-sort T@Field_12946_12951 0)
(declare-datatypes ((T@PolymorphicMapType_6198 0)) (((PolymorphicMapType_6198 (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| (Array T@Ref T@Field_6237_53 Real)) (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| (Array T@Ref T@Field_6250_6251 Real)) (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| (Array T@Ref T@Field_12408_12409 Real)) (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| (Array T@Ref T@Field_6237_12935 Real)) (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| (Array T@Ref T@Field_6237_12951 Real)) (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| (Array T@Ref T@Field_12934_53 Real)) (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| (Array T@Ref T@Field_12934_6251 Real)) (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| (Array T@Ref T@Field_12934_12409 Real)) (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| (Array T@Ref T@Field_12934_12935 Real)) (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| (Array T@Ref T@Field_12946_12951 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6726 0)) (((PolymorphicMapType_6726 (|PolymorphicMapType_6726_6237_53#PolymorphicMapType_6726| (Array T@Ref T@Field_6237_53 Bool)) (|PolymorphicMapType_6726_6237_6251#PolymorphicMapType_6726| (Array T@Ref T@Field_6250_6251 Bool)) (|PolymorphicMapType_6726_6237_17342#PolymorphicMapType_6726| (Array T@Ref T@Field_12408_12409 Bool)) (|PolymorphicMapType_6726_6237_12935#PolymorphicMapType_6726| (Array T@Ref T@Field_6237_12935 Bool)) (|PolymorphicMapType_6726_6237_17754#PolymorphicMapType_6726| (Array T@Ref T@Field_6237_12951 Bool)) (|PolymorphicMapType_6726_12934_53#PolymorphicMapType_6726| (Array T@Ref T@Field_12934_53 Bool)) (|PolymorphicMapType_6726_12934_6251#PolymorphicMapType_6726| (Array T@Ref T@Field_12934_6251 Bool)) (|PolymorphicMapType_6726_12934_18400#PolymorphicMapType_6726| (Array T@Ref T@Field_12934_12409 Bool)) (|PolymorphicMapType_6726_12934_12935#PolymorphicMapType_6726| (Array T@Ref T@Field_12934_12935 Bool)) (|PolymorphicMapType_6726_12934_18812#PolymorphicMapType_6726| (Array T@Ref T@Field_12946_12951 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6177 0)) (((PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| (Array T@Ref T@Field_6237_53 Bool)) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| (Array T@Ref T@Field_6250_6251 T@Ref)) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| (Array T@Ref T@Field_12408_12409 (Array Bool Bool))) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| (Array T@Ref T@Field_6237_12935 T@FrameType)) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| (Array T@Ref T@Field_6237_12951 T@PolymorphicMapType_6726)) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| (Array T@Ref T@Field_12934_53 Bool)) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| (Array T@Ref T@Field_12934_6251 T@Ref)) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| (Array T@Ref T@Field_12934_12409 (Array Bool Bool))) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| (Array T@Ref T@Field_12934_12935 T@FrameType)) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| (Array T@Ref T@Field_12946_12951 T@PolymorphicMapType_6726)) ) ) ))
(declare-fun $allocated () T@Field_6237_53)
(declare-fun f_7 () T@Field_12408_12409)
(declare-fun succHeap (T@PolymorphicMapType_6177 T@PolymorphicMapType_6177) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6177 T@PolymorphicMapType_6177) Bool)
(declare-fun state (T@PolymorphicMapType_6177 T@PolymorphicMapType_6198) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6198) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6726)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun P ((Array Int Bool)) T@Field_12934_12935)
(declare-fun IsPredicateField_3974_3975 (T@Field_12934_12935) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_6177 (Array T@Ref Bool)) T@Ref)
(declare-fun dummyFunction_3963 (T@Ref) Bool)
(declare-fun |foo#triggerStateless| ((Array T@Ref Bool)) T@Ref)
(declare-fun |P#trigger_3974| (T@PolymorphicMapType_6177 T@Field_12934_12935) Bool)
(declare-fun |P#everUsed_3974| (T@Field_12934_12935) Bool)
(declare-fun foo_2 (T@PolymorphicMapType_6177 (Array T@Ref Bool)) T@Ref)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6177 T@PolymorphicMapType_6177 T@PolymorphicMapType_6198) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3974 (T@Field_12934_12935) T@Field_12946_12951)
(declare-fun HasDirectPerm_12934_12935 (T@PolymorphicMapType_6198 T@Ref T@Field_12934_12935) Bool)
(declare-fun IsPredicateField_6237_16260 (T@Field_6237_12935) Bool)
(declare-fun PredicateMaskField_6237 (T@Field_6237_12935) T@Field_6237_12951)
(declare-fun HasDirectPerm_6237_12935 (T@PolymorphicMapType_6198 T@Ref T@Field_6237_12935) Bool)
(declare-fun IsWandField_12934_19977 (T@Field_12934_12935) Bool)
(declare-fun WandMaskField_12934 (T@Field_12934_12935) T@Field_12946_12951)
(declare-fun IsWandField_6237_19620 (T@Field_6237_12935) Bool)
(declare-fun WandMaskField_6237 (T@Field_6237_12935) T@Field_6237_12951)
(declare-fun |P#sm| ((Array Int Bool)) T@Field_12946_12951)
(declare-fun dummyHeap () T@PolymorphicMapType_6177)
(declare-fun ZeroMask () T@PolymorphicMapType_6198)
(declare-fun InsidePredicate_12934_12934 (T@Field_12934_12935 T@FrameType T@Field_12934_12935 T@FrameType) Bool)
(declare-fun InsidePredicate_6237_6237 (T@Field_6237_12935 T@FrameType T@Field_6237_12935 T@FrameType) Bool)
(declare-fun IsPredicateField_3924_12428 (T@Field_12408_12409) Bool)
(declare-fun IsWandField_3924_12451 (T@Field_12408_12409) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12934_26982 (T@Field_12946_12951) Bool)
(declare-fun IsWandField_12934_26998 (T@Field_12946_12951) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12934_26655 (T@Field_12934_12409) Bool)
(declare-fun IsWandField_12934_26671 (T@Field_12934_12409) Bool)
(declare-fun IsPredicateField_12934_6251 (T@Field_12934_6251) Bool)
(declare-fun IsWandField_12934_6251 (T@Field_12934_6251) Bool)
(declare-fun IsPredicateField_12934_53 (T@Field_12934_53) Bool)
(declare-fun IsWandField_12934_53 (T@Field_12934_53) Bool)
(declare-fun IsPredicateField_6237_26146 (T@Field_6237_12951) Bool)
(declare-fun IsWandField_6237_26162 (T@Field_6237_12951) Bool)
(declare-fun IsPredicateField_6237_6251 (T@Field_6250_6251) Bool)
(declare-fun IsWandField_6237_6251 (T@Field_6250_6251) Bool)
(declare-fun IsPredicateField_6237_53 (T@Field_6237_53) Bool)
(declare-fun IsWandField_6237_53 (T@Field_6237_53) Bool)
(declare-fun HasDirectPerm_12934_15972 (T@PolymorphicMapType_6198 T@Ref T@Field_12946_12951) Bool)
(declare-fun HasDirectPerm_12934_15512 (T@PolymorphicMapType_6198 T@Ref T@Field_12934_12409) Bool)
(declare-fun HasDirectPerm_12934_6251 (T@PolymorphicMapType_6198 T@Ref T@Field_12934_6251) Bool)
(declare-fun HasDirectPerm_12934_53 (T@PolymorphicMapType_6198 T@Ref T@Field_12934_53) Bool)
(declare-fun HasDirectPerm_6237_14782 (T@PolymorphicMapType_6198 T@Ref T@Field_6237_12951) Bool)
(declare-fun HasDirectPerm_6237_14320 (T@PolymorphicMapType_6198 T@Ref T@Field_12408_12409) Bool)
(declare-fun HasDirectPerm_6237_6251 (T@PolymorphicMapType_6198 T@Ref T@Field_6250_6251) Bool)
(declare-fun HasDirectPerm_6237_53 (T@PolymorphicMapType_6198 T@Ref T@Field_6237_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6198 T@PolymorphicMapType_6198 T@PolymorphicMapType_6198) Bool)
(declare-fun getPredWandId_3974_3975 (T@Field_12934_12935) Int)
(declare-fun |foo#frame| (T@FrameType (Array T@Ref Bool)) T@Ref)
(declare-fun InsidePredicate_12934_6237 (T@Field_12934_12935 T@FrameType T@Field_6237_12935 T@FrameType) Bool)
(declare-fun InsidePredicate_6237_12934 (T@Field_6237_12935 T@FrameType T@Field_12934_12935 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6177) (Heap1 T@PolymorphicMapType_6177) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6177) (Mask T@PolymorphicMapType_6198) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6177) (Heap1@@0 T@PolymorphicMapType_6177) (Heap2 T@PolymorphicMapType_6177) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12946_12951) ) (!  (not (select (|PolymorphicMapType_6726_12934_18812#PolymorphicMapType_6726| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_12934_18812#PolymorphicMapType_6726| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12934_12935) ) (!  (not (select (|PolymorphicMapType_6726_12934_12935#PolymorphicMapType_6726| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_12934_12935#PolymorphicMapType_6726| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12934_12409) ) (!  (not (select (|PolymorphicMapType_6726_12934_18400#PolymorphicMapType_6726| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_12934_18400#PolymorphicMapType_6726| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12934_6251) ) (!  (not (select (|PolymorphicMapType_6726_12934_6251#PolymorphicMapType_6726| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_12934_6251#PolymorphicMapType_6726| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12934_53) ) (!  (not (select (|PolymorphicMapType_6726_12934_53#PolymorphicMapType_6726| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_12934_53#PolymorphicMapType_6726| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6237_12951) ) (!  (not (select (|PolymorphicMapType_6726_6237_17754#PolymorphicMapType_6726| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_6237_17754#PolymorphicMapType_6726| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6237_12935) ) (!  (not (select (|PolymorphicMapType_6726_6237_12935#PolymorphicMapType_6726| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_6237_12935#PolymorphicMapType_6726| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12408_12409) ) (!  (not (select (|PolymorphicMapType_6726_6237_17342#PolymorphicMapType_6726| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_6237_17342#PolymorphicMapType_6726| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6250_6251) ) (!  (not (select (|PolymorphicMapType_6726_6237_6251#PolymorphicMapType_6726| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_6237_6251#PolymorphicMapType_6726| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_6237_53) ) (!  (not (select (|PolymorphicMapType_6726_6237_53#PolymorphicMapType_6726| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6726_6237_53#PolymorphicMapType_6726| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.276:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s_2 (Array Int Bool)) ) (! (IsPredicateField_3974_3975 (P s_2))
 :qid |stdinbpl.430:15|
 :skolemid |86|
 :pattern ( (P s_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6177) (s_2@@0 (Array T@Ref Bool)) ) (! (dummyFunction_3963 (|foo#triggerStateless| s_2@@0))
 :qid |stdinbpl.389:15|
 :skolemid |83|
 :pattern ( (|foo'| Heap@@0 s_2@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6177) (s_2@@1 (Array Int Bool)) ) (! (|P#everUsed_3974| (P s_2@@1))
 :qid |stdinbpl.449:15|
 :skolemid |90|
 :pattern ( (|P#trigger_3974| Heap@@1 (P s_2@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6177) (s_2@@2 (Array T@Ref Bool)) ) (!  (and (= (foo_2 Heap@@2 s_2@@2) (|foo'| Heap@@2 s_2@@2)) (dummyFunction_3963 (|foo#triggerStateless| s_2@@2)))
 :qid |stdinbpl.385:15|
 :skolemid |82|
 :pattern ( (foo_2 Heap@@2 s_2@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.279:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6177) (ExhaleHeap T@PolymorphicMapType_6177) (Mask@@0 T@PolymorphicMapType_6198) (pm_f T@Field_12934_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12934_12935 Mask@@0 null pm_f) (IsPredicateField_3974_3975 pm_f)) (= (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@3) null (PredicateMaskField_3974 pm_f)) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap) null (PredicateMaskField_3974 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_3974_3975 pm_f) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap) null (PredicateMaskField_3974 pm_f)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6177) (ExhaleHeap@@0 T@PolymorphicMapType_6177) (Mask@@1 T@PolymorphicMapType_6198) (pm_f@@0 T@Field_6237_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6237_12935 Mask@@1 null pm_f@@0) (IsPredicateField_6237_16260 pm_f@@0)) (= (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@4) null (PredicateMaskField_6237 pm_f@@0)) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@0) null (PredicateMaskField_6237 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6237_16260 pm_f@@0) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@0) null (PredicateMaskField_6237 pm_f@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6177) (ExhaleHeap@@1 T@PolymorphicMapType_6177) (Mask@@2 T@PolymorphicMapType_6198) (pm_f@@1 T@Field_12934_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12934_12935 Mask@@2 null pm_f@@1) (IsWandField_12934_19977 pm_f@@1)) (= (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@5) null (WandMaskField_12934 pm_f@@1)) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@1) null (WandMaskField_12934 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_12934_19977 pm_f@@1) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@1) null (WandMaskField_12934 pm_f@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6177) (ExhaleHeap@@2 T@PolymorphicMapType_6177) (Mask@@3 T@PolymorphicMapType_6198) (pm_f@@2 T@Field_6237_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6237_12935 Mask@@3 null pm_f@@2) (IsWandField_6237_19620 pm_f@@2)) (= (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@6) null (WandMaskField_6237 pm_f@@2)) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@2) null (WandMaskField_6237 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_6237_19620 pm_f@@2) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@2) null (WandMaskField_6237 pm_f@@2)))
)))
(assert (forall ((s_2@@3 (Array Int Bool)) (s2 (Array Int Bool)) ) (!  (=> (= (P s_2@@3) (P s2)) (= s_2@@3 s2))
 :qid |stdinbpl.440:15|
 :skolemid |88|
 :pattern ( (P s_2@@3) (P s2))
)))
(assert (forall ((s_2@@4 (Array Int Bool)) (s2@@0 (Array Int Bool)) ) (!  (=> (= (|P#sm| s_2@@4) (|P#sm| s2@@0)) (= s_2@@4 s2@@0))
 :qid |stdinbpl.444:15|
 :skolemid |89|
 :pattern ( (|P#sm| s_2@@4) (|P#sm| s2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6177) (ExhaleHeap@@3 T@PolymorphicMapType_6177) (Mask@@4 T@PolymorphicMapType_6198) (pm_f@@3 T@Field_12934_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12934_12935 Mask@@4 null pm_f@@3) (IsPredicateField_3974_3975 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6237_53) ) (!  (=> (select (|PolymorphicMapType_6726_6237_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@7) o2 f_2) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6250_6251) ) (!  (=> (select (|PolymorphicMapType_6726_6237_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@7) o2@@0 f_2@@0) (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_12408_12409) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17342#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@7) o2@@1 f_2@@1) (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6237_12935) ) (!  (=> (select (|PolymorphicMapType_6726_6237_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@7) o2@@2 f_2@@2) (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6237_12951) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17754#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12934_53) ) (!  (=> (select (|PolymorphicMapType_6726_12934_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12934_6251) ) (!  (=> (select (|PolymorphicMapType_6726_12934_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_12934_12409) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18400#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_12934_12935) ) (!  (=> (select (|PolymorphicMapType_6726_12934_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@7) o2@@7 f_2@@7) (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_12946_12951) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18812#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) null (PredicateMaskField_3974 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@7) o2@@8 f_2@@8) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3974_3975 pm_f@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6177) (ExhaleHeap@@4 T@PolymorphicMapType_6177) (Mask@@5 T@PolymorphicMapType_6198) (pm_f@@4 T@Field_6237_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6237_12935 Mask@@5 null pm_f@@4) (IsPredicateField_6237_16260 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_6237_53) ) (!  (=> (select (|PolymorphicMapType_6726_6237_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@8) o2@@9 f_2@@9) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_6250_6251) ) (!  (=> (select (|PolymorphicMapType_6726_6237_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@8) o2@@10 f_2@@10) (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_12408_12409) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17342#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@8) o2@@11 f_2@@11) (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_6237_12935) ) (!  (=> (select (|PolymorphicMapType_6726_6237_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@8) o2@@12 f_2@@12) (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_6237_12951) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17754#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) o2@@13 f_2@@13) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_12934_53) ) (!  (=> (select (|PolymorphicMapType_6726_12934_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@8) o2@@14 f_2@@14) (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_12934_6251) ) (!  (=> (select (|PolymorphicMapType_6726_12934_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@8) o2@@15 f_2@@15) (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_12934_12409) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18400#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@8) o2@@16 f_2@@16) (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_12934_12935) ) (!  (=> (select (|PolymorphicMapType_6726_12934_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@8) o2@@17 f_2@@17) (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_12946_12951) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18812#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@8) null (PredicateMaskField_6237 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@8) o2@@18 f_2@@18) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6237_16260 pm_f@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6177) (ExhaleHeap@@5 T@PolymorphicMapType_6177) (Mask@@6 T@PolymorphicMapType_6198) (pm_f@@5 T@Field_12934_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12934_12935 Mask@@6 null pm_f@@5) (IsWandField_12934_19977 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_6237_53) ) (!  (=> (select (|PolymorphicMapType_6726_6237_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@9) o2@@19 f_2@@19) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_6250_6251) ) (!  (=> (select (|PolymorphicMapType_6726_6237_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@9) o2@@20 f_2@@20) (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_12408_12409) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17342#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@9) o2@@21 f_2@@21) (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_6237_12935) ) (!  (=> (select (|PolymorphicMapType_6726_6237_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@9) o2@@22 f_2@@22) (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_6237_12951) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17754#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@9) o2@@23 f_2@@23) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_12934_53) ) (!  (=> (select (|PolymorphicMapType_6726_12934_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@9) o2@@24 f_2@@24) (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_12934_6251) ) (!  (=> (select (|PolymorphicMapType_6726_12934_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@9) o2@@25 f_2@@25) (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_12934_12409) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18400#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@9) o2@@26 f_2@@26) (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_12934_12935) ) (!  (=> (select (|PolymorphicMapType_6726_12934_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@9) o2@@27 f_2@@27) (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_12946_12951) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18812#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) null (WandMaskField_12934 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@9) o2@@28 f_2@@28) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_12934_19977 pm_f@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6177) (ExhaleHeap@@6 T@PolymorphicMapType_6177) (Mask@@7 T@PolymorphicMapType_6198) (pm_f@@6 T@Field_6237_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6237_12935 Mask@@7 null pm_f@@6) (IsWandField_6237_19620 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_6237_53) ) (!  (=> (select (|PolymorphicMapType_6726_6237_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@10) o2@@29 f_2@@29) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_6250_6251) ) (!  (=> (select (|PolymorphicMapType_6726_6237_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@10) o2@@30 f_2@@30) (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_12408_12409) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17342#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@10) o2@@31 f_2@@31) (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_6237_12935) ) (!  (=> (select (|PolymorphicMapType_6726_6237_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@10) o2@@32 f_2@@32) (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_6237_12951) ) (!  (=> (select (|PolymorphicMapType_6726_6237_17754#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) o2@@33 f_2@@33) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_12934_53) ) (!  (=> (select (|PolymorphicMapType_6726_12934_53#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@10) o2@@34 f_2@@34) (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_12934_6251) ) (!  (=> (select (|PolymorphicMapType_6726_12934_6251#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@10) o2@@35 f_2@@35) (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_12934_12409) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18400#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@10) o2@@36 f_2@@36) (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_12934_12935) ) (!  (=> (select (|PolymorphicMapType_6726_12934_12935#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@10) o2@@37 f_2@@37) (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_12946_12951) ) (!  (=> (select (|PolymorphicMapType_6726_12934_18812#PolymorphicMapType_6726| (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@10) null (WandMaskField_6237 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@10) o2@@38 f_2@@38) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_6237_19620 pm_f@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6177) (ExhaleHeap@@7 T@PolymorphicMapType_6177) (Mask@@8 T@PolymorphicMapType_6198) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@11) o_1 $allocated) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_12934_12935) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12934_12934 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12934_12934 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6237_12935) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6237_6237 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6237_6237 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3924_12428 f_7)))
(assert  (not (IsWandField_3924_12451 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6177) (ExhaleHeap@@8 T@PolymorphicMapType_6177) (Mask@@9 T@PolymorphicMapType_6198) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6198) (o_2@@9 T@Ref) (f_4@@9 T@Field_12946_12951) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_12934_26982 f_4@@9))) (not (IsWandField_12934_26998 f_4@@9))) (<= (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6198) (o_2@@10 T@Ref) (f_4@@10 T@Field_12934_12935) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3974_3975 f_4@@10))) (not (IsWandField_12934_19977 f_4@@10))) (<= (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6198) (o_2@@11 T@Ref) (f_4@@11 T@Field_12934_12409) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12934_26655 f_4@@11))) (not (IsWandField_12934_26671 f_4@@11))) (<= (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6198) (o_2@@12 T@Ref) (f_4@@12 T@Field_12934_6251) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12934_6251 f_4@@12))) (not (IsWandField_12934_6251 f_4@@12))) (<= (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6198) (o_2@@13 T@Ref) (f_4@@13 T@Field_12934_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_12934_53 f_4@@13))) (not (IsWandField_12934_53 f_4@@13))) (<= (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6198) (o_2@@14 T@Ref) (f_4@@14 T@Field_6237_12951) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6237_26146 f_4@@14))) (not (IsWandField_6237_26162 f_4@@14))) (<= (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6198) (o_2@@15 T@Ref) (f_4@@15 T@Field_6237_12935) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6237_16260 f_4@@15))) (not (IsWandField_6237_19620 f_4@@15))) (<= (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6198) (o_2@@16 T@Ref) (f_4@@16 T@Field_12408_12409) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3924_12428 f_4@@16))) (not (IsWandField_3924_12451 f_4@@16))) (<= (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6198) (o_2@@17 T@Ref) (f_4@@17 T@Field_6250_6251) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6237_6251 f_4@@17))) (not (IsWandField_6237_6251 f_4@@17))) (<= (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6198) (o_2@@18 T@Ref) (f_4@@18 T@Field_6237_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6237_53 f_4@@18))) (not (IsWandField_6237_53 f_4@@18))) (<= (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6198) (o_2@@19 T@Ref) (f_4@@19 T@Field_12946_12951) ) (! (= (HasDirectPerm_12934_15972 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12934_15972 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6198) (o_2@@20 T@Ref) (f_4@@20 T@Field_12934_12935) ) (! (= (HasDirectPerm_12934_12935 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12934_12935 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6198) (o_2@@21 T@Ref) (f_4@@21 T@Field_12934_12409) ) (! (= (HasDirectPerm_12934_15512 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12934_15512 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6198) (o_2@@22 T@Ref) (f_4@@22 T@Field_12934_6251) ) (! (= (HasDirectPerm_12934_6251 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12934_6251 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6198) (o_2@@23 T@Ref) (f_4@@23 T@Field_12934_53) ) (! (= (HasDirectPerm_12934_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12934_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6198) (o_2@@24 T@Ref) (f_4@@24 T@Field_6237_12951) ) (! (= (HasDirectPerm_6237_14782 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6237_14782 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6198) (o_2@@25 T@Ref) (f_4@@25 T@Field_6237_12935) ) (! (= (HasDirectPerm_6237_12935 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6237_12935 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6198) (o_2@@26 T@Ref) (f_4@@26 T@Field_12408_12409) ) (! (= (HasDirectPerm_6237_14320 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6237_14320 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6198) (o_2@@27 T@Ref) (f_4@@27 T@Field_6250_6251) ) (! (= (HasDirectPerm_6237_6251 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6237_6251 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6198) (o_2@@28 T@Ref) (f_4@@28 T@Field_6237_53) ) (! (= (HasDirectPerm_6237_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6237_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6177) (ExhaleHeap@@9 T@PolymorphicMapType_6177) (Mask@@30 T@PolymorphicMapType_6198) (o_1@@0 T@Ref) (f_2@@39 T@Field_12946_12951) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_12934_15972 Mask@@30 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@13) o_1@@0 f_2@@39) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6177) (ExhaleHeap@@10 T@PolymorphicMapType_6177) (Mask@@31 T@PolymorphicMapType_6198) (o_1@@1 T@Ref) (f_2@@40 T@Field_12934_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_12934_12935 Mask@@31 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@14) o_1@@1 f_2@@40) (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6177) (ExhaleHeap@@11 T@PolymorphicMapType_6177) (Mask@@32 T@PolymorphicMapType_6198) (o_1@@2 T@Ref) (f_2@@41 T@Field_12934_12409) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_12934_15512 Mask@@32 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@15) o_1@@2 f_2@@41) (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6177) (ExhaleHeap@@12 T@PolymorphicMapType_6177) (Mask@@33 T@PolymorphicMapType_6198) (o_1@@3 T@Ref) (f_2@@42 T@Field_12934_6251) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_12934_6251 Mask@@33 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@16) o_1@@3 f_2@@42) (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6177) (ExhaleHeap@@13 T@PolymorphicMapType_6177) (Mask@@34 T@PolymorphicMapType_6198) (o_1@@4 T@Ref) (f_2@@43 T@Field_12934_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_12934_53 Mask@@34 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@17) o_1@@4 f_2@@43) (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6177) (ExhaleHeap@@14 T@PolymorphicMapType_6177) (Mask@@35 T@PolymorphicMapType_6198) (o_1@@5 T@Ref) (f_2@@44 T@Field_6237_12951) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6237_14782 Mask@@35 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@18) o_1@@5 f_2@@44) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6177) (ExhaleHeap@@15 T@PolymorphicMapType_6177) (Mask@@36 T@PolymorphicMapType_6198) (o_1@@6 T@Ref) (f_2@@45 T@Field_6237_12935) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6237_12935 Mask@@36 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@19) o_1@@6 f_2@@45) (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6177) (ExhaleHeap@@16 T@PolymorphicMapType_6177) (Mask@@37 T@PolymorphicMapType_6198) (o_1@@7 T@Ref) (f_2@@46 T@Field_12408_12409) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6237_14320 Mask@@37 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@20) o_1@@7 f_2@@46) (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6177) (ExhaleHeap@@17 T@PolymorphicMapType_6177) (Mask@@38 T@PolymorphicMapType_6198) (o_1@@8 T@Ref) (f_2@@47 T@Field_6250_6251) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6237_6251 Mask@@38 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@21) o_1@@8 f_2@@47) (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6177) (ExhaleHeap@@18 T@PolymorphicMapType_6177) (Mask@@39 T@PolymorphicMapType_6198) (o_1@@9 T@Ref) (f_2@@48 T@Field_6237_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6237_53 Mask@@39 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@22) o_1@@9 f_2@@48) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_12946_12951) ) (! (= (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12934_12935) ) (! (= (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_12934_12409) ) (! (= (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_12934_6251) ) (! (= (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_12934_53) ) (! (= (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_6237_12951) ) (! (= (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_6237_12935) ) (! (= (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_12408_12409) ) (! (= (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_6250_6251) ) (! (= (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_6237_53) ) (! (= (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6198) (SummandMask1 T@PolymorphicMapType_6198) (SummandMask2 T@PolymorphicMapType_6198) (o_2@@39 T@Ref) (f_4@@39 T@Field_12946_12951) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6198_12934_24676#PolymorphicMapType_6198| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6198) (SummandMask1@@0 T@PolymorphicMapType_6198) (SummandMask2@@0 T@PolymorphicMapType_6198) (o_2@@40 T@Ref) (f_4@@40 T@Field_12934_12935) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6198_12934_12935#PolymorphicMapType_6198| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6198) (SummandMask1@@1 T@PolymorphicMapType_6198) (SummandMask2@@1 T@PolymorphicMapType_6198) (o_2@@41 T@Ref) (f_4@@41 T@Field_12934_12409) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6198_12934_24508#PolymorphicMapType_6198| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6198) (SummandMask1@@2 T@PolymorphicMapType_6198) (SummandMask2@@2 T@PolymorphicMapType_6198) (o_2@@42 T@Ref) (f_4@@42 T@Field_12934_6251) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6198_12934_6251#PolymorphicMapType_6198| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6198) (SummandMask1@@3 T@PolymorphicMapType_6198) (SummandMask2@@3 T@PolymorphicMapType_6198) (o_2@@43 T@Ref) (f_4@@43 T@Field_12934_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6198_12934_53#PolymorphicMapType_6198| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6198) (SummandMask1@@4 T@PolymorphicMapType_6198) (SummandMask2@@4 T@PolymorphicMapType_6198) (o_2@@44 T@Ref) (f_4@@44 T@Field_6237_12951) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6198_6237_24245#PolymorphicMapType_6198| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6198) (SummandMask1@@5 T@PolymorphicMapType_6198) (SummandMask2@@5 T@PolymorphicMapType_6198) (o_2@@45 T@Ref) (f_4@@45 T@Field_6237_12935) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6198_6237_12935#PolymorphicMapType_6198| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6198) (SummandMask1@@6 T@PolymorphicMapType_6198) (SummandMask2@@6 T@PolymorphicMapType_6198) (o_2@@46 T@Ref) (f_4@@46 T@Field_12408_12409) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6198_6237_24077#PolymorphicMapType_6198| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6198) (SummandMask1@@7 T@PolymorphicMapType_6198) (SummandMask2@@7 T@PolymorphicMapType_6198) (o_2@@47 T@Ref) (f_4@@47 T@Field_6250_6251) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6198_6237_6251#PolymorphicMapType_6198| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6198) (SummandMask1@@8 T@PolymorphicMapType_6198) (SummandMask2@@8 T@PolymorphicMapType_6198) (o_2@@48 T@Ref) (f_4@@48 T@Field_6237_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6198_6237_53#PolymorphicMapType_6198| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((s_2@@5 (Array Int Bool)) ) (! (= (getPredWandId_3974_3975 (P s_2@@5)) 0)
 :qid |stdinbpl.434:15|
 :skolemid |87|
 :pattern ( (P s_2@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6177) (Mask@@40 T@PolymorphicMapType_6198) (s_2@@6 (Array T@Ref Bool)) ) (!  (=> (state Heap@@23 Mask@@40) (= (|foo'| Heap@@23 s_2@@6) (|foo#frame| EmptyFrame s_2@@6)))
 :qid |stdinbpl.396:15|
 :skolemid |84|
 :pattern ( (state Heap@@23 Mask@@40) (|foo'| Heap@@23 s_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6177) (o T@Ref) (f_3 T@Field_12946_12951) (v T@PolymorphicMapType_6726) ) (! (succHeap Heap@@24 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@24) (store (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@24) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@24) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@24) (store (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@24) o f_3 v)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6177) (o@@0 T@Ref) (f_3@@0 T@Field_12934_12935) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@25) (store (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@25) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@25) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@25) (store (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@25) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6177) (o@@1 T@Ref) (f_3@@1 T@Field_12934_12409) (v@@1 (Array Bool Bool)) ) (! (succHeap Heap@@26 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@26) (store (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@26) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@26) (store (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@26) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@26) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6177) (o@@2 T@Ref) (f_3@@2 T@Field_12934_6251) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@27) (store (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@27) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@27) (store (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@27) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@27) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6177) (o@@3 T@Ref) (f_3@@3 T@Field_12934_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@28) (store (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@28) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@28) (store (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@28) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@28) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6177) (o@@4 T@Ref) (f_3@@4 T@Field_6237_12951) (v@@4 T@PolymorphicMapType_6726) ) (! (succHeap Heap@@29 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@29) (store (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@29) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@29) (store (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@29) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@29) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6177) (o@@5 T@Ref) (f_3@@5 T@Field_6237_12935) (v@@5 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@30) (store (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@30) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@30) (store (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@30) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@30) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6177) (o@@6 T@Ref) (f_3@@6 T@Field_12408_12409) (v@@6 (Array Bool Bool)) ) (! (succHeap Heap@@31 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@31) (store (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@31) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@31) (store (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@31) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@31) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6177) (o@@7 T@Ref) (f_3@@7 T@Field_6250_6251) (v@@7 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@32) (store (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@32) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@32) (store (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@32) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@32) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6177) (o@@8 T@Ref) (f_3@@8 T@Field_6237_53) (v@@8 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_6177 (store (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@33) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6177 (store (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@33) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_6237_14362#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_6237_12935#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_6237_14824#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_53#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_6251#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_15554#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_12935#PolymorphicMapType_6177| Heap@@33) (|PolymorphicMapType_6177_12934_16014#PolymorphicMapType_6177| Heap@@33)))
)))
(assert (forall ((s_2@@7 (Array Int Bool)) ) (! (= (PredicateMaskField_3974 (P s_2@@7)) (|P#sm| s_2@@7))
 :qid |stdinbpl.426:15|
 :skolemid |85|
 :pattern ( (PredicateMaskField_3974 (P s_2@@7)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.274:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.275:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_6250_6251) (Heap@@34 T@PolymorphicMapType_6177) ) (!  (=> (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@34) o@@9 $allocated) (select (|PolymorphicMapType_6177_3635_53#PolymorphicMapType_6177| Heap@@34) (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@34) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6177_3638_3639#PolymorphicMapType_6177| Heap@@34) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_12934_12935) (v_1@@1 T@FrameType) (q T@Field_12934_12935) (w@@1 T@FrameType) (r T@Field_12934_12935) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12934_12934 p@@2 v_1@@1 q w@@1) (InsidePredicate_12934_12934 q w@@1 r u)) (InsidePredicate_12934_12934 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12934_12934 p@@2 v_1@@1 q w@@1) (InsidePredicate_12934_12934 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12934_12935) (v_1@@2 T@FrameType) (q@@0 T@Field_12934_12935) (w@@2 T@FrameType) (r@@0 T@Field_6237_12935) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12934_12934 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12934_6237 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12934_6237 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12934_12934 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12934_6237 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12934_12935) (v_1@@3 T@FrameType) (q@@1 T@Field_6237_12935) (w@@3 T@FrameType) (r@@1 T@Field_12934_12935) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12934_6237 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6237_12934 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12934_12934 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12934_6237 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6237_12934 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12934_12935) (v_1@@4 T@FrameType) (q@@2 T@Field_6237_12935) (w@@4 T@FrameType) (r@@2 T@Field_6237_12935) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12934_6237 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6237_6237 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12934_6237 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12934_6237 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6237_6237 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_6237_12935) (v_1@@5 T@FrameType) (q@@3 T@Field_12934_12935) (w@@5 T@FrameType) (r@@3 T@Field_12934_12935) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6237_12934 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12934_12934 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6237_12934 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6237_12934 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12934_12934 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_6237_12935) (v_1@@6 T@FrameType) (q@@4 T@Field_12934_12935) (w@@6 T@FrameType) (r@@4 T@Field_6237_12935) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6237_12934 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12934_6237 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6237_6237 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6237_12934 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12934_6237 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_6237_12935) (v_1@@7 T@FrameType) (q@@5 T@Field_6237_12935) (w@@7 T@FrameType) (r@@5 T@Field_12934_12935) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6237_6237 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6237_12934 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6237_12934 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6237_6237 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6237_12934 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_6237_12935) (v_1@@8 T@FrameType) (q@@6 T@Field_6237_12935) (w@@8 T@FrameType) (r@@6 T@Field_6237_12935) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6237_6237 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6237_6237 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6237_6237 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6237_6237 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6237_6237 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.280:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id test)
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
