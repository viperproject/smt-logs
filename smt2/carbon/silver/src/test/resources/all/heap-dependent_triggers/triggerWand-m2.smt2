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
(declare-sort T@Field_11956_53 0)
(declare-sort T@Field_11969_11970 0)
(declare-sort T@Field_18806_3773 0)
(declare-sort T@Field_18164_3468 0)
(declare-sort T@Field_7509_53 0)
(declare-sort T@Field_7509_11970 0)
(declare-sort T@Field_18177_18182 0)
(declare-sort T@Field_18193_18194 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11956_18182 0)
(declare-sort T@Field_11956_18194 0)
(declare-datatypes ((T@PolymorphicMapType_11917 0)) (((PolymorphicMapType_11917 (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| (Array T@Ref T@Field_18806_3773 Real)) (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| (Array T@Ref T@Field_18164_3468 Real)) (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| (Array T@Ref T@Field_11956_53 Real)) (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| (Array T@Ref T@Field_11969_11970 Real)) (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| (Array T@Ref T@Field_11956_18182 Real)) (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| (Array T@Ref T@Field_11956_18194 Real)) (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| (Array T@Ref T@Field_7509_53 Real)) (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| (Array T@Ref T@Field_7509_11970 Real)) (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| (Array T@Ref T@Field_18177_18182 Real)) (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| (Array T@Ref T@Field_18193_18194 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12445 0)) (((PolymorphicMapType_12445 (|PolymorphicMapType_12445_11956_53#PolymorphicMapType_12445| (Array T@Ref T@Field_11956_53 Bool)) (|PolymorphicMapType_12445_11956_11970#PolymorphicMapType_12445| (Array T@Ref T@Field_11969_11970 Bool)) (|PolymorphicMapType_12445_11956_3468#PolymorphicMapType_12445| (Array T@Ref T@Field_18806_3773 Bool)) (|PolymorphicMapType_12445_11956_35730#PolymorphicMapType_12445| (Array T@Ref T@Field_11956_18182 Bool)) (|PolymorphicMapType_12445_11956_18194#PolymorphicMapType_12445| (Array T@Ref T@Field_11956_18194 Bool)) (|PolymorphicMapType_12445_18164_53#PolymorphicMapType_12445| (Array T@Ref T@Field_7509_53 Bool)) (|PolymorphicMapType_12445_18164_11970#PolymorphicMapType_12445| (Array T@Ref T@Field_7509_11970 Bool)) (|PolymorphicMapType_12445_18164_3468#PolymorphicMapType_12445| (Array T@Ref T@Field_18164_3468 Bool)) (|PolymorphicMapType_12445_18164_36778#PolymorphicMapType_12445| (Array T@Ref T@Field_18177_18182 Bool)) (|PolymorphicMapType_12445_18164_18194#PolymorphicMapType_12445| (Array T@Ref T@Field_18193_18194 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11896 0)) (((PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| (Array T@Ref T@Field_11956_53 Bool)) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| (Array T@Ref T@Field_11969_11970 T@Ref)) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| (Array T@Ref T@Field_18806_3773 Int)) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| (Array T@Ref T@Field_18164_3468 Int)) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| (Array T@Ref T@Field_7509_53 Bool)) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| (Array T@Ref T@Field_7509_11970 T@Ref)) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| (Array T@Ref T@Field_18177_18182 T@PolymorphicMapType_12445)) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| (Array T@Ref T@Field_18193_18194 T@FrameType)) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| (Array T@Ref T@Field_11956_18182 T@PolymorphicMapType_12445)) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| (Array T@Ref T@Field_11956_18194 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11956_53)
(declare-fun f_7 () T@Field_18806_3773)
(declare-fun succHeap (T@PolymorphicMapType_11896 T@PolymorphicMapType_11896) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11896 T@PolymorphicMapType_11896) Bool)
(declare-fun wand (T@Ref Real T@Ref Real) T@Field_18164_3468)
(declare-fun getPredWandId_7509_3468 (T@Field_18164_3468) Int)
(declare-fun state (T@PolymorphicMapType_11896 T@PolymorphicMapType_11917) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11917) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12445)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11896 T@PolymorphicMapType_11896 T@PolymorphicMapType_11917) Bool)
(declare-fun IsPredicateField_11956_34775 (T@Field_11956_18194) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11956 (T@Field_11956_18194) T@Field_11956_18182)
(declare-fun HasDirectPerm_11956_18194 (T@PolymorphicMapType_11917 T@Ref T@Field_11956_18194) Bool)
(declare-fun IsPredicateField_7522_7523 (T@Field_18193_18194) Bool)
(declare-fun PredicateMaskField_7509 (T@Field_18193_18194) T@Field_18177_18182)
(declare-fun HasDirectPerm_7509_18194 (T@PolymorphicMapType_11917 T@Ref T@Field_18193_18194) Bool)
(declare-fun IsWandField_11956_38115 (T@Field_11956_18194) Bool)
(declare-fun WandMaskField_11956 (T@Field_11956_18194) T@Field_11956_18182)
(declare-fun IsWandField_7522_7523 (T@Field_18193_18194) Bool)
(declare-fun WandMaskField_7522 (T@Field_18193_18194) T@Field_18177_18182)
(declare-fun dummyHeap () T@PolymorphicMapType_11896)
(declare-fun ZeroMask () T@PolymorphicMapType_11917)
(declare-fun InsidePredicate_18164_18164 (T@Field_18193_18194 T@FrameType T@Field_18193_18194 T@FrameType) Bool)
(declare-fun InsidePredicate_11956_11956 (T@Field_11956_18194 T@FrameType T@Field_11956_18194 T@FrameType) Bool)
(declare-fun IsPredicateField_7557_3773 (T@Field_18806_3773) Bool)
(declare-fun IsWandField_7557_3773 (T@Field_18806_3773) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7509_44882 (T@Field_18177_18182) Bool)
(declare-fun IsWandField_7509_44898 (T@Field_18177_18182) Bool)
(declare-fun IsPredicateField_7509_11970 (T@Field_7509_11970) Bool)
(declare-fun IsWandField_7509_11970 (T@Field_7509_11970) Bool)
(declare-fun IsPredicateField_7509_53 (T@Field_7509_53) Bool)
(declare-fun IsWandField_7509_53 (T@Field_7509_53) Bool)
(declare-fun IsPredicateField_7509_3468 (T@Field_18164_3468) Bool)
(declare-fun IsWandField_7509_3468 (T@Field_18164_3468) Bool)
(declare-fun IsPredicateField_7557_44065 (T@Field_11956_18182) Bool)
(declare-fun IsWandField_7557_44081 (T@Field_11956_18182) Bool)
(declare-fun IsPredicateField_7557_11970 (T@Field_11969_11970) Bool)
(declare-fun IsWandField_7557_11970 (T@Field_11969_11970) Bool)
(declare-fun IsPredicateField_7557_53 (T@Field_11956_53) Bool)
(declare-fun IsWandField_7557_53 (T@Field_11956_53) Bool)
(declare-fun HasDirectPerm_11956_33908 (T@PolymorphicMapType_11917 T@Ref T@Field_11956_18182) Bool)
(declare-fun HasDirectPerm_11956_11970 (T@PolymorphicMapType_11917 T@Ref T@Field_11969_11970) Bool)
(declare-fun HasDirectPerm_11956_53 (T@PolymorphicMapType_11917 T@Ref T@Field_11956_53) Bool)
(declare-fun HasDirectPerm_11956_3468 (T@PolymorphicMapType_11917 T@Ref T@Field_18806_3773) Bool)
(declare-fun HasDirectPerm_7509_32773 (T@PolymorphicMapType_11917 T@Ref T@Field_18177_18182) Bool)
(declare-fun HasDirectPerm_7509_11970 (T@PolymorphicMapType_11917 T@Ref T@Field_7509_11970) Bool)
(declare-fun HasDirectPerm_7509_53 (T@PolymorphicMapType_11917 T@Ref T@Field_7509_53) Bool)
(declare-fun HasDirectPerm_7509_3468 (T@PolymorphicMapType_11917 T@Ref T@Field_18164_3468) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real) T@Field_18193_18194)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real) T@Field_18177_18182)
(declare-fun sumMask (T@PolymorphicMapType_11917 T@PolymorphicMapType_11917 T@PolymorphicMapType_11917) Bool)
(declare-fun InsidePredicate_18164_11956 (T@Field_18193_18194 T@FrameType T@Field_11956_18194 T@FrameType) Bool)
(declare-fun InsidePredicate_11956_18164 (T@Field_11956_18194 T@FrameType T@Field_18193_18194 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_11896) (Heap1 T@PolymorphicMapType_11896) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_7509_3468 (wand arg1 arg2 arg3 arg4)) 0)
 :qid |stdinbpl.427:15|
 :skolemid |87|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_11896) (Mask T@PolymorphicMapType_11917) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11896) (Heap1@@0 T@PolymorphicMapType_11896) (Heap2 T@PolymorphicMapType_11896) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18193_18194) ) (!  (not (select (|PolymorphicMapType_12445_18164_18194#PolymorphicMapType_12445| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_18164_18194#PolymorphicMapType_12445| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18177_18182) ) (!  (not (select (|PolymorphicMapType_12445_18164_36778#PolymorphicMapType_12445| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_18164_36778#PolymorphicMapType_12445| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18164_3468) ) (!  (not (select (|PolymorphicMapType_12445_18164_3468#PolymorphicMapType_12445| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_18164_3468#PolymorphicMapType_12445| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7509_11970) ) (!  (not (select (|PolymorphicMapType_12445_18164_11970#PolymorphicMapType_12445| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_18164_11970#PolymorphicMapType_12445| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7509_53) ) (!  (not (select (|PolymorphicMapType_12445_18164_53#PolymorphicMapType_12445| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_18164_53#PolymorphicMapType_12445| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11956_18194) ) (!  (not (select (|PolymorphicMapType_12445_11956_18194#PolymorphicMapType_12445| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_11956_18194#PolymorphicMapType_12445| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11956_18182) ) (!  (not (select (|PolymorphicMapType_12445_11956_35730#PolymorphicMapType_12445| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_11956_35730#PolymorphicMapType_12445| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_18806_3773) ) (!  (not (select (|PolymorphicMapType_12445_11956_3468#PolymorphicMapType_12445| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_11956_3468#PolymorphicMapType_12445| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11969_11970) ) (!  (not (select (|PolymorphicMapType_12445_11956_11970#PolymorphicMapType_12445| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_11956_11970#PolymorphicMapType_12445| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11956_53) ) (!  (not (select (|PolymorphicMapType_12445_11956_53#PolymorphicMapType_12445| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12445_11956_53#PolymorphicMapType_12445| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.305:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.308:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11896) (ExhaleHeap T@PolymorphicMapType_11896) (Mask@@0 T@PolymorphicMapType_11917) (pm_f_8 T@Field_11956_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11956_18194 Mask@@0 null pm_f_8) (IsPredicateField_11956_34775 pm_f_8)) (= (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@0) null (PredicateMaskField_11956 pm_f_8)) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap) null (PredicateMaskField_11956 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11956_34775 pm_f_8) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap) null (PredicateMaskField_11956 pm_f_8)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11896) (ExhaleHeap@@0 T@PolymorphicMapType_11896) (Mask@@1 T@PolymorphicMapType_11917) (pm_f_8@@0 T@Field_18193_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7509_18194 Mask@@1 null pm_f_8@@0) (IsPredicateField_7522_7523 pm_f_8@@0)) (= (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@1) null (PredicateMaskField_7509 pm_f_8@@0)) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@0) null (PredicateMaskField_7509 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7522_7523 pm_f_8@@0) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@0) null (PredicateMaskField_7509 pm_f_8@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11896) (ExhaleHeap@@1 T@PolymorphicMapType_11896) (Mask@@2 T@PolymorphicMapType_11917) (pm_f_8@@1 T@Field_11956_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11956_18194 Mask@@2 null pm_f_8@@1) (IsWandField_11956_38115 pm_f_8@@1)) (= (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@2) null (WandMaskField_11956 pm_f_8@@1)) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@1) null (WandMaskField_11956 pm_f_8@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_11956_38115 pm_f_8@@1) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@1) null (WandMaskField_11956 pm_f_8@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11896) (ExhaleHeap@@2 T@PolymorphicMapType_11896) (Mask@@3 T@PolymorphicMapType_11917) (pm_f_8@@2 T@Field_18193_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7509_18194 Mask@@3 null pm_f_8@@2) (IsWandField_7522_7523 pm_f_8@@2)) (= (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@3) null (WandMaskField_7522 pm_f_8@@2)) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@2) null (WandMaskField_7522 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_7522_7523 pm_f_8@@2) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@2) null (WandMaskField_7522 pm_f_8@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11896) (ExhaleHeap@@3 T@PolymorphicMapType_11896) (Mask@@4 T@PolymorphicMapType_11917) (pm_f_8@@3 T@Field_11956_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11956_18194 Mask@@4 null pm_f_8@@3) (IsPredicateField_11956_34775 pm_f_8@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_11956_53) ) (!  (=> (select (|PolymorphicMapType_12445_11956_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8 f_25) (= (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@4) o2_8 f_25) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_11969_11970) ) (!  (=> (select (|PolymorphicMapType_12445_11956_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@4) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_18806_3773) ) (!  (=> (select (|PolymorphicMapType_12445_11956_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@4) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_11956_18182) ) (!  (=> (select (|PolymorphicMapType_12445_11956_35730#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@2 f_25@@2))
))) (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_11956_18194) ) (!  (=> (select (|PolymorphicMapType_12445_11956_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@4) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@3 f_25@@3))
))) (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_7509_53) ) (!  (=> (select (|PolymorphicMapType_12445_18164_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@4) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@4 f_25@@4))
))) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_7509_11970) ) (!  (=> (select (|PolymorphicMapType_12445_18164_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@4) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_18164_3468) ) (!  (=> (select (|PolymorphicMapType_12445_18164_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@4) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@6 f_25@@6))
))) (forall ((o2_8@@7 T@Ref) (f_25@@7 T@Field_18177_18182) ) (!  (=> (select (|PolymorphicMapType_12445_18164_36778#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@7 f_25@@7) (= (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@4) o2_8@@7 f_25@@7) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@7 f_25@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@7 f_25@@7))
))) (forall ((o2_8@@8 T@Ref) (f_25@@8 T@Field_18193_18194) ) (!  (=> (select (|PolymorphicMapType_12445_18164_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@4) null (PredicateMaskField_11956 pm_f_8@@3))) o2_8@@8 f_25@@8) (= (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@4) o2_8@@8 f_25@@8) (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@8 f_25@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@3) o2_8@@8 f_25@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_11956_34775 pm_f_8@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11896) (ExhaleHeap@@4 T@PolymorphicMapType_11896) (Mask@@5 T@PolymorphicMapType_11917) (pm_f_8@@4 T@Field_18193_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7509_18194 Mask@@5 null pm_f_8@@4) (IsPredicateField_7522_7523 pm_f_8@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@9 T@Ref) (f_25@@9 T@Field_11956_53) ) (!  (=> (select (|PolymorphicMapType_12445_11956_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@9 f_25@@9) (= (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@5) o2_8@@9 f_25@@9) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@9 f_25@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@9 f_25@@9))
)) (forall ((o2_8@@10 T@Ref) (f_25@@10 T@Field_11969_11970) ) (!  (=> (select (|PolymorphicMapType_12445_11956_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@10 f_25@@10) (= (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@5) o2_8@@10 f_25@@10) (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@10 f_25@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@10 f_25@@10))
))) (forall ((o2_8@@11 T@Ref) (f_25@@11 T@Field_18806_3773) ) (!  (=> (select (|PolymorphicMapType_12445_11956_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@11 f_25@@11) (= (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@5) o2_8@@11 f_25@@11) (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@11 f_25@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@11 f_25@@11))
))) (forall ((o2_8@@12 T@Ref) (f_25@@12 T@Field_11956_18182) ) (!  (=> (select (|PolymorphicMapType_12445_11956_35730#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@12 f_25@@12) (= (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@5) o2_8@@12 f_25@@12) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@12 f_25@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@12 f_25@@12))
))) (forall ((o2_8@@13 T@Ref) (f_25@@13 T@Field_11956_18194) ) (!  (=> (select (|PolymorphicMapType_12445_11956_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@13 f_25@@13) (= (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@5) o2_8@@13 f_25@@13) (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@13 f_25@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@13 f_25@@13))
))) (forall ((o2_8@@14 T@Ref) (f_25@@14 T@Field_7509_53) ) (!  (=> (select (|PolymorphicMapType_12445_18164_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@14 f_25@@14) (= (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@5) o2_8@@14 f_25@@14) (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@14 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@14 f_25@@14))
))) (forall ((o2_8@@15 T@Ref) (f_25@@15 T@Field_7509_11970) ) (!  (=> (select (|PolymorphicMapType_12445_18164_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@15 f_25@@15) (= (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@5) o2_8@@15 f_25@@15) (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@15 f_25@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@15 f_25@@15))
))) (forall ((o2_8@@16 T@Ref) (f_25@@16 T@Field_18164_3468) ) (!  (=> (select (|PolymorphicMapType_12445_18164_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@16 f_25@@16) (= (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@5) o2_8@@16 f_25@@16) (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@16 f_25@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@16 f_25@@16))
))) (forall ((o2_8@@17 T@Ref) (f_25@@17 T@Field_18177_18182) ) (!  (=> (select (|PolymorphicMapType_12445_18164_36778#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@17 f_25@@17) (= (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) o2_8@@17 f_25@@17) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@17 f_25@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@17 f_25@@17))
))) (forall ((o2_8@@18 T@Ref) (f_25@@18 T@Field_18193_18194) ) (!  (=> (select (|PolymorphicMapType_12445_18164_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@5) null (PredicateMaskField_7509 pm_f_8@@4))) o2_8@@18 f_25@@18) (= (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@5) o2_8@@18 f_25@@18) (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@18 f_25@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@4) o2_8@@18 f_25@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7522_7523 pm_f_8@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11896) (ExhaleHeap@@5 T@PolymorphicMapType_11896) (Mask@@6 T@PolymorphicMapType_11917) (pm_f_8@@5 T@Field_11956_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11956_18194 Mask@@6 null pm_f_8@@5) (IsWandField_11956_38115 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@19 T@Ref) (f_25@@19 T@Field_11956_53) ) (!  (=> (select (|PolymorphicMapType_12445_11956_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@19 f_25@@19) (= (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@6) o2_8@@19 f_25@@19) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@19 f_25@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@19 f_25@@19))
)) (forall ((o2_8@@20 T@Ref) (f_25@@20 T@Field_11969_11970) ) (!  (=> (select (|PolymorphicMapType_12445_11956_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@20 f_25@@20) (= (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@6) o2_8@@20 f_25@@20) (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@20 f_25@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@20 f_25@@20))
))) (forall ((o2_8@@21 T@Ref) (f_25@@21 T@Field_18806_3773) ) (!  (=> (select (|PolymorphicMapType_12445_11956_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@21 f_25@@21) (= (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@6) o2_8@@21 f_25@@21) (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@21 f_25@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@21 f_25@@21))
))) (forall ((o2_8@@22 T@Ref) (f_25@@22 T@Field_11956_18182) ) (!  (=> (select (|PolymorphicMapType_12445_11956_35730#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@22 f_25@@22) (= (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) o2_8@@22 f_25@@22) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@22 f_25@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@22 f_25@@22))
))) (forall ((o2_8@@23 T@Ref) (f_25@@23 T@Field_11956_18194) ) (!  (=> (select (|PolymorphicMapType_12445_11956_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@23 f_25@@23) (= (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@6) o2_8@@23 f_25@@23) (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@23 f_25@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@23 f_25@@23))
))) (forall ((o2_8@@24 T@Ref) (f_25@@24 T@Field_7509_53) ) (!  (=> (select (|PolymorphicMapType_12445_18164_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@24 f_25@@24) (= (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@6) o2_8@@24 f_25@@24) (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@24 f_25@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@24 f_25@@24))
))) (forall ((o2_8@@25 T@Ref) (f_25@@25 T@Field_7509_11970) ) (!  (=> (select (|PolymorphicMapType_12445_18164_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@25 f_25@@25) (= (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@6) o2_8@@25 f_25@@25) (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@25 f_25@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@25 f_25@@25))
))) (forall ((o2_8@@26 T@Ref) (f_25@@26 T@Field_18164_3468) ) (!  (=> (select (|PolymorphicMapType_12445_18164_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@26 f_25@@26) (= (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@6) o2_8@@26 f_25@@26) (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@26 f_25@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@26 f_25@@26))
))) (forall ((o2_8@@27 T@Ref) (f_25@@27 T@Field_18177_18182) ) (!  (=> (select (|PolymorphicMapType_12445_18164_36778#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@27 f_25@@27) (= (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@6) o2_8@@27 f_25@@27) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@27 f_25@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@27 f_25@@27))
))) (forall ((o2_8@@28 T@Ref) (f_25@@28 T@Field_18193_18194) ) (!  (=> (select (|PolymorphicMapType_12445_18164_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@6) null (WandMaskField_11956 pm_f_8@@5))) o2_8@@28 f_25@@28) (= (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@6) o2_8@@28 f_25@@28) (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@28 f_25@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@5) o2_8@@28 f_25@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_11956_38115 pm_f_8@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11896) (ExhaleHeap@@6 T@PolymorphicMapType_11896) (Mask@@7 T@PolymorphicMapType_11917) (pm_f_8@@6 T@Field_18193_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7509_18194 Mask@@7 null pm_f_8@@6) (IsWandField_7522_7523 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_25@@29 T@Field_11956_53) ) (!  (=> (select (|PolymorphicMapType_12445_11956_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@29 f_25@@29) (= (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@7) o2_8@@29 f_25@@29) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@29 f_25@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@29 f_25@@29))
)) (forall ((o2_8@@30 T@Ref) (f_25@@30 T@Field_11969_11970) ) (!  (=> (select (|PolymorphicMapType_12445_11956_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@30 f_25@@30) (= (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@7) o2_8@@30 f_25@@30) (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@30 f_25@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@30 f_25@@30))
))) (forall ((o2_8@@31 T@Ref) (f_25@@31 T@Field_18806_3773) ) (!  (=> (select (|PolymorphicMapType_12445_11956_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@31 f_25@@31) (= (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@7) o2_8@@31 f_25@@31) (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@31 f_25@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@31 f_25@@31))
))) (forall ((o2_8@@32 T@Ref) (f_25@@32 T@Field_11956_18182) ) (!  (=> (select (|PolymorphicMapType_12445_11956_35730#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@32 f_25@@32) (= (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@7) o2_8@@32 f_25@@32) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@32 f_25@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@32 f_25@@32))
))) (forall ((o2_8@@33 T@Ref) (f_25@@33 T@Field_11956_18194) ) (!  (=> (select (|PolymorphicMapType_12445_11956_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@33 f_25@@33) (= (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@7) o2_8@@33 f_25@@33) (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@33 f_25@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@33 f_25@@33))
))) (forall ((o2_8@@34 T@Ref) (f_25@@34 T@Field_7509_53) ) (!  (=> (select (|PolymorphicMapType_12445_18164_53#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@34 f_25@@34) (= (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@7) o2_8@@34 f_25@@34) (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@34 f_25@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@34 f_25@@34))
))) (forall ((o2_8@@35 T@Ref) (f_25@@35 T@Field_7509_11970) ) (!  (=> (select (|PolymorphicMapType_12445_18164_11970#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@35 f_25@@35) (= (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@7) o2_8@@35 f_25@@35) (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@35 f_25@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@35 f_25@@35))
))) (forall ((o2_8@@36 T@Ref) (f_25@@36 T@Field_18164_3468) ) (!  (=> (select (|PolymorphicMapType_12445_18164_3468#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@36 f_25@@36) (= (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@7) o2_8@@36 f_25@@36) (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@36 f_25@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@36 f_25@@36))
))) (forall ((o2_8@@37 T@Ref) (f_25@@37 T@Field_18177_18182) ) (!  (=> (select (|PolymorphicMapType_12445_18164_36778#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@37 f_25@@37) (= (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) o2_8@@37 f_25@@37) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@37 f_25@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@37 f_25@@37))
))) (forall ((o2_8@@38 T@Ref) (f_25@@38 T@Field_18193_18194) ) (!  (=> (select (|PolymorphicMapType_12445_18164_18194#PolymorphicMapType_12445| (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@7) null (WandMaskField_7522 pm_f_8@@6))) o2_8@@38 f_25@@38) (= (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@7) o2_8@@38 f_25@@38) (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@38 f_25@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@6) o2_8@@38 f_25@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_7522_7523 pm_f_8@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11896) (ExhaleHeap@@7 T@PolymorphicMapType_11896) (Mask@@8 T@PolymorphicMapType_11917) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@8) o_23 $allocated) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_18193_18194) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18164_18164 p v_1 p w))
 :qid |stdinbpl.203:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18164_18164 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11956_18194) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11956_11956 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.203:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11956_11956 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_7557_3773 f_7)))
(assert  (not (IsWandField_7557_3773 f_7)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11896) (ExhaleHeap@@8 T@PolymorphicMapType_11896) (Mask@@9 T@PolymorphicMapType_11917) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11917) (o_2@@9 T@Ref) (f_4@@9 T@Field_18193_18194) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7522_7523 f_4@@9))) (not (IsWandField_7522_7523 f_4@@9))) (<= (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11917) (o_2@@10 T@Ref) (f_4@@10 T@Field_18177_18182) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7509_44882 f_4@@10))) (not (IsWandField_7509_44898 f_4@@10))) (<= (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11917) (o_2@@11 T@Ref) (f_4@@11 T@Field_7509_11970) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_7509_11970 f_4@@11))) (not (IsWandField_7509_11970 f_4@@11))) (<= (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11917) (o_2@@12 T@Ref) (f_4@@12 T@Field_7509_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7509_53 f_4@@12))) (not (IsWandField_7509_53 f_4@@12))) (<= (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11917) (o_2@@13 T@Ref) (f_4@@13 T@Field_18164_3468) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7509_3468 f_4@@13))) (not (IsWandField_7509_3468 f_4@@13))) (<= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11917) (o_2@@14 T@Ref) (f_4@@14 T@Field_11956_18194) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11956_34775 f_4@@14))) (not (IsWandField_11956_38115 f_4@@14))) (<= (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11917) (o_2@@15 T@Ref) (f_4@@15 T@Field_11956_18182) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7557_44065 f_4@@15))) (not (IsWandField_7557_44081 f_4@@15))) (<= (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11917) (o_2@@16 T@Ref) (f_4@@16 T@Field_11969_11970) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7557_11970 f_4@@16))) (not (IsWandField_7557_11970 f_4@@16))) (<= (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11917) (o_2@@17 T@Ref) (f_4@@17 T@Field_11956_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7557_53 f_4@@17))) (not (IsWandField_7557_53 f_4@@17))) (<= (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11917) (o_2@@18 T@Ref) (f_4@@18 T@Field_18806_3773) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7557_3773 f_4@@18))) (not (IsWandField_7557_3773 f_4@@18))) (<= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11917) (o_2@@19 T@Ref) (f_4@@19 T@Field_11956_18194) ) (! (= (HasDirectPerm_11956_18194 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11956_18194 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11917) (o_2@@20 T@Ref) (f_4@@20 T@Field_11956_18182) ) (! (= (HasDirectPerm_11956_33908 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11956_33908 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11917) (o_2@@21 T@Ref) (f_4@@21 T@Field_11969_11970) ) (! (= (HasDirectPerm_11956_11970 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11956_11970 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11917) (o_2@@22 T@Ref) (f_4@@22 T@Field_11956_53) ) (! (= (HasDirectPerm_11956_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11956_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11917) (o_2@@23 T@Ref) (f_4@@23 T@Field_18806_3773) ) (! (= (HasDirectPerm_11956_3468 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11956_3468 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11917) (o_2@@24 T@Ref) (f_4@@24 T@Field_18193_18194) ) (! (= (HasDirectPerm_7509_18194 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7509_18194 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11917) (o_2@@25 T@Ref) (f_4@@25 T@Field_18177_18182) ) (! (= (HasDirectPerm_7509_32773 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7509_32773 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11917) (o_2@@26 T@Ref) (f_4@@26 T@Field_7509_11970) ) (! (= (HasDirectPerm_7509_11970 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7509_11970 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11917) (o_2@@27 T@Ref) (f_4@@27 T@Field_7509_53) ) (! (= (HasDirectPerm_7509_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7509_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11917) (o_2@@28 T@Ref) (f_4@@28 T@Field_18164_3468) ) (! (= (HasDirectPerm_7509_3468 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7509_3468 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) ) (! (IsWandField_7509_3468 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
 :qid |stdinbpl.407:15|
 :skolemid |82|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) ) (! (IsWandField_7522_7523 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.411:15|
 :skolemid |83|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.191:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11896) (ExhaleHeap@@9 T@PolymorphicMapType_11896) (Mask@@30 T@PolymorphicMapType_11917) (o_23@@0 T@Ref) (f_25@@39 T@Field_11956_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_11956_18194 Mask@@30 o_23@@0 f_25@@39) (= (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@10) o_23@@0 f_25@@39) (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@9) o_23@@0 f_25@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| ExhaleHeap@@9) o_23@@0 f_25@@39))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11896) (ExhaleHeap@@10 T@PolymorphicMapType_11896) (Mask@@31 T@PolymorphicMapType_11917) (o_23@@1 T@Ref) (f_25@@40 T@Field_11956_18182) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_11956_33908 Mask@@31 o_23@@1 f_25@@40) (= (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@11) o_23@@1 f_25@@40) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@10) o_23@@1 f_25@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| ExhaleHeap@@10) o_23@@1 f_25@@40))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11896) (ExhaleHeap@@11 T@PolymorphicMapType_11896) (Mask@@32 T@PolymorphicMapType_11917) (o_23@@2 T@Ref) (f_25@@41 T@Field_11969_11970) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_11956_11970 Mask@@32 o_23@@2 f_25@@41) (= (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@12) o_23@@2 f_25@@41) (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@11) o_23@@2 f_25@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| ExhaleHeap@@11) o_23@@2 f_25@@41))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11896) (ExhaleHeap@@12 T@PolymorphicMapType_11896) (Mask@@33 T@PolymorphicMapType_11917) (o_23@@3 T@Ref) (f_25@@42 T@Field_11956_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_11956_53 Mask@@33 o_23@@3 f_25@@42) (= (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@13) o_23@@3 f_25@@42) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@12) o_23@@3 f_25@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| ExhaleHeap@@12) o_23@@3 f_25@@42))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11896) (ExhaleHeap@@13 T@PolymorphicMapType_11896) (Mask@@34 T@PolymorphicMapType_11917) (o_23@@4 T@Ref) (f_25@@43 T@Field_18806_3773) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_11956_3468 Mask@@34 o_23@@4 f_25@@43) (= (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@14) o_23@@4 f_25@@43) (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@13) o_23@@4 f_25@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| ExhaleHeap@@13) o_23@@4 f_25@@43))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11896) (ExhaleHeap@@14 T@PolymorphicMapType_11896) (Mask@@35 T@PolymorphicMapType_11917) (o_23@@5 T@Ref) (f_25@@44 T@Field_18193_18194) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_7509_18194 Mask@@35 o_23@@5 f_25@@44) (= (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@15) o_23@@5 f_25@@44) (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@14) o_23@@5 f_25@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| ExhaleHeap@@14) o_23@@5 f_25@@44))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11896) (ExhaleHeap@@15 T@PolymorphicMapType_11896) (Mask@@36 T@PolymorphicMapType_11917) (o_23@@6 T@Ref) (f_25@@45 T@Field_18177_18182) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_7509_32773 Mask@@36 o_23@@6 f_25@@45) (= (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@16) o_23@@6 f_25@@45) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@15) o_23@@6 f_25@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| ExhaleHeap@@15) o_23@@6 f_25@@45))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11896) (ExhaleHeap@@16 T@PolymorphicMapType_11896) (Mask@@37 T@PolymorphicMapType_11917) (o_23@@7 T@Ref) (f_25@@46 T@Field_7509_11970) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_7509_11970 Mask@@37 o_23@@7 f_25@@46) (= (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@17) o_23@@7 f_25@@46) (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@16) o_23@@7 f_25@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| ExhaleHeap@@16) o_23@@7 f_25@@46))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11896) (ExhaleHeap@@17 T@PolymorphicMapType_11896) (Mask@@38 T@PolymorphicMapType_11917) (o_23@@8 T@Ref) (f_25@@47 T@Field_7509_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_7509_53 Mask@@38 o_23@@8 f_25@@47) (= (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@18) o_23@@8 f_25@@47) (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@17) o_23@@8 f_25@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| ExhaleHeap@@17) o_23@@8 f_25@@47))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11896) (ExhaleHeap@@18 T@PolymorphicMapType_11896) (Mask@@39 T@PolymorphicMapType_11917) (o_23@@9 T@Ref) (f_25@@48 T@Field_18164_3468) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_7509_3468 Mask@@39 o_23@@9 f_25@@48) (= (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@19) o_23@@9 f_25@@48) (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@18) o_23@@9 f_25@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| ExhaleHeap@@18) o_23@@9 f_25@@48))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) ) (!  (not (IsPredicateField_7509_3468 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2)))
 :qid |stdinbpl.415:15|
 :skolemid |84|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) ) (!  (not (IsPredicateField_7522_7523 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3)))
 :qid |stdinbpl.419:15|
 :skolemid |85|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Real) ) (! (= (|wand#sm| arg1@@4 arg2@@4 arg3@@4 arg4@@4) (WandMaskField_7522 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
 :qid |stdinbpl.423:15|
 :skolemid |86|
 :pattern ( (WandMaskField_7522 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_18193_18194) ) (! (= (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_18177_18182) ) (! (= (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_7509_11970) ) (! (= (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_7509_53) ) (! (= (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_18164_3468) ) (! (= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_11956_18194) ) (! (= (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_11956_18182) ) (! (= (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_11969_11970) ) (! (= (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11956_53) ) (! (= (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_18806_3773) ) (! (= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11917) (SummandMask1 T@PolymorphicMapType_11917) (SummandMask2 T@PolymorphicMapType_11917) (o_2@@39 T@Ref) (f_4@@39 T@Field_18193_18194) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11917) (SummandMask1@@0 T@PolymorphicMapType_11917) (SummandMask2@@0 T@PolymorphicMapType_11917) (o_2@@40 T@Ref) (f_4@@40 T@Field_18177_18182) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11917) (SummandMask1@@1 T@PolymorphicMapType_11917) (SummandMask2@@1 T@PolymorphicMapType_11917) (o_2@@41 T@Ref) (f_4@@41 T@Field_7509_11970) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11917) (SummandMask1@@2 T@PolymorphicMapType_11917) (SummandMask2@@2 T@PolymorphicMapType_11917) (o_2@@42 T@Ref) (f_4@@42 T@Field_7509_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11917) (SummandMask1@@3 T@PolymorphicMapType_11917) (SummandMask2@@3 T@PolymorphicMapType_11917) (o_2@@43 T@Ref) (f_4@@43 T@Field_18164_3468) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11917) (SummandMask1@@4 T@PolymorphicMapType_11917) (SummandMask2@@4 T@PolymorphicMapType_11917) (o_2@@44 T@Ref) (f_4@@44 T@Field_11956_18194) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11917) (SummandMask1@@5 T@PolymorphicMapType_11917) (SummandMask2@@5 T@PolymorphicMapType_11917) (o_2@@45 T@Ref) (f_4@@45 T@Field_11956_18182) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11917) (SummandMask1@@6 T@PolymorphicMapType_11917) (SummandMask2@@6 T@PolymorphicMapType_11917) (o_2@@46 T@Ref) (f_4@@46 T@Field_11969_11970) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11917) (SummandMask1@@7 T@PolymorphicMapType_11917) (SummandMask2@@7 T@PolymorphicMapType_11917) (o_2@@47 T@Ref) (f_4@@47 T@Field_11956_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11917) (SummandMask1@@8 T@PolymorphicMapType_11917) (SummandMask2@@8 T@PolymorphicMapType_11917) (o_2@@48 T@Ref) (f_4@@48 T@Field_18806_3773) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11896) (o_27 T@Ref) (f_30 T@Field_18193_18194) (v T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@20) (store (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@20) o_27 f_30 v) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@20) (store (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@20) o_27 f_30 v) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@20) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11896) (o_27@@0 T@Ref) (f_30@@0 T@Field_18177_18182) (v@@0 T@PolymorphicMapType_12445) ) (! (succHeap Heap@@21 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@21) (store (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@21) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@21) (store (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@21) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@21) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11896) (o_27@@1 T@Ref) (f_30@@1 T@Field_18164_3468) (v@@1 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@22) (store (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@22) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@22) (store (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@22) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@22) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11896) (o_27@@2 T@Ref) (f_30@@2 T@Field_7509_11970) (v@@2 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@23) (store (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@23) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@23) (store (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@23) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@23) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11896) (o_27@@3 T@Ref) (f_30@@3 T@Field_7509_53) (v@@3 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@24) (store (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@24) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@24) (store (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@24) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@24) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11896) (o_27@@4 T@Ref) (f_30@@4 T@Field_11956_18194) (v@@4 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@25) (store (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@25) o_27@@4 f_30@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@25) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@25) (store (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@25) o_27@@4 f_30@@4 v@@4)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11896) (o_27@@5 T@Ref) (f_30@@5 T@Field_11956_18182) (v@@5 T@PolymorphicMapType_12445) ) (! (succHeap Heap@@26 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@26) (store (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@26) o_27@@5 f_30@@5 v@@5) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@26) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@26) (store (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@26) o_27@@5 f_30@@5 v@@5) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11896) (o_27@@6 T@Ref) (f_30@@6 T@Field_18806_3773) (v@@6 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@27) (store (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@27) o_27@@6 f_30@@6 v@@6) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@27) (store (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@27) o_27@@6 f_30@@6 v@@6) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@27) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11896) (o_27@@7 T@Ref) (f_30@@7 T@Field_11969_11970) (v@@7 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@28) (store (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@28) o_27@@7 f_30@@7 v@@7) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@28) (store (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@28) o_27@@7 f_30@@7 v@@7) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@28) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11896) (o_27@@8 T@Ref) (f_30@@8 T@Field_11956_53) (v@@8 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_11896 (store (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@29) o_27@@8 f_30@@8 v@@8) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11896 (store (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@29) o_27@@8 f_30@@8 v@@8) (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_53#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_11970#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_32815#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_7509_18194#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_11956_33950#PolymorphicMapType_11896| Heap@@29) (|PolymorphicMapType_11896_11956_18194#PolymorphicMapType_11896| Heap@@29)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.303:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.304:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_27@@9 T@Ref) (f_24 T@Field_11969_11970) (Heap@@30 T@PolymorphicMapType_11896) ) (!  (=> (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@30) o_27@@9 $allocated) (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@30) (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@30) o_27@@9 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11896_7165_7166#PolymorphicMapType_11896| Heap@@30) o_27@@9 f_24))
)))
(assert (forall ((p@@2 T@Field_18193_18194) (v_1@@1 T@FrameType) (q T@Field_18193_18194) (w@@1 T@FrameType) (r T@Field_18193_18194) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18164_18164 p@@2 v_1@@1 q w@@1) (InsidePredicate_18164_18164 q w@@1 r u)) (InsidePredicate_18164_18164 p@@2 v_1@@1 r u))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18164_18164 p@@2 v_1@@1 q w@@1) (InsidePredicate_18164_18164 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_18193_18194) (v_1@@2 T@FrameType) (q@@0 T@Field_18193_18194) (w@@2 T@FrameType) (r@@0 T@Field_11956_18194) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18164_18164 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18164_11956 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_18164_11956 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18164_18164 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18164_11956 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_18193_18194) (v_1@@3 T@FrameType) (q@@1 T@Field_11956_18194) (w@@3 T@FrameType) (r@@1 T@Field_18193_18194) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18164_11956 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11956_18164 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_18164_18164 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18164_11956 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11956_18164 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_18193_18194) (v_1@@4 T@FrameType) (q@@2 T@Field_11956_18194) (w@@4 T@FrameType) (r@@2 T@Field_11956_18194) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18164_11956 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11956_11956 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_18164_11956 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18164_11956 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11956_11956 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_11956_18194) (v_1@@5 T@FrameType) (q@@3 T@Field_18193_18194) (w@@5 T@FrameType) (r@@3 T@Field_18193_18194) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11956_18164 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18164_18164 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_11956_18164 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11956_18164 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18164_18164 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_11956_18194) (v_1@@6 T@FrameType) (q@@4 T@Field_18193_18194) (w@@6 T@FrameType) (r@@4 T@Field_11956_18194) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11956_18164 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18164_11956 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_11956_11956 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11956_18164 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18164_11956 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_11956_18194) (v_1@@7 T@FrameType) (q@@5 T@Field_11956_18194) (w@@7 T@FrameType) (r@@5 T@Field_18193_18194) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11956_11956 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11956_18164 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_11956_18164 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11956_11956 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11956_18164 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_11956_18194) (v_1@@8 T@FrameType) (q@@6 T@Field_11956_18194) (w@@8 T@FrameType) (r@@6 T@Field_11956_18194) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11956_11956 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11956_11956 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_11956_11956 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11956_11956 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11956_11956 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.309:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) ) (!  (=> (= (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@5 arg1_2) (and (= arg2@@5 arg2_2) (and (= arg3@@5 arg3_2) (= arg4@@5 arg4_2)))))
 :qid |stdinbpl.431:15|
 :skolemid |88|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_11917)
(declare-fun x_32 () T@Ref)
(declare-fun y_14 () T@Ref)
(declare-fun Heap@@31 () T@PolymorphicMapType_11896)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun ys () (Array T@Ref Bool))
(declare-fun neverTriggered5 (T@Ref T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_11917)
(declare-fun invRecv4 (T@Ref Real T@Ref Real) T@Ref)
(declare-fun invRecv5 (T@Ref Real T@Ref Real) T@Ref)
(declare-fun qpRange5 (T@Ref Real T@Ref Real) Bool)
(declare-fun getPredWandId_7509_7523 (T@Field_18193_18194) Int)
(declare-fun getPredWandId_7509_53 (T@Field_7509_53) Int)
(declare-fun getPredWandId_7509_11970 (T@Field_7509_11970) Int)
(declare-fun getPredWandId_7509_51996 (T@Field_18177_18182) Int)
(declare-fun getPredWandId_7557_3468 (T@Field_18806_3773) Int)
(declare-fun getPredWandId_7557_7523 (T@Field_11956_18194) Int)
(declare-fun getPredWandId_7557_53 (T@Field_11956_53) Int)
(declare-fun getPredWandId_7557_11970 (T@Field_11969_11970) Int)
(declare-fun getPredWandId_7557_52812 (T@Field_11956_18182) Int)
(declare-fun x_11 () T@Ref)
(declare-fun y_5 () T@Ref)
(declare-fun z () T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(set-info :boogie-vc-id m2)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon22_Then_correct true))
(let ((anon13_correct true))
(let ((anon21_Then_correct  (=> (HasDirectPerm_7509_3468 QPMask@1 null (wand x_32 FullPerm y_14 FullPerm)) (and (=> (= (ControlFlow 0 12) 11) anon22_Then_correct) (=> (= (ControlFlow 0 12) 9) anon13_correct)))))
(let ((anon21_Else_correct  (=> (and (not (HasDirectPerm_7509_3468 QPMask@1 null (wand x_32 FullPerm y_14 FullPerm))) (= (ControlFlow 0 10) 9)) anon13_correct)))
(let ((anon20_Else_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (forall ((x_8_1 T@Ref) (y_6_2 T@Ref) ) (!  (=> (HasDirectPerm_7509_3468 QPMask@1 null (wand x_8_1 FullPerm y_6_2 FullPerm)) (not (= x_8_1 y_6_2)))
 :qid |stdinbpl.845:15|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@1) null (wand x_8_1 FullPerm y_6_2 FullPerm)))
 :pattern ( (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@31) null (wand x_8_1 FullPerm y_6_2 FullPerm)))
)))))
(let ((anon19_Else_correct  (=> (forall ((x_6 T@Ref) (y_4_1 T@Ref) ) (!  (=> (and (select xs x_6) (select ys y_4_1)) (not (= x_6 y_4_1)))
 :qid |stdinbpl.803:20|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@31) null (wand x_6 FullPerm y_4_1 FullPerm)))
)) (=> (and (state Heap@@31 QPMask@1) (state Heap@@31 QPMask@1)) (and (and (=> (= (ControlFlow 0 13) 8) anon20_Else_correct) (=> (= (ControlFlow 0 13) 12) anon21_Then_correct)) (=> (= (ControlFlow 0 13) 10) anon21_Else_correct))))))
(let ((anon19_Then_correct true))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((x_3 T@Ref) (y_1 T@Ref) (x_3_1 T@Ref) (y_1_1 T@Ref) ) (!  (=> (and (and (and (and (and (not (= x_3 x_3_1)) (not (= y_1 y_1_1))) (and (select xs x_3) (select ys y_1))) (and (select xs x_3_1) (select ys y_1_1))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (or (not (= x_3 x_3_1)) (not (= FullPerm FullPerm))) (not (= y_1 y_1_1))) (not (= FullPerm FullPerm))))
 :qid |stdinbpl.760:17|
 :skolemid |107|
 :pattern ( (neverTriggered5 x_3 y_1) (neverTriggered5 x_3_1 y_1_1))
))) (=> (forall ((x_3@@0 T@Ref) (y_1@@0 T@Ref) (x_3_1@@0 T@Ref) (y_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (not (= y_1@@0 y_1_1@@0))) (and (select xs x_3@@0) (select ys y_1@@0))) (and (select xs x_3_1@@0) (select ys y_1_1@@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (or (not (= x_3@@0 x_3_1@@0)) (not (= FullPerm FullPerm))) (not (= y_1@@0 y_1_1@@0))) (not (= FullPerm FullPerm))))
 :qid |stdinbpl.760:17|
 :skolemid |107|
 :pattern ( (neverTriggered5 x_3@@0 y_1@@0) (neverTriggered5 x_3_1@@0 y_1_1@@0))
)) (=> (forall ((x_3@@1 T@Ref) (y_1@@1 T@Ref) ) (!  (=> (and (and (select xs x_3@@1) (select ys y_1@@1)) (< NoPerm FullPerm)) (and (and (= (invRecv4 x_3@@1 FullPerm y_1@@1 FullPerm) x_3@@1) (= (invRecv5 x_3@@1 FullPerm y_1@@1 FullPerm) y_1@@1)) (qpRange5 x_3@@1 FullPerm y_1@@1 FullPerm)))
 :qid |stdinbpl.766:22|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_11896_7509_3468#PolymorphicMapType_11896| Heap@@31) null (wand x_3@@1 FullPerm y_1@@1 FullPerm)))
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@0) null (wand x_3@@1 FullPerm y_1@@1 FullPerm)))
 :pattern ( (select xs x_3@@1) (select ys y_1@@1))
)) (=> (and (forall ((arg_0 T@Ref) (arg_1_2 Real) (arg_2_1 T@Ref) (arg_3_1 Real) ) (!  (=> (and (and (and (select xs (invRecv4 arg_0 arg_1_2 arg_2_1 arg_3_1)) (select ys (invRecv5 arg_0 arg_1_2 arg_2_1 arg_3_1))) (< NoPerm FullPerm)) (qpRange5 arg_0 arg_1_2 arg_2_1 arg_3_1)) (and (and (and (= (invRecv4 arg_0 arg_1_2 arg_2_1 arg_3_1) arg_0) (= FullPerm arg_1_2)) (= (invRecv5 arg_0 arg_1_2 arg_2_1 arg_3_1) arg_2_1)) (= FullPerm arg_3_1)))
 :qid |stdinbpl.770:22|
 :skolemid |109|
 :pattern ( (invRecv4 arg_0 arg_1_2 arg_2_1 arg_3_1) (invRecv5 arg_0 arg_1_2 arg_2_1 arg_3_1))
)) (forall ((arg_0@@0 T@Ref) (arg_1_2@@0 Real) (arg_2_1@@0 T@Ref) (arg_3_1@@0 Real) ) (!  (=> (and (and (and (select xs (invRecv4 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (select ys (invRecv5 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0))) (< NoPerm FullPerm)) (qpRange5 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (and (=> (< NoPerm FullPerm) (and (and (and (= (invRecv4 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0) arg_0@@0) (= FullPerm arg_1_2@@0)) (= (invRecv5 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0) arg_2_1@@0)) (= FullPerm arg_3_1@@0))) (= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@1) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (+ (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@0) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) FullPerm))))
 :qid |stdinbpl.776:22|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@1) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_18164_3468) ) (!  (=> (or (or (not (= o_4 null)) (not (IsWandField_7509_3468 f_5))) (not (= (getPredWandId_7509_3468 f_5) 0))) (= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@0) o_4 f_5) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@1) o_4 f_5)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@0) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@1) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_18193_18194) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsWandField_7522_7523 f_5@@0))) (not (= (getPredWandId_7509_7523 f_5@@0) 0))) (= (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| QPMask@0) o_4@@0 f_5@@0) (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| QPMask@1) o_4@@0 f_5@@0)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| QPMask@0) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| QPMask@1) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_7509_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsWandField_7509_53 f_5@@1))) (not (= (getPredWandId_7509_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| QPMask@0) o_4@@1 f_5@@1) (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| QPMask@1) o_4@@1 f_5@@1)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| QPMask@0) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| QPMask@1) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_7509_11970) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsWandField_7509_11970 f_5@@2))) (not (= (getPredWandId_7509_11970 f_5@@2) 0))) (= (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| QPMask@0) o_4@@2 f_5@@2) (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| QPMask@1) o_4@@2 f_5@@2)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| QPMask@0) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| QPMask@1) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_18177_18182) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsWandField_7509_44898 f_5@@3))) (not (= (getPredWandId_7509_51996 f_5@@3) 0))) (= (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| QPMask@0) o_4@@3 f_5@@3) (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| QPMask@1) o_4@@3 f_5@@3)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| QPMask@0) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| QPMask@1) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_18806_3773) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsWandField_7557_3773 f_5@@4))) (not (= (getPredWandId_7557_3468 f_5@@4) 0))) (= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) o_4@@4 f_5@@4) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@1) o_4@@4 f_5@@4)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@1) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_11956_18194) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsWandField_11956_38115 f_5@@5))) (not (= (getPredWandId_7557_7523 f_5@@5) 0))) (= (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| QPMask@0) o_4@@5 f_5@@5) (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| QPMask@1) o_4@@5 f_5@@5)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| QPMask@0) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| QPMask@1) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_11956_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsWandField_7557_53 f_5@@6))) (not (= (getPredWandId_7557_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| QPMask@0) o_4@@6 f_5@@6) (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| QPMask@1) o_4@@6 f_5@@6)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| QPMask@0) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| QPMask@1) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_11969_11970) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsWandField_7557_11970 f_5@@7))) (not (= (getPredWandId_7557_11970 f_5@@7) 0))) (= (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| QPMask@0) o_4@@7 f_5@@7) (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| QPMask@1) o_4@@7 f_5@@7)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| QPMask@0) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| QPMask@1) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_11956_18182) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsWandField_7557_44081 f_5@@8))) (not (= (getPredWandId_7557_52812 f_5@@8) 0))) (= (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| QPMask@0) o_4@@8 f_5@@8) (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| QPMask@1) o_4@@8 f_5@@8)))
 :qid |stdinbpl.782:29|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| QPMask@0) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| QPMask@1) o_4@@8 f_5@@8))
))) (and (and (forall ((arg_0@@1 T@Ref) (arg_1_2@@1 Real) (arg_2_1@@1 T@Ref) (arg_3_1@@1 Real) ) (!  (=> (not (and (and (and (select xs (invRecv4 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)) (select ys (invRecv5 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1))) (< NoPerm FullPerm)) (qpRange5 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1))) (= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@1) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@0) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1))))
 :qid |stdinbpl.786:22|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@1) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)))
)) (state Heap@@31 QPMask@1)) (and (state Heap@@31 QPMask@1) (state Heap@@31 QPMask@1)))) (and (=> (= (ControlFlow 0 14) 6) anon19_Then_correct) (=> (= (ControlFlow 0 14) 13) anon19_Else_correct)))))))))
(let ((anon18_Then_correct true))
(let ((anon6_correct true))
(let ((anon17_Then_correct  (=> (and (select xs x_11) (select ys y_5)) (and (=> (= (ControlFlow 0 5) 4) anon18_Then_correct) (=> (= (ControlFlow 0 5) 2) anon6_correct)))))
(let ((anon17_Else_correct  (=> (and (not (and (select xs x_11) (select ys y_5))) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (= x_1 z)) (= x_1_1 z)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.688:15|
 :skolemid |101|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (= x_1@@0 z)) (= x_1_1@@0 z)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.688:15|
 :skolemid |101|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (= x_1@@1 z) (< NoPerm FullPerm)) (and (qpRange3 x_1@@1) (= (invRecv3 x_1@@1) x_1@@1)))
 :qid |stdinbpl.694:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@31) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) x_1@@1 f_7))
)) (forall ((o_4@@9 T@Ref) ) (!  (=> (and (and (= (invRecv3 o_4@@9) z) (< NoPerm FullPerm)) (qpRange3 o_4@@9)) (= (invRecv3 o_4@@9) o_4@@9))
 :qid |stdinbpl.698:22|
 :skolemid |103|
 :pattern ( (invRecv3 o_4@@9))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (= x_1@@2 z) (not (= x_1@@2 null)))
 :qid |stdinbpl.704:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11896_7557_3773#PolymorphicMapType_11896| Heap@@31) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) x_1@@2 f_7))
)) (forall ((o_4@@10 T@Ref) ) (!  (and (=> (and (and (= (invRecv3 o_4@@10) z) (< NoPerm FullPerm)) (qpRange3 o_4@@10)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@10) o_4@@10)) (= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) o_4@@10 f_7) (+ (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ZeroMask) o_4@@10 f_7) FullPerm)))) (=> (not (and (and (= (invRecv3 o_4@@10) z) (< NoPerm FullPerm)) (qpRange3 o_4@@10))) (= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) o_4@@10 f_7) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ZeroMask) o_4@@10 f_7))))
 :qid |stdinbpl.710:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) o_4@@10 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@11 T@Ref) (f_5@@9 T@Field_11956_53) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| ZeroMask) o_4@@11 f_5@@9) (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| QPMask@0) o_4@@11 f_5@@9)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| ZeroMask) o_4@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_11917_7557_53#PolymorphicMapType_11917| QPMask@0) o_4@@11 f_5@@9))
)) (forall ((o_4@@12 T@Ref) (f_5@@10 T@Field_11969_11970) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| ZeroMask) o_4@@12 f_5@@10) (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| QPMask@0) o_4@@12 f_5@@10)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| ZeroMask) o_4@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_11917_7557_11970#PolymorphicMapType_11917| QPMask@0) o_4@@12 f_5@@10))
))) (forall ((o_4@@13 T@Ref) (f_5@@11 T@Field_18806_3773) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ZeroMask) o_4@@13 f_5@@11) (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) o_4@@13 f_5@@11)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| ZeroMask) o_4@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_11917_7557_3773#PolymorphicMapType_11917| QPMask@0) o_4@@13 f_5@@11))
))) (forall ((o_4@@14 T@Ref) (f_5@@12 T@Field_11956_18182) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| ZeroMask) o_4@@14 f_5@@12) (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| QPMask@0) o_4@@14 f_5@@12)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| ZeroMask) o_4@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_11917_7557_42261#PolymorphicMapType_11917| QPMask@0) o_4@@14 f_5@@12))
))) (forall ((o_4@@15 T@Ref) (f_5@@13 T@Field_11956_18194) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| ZeroMask) o_4@@15 f_5@@13) (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| QPMask@0) o_4@@15 f_5@@13)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| ZeroMask) o_4@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_11917_7557_18194#PolymorphicMapType_11917| QPMask@0) o_4@@15 f_5@@13))
))) (forall ((o_4@@16 T@Ref) (f_5@@14 T@Field_7509_53) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| ZeroMask) o_4@@16 f_5@@14) (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| QPMask@0) o_4@@16 f_5@@14)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| ZeroMask) o_4@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_11917_7509_53#PolymorphicMapType_11917| QPMask@0) o_4@@16 f_5@@14))
))) (forall ((o_4@@17 T@Ref) (f_5@@15 T@Field_7509_11970) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| ZeroMask) o_4@@17 f_5@@15) (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| QPMask@0) o_4@@17 f_5@@15)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| ZeroMask) o_4@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_11917_7509_11970#PolymorphicMapType_11917| QPMask@0) o_4@@17 f_5@@15))
))) (forall ((o_4@@18 T@Ref) (f_5@@16 T@Field_18164_3468) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| ZeroMask) o_4@@18 f_5@@16) (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@0) o_4@@18 f_5@@16)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| ZeroMask) o_4@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_11917_7509_3468#PolymorphicMapType_11917| QPMask@0) o_4@@18 f_5@@16))
))) (forall ((o_4@@19 T@Ref) (f_5@@17 T@Field_18177_18182) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| ZeroMask) o_4@@19 f_5@@17) (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| QPMask@0) o_4@@19 f_5@@17)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| ZeroMask) o_4@@19 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_11917_7509_42675#PolymorphicMapType_11917| QPMask@0) o_4@@19 f_5@@17))
))) (forall ((o_4@@20 T@Ref) (f_5@@18 T@Field_18193_18194) ) (!  (=> true (= (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| ZeroMask) o_4@@20 f_5@@18) (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| QPMask@0) o_4@@20 f_5@@18)))
 :qid |stdinbpl.714:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| ZeroMask) o_4@@20 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_11917_7509_18194#PolymorphicMapType_11917| QPMask@0) o_4@@20 f_5@@18))
))) (state Heap@@31 QPMask@0)) (and (state Heap@@31 QPMask@0) (state Heap@@31 QPMask@0))) (and (and (=> (= (ControlFlow 0 16) 14) anon16_Else_correct) (=> (= (ControlFlow 0 16) 5) anon17_Then_correct)) (=> (= (ControlFlow 0 16) 3) anon17_Else_correct))))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@31 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_11896_7162_53#PolymorphicMapType_11896| Heap@@31) z $allocated)) (and (=> (= (ControlFlow 0 18) 1) anon15_Then_correct) (=> (= (ControlFlow 0 18) 16) anon15_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
