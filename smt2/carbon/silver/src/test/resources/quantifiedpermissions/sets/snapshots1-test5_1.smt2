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
(declare-sort T@Field_20780_53 0)
(declare-sort T@Field_20793_20794 0)
(declare-sort T@Field_27041_3742 0)
(declare-sort T@Field_29699_29700 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_31750_31755 0)
(declare-sort T@Field_12736_12890 0)
(declare-sort T@Field_12736_31755 0)
(declare-sort T@Field_12889_3742 0)
(declare-sort T@Field_12889_53 0)
(declare-sort T@Field_12889_20794 0)
(declare-datatypes ((T@PolymorphicMapType_20741 0)) (((PolymorphicMapType_20741 (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| (Array T@Ref T@Field_27041_3742 Real)) (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| (Array T@Ref T@Field_29699_29700 Real)) (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| (Array T@Ref T@Field_12736_12890 Real)) (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| (Array T@Ref T@Field_20780_53 Real)) (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| (Array T@Ref T@Field_20793_20794 Real)) (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| (Array T@Ref T@Field_12736_31755 Real)) (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| (Array T@Ref T@Field_12889_3742 Real)) (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| (Array T@Ref T@Field_12889_53 Real)) (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| (Array T@Ref T@Field_12889_20794 Real)) (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| (Array T@Ref T@Field_31750_31755 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21269 0)) (((PolymorphicMapType_21269 (|PolymorphicMapType_21269_12736_3742#PolymorphicMapType_21269| (Array T@Ref T@Field_27041_3742 Bool)) (|PolymorphicMapType_21269_12736_53#PolymorphicMapType_21269| (Array T@Ref T@Field_20780_53 Bool)) (|PolymorphicMapType_21269_12736_20794#PolymorphicMapType_21269| (Array T@Ref T@Field_20793_20794 Bool)) (|PolymorphicMapType_21269_12736_29700#PolymorphicMapType_21269| (Array T@Ref T@Field_12736_12890 Bool)) (|PolymorphicMapType_21269_12736_66044#PolymorphicMapType_21269| (Array T@Ref T@Field_12736_31755 Bool)) (|PolymorphicMapType_21269_29699_3742#PolymorphicMapType_21269| (Array T@Ref T@Field_12889_3742 Bool)) (|PolymorphicMapType_21269_29699_53#PolymorphicMapType_21269| (Array T@Ref T@Field_12889_53 Bool)) (|PolymorphicMapType_21269_29699_20794#PolymorphicMapType_21269| (Array T@Ref T@Field_12889_20794 Bool)) (|PolymorphicMapType_21269_29699_29700#PolymorphicMapType_21269| (Array T@Ref T@Field_29699_29700 Bool)) (|PolymorphicMapType_21269_29699_67092#PolymorphicMapType_21269| (Array T@Ref T@Field_31750_31755 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20720 0)) (((PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| (Array T@Ref T@Field_20780_53 Bool)) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| (Array T@Ref T@Field_20793_20794 T@Ref)) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| (Array T@Ref T@Field_27041_3742 Int)) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| (Array T@Ref T@Field_29699_29700 T@FrameType)) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| (Array T@Ref T@Field_31750_31755 T@PolymorphicMapType_21269)) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| (Array T@Ref T@Field_12736_12890 T@FrameType)) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| (Array T@Ref T@Field_12736_31755 T@PolymorphicMapType_21269)) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| (Array T@Ref T@Field_12889_3742 Int)) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| (Array T@Ref T@Field_12889_53 Bool)) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| (Array T@Ref T@Field_12889_20794 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_20780_53)
(declare-fun f_7 () T@Field_27041_3742)
(declare-fun succHeap (T@PolymorphicMapType_20720 T@PolymorphicMapType_20720) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_20720 T@PolymorphicMapType_20720) Bool)
(declare-fun state (T@PolymorphicMapType_20720 T@PolymorphicMapType_20741) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_20741) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_21269)
(declare-fun |fun2'| (T@PolymorphicMapType_20720 (Array T@Ref Bool) T@Ref) Int)
(declare-fun |fun2#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun P ((Array T@Ref Bool) T@Ref) T@Field_29699_29700)
(declare-fun IsPredicateField_12889_12890 (T@Field_29699_29700) Bool)
(declare-fun |fun1'| (T@PolymorphicMapType_20720 (Array T@Ref Bool) T@Ref) Int)
(declare-fun dummyFunction_4147 (Int) Bool)
(declare-fun |fun1#triggerStateless| ((Array T@Ref Bool) T@Ref) Int)
(declare-fun |fun2#triggerStateless| ((Array T@Ref Bool) T@Ref) Int)
(declare-fun |P#trigger_12889| (T@PolymorphicMapType_20720 T@Field_29699_29700) Bool)
(declare-fun |P#everUsed_12889| (T@Field_29699_29700) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_20720 T@PolymorphicMapType_20720 T@PolymorphicMapType_20741) Bool)
(declare-fun PredicateMaskField_12889 (T@Field_29699_29700) T@Field_31750_31755)
(declare-fun HasDirectPerm_12889_12890 (T@PolymorphicMapType_20741 T@Ref T@Field_29699_29700) Bool)
(declare-fun IsPredicateField_12736_64572 (T@Field_12736_12890) Bool)
(declare-fun PredicateMaskField_12736 (T@Field_12736_12890) T@Field_12736_31755)
(declare-fun HasDirectPerm_12736_12890 (T@PolymorphicMapType_20741 T@Ref T@Field_12736_12890) Bool)
(declare-fun IsWandField_12889_68257 (T@Field_29699_29700) Bool)
(declare-fun WandMaskField_12889 (T@Field_29699_29700) T@Field_31750_31755)
(declare-fun IsWandField_12736_67900 (T@Field_12736_12890) Bool)
(declare-fun WandMaskField_12736 (T@Field_12736_12890) T@Field_12736_31755)
(declare-fun |P#sm| ((Array T@Ref Bool) T@Ref) T@Field_31750_31755)
(declare-fun dummyHeap () T@PolymorphicMapType_20720)
(declare-fun ZeroMask () T@PolymorphicMapType_20741)
(declare-fun fun1 (T@PolymorphicMapType_20720 (Array T@Ref Bool) T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_29699_29699 (T@Field_29699_29700 T@FrameType T@Field_29699_29700 T@FrameType) Bool)
(declare-fun InsidePredicate_20780_20780 (T@Field_12736_12890 T@FrameType T@Field_12736_12890 T@FrameType) Bool)
(declare-fun IsPredicateField_12736_3742 (T@Field_27041_3742) Bool)
(declare-fun IsWandField_12736_3742 (T@Field_27041_3742) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12889_75189 (T@Field_31750_31755) Bool)
(declare-fun IsWandField_12889_75205 (T@Field_31750_31755) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12889_20794 (T@Field_12889_20794) Bool)
(declare-fun IsWandField_12889_20794 (T@Field_12889_20794) Bool)
(declare-fun IsPredicateField_12889_53 (T@Field_12889_53) Bool)
(declare-fun IsWandField_12889_53 (T@Field_12889_53) Bool)
(declare-fun IsPredicateField_12889_3742 (T@Field_12889_3742) Bool)
(declare-fun IsWandField_12889_3742 (T@Field_12889_3742) Bool)
(declare-fun IsPredicateField_12736_74358 (T@Field_12736_31755) Bool)
(declare-fun IsWandField_12736_74374 (T@Field_12736_31755) Bool)
(declare-fun IsPredicateField_12736_20794 (T@Field_20793_20794) Bool)
(declare-fun IsWandField_12736_20794 (T@Field_20793_20794) Bool)
(declare-fun IsPredicateField_12736_53 (T@Field_20780_53) Bool)
(declare-fun IsWandField_12736_53 (T@Field_20780_53) Bool)
(declare-fun fun2 (T@PolymorphicMapType_20720 (Array T@Ref Bool) T@Ref) Int)
(declare-fun HasDirectPerm_12889_64327 (T@PolymorphicMapType_20741 T@Ref T@Field_31750_31755) Bool)
(declare-fun HasDirectPerm_12889_20794 (T@PolymorphicMapType_20741 T@Ref T@Field_12889_20794) Bool)
(declare-fun HasDirectPerm_12889_53 (T@PolymorphicMapType_20741 T@Ref T@Field_12889_53) Bool)
(declare-fun HasDirectPerm_12889_3742 (T@PolymorphicMapType_20741 T@Ref T@Field_12889_3742) Bool)
(declare-fun HasDirectPerm_12736_63186 (T@PolymorphicMapType_20741 T@Ref T@Field_12736_31755) Bool)
(declare-fun HasDirectPerm_12736_20794 (T@PolymorphicMapType_20741 T@Ref T@Field_20793_20794) Bool)
(declare-fun HasDirectPerm_12736_53 (T@PolymorphicMapType_20741 T@Ref T@Field_20780_53) Bool)
(declare-fun HasDirectPerm_12736_3742 (T@PolymorphicMapType_20741 T@Ref T@Field_27041_3742) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun1#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Int)
(declare-fun FrameFragment_3975 (Int) T@FrameType)
(declare-fun |fun1#condqp1| (T@PolymorphicMapType_20720 (Array T@Ref Bool) T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_20741 T@PolymorphicMapType_20741 T@PolymorphicMapType_20741) Bool)
(declare-fun |sk_fun1#condqp1| (Int Int) T@Ref)
(declare-fun |P#condqp2| (T@PolymorphicMapType_20720 (Array T@Ref Bool) T@Ref) Int)
(declare-fun |sk_P#condqp2| (Int Int) T@Ref)
(declare-fun getPredWandId_12889_12890 (T@Field_29699_29700) Int)
(declare-fun InsidePredicate_29699_20780 (T@Field_29699_29700 T@FrameType T@Field_12736_12890 T@FrameType) Bool)
(declare-fun InsidePredicate_20780_29699 (T@Field_12736_12890 T@FrameType T@Field_29699_29700 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_20720) (Heap1 T@PolymorphicMapType_20720) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_20720) (Mask T@PolymorphicMapType_20741) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_20720) (Heap1@@0 T@PolymorphicMapType_20720) (Heap2 T@PolymorphicMapType_20720) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_31750_31755) ) (!  (not (select (|PolymorphicMapType_21269_29699_67092#PolymorphicMapType_21269| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_29699_67092#PolymorphicMapType_21269| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_29699_29700) ) (!  (not (select (|PolymorphicMapType_21269_29699_29700#PolymorphicMapType_21269| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_29699_29700#PolymorphicMapType_21269| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12889_20794) ) (!  (not (select (|PolymorphicMapType_21269_29699_20794#PolymorphicMapType_21269| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_29699_20794#PolymorphicMapType_21269| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12889_53) ) (!  (not (select (|PolymorphicMapType_21269_29699_53#PolymorphicMapType_21269| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_29699_53#PolymorphicMapType_21269| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12889_3742) ) (!  (not (select (|PolymorphicMapType_21269_29699_3742#PolymorphicMapType_21269| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_29699_3742#PolymorphicMapType_21269| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12736_31755) ) (!  (not (select (|PolymorphicMapType_21269_12736_66044#PolymorphicMapType_21269| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_12736_66044#PolymorphicMapType_21269| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12736_12890) ) (!  (not (select (|PolymorphicMapType_21269_12736_29700#PolymorphicMapType_21269| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_12736_29700#PolymorphicMapType_21269| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_20793_20794) ) (!  (not (select (|PolymorphicMapType_21269_12736_20794#PolymorphicMapType_21269| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_12736_20794#PolymorphicMapType_21269| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20780_53) ) (!  (not (select (|PolymorphicMapType_21269_12736_53#PolymorphicMapType_21269| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_12736_53#PolymorphicMapType_21269| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_27041_3742) ) (!  (not (select (|PolymorphicMapType_21269_12736_3742#PolymorphicMapType_21269| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21269_12736_3742#PolymorphicMapType_21269| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_20720) (Mask@@0 T@PolymorphicMapType_20741) (xs (Array T@Ref Bool)) (x T@Ref) ) (!  (=> (state Heap@@0 Mask@@0) (= (|fun2'| Heap@@0 xs x) (|fun2#frame| (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@0) null (P xs x)) xs x)))
 :qid |stdinbpl.596:15|
 :skolemid |96|
 :pattern ( (state Heap@@0 Mask@@0) (|fun2'| Heap@@0 xs x))
)))
(assert (forall ((xs@@0 (Array T@Ref Bool)) (x@@0 T@Ref) ) (! (IsPredicateField_12889_12890 (P xs@@0 x@@0))
 :qid |stdinbpl.712:15|
 :skolemid |106|
 :pattern ( (P xs@@0 x@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_20720) (xs@@1 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (dummyFunction_4147 (|fun1#triggerStateless| xs@@1 x@@1))
 :qid |stdinbpl.471:15|
 :skolemid |83|
 :pattern ( (|fun1'| Heap@@1 xs@@1 x@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_20720) (xs@@2 (Array T@Ref Bool)) (x@@2 T@Ref) ) (! (dummyFunction_4147 (|fun2#triggerStateless| xs@@2 x@@2))
 :qid |stdinbpl.583:15|
 :skolemid |94|
 :pattern ( (|fun2'| Heap@@2 xs@@2 x@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_20720) (xs@@3 (Array T@Ref Bool)) (x@@3 T@Ref) ) (! (|P#everUsed_12889| (P xs@@3 x@@3))
 :qid |stdinbpl.731:15|
 :skolemid |110|
 :pattern ( (|P#trigger_12889| Heap@@3 (P xs@@3 x@@3)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.358:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.361:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_20720) (ExhaleHeap T@PolymorphicMapType_20720) (Mask@@1 T@PolymorphicMapType_20741) (pm_f_2 T@Field_29699_29700) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_12889_12890 Mask@@1 null pm_f_2) (IsPredicateField_12889_12890 pm_f_2)) (= (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@4) null (PredicateMaskField_12889 pm_f_2)) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap) null (PredicateMaskField_12889 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_12889_12890 pm_f_2) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap) null (PredicateMaskField_12889 pm_f_2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_20720) (ExhaleHeap@@0 T@PolymorphicMapType_20720) (Mask@@2 T@PolymorphicMapType_20741) (pm_f_2@@0 T@Field_12736_12890) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_12736_12890 Mask@@2 null pm_f_2@@0) (IsPredicateField_12736_64572 pm_f_2@@0)) (= (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@5) null (PredicateMaskField_12736 pm_f_2@@0)) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@0) null (PredicateMaskField_12736 pm_f_2@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_12736_64572 pm_f_2@@0) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@0) null (PredicateMaskField_12736 pm_f_2@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_20720) (ExhaleHeap@@1 T@PolymorphicMapType_20720) (Mask@@3 T@PolymorphicMapType_20741) (pm_f_2@@1 T@Field_29699_29700) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_12889_12890 Mask@@3 null pm_f_2@@1) (IsWandField_12889_68257 pm_f_2@@1)) (= (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@6) null (WandMaskField_12889 pm_f_2@@1)) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@1) null (WandMaskField_12889 pm_f_2@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_12889_68257 pm_f_2@@1) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@1) null (WandMaskField_12889 pm_f_2@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_20720) (ExhaleHeap@@2 T@PolymorphicMapType_20720) (Mask@@4 T@PolymorphicMapType_20741) (pm_f_2@@2 T@Field_12736_12890) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_12736_12890 Mask@@4 null pm_f_2@@2) (IsWandField_12736_67900 pm_f_2@@2)) (= (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@7) null (WandMaskField_12736 pm_f_2@@2)) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@2) null (WandMaskField_12736 pm_f_2@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_12736_67900 pm_f_2@@2) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@2) null (WandMaskField_12736 pm_f_2@@2)))
)))
(assert (forall ((xs@@4 (Array T@Ref Bool)) (x@@4 T@Ref) (xs2 (Array T@Ref Bool)) (x2 T@Ref) ) (!  (=> (= (P xs@@4 x@@4) (P xs2 x2)) (and (= xs@@4 xs2) (= x@@4 x2)))
 :qid |stdinbpl.722:15|
 :skolemid |108|
 :pattern ( (P xs@@4 x@@4) (P xs2 x2))
)))
(assert (forall ((xs@@5 (Array T@Ref Bool)) (x@@5 T@Ref) (xs2@@0 (Array T@Ref Bool)) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| xs@@5 x@@5) (|P#sm| xs2@@0 x2@@0)) (and (= xs@@5 xs2@@0) (= x@@5 x2@@0)))
 :qid |stdinbpl.726:15|
 :skolemid |109|
 :pattern ( (|P#sm| xs@@5 x@@5) (|P#sm| xs2@@0 x2@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_20720) (ExhaleHeap@@3 T@PolymorphicMapType_20720) (Mask@@5 T@PolymorphicMapType_20741) (pm_f_2@@3 T@Field_29699_29700) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_12889_12890 Mask@@5 null pm_f_2@@3) (IsPredicateField_12889_12890 pm_f_2@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_14 T@Field_27041_3742) ) (!  (=> (select (|PolymorphicMapType_21269_12736_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2 f_14) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@8) o2_2 f_14) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2 f_14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2 f_14))
)) (forall ((o2_2@@0 T@Ref) (f_14@@0 T@Field_20780_53) ) (!  (=> (select (|PolymorphicMapType_21269_12736_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@0 f_14@@0) (= (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@8) o2_2@@0 f_14@@0) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@0 f_14@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@0 f_14@@0))
))) (forall ((o2_2@@1 T@Ref) (f_14@@1 T@Field_20793_20794) ) (!  (=> (select (|PolymorphicMapType_21269_12736_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@1 f_14@@1) (= (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@8) o2_2@@1 f_14@@1) (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@1 f_14@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@1 f_14@@1))
))) (forall ((o2_2@@2 T@Ref) (f_14@@2 T@Field_12736_12890) ) (!  (=> (select (|PolymorphicMapType_21269_12736_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@2 f_14@@2) (= (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@8) o2_2@@2 f_14@@2) (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@2 f_14@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@2 f_14@@2))
))) (forall ((o2_2@@3 T@Ref) (f_14@@3 T@Field_12736_31755) ) (!  (=> (select (|PolymorphicMapType_21269_12736_66044#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@3 f_14@@3) (= (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@8) o2_2@@3 f_14@@3) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@3 f_14@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@3 f_14@@3))
))) (forall ((o2_2@@4 T@Ref) (f_14@@4 T@Field_12889_3742) ) (!  (=> (select (|PolymorphicMapType_21269_29699_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@4 f_14@@4) (= (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@8) o2_2@@4 f_14@@4) (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@4 f_14@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@4 f_14@@4))
))) (forall ((o2_2@@5 T@Ref) (f_14@@5 T@Field_12889_53) ) (!  (=> (select (|PolymorphicMapType_21269_29699_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@5 f_14@@5) (= (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@8) o2_2@@5 f_14@@5) (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@5 f_14@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@5 f_14@@5))
))) (forall ((o2_2@@6 T@Ref) (f_14@@6 T@Field_12889_20794) ) (!  (=> (select (|PolymorphicMapType_21269_29699_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@6 f_14@@6) (= (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@8) o2_2@@6 f_14@@6) (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@6 f_14@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@6 f_14@@6))
))) (forall ((o2_2@@7 T@Ref) (f_14@@7 T@Field_29699_29700) ) (!  (=> (select (|PolymorphicMapType_21269_29699_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@7 f_14@@7) (= (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@8) o2_2@@7 f_14@@7) (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@7 f_14@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@7 f_14@@7))
))) (forall ((o2_2@@8 T@Ref) (f_14@@8 T@Field_31750_31755) ) (!  (=> (select (|PolymorphicMapType_21269_29699_67092#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) null (PredicateMaskField_12889 pm_f_2@@3))) o2_2@@8 f_14@@8) (= (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@8) o2_2@@8 f_14@@8) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@8 f_14@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@3) o2_2@@8 f_14@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_12889_12890 pm_f_2@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_20720) (ExhaleHeap@@4 T@PolymorphicMapType_20720) (Mask@@6 T@PolymorphicMapType_20741) (pm_f_2@@4 T@Field_12736_12890) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_12736_12890 Mask@@6 null pm_f_2@@4) (IsPredicateField_12736_64572 pm_f_2@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@9 T@Ref) (f_14@@9 T@Field_27041_3742) ) (!  (=> (select (|PolymorphicMapType_21269_12736_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@9 f_14@@9) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@9) o2_2@@9 f_14@@9) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@9 f_14@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@9 f_14@@9))
)) (forall ((o2_2@@10 T@Ref) (f_14@@10 T@Field_20780_53) ) (!  (=> (select (|PolymorphicMapType_21269_12736_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@10 f_14@@10) (= (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@9) o2_2@@10 f_14@@10) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@10 f_14@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@10 f_14@@10))
))) (forall ((o2_2@@11 T@Ref) (f_14@@11 T@Field_20793_20794) ) (!  (=> (select (|PolymorphicMapType_21269_12736_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@11 f_14@@11) (= (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@9) o2_2@@11 f_14@@11) (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@11 f_14@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@11 f_14@@11))
))) (forall ((o2_2@@12 T@Ref) (f_14@@12 T@Field_12736_12890) ) (!  (=> (select (|PolymorphicMapType_21269_12736_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@12 f_14@@12) (= (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@9) o2_2@@12 f_14@@12) (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@12 f_14@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@12 f_14@@12))
))) (forall ((o2_2@@13 T@Ref) (f_14@@13 T@Field_12736_31755) ) (!  (=> (select (|PolymorphicMapType_21269_12736_66044#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@13 f_14@@13) (= (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) o2_2@@13 f_14@@13) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@13 f_14@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@13 f_14@@13))
))) (forall ((o2_2@@14 T@Ref) (f_14@@14 T@Field_12889_3742) ) (!  (=> (select (|PolymorphicMapType_21269_29699_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@14 f_14@@14) (= (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@9) o2_2@@14 f_14@@14) (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@14 f_14@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@14 f_14@@14))
))) (forall ((o2_2@@15 T@Ref) (f_14@@15 T@Field_12889_53) ) (!  (=> (select (|PolymorphicMapType_21269_29699_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@15 f_14@@15) (= (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@9) o2_2@@15 f_14@@15) (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@15 f_14@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@15 f_14@@15))
))) (forall ((o2_2@@16 T@Ref) (f_14@@16 T@Field_12889_20794) ) (!  (=> (select (|PolymorphicMapType_21269_29699_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@16 f_14@@16) (= (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@9) o2_2@@16 f_14@@16) (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@16 f_14@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@16 f_14@@16))
))) (forall ((o2_2@@17 T@Ref) (f_14@@17 T@Field_29699_29700) ) (!  (=> (select (|PolymorphicMapType_21269_29699_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@17 f_14@@17) (= (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@9) o2_2@@17 f_14@@17) (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@17 f_14@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@17 f_14@@17))
))) (forall ((o2_2@@18 T@Ref) (f_14@@18 T@Field_31750_31755) ) (!  (=> (select (|PolymorphicMapType_21269_29699_67092#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@9) null (PredicateMaskField_12736 pm_f_2@@4))) o2_2@@18 f_14@@18) (= (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@9) o2_2@@18 f_14@@18) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@18 f_14@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@4) o2_2@@18 f_14@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_12736_64572 pm_f_2@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_20720) (ExhaleHeap@@5 T@PolymorphicMapType_20720) (Mask@@7 T@PolymorphicMapType_20741) (pm_f_2@@5 T@Field_29699_29700) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_12889_12890 Mask@@7 null pm_f_2@@5) (IsWandField_12889_68257 pm_f_2@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@19 T@Ref) (f_14@@19 T@Field_27041_3742) ) (!  (=> (select (|PolymorphicMapType_21269_12736_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@19 f_14@@19) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@10) o2_2@@19 f_14@@19) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@19 f_14@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@19 f_14@@19))
)) (forall ((o2_2@@20 T@Ref) (f_14@@20 T@Field_20780_53) ) (!  (=> (select (|PolymorphicMapType_21269_12736_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@20 f_14@@20) (= (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@10) o2_2@@20 f_14@@20) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@20 f_14@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@20 f_14@@20))
))) (forall ((o2_2@@21 T@Ref) (f_14@@21 T@Field_20793_20794) ) (!  (=> (select (|PolymorphicMapType_21269_12736_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@21 f_14@@21) (= (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@10) o2_2@@21 f_14@@21) (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@21 f_14@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@21 f_14@@21))
))) (forall ((o2_2@@22 T@Ref) (f_14@@22 T@Field_12736_12890) ) (!  (=> (select (|PolymorphicMapType_21269_12736_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@22 f_14@@22) (= (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@10) o2_2@@22 f_14@@22) (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@22 f_14@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@22 f_14@@22))
))) (forall ((o2_2@@23 T@Ref) (f_14@@23 T@Field_12736_31755) ) (!  (=> (select (|PolymorphicMapType_21269_12736_66044#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@23 f_14@@23) (= (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@10) o2_2@@23 f_14@@23) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@23 f_14@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@23 f_14@@23))
))) (forall ((o2_2@@24 T@Ref) (f_14@@24 T@Field_12889_3742) ) (!  (=> (select (|PolymorphicMapType_21269_29699_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@24 f_14@@24) (= (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@10) o2_2@@24 f_14@@24) (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@24 f_14@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@24 f_14@@24))
))) (forall ((o2_2@@25 T@Ref) (f_14@@25 T@Field_12889_53) ) (!  (=> (select (|PolymorphicMapType_21269_29699_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@25 f_14@@25) (= (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@10) o2_2@@25 f_14@@25) (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@25 f_14@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@25 f_14@@25))
))) (forall ((o2_2@@26 T@Ref) (f_14@@26 T@Field_12889_20794) ) (!  (=> (select (|PolymorphicMapType_21269_29699_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@26 f_14@@26) (= (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@10) o2_2@@26 f_14@@26) (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@26 f_14@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@26 f_14@@26))
))) (forall ((o2_2@@27 T@Ref) (f_14@@27 T@Field_29699_29700) ) (!  (=> (select (|PolymorphicMapType_21269_29699_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@27 f_14@@27) (= (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@10) o2_2@@27 f_14@@27) (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@27 f_14@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@27 f_14@@27))
))) (forall ((o2_2@@28 T@Ref) (f_14@@28 T@Field_31750_31755) ) (!  (=> (select (|PolymorphicMapType_21269_29699_67092#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) null (WandMaskField_12889 pm_f_2@@5))) o2_2@@28 f_14@@28) (= (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@10) o2_2@@28 f_14@@28) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@28 f_14@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@5) o2_2@@28 f_14@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_12889_68257 pm_f_2@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_20720) (ExhaleHeap@@6 T@PolymorphicMapType_20720) (Mask@@8 T@PolymorphicMapType_20741) (pm_f_2@@6 T@Field_12736_12890) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_12736_12890 Mask@@8 null pm_f_2@@6) (IsWandField_12736_67900 pm_f_2@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@29 T@Ref) (f_14@@29 T@Field_27041_3742) ) (!  (=> (select (|PolymorphicMapType_21269_12736_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@29 f_14@@29) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@11) o2_2@@29 f_14@@29) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@29 f_14@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@29 f_14@@29))
)) (forall ((o2_2@@30 T@Ref) (f_14@@30 T@Field_20780_53) ) (!  (=> (select (|PolymorphicMapType_21269_12736_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@30 f_14@@30) (= (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@11) o2_2@@30 f_14@@30) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@30 f_14@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@30 f_14@@30))
))) (forall ((o2_2@@31 T@Ref) (f_14@@31 T@Field_20793_20794) ) (!  (=> (select (|PolymorphicMapType_21269_12736_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@31 f_14@@31) (= (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@11) o2_2@@31 f_14@@31) (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@31 f_14@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@31 f_14@@31))
))) (forall ((o2_2@@32 T@Ref) (f_14@@32 T@Field_12736_12890) ) (!  (=> (select (|PolymorphicMapType_21269_12736_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@32 f_14@@32) (= (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@11) o2_2@@32 f_14@@32) (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@32 f_14@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@32 f_14@@32))
))) (forall ((o2_2@@33 T@Ref) (f_14@@33 T@Field_12736_31755) ) (!  (=> (select (|PolymorphicMapType_21269_12736_66044#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@33 f_14@@33) (= (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) o2_2@@33 f_14@@33) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@33 f_14@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@33 f_14@@33))
))) (forall ((o2_2@@34 T@Ref) (f_14@@34 T@Field_12889_3742) ) (!  (=> (select (|PolymorphicMapType_21269_29699_3742#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@34 f_14@@34) (= (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@11) o2_2@@34 f_14@@34) (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@34 f_14@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@34 f_14@@34))
))) (forall ((o2_2@@35 T@Ref) (f_14@@35 T@Field_12889_53) ) (!  (=> (select (|PolymorphicMapType_21269_29699_53#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@35 f_14@@35) (= (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@11) o2_2@@35 f_14@@35) (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@35 f_14@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@35 f_14@@35))
))) (forall ((o2_2@@36 T@Ref) (f_14@@36 T@Field_12889_20794) ) (!  (=> (select (|PolymorphicMapType_21269_29699_20794#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@36 f_14@@36) (= (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@11) o2_2@@36 f_14@@36) (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@36 f_14@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@36 f_14@@36))
))) (forall ((o2_2@@37 T@Ref) (f_14@@37 T@Field_29699_29700) ) (!  (=> (select (|PolymorphicMapType_21269_29699_29700#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@37 f_14@@37) (= (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@11) o2_2@@37 f_14@@37) (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@37 f_14@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@37 f_14@@37))
))) (forall ((o2_2@@38 T@Ref) (f_14@@38 T@Field_31750_31755) ) (!  (=> (select (|PolymorphicMapType_21269_29699_67092#PolymorphicMapType_21269| (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@11) null (WandMaskField_12736 pm_f_2@@6))) o2_2@@38 f_14@@38) (= (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@11) o2_2@@38 f_14@@38) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@38 f_14@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@6) o2_2@@38 f_14@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_12736_67900 pm_f_2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_20720) (Mask@@9 T@PolymorphicMapType_20741) (xs@@6 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (and (state Heap@@12 Mask@@9) (< AssumeFunctionsAbove 0)) (=> (select xs@@6 x@@6) (= (fun1 Heap@@12 xs@@6 x@@6) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@12) x@@6 f_7))))
 :qid |stdinbpl.477:15|
 :skolemid |84|
 :pattern ( (state Heap@@12 Mask@@9) (fun1 Heap@@12 xs@@6 x@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_20720) (ExhaleHeap@@7 T@PolymorphicMapType_20720) (Mask@@10 T@PolymorphicMapType_20741) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@13) o_8 $allocated) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@7) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@7) o_8 $allocated))
)))
(assert (forall ((p T@Field_29699_29700) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_29699_29699 p v_1 p w))
 :qid |stdinbpl.256:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29699_29699 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12736_12890) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_20780_20780 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.256:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20780_20780 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_12736_3742 f_7)))
(assert  (not (IsWandField_12736_3742 f_7)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_20720) (ExhaleHeap@@8 T@PolymorphicMapType_20720) (Mask@@11 T@PolymorphicMapType_20741) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_20741) (o_2@@9 T@Ref) (f_4@@9 T@Field_31750_31755) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12889_75189 f_4@@9))) (not (IsWandField_12889_75205 f_4@@9))) (<= (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_20741) (o_2@@10 T@Ref) (f_4@@10 T@Field_12889_20794) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12889_20794 f_4@@10))) (not (IsWandField_12889_20794 f_4@@10))) (<= (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_20741) (o_2@@11 T@Ref) (f_4@@11 T@Field_12889_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_12889_53 f_4@@11))) (not (IsWandField_12889_53 f_4@@11))) (<= (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_20741) (o_2@@12 T@Ref) (f_4@@12 T@Field_29699_29700) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_12889_12890 f_4@@12))) (not (IsWandField_12889_68257 f_4@@12))) (<= (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_20741) (o_2@@13 T@Ref) (f_4@@13 T@Field_12889_3742) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_12889_3742 f_4@@13))) (not (IsWandField_12889_3742 f_4@@13))) (<= (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_20741) (o_2@@14 T@Ref) (f_4@@14 T@Field_12736_31755) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_12736_74358 f_4@@14))) (not (IsWandField_12736_74374 f_4@@14))) (<= (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_20741) (o_2@@15 T@Ref) (f_4@@15 T@Field_20793_20794) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_12736_20794 f_4@@15))) (not (IsWandField_12736_20794 f_4@@15))) (<= (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_20741) (o_2@@16 T@Ref) (f_4@@16 T@Field_20780_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_12736_53 f_4@@16))) (not (IsWandField_12736_53 f_4@@16))) (<= (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_20741) (o_2@@17 T@Ref) (f_4@@17 T@Field_12736_12890) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_12736_64572 f_4@@17))) (not (IsWandField_12736_67900 f_4@@17))) (<= (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_20741) (o_2@@18 T@Ref) (f_4@@18 T@Field_27041_3742) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_12736_3742 f_4@@18))) (not (IsWandField_12736_3742 f_4@@18))) (<= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_20720) (Mask@@22 T@PolymorphicMapType_20741) (xs@@7 (Array T@Ref Bool)) (x@@7 T@Ref) ) (!  (=> (and (state Heap@@15 Mask@@22) (< AssumeFunctionsAbove 1)) (= (fun2 Heap@@15 xs@@7 x@@7) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@15) x@@7 f_7)))
 :qid |stdinbpl.589:15|
 :skolemid |95|
 :pattern ( (state Heap@@15 Mask@@22) (fun2 Heap@@15 xs@@7 x@@7))
 :pattern ( (state Heap@@15 Mask@@22) (|fun2#triggerStateless| xs@@7 x@@7) (|P#trigger_12889| Heap@@15 (P xs@@7 x@@7)))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_20741) (o_2@@19 T@Ref) (f_4@@19 T@Field_31750_31755) ) (! (= (HasDirectPerm_12889_64327 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12889_64327 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_20741) (o_2@@20 T@Ref) (f_4@@20 T@Field_12889_20794) ) (! (= (HasDirectPerm_12889_20794 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12889_20794 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_20741) (o_2@@21 T@Ref) (f_4@@21 T@Field_12889_53) ) (! (= (HasDirectPerm_12889_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12889_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_20741) (o_2@@22 T@Ref) (f_4@@22 T@Field_29699_29700) ) (! (= (HasDirectPerm_12889_12890 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12889_12890 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_20741) (o_2@@23 T@Ref) (f_4@@23 T@Field_12889_3742) ) (! (= (HasDirectPerm_12889_3742 Mask@@27 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| Mask@@27) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12889_3742 Mask@@27 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_20741) (o_2@@24 T@Ref) (f_4@@24 T@Field_12736_31755) ) (! (= (HasDirectPerm_12736_63186 Mask@@28 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| Mask@@28) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12736_63186 Mask@@28 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_20741) (o_2@@25 T@Ref) (f_4@@25 T@Field_20793_20794) ) (! (= (HasDirectPerm_12736_20794 Mask@@29 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| Mask@@29) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12736_20794 Mask@@29 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_20741) (o_2@@26 T@Ref) (f_4@@26 T@Field_20780_53) ) (! (= (HasDirectPerm_12736_53 Mask@@30 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| Mask@@30) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12736_53 Mask@@30 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_20741) (o_2@@27 T@Ref) (f_4@@27 T@Field_12736_12890) ) (! (= (HasDirectPerm_12736_12890 Mask@@31 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| Mask@@31) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12736_12890 Mask@@31 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_20741) (o_2@@28 T@Ref) (f_4@@28 T@Field_27041_3742) ) (! (= (HasDirectPerm_12736_3742 Mask@@32 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| Mask@@32) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12736_3742 Mask@@32 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.244:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_20720) (ExhaleHeap@@9 T@PolymorphicMapType_20720) (Mask@@33 T@PolymorphicMapType_20741) (o_8@@0 T@Ref) (f_14@@39 T@Field_31750_31755) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@33) (=> (HasDirectPerm_12889_64327 Mask@@33 o_8@@0 f_14@@39) (= (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@16) o_8@@0 f_14@@39) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@9) o_8@@0 f_14@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@33) (select (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| ExhaleHeap@@9) o_8@@0 f_14@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_20720) (ExhaleHeap@@10 T@PolymorphicMapType_20720) (Mask@@34 T@PolymorphicMapType_20741) (o_8@@1 T@Ref) (f_14@@40 T@Field_12889_20794) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@34) (=> (HasDirectPerm_12889_20794 Mask@@34 o_8@@1 f_14@@40) (= (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@17) o_8@@1 f_14@@40) (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@10) o_8@@1 f_14@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@34) (select (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| ExhaleHeap@@10) o_8@@1 f_14@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_20720) (ExhaleHeap@@11 T@PolymorphicMapType_20720) (Mask@@35 T@PolymorphicMapType_20741) (o_8@@2 T@Ref) (f_14@@41 T@Field_12889_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@35) (=> (HasDirectPerm_12889_53 Mask@@35 o_8@@2 f_14@@41) (= (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@18) o_8@@2 f_14@@41) (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@11) o_8@@2 f_14@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@35) (select (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| ExhaleHeap@@11) o_8@@2 f_14@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_20720) (ExhaleHeap@@12 T@PolymorphicMapType_20720) (Mask@@36 T@PolymorphicMapType_20741) (o_8@@3 T@Ref) (f_14@@42 T@Field_29699_29700) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@36) (=> (HasDirectPerm_12889_12890 Mask@@36 o_8@@3 f_14@@42) (= (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@19) o_8@@3 f_14@@42) (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@12) o_8@@3 f_14@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@36) (select (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| ExhaleHeap@@12) o_8@@3 f_14@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_20720) (ExhaleHeap@@13 T@PolymorphicMapType_20720) (Mask@@37 T@PolymorphicMapType_20741) (o_8@@4 T@Ref) (f_14@@43 T@Field_12889_3742) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@37) (=> (HasDirectPerm_12889_3742 Mask@@37 o_8@@4 f_14@@43) (= (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@20) o_8@@4 f_14@@43) (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@13) o_8@@4 f_14@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@37) (select (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| ExhaleHeap@@13) o_8@@4 f_14@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_20720) (ExhaleHeap@@14 T@PolymorphicMapType_20720) (Mask@@38 T@PolymorphicMapType_20741) (o_8@@5 T@Ref) (f_14@@44 T@Field_12736_31755) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@38) (=> (HasDirectPerm_12736_63186 Mask@@38 o_8@@5 f_14@@44) (= (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@21) o_8@@5 f_14@@44) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@14) o_8@@5 f_14@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@38) (select (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| ExhaleHeap@@14) o_8@@5 f_14@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_20720) (ExhaleHeap@@15 T@PolymorphicMapType_20720) (Mask@@39 T@PolymorphicMapType_20741) (o_8@@6 T@Ref) (f_14@@45 T@Field_20793_20794) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@39) (=> (HasDirectPerm_12736_20794 Mask@@39 o_8@@6 f_14@@45) (= (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@22) o_8@@6 f_14@@45) (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@15) o_8@@6 f_14@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@39) (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| ExhaleHeap@@15) o_8@@6 f_14@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_20720) (ExhaleHeap@@16 T@PolymorphicMapType_20720) (Mask@@40 T@PolymorphicMapType_20741) (o_8@@7 T@Ref) (f_14@@46 T@Field_20780_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@40) (=> (HasDirectPerm_12736_53 Mask@@40 o_8@@7 f_14@@46) (= (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@23) o_8@@7 f_14@@46) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@16) o_8@@7 f_14@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@40) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| ExhaleHeap@@16) o_8@@7 f_14@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_20720) (ExhaleHeap@@17 T@PolymorphicMapType_20720) (Mask@@41 T@PolymorphicMapType_20741) (o_8@@8 T@Ref) (f_14@@47 T@Field_12736_12890) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@41) (=> (HasDirectPerm_12736_12890 Mask@@41 o_8@@8 f_14@@47) (= (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@24) o_8@@8 f_14@@47) (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@17) o_8@@8 f_14@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@41) (select (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| ExhaleHeap@@17) o_8@@8 f_14@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_20720) (ExhaleHeap@@18 T@PolymorphicMapType_20720) (Mask@@42 T@PolymorphicMapType_20741) (o_8@@9 T@Ref) (f_14@@48 T@Field_27041_3742) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@42) (=> (HasDirectPerm_12736_3742 Mask@@42 o_8@@9 f_14@@48) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@25) o_8@@9 f_14@@48) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@18) o_8@@9 f_14@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@42) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| ExhaleHeap@@18) o_8@@9 f_14@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_31750_31755) ) (! (= (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12889_20794) ) (! (= (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_12889_53) ) (! (= (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_29699_29700) ) (! (= (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_12889_3742) ) (! (= (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12736_31755) ) (! (= (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_20793_20794) ) (! (= (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_20780_53) ) (! (= (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_12736_12890) ) (! (= (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_27041_3742) ) (! (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_20720) (xs@@8 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (and (= (fun1 Heap@@26 xs@@8 x@@8) (|fun1'| Heap@@26 xs@@8 x@@8)) (dummyFunction_4147 (|fun1#triggerStateless| xs@@8 x@@8)))
 :qid |stdinbpl.467:15|
 :skolemid |82|
 :pattern ( (fun1 Heap@@26 xs@@8 x@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_20720) (xs@@9 (Array T@Ref Bool)) (x@@9 T@Ref) ) (!  (and (= (fun2 Heap@@27 xs@@9 x@@9) (|fun2'| Heap@@27 xs@@9 x@@9)) (dummyFunction_4147 (|fun2#triggerStateless| xs@@9 x@@9)))
 :qid |stdinbpl.579:15|
 :skolemid |93|
 :pattern ( (fun2 Heap@@27 xs@@9 x@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_20720) (Mask@@43 T@PolymorphicMapType_20741) (xs@@10 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (state Heap@@28 Mask@@43) (= (|fun1'| Heap@@28 xs@@10 x@@10) (|fun1#frame| (FrameFragment_3975 (|fun1#condqp1| Heap@@28 xs@@10 x@@10)) xs@@10 x@@10)))
 :qid |stdinbpl.484:15|
 :skolemid |85|
 :pattern ( (state Heap@@28 Mask@@43) (|fun1'| Heap@@28 xs@@10 x@@10))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_20741) (SummandMask1 T@PolymorphicMapType_20741) (SummandMask2 T@PolymorphicMapType_20741) (o_2@@39 T@Ref) (f_4@@39 T@Field_31750_31755) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_20741) (SummandMask1@@0 T@PolymorphicMapType_20741) (SummandMask2@@0 T@PolymorphicMapType_20741) (o_2@@40 T@Ref) (f_4@@40 T@Field_12889_20794) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_20741) (SummandMask1@@1 T@PolymorphicMapType_20741) (SummandMask2@@1 T@PolymorphicMapType_20741) (o_2@@41 T@Ref) (f_4@@41 T@Field_12889_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_20741) (SummandMask1@@2 T@PolymorphicMapType_20741) (SummandMask2@@2 T@PolymorphicMapType_20741) (o_2@@42 T@Ref) (f_4@@42 T@Field_29699_29700) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_20741) (SummandMask1@@3 T@PolymorphicMapType_20741) (SummandMask2@@3 T@PolymorphicMapType_20741) (o_2@@43 T@Ref) (f_4@@43 T@Field_12889_3742) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_20741) (SummandMask1@@4 T@PolymorphicMapType_20741) (SummandMask2@@4 T@PolymorphicMapType_20741) (o_2@@44 T@Ref) (f_4@@44 T@Field_12736_31755) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_20741) (SummandMask1@@5 T@PolymorphicMapType_20741) (SummandMask2@@5 T@PolymorphicMapType_20741) (o_2@@45 T@Ref) (f_4@@45 T@Field_20793_20794) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_20741) (SummandMask1@@6 T@PolymorphicMapType_20741) (SummandMask2@@6 T@PolymorphicMapType_20741) (o_2@@46 T@Ref) (f_4@@46 T@Field_20780_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_20741) (SummandMask1@@7 T@PolymorphicMapType_20741) (SummandMask2@@7 T@PolymorphicMapType_20741) (o_2@@47 T@Ref) (f_4@@47 T@Field_12736_12890) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_20741) (SummandMask1@@8 T@PolymorphicMapType_20741) (SummandMask2@@8 T@PolymorphicMapType_20741) (o_2@@48 T@Ref) (f_4@@48 T@Field_27041_3742) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_20720) (Heap1Heap T@PolymorphicMapType_20720) (xs@@11 (Array T@Ref Bool)) (x@@11 T@Ref) ) (!  (=> (and (=  (and (select xs@@11 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11 x@@11) (|fun1#condqp1| Heap1Heap xs@@11 x@@11))) (< NoPerm FullPerm))  (and (select xs@@11 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11 x@@11) (|fun1#condqp1| Heap1Heap xs@@11 x@@11))) (< NoPerm FullPerm))) (=> (and (select xs@@11 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11 x@@11) (|fun1#condqp1| Heap1Heap xs@@11 x@@11))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap2Heap) (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11 x@@11) (|fun1#condqp1| Heap1Heap xs@@11 x@@11)) f_7) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap1Heap) (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11 x@@11) (|fun1#condqp1| Heap1Heap xs@@11 x@@11)) f_7)))) (= (|fun1#condqp1| Heap2Heap xs@@11 x@@11) (|fun1#condqp1| Heap1Heap xs@@11 x@@11)))
 :qid |stdinbpl.494:15|
 :skolemid |86|
 :pattern ( (|fun1#condqp1| Heap2Heap xs@@11 x@@11) (|fun1#condqp1| Heap1Heap xs@@11 x@@11) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_20720) (Heap1Heap@@0 T@PolymorphicMapType_20720) (xs@@12 (Array T@Ref Bool)) (x@@12 T@Ref) ) (!  (=> (and (=  (and (select xs@@12 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12 x@@12) (|P#condqp2| Heap1Heap@@0 xs@@12 x@@12))) (< NoPerm FullPerm))  (and (select xs@@12 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12 x@@12) (|P#condqp2| Heap1Heap@@0 xs@@12 x@@12))) (< NoPerm FullPerm))) (=> (and (select xs@@12 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12 x@@12) (|P#condqp2| Heap1Heap@@0 xs@@12 x@@12))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap2Heap@@0) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12 x@@12) (|P#condqp2| Heap1Heap@@0 xs@@12 x@@12)) f_7) (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap1Heap@@0) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12 x@@12) (|P#condqp2| Heap1Heap@@0 xs@@12 x@@12)) f_7)))) (= (|P#condqp2| Heap2Heap@@0 xs@@12 x@@12) (|P#condqp2| Heap1Heap@@0 xs@@12 x@@12)))
 :qid |stdinbpl.742:15|
 :skolemid |111|
 :pattern ( (|P#condqp2| Heap2Heap@@0 xs@@12 x@@12) (|P#condqp2| Heap1Heap@@0 xs@@12 x@@12) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((xs@@13 (Array T@Ref Bool)) (x@@13 T@Ref) ) (! (= (getPredWandId_12889_12890 (P xs@@13 x@@13)) 0)
 :qid |stdinbpl.716:15|
 :skolemid |107|
 :pattern ( (P xs@@13 x@@13))
)))
(assert (forall ((xs@@14 (Array T@Ref Bool)) (x@@14 T@Ref) ) (! (= (PredicateMaskField_12889 (P xs@@14 x@@14)) (|P#sm| xs@@14 x@@14))
 :qid |stdinbpl.708:15|
 :skolemid |105|
 :pattern ( (PredicateMaskField_12889 (P xs@@14 x@@14)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_20720) (o_7 T@Ref) (f_15 T@Field_31750_31755) (v T@PolymorphicMapType_21269) ) (! (succHeap Heap@@29 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@29) (store (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@29) o_7 f_15 v) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@29) (store (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@29) o_7 f_15 v) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@29) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_20720) (o_7@@0 T@Ref) (f_15@@0 T@Field_29699_29700) (v@@0 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@30) (store (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@30) o_7@@0 f_15@@0 v@@0) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@30) (store (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@30) o_7@@0 f_15@@0 v@@0) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@30) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_20720) (o_7@@1 T@Ref) (f_15@@1 T@Field_12889_3742) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@31) (store (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@31) o_7@@1 f_15@@1 v@@1) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@31) (store (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@31) o_7@@1 f_15@@1 v@@1) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@31) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_20720) (o_7@@2 T@Ref) (f_15@@2 T@Field_12889_20794) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@32) (store (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@32) o_7@@2 f_15@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@32) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@32) (store (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@32) o_7@@2 f_15@@2 v@@2)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_20720) (o_7@@3 T@Ref) (f_15@@3 T@Field_12889_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@33) (store (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@33) o_7@@3 f_15@@3 v@@3) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@33) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@33) (store (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@33) o_7@@3 f_15@@3 v@@3) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_20720) (o_7@@4 T@Ref) (f_15@@4 T@Field_12736_31755) (v@@4 T@PolymorphicMapType_21269) ) (! (succHeap Heap@@34 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@34) (store (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@34) o_7@@4 f_15@@4 v@@4) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@34) (store (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@34) o_7@@4 f_15@@4 v@@4) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@34) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_20720) (o_7@@5 T@Ref) (f_15@@5 T@Field_12736_12890) (v@@5 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@35) (store (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@35) o_7@@5 f_15@@5 v@@5) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@35) (store (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@35) o_7@@5 f_15@@5 v@@5) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@35) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_20720) (o_7@@6 T@Ref) (f_15@@6 T@Field_27041_3742) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@36) (store (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@36) o_7@@6 f_15@@6 v@@6) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@36) (store (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@36) o_7@@6 f_15@@6 v@@6) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@36) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_20720) (o_7@@7 T@Ref) (f_15@@7 T@Field_20793_20794) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@37) (store (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@37) o_7@@7 f_15@@7 v@@7) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@37) (store (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@37) o_7@@7 f_15@@7 v@@7) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@37) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_20720) (o_7@@8 T@Ref) (f_15@@8 T@Field_20780_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_20720 (store (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@38) o_7@@8 f_15@@8 v@@8) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20720 (store (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@38) o_7@@8 f_15@@8 v@@8) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@38) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@38)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.356:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.357:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_7@@9 T@Ref) (f_13 T@Field_20793_20794) (Heap@@39 T@PolymorphicMapType_20720) ) (!  (=> (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@39) o_7@@9 $allocated) (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@39) (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@39) o_7@@9 f_13) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@39) o_7@@9 f_13))
)))
(assert (forall ((p@@2 T@Field_29699_29700) (v_1@@1 T@FrameType) (q T@Field_29699_29700) (w@@1 T@FrameType) (r T@Field_29699_29700) (u T@FrameType) ) (!  (=> (and (InsidePredicate_29699_29699 p@@2 v_1@@1 q w@@1) (InsidePredicate_29699_29699 q w@@1 r u)) (InsidePredicate_29699_29699 p@@2 v_1@@1 r u))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29699_29699 p@@2 v_1@@1 q w@@1) (InsidePredicate_29699_29699 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_29699_29700) (v_1@@2 T@FrameType) (q@@0 T@Field_29699_29700) (w@@2 T@FrameType) (r@@0 T@Field_12736_12890) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_29699_29699 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_29699_20780 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_29699_20780 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29699_29699 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_29699_20780 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_29699_29700) (v_1@@3 T@FrameType) (q@@1 T@Field_12736_12890) (w@@3 T@FrameType) (r@@1 T@Field_29699_29700) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_29699_20780 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_20780_29699 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_29699_29699 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29699_20780 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_20780_29699 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_29699_29700) (v_1@@4 T@FrameType) (q@@2 T@Field_12736_12890) (w@@4 T@FrameType) (r@@2 T@Field_12736_12890) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_29699_20780 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_20780_20780 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_29699_20780 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29699_20780 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_20780_20780 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12736_12890) (v_1@@5 T@FrameType) (q@@3 T@Field_29699_29700) (w@@5 T@FrameType) (r@@3 T@Field_29699_29700) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_20780_29699 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_29699_29699 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_20780_29699 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20780_29699 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_29699_29699 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12736_12890) (v_1@@6 T@FrameType) (q@@4 T@Field_29699_29700) (w@@6 T@FrameType) (r@@4 T@Field_12736_12890) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_20780_29699 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_29699_20780 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_20780_20780 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20780_29699 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_29699_20780 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12736_12890) (v_1@@7 T@FrameType) (q@@5 T@Field_12736_12890) (w@@7 T@FrameType) (r@@5 T@Field_29699_29700) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_20780_20780 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_20780_29699 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_20780_29699 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20780_20780 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_20780_29699 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12736_12890) (v_1@@8 T@FrameType) (q@@6 T@Field_12736_12890) (w@@8 T@FrameType) (r@@6 T@Field_12736_12890) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_20780_20780 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_20780_20780 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_20780_20780 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.251:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20780_20780 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_20780_20780 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.362:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun xs@@15 () (Array T@Ref Bool))
(declare-fun Heap@1 () T@PolymorphicMapType_20720)
(declare-fun QPMask@1 () T@PolymorphicMapType_20741)
(declare-fun QPMask@0 () T@PolymorphicMapType_20741)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_20720)
(declare-fun Heap@@40 () T@PolymorphicMapType_20720)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun x@@15 () T@Ref)
(declare-fun y () T@Ref)
(declare-fun yf@0 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_20720)
(set-info :boogie-vc-id test5_1)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon6_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((z_3 T@Ref) (z_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_3 z_3_1)) (select xs@@15 z_3)) (select xs@@15 z_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_3 z_3_1)))
 :qid |stdinbpl.1206:17|
 :skolemid |146|
 :pattern ( (neverTriggered10 z_3) (neverTriggered10 z_3_1))
))) (=> (forall ((z_3@@0 T@Ref) (z_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_3@@0 z_3_1@@0)) (select xs@@15 z_3@@0)) (select xs@@15 z_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_3@@0 z_3_1@@0)))
 :qid |stdinbpl.1206:17|
 :skolemid |146|
 :pattern ( (neverTriggered10 z_3@@0) (neverTriggered10 z_3_1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((z_3@@1 T@Ref) ) (!  (=> (select xs@@15 z_3@@1) (>= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) z_3@@1 f_7) FullPerm))
 :qid |stdinbpl.1213:17|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@1) z_3@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) z_3@@1 f_7))
 :pattern ( (select xs@@15 z_3@@1))
))) (=> (forall ((z_3@@2 T@Ref) ) (!  (=> (select xs@@15 z_3@@2) (>= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) z_3@@2 f_7) FullPerm))
 :qid |stdinbpl.1213:17|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@1) z_3@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) z_3@@2 f_7))
 :pattern ( (select xs@@15 z_3@@2))
)) (=> (forall ((z_3@@3 T@Ref) ) (!  (=> (and (select xs@@15 z_3@@3) (< NoPerm FullPerm)) (and (qpRange10 z_3@@3) (= (invRecv10 z_3@@3) z_3@@3)))
 :qid |stdinbpl.1219:22|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@1) z_3@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) z_3@@3 f_7))
 :pattern ( (select xs@@15 z_3@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (select xs@@15 (invRecv10 o_9)) (and (< NoPerm FullPerm) (qpRange10 o_9))) (= (invRecv10 o_9) o_9))
 :qid |stdinbpl.1223:22|
 :skolemid |149|
 :pattern ( (invRecv10 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (select xs@@15 (invRecv10 o_9@@0)) (and (< NoPerm FullPerm) (qpRange10 o_9@@0))) (and (= (invRecv10 o_9@@0) o_9@@0) (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) o_9@@0 f_7) (- (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@0 f_7) FullPerm)))) (=> (not (and (select xs@@15 (invRecv10 o_9@@0)) (and (< NoPerm FullPerm) (qpRange10 o_9@@0)))) (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) o_9@@0 f_7) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@0 f_7))))
 :qid |stdinbpl.1229:22|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) o_9@@0 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_20780_53) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_20793_20794) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_27041_3742) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_12736_12890) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_12736_31755) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| QPMask@1) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_12889_53) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| QPMask@0) o_9@@6 f_5@@4) (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| QPMask@1) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| QPMask@1) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_12889_20794) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| QPMask@0) o_9@@7 f_5@@5) (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| QPMask@1) o_9@@7 f_5@@5)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| QPMask@1) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_12889_3742) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| QPMask@0) o_9@@8 f_5@@6) (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| QPMask@1) o_9@@8 f_5@@6)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| QPMask@1) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_29699_29700) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| QPMask@0) o_9@@9 f_5@@7) (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| QPMask@1) o_9@@9 f_5@@7)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| QPMask@1) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_31750_31755) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| QPMask@0) o_9@@10 f_5@@8) (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| QPMask@1) o_9@@10 f_5@@8)))
 :qid |stdinbpl.1235:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| QPMask@1) o_9@@10 f_5@@8))
))) (IdenticalOnKnownLocations Heap@1 ExhaleHeap@0 QPMask@1)) (and (state ExhaleHeap@0 QPMask@1) (= (ControlFlow 0 4) (- 0 3)))) false)))))))))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 13)) (forall ((z_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1 z_1_1)) (select xs@@15 z_1)) (select xs@@15 z_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1 z_1_1)))
 :qid |stdinbpl.1118:15|
 :skolemid |140|
))) (=> (forall ((z_1@@0 T@Ref) (z_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1@@0 z_1_1@@0)) (select xs@@15 z_1@@0)) (select xs@@15 z_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1@@0 z_1_1@@0)))
 :qid |stdinbpl.1118:15|
 :skolemid |140|
)) (=> (and (and (forall ((z_1@@1 T@Ref) ) (!  (=> (and (select xs@@15 z_1@@1) (< NoPerm FullPerm)) (and (qpRange9 z_1@@1) (= (invRecv9 z_1@@1) z_1@@1)))
 :qid |stdinbpl.1124:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@40) z_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) z_1@@1 f_7))
 :pattern ( (select xs@@15 z_1@@1))
)) (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (select xs@@15 (invRecv9 o_9@@11)) (< NoPerm FullPerm)) (qpRange9 o_9@@11)) (= (invRecv9 o_9@@11) o_9@@11))
 :qid |stdinbpl.1128:22|
 :skolemid |142|
 :pattern ( (invRecv9 o_9@@11))
))) (and (forall ((z_1@@2 T@Ref) ) (!  (=> (select xs@@15 z_1@@2) (not (= z_1@@2 null)))
 :qid |stdinbpl.1134:22|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@40) z_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) z_1@@2 f_7))
 :pattern ( (select xs@@15 z_1@@2))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (select xs@@15 (invRecv9 o_9@@12)) (< NoPerm FullPerm)) (qpRange9 o_9@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv9 o_9@@12) o_9@@12)) (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@12 f_7) (+ (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ZeroMask) o_9@@12 f_7) FullPerm)))) (=> (not (and (and (select xs@@15 (invRecv9 o_9@@12)) (< NoPerm FullPerm)) (qpRange9 o_9@@12))) (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@12 f_7) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ZeroMask) o_9@@12 f_7))))
 :qid |stdinbpl.1140:22|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@12 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_20780_53) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| ZeroMask) o_9@@13 f_5@@9) (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| QPMask@0) o_9@@13 f_5@@9)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| ZeroMask) o_9@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_20741_12736_53#PolymorphicMapType_20741| QPMask@0) o_9@@13 f_5@@9))
)) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_20793_20794) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| ZeroMask) o_9@@14 f_5@@10) (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| QPMask@0) o_9@@14 f_5@@10)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| ZeroMask) o_9@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_20741_12736_20794#PolymorphicMapType_20741| QPMask@0) o_9@@14 f_5@@10))
))) (forall ((o_9@@15 T@Ref) (f_5@@11 T@Field_27041_3742) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ZeroMask) o_9@@15 f_5@@11) (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@15 f_5@@11)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| ZeroMask) o_9@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) o_9@@15 f_5@@11))
))) (forall ((o_9@@16 T@Ref) (f_5@@12 T@Field_12736_12890) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| ZeroMask) o_9@@16 f_5@@12) (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| QPMask@0) o_9@@16 f_5@@12)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| ZeroMask) o_9@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_20741_12736_12890#PolymorphicMapType_20741| QPMask@0) o_9@@16 f_5@@12))
))) (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_12736_31755) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| ZeroMask) o_9@@17 f_5@@13) (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| QPMask@0) o_9@@17 f_5@@13)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| ZeroMask) o_9@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_20741_12736_72486#PolymorphicMapType_20741| QPMask@0) o_9@@17 f_5@@13))
))) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_12889_53) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| ZeroMask) o_9@@18 f_5@@14) (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| QPMask@0) o_9@@18 f_5@@14)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| ZeroMask) o_9@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_20741_12889_53#PolymorphicMapType_20741| QPMask@0) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_12889_20794) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| ZeroMask) o_9@@19 f_5@@15) (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| QPMask@0) o_9@@19 f_5@@15)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| ZeroMask) o_9@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_20741_12889_20794#PolymorphicMapType_20741| QPMask@0) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_12889_3742) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| ZeroMask) o_9@@20 f_5@@16) (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| QPMask@0) o_9@@20 f_5@@16)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| ZeroMask) o_9@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_20741_12889_3742#PolymorphicMapType_20741| QPMask@0) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_29699_29700) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| ZeroMask) o_9@@21 f_5@@17) (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| QPMask@0) o_9@@21 f_5@@17)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| ZeroMask) o_9@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_20741_12889_12890#PolymorphicMapType_20741| QPMask@0) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_31750_31755) ) (!  (=> true (= (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| ZeroMask) o_9@@22 f_5@@18) (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| QPMask@0) o_9@@22 f_5@@18)))
 :qid |stdinbpl.1144:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| ZeroMask) o_9@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_20741_12889_72897#PolymorphicMapType_20741| QPMask@0) o_9@@22 f_5@@18))
))) (and (and (state Heap@@40 QPMask@0) (state Heap@@40 QPMask@0)) (and (not (= x@@15 y)) (state Heap@@40 QPMask@0)))) (and (=> (= (ControlFlow 0 7) (- 0 12)) (HasDirectPerm_12736_3742 QPMask@0 y f_7)) (=> (HasDirectPerm_12736_3742 QPMask@0 y f_7) (=> (and (= yf@0 (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@40) y f_7)) (state Heap@@40 QPMask@0)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (= FullPerm (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) x@@15 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) x@@15 f_7)) (=> (and (= Heap@0 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@40) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@@40) (store (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@@40) x@@15 f_7 1) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@@40) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@@40) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@@40) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@@40) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@@40) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@@40) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@@40))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 7) (- 0 10)) (HasDirectPerm_12736_3742 QPMask@0 y f_7)) (=> (HasDirectPerm_12736_3742 QPMask@0 y f_7) (and (=> (= (ControlFlow 0 7) (- 0 9)) (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@0) y f_7) yf@0)) (=> (= (select (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@0) y f_7) yf@0) (=> (state Heap@0 QPMask@0) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= FullPerm (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) y f_7))) (=> (= FullPerm (select (|PolymorphicMapType_20741_12736_3742#PolymorphicMapType_20741| QPMask@0) y f_7)) (=> (and (= Heap@1 (PolymorphicMapType_20720 (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@0) (|PolymorphicMapType_20720_12358_12359#PolymorphicMapType_20720| Heap@0) (store (|PolymorphicMapType_20720_12736_3742#PolymorphicMapType_20720| Heap@0) y f_7 (+ yf@0 1)) (|PolymorphicMapType_20720_12889_12890#PolymorphicMapType_20720| Heap@0) (|PolymorphicMapType_20720_12896_31792#PolymorphicMapType_20720| Heap@0) (|PolymorphicMapType_20720_12736_12890#PolymorphicMapType_20720| Heap@0) (|PolymorphicMapType_20720_12736_63228#PolymorphicMapType_20720| Heap@0) (|PolymorphicMapType_20720_12889_3742#PolymorphicMapType_20720| Heap@0) (|PolymorphicMapType_20720_12889_53#PolymorphicMapType_20720| Heap@0) (|PolymorphicMapType_20720_12889_20794#PolymorphicMapType_20720| Heap@0))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 7) 2) anon6_Then_correct) (=> (= (ControlFlow 0 7) 4) anon6_Else_correct))))))))))))))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@40 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@40) x@@15 $allocated))) (and (and (select (|PolymorphicMapType_20720_12355_53#PolymorphicMapType_20720| Heap@@40) y $allocated) (select xs@@15 x@@15)) (and (select xs@@15 y) (state Heap@@40 ZeroMask)))) (and (=> (= (ControlFlow 0 14) 1) anon5_Then_correct) (=> (= (ControlFlow 0 14) 7) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
