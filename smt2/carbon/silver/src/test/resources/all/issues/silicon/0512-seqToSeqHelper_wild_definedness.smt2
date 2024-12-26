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
(declare-sort T@Field_23622_53 0)
(declare-sort T@Field_23635_23636 0)
(declare-sort T@Field_29804_3581 0)
(declare-sort T@Field_16221_65934 0)
(declare-sort T@Field_16221_65801 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_23583 0)) (((PolymorphicMapType_23583 (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| (Array T@Ref T@Field_29804_3581 Real)) (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| (Array T@Ref T@Field_23622_53 Real)) (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| (Array T@Ref T@Field_23635_23636 Real)) (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| (Array T@Ref T@Field_16221_65801 Real)) (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| (Array T@Ref T@Field_16221_65934 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24111 0)) (((PolymorphicMapType_24111 (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (Array T@Ref T@Field_23622_53 Bool)) (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (Array T@Ref T@Field_23635_23636 Bool)) (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (Array T@Ref T@Field_29804_3581 Bool)) (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (Array T@Ref T@Field_16221_65801 Bool)) (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (Array T@Ref T@Field_16221_65934 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23562 0)) (((PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| (Array T@Ref T@Field_23622_53 Bool)) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| (Array T@Ref T@Field_23635_23636 T@Ref)) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| (Array T@Ref T@Field_29804_3581 Int)) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| (Array T@Ref T@Field_16221_65934 T@PolymorphicMapType_24111)) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| (Array T@Ref T@Field_16221_65801 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_23622_53)
(declare-fun item_1 () T@Field_29804_3581)
(declare-sort T@Seq_29851 0)
(declare-fun |Seq#Length_16239| (T@Seq_29851) Int)
(declare-fun |Seq#Drop_16239| (T@Seq_29851 Int) T@Seq_29851)
(declare-sort T@Seq_3347 0)
(declare-fun |Seq#Length_3347| (T@Seq_3347) Int)
(declare-fun |Seq#Drop_3347| (T@Seq_3347 Int) T@Seq_3347)
(declare-fun succHeap (T@PolymorphicMapType_23562 T@PolymorphicMapType_23562) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_23562 T@PolymorphicMapType_23562) Bool)
(declare-fun state (T@PolymorphicMapType_23562 T@PolymorphicMapType_23583) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_23583) Bool)
(declare-sort T@VCTArrayDomainType_43550 0)
(declare-fun |sumContrib'| (T@PolymorphicMapType_23562 T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun dummyFunction_3581 (Int) Bool)
(declare-fun |sumContrib#triggerStateless| (T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_24111)
(declare-fun |seqToSeqHelper_wild'| (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun dummyFunction_29950 (T@Seq_3347) Bool)
(declare-fun |seqToSeqHelper_wild#triggerStateless| (T@Seq_29851 Int) T@Seq_3347)
(declare-fun |seqToSeqHelper_frac'| (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun |seqToSeqHelper_frac#triggerStateless| (T@Seq_29851 Int) T@Seq_3347)
(declare-fun |Seq#Index_16239| (T@Seq_29851 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3347| (T@Seq_3347 Int) Int)
(declare-fun |Seq#Empty_16239| () T@Seq_29851)
(declare-fun |Seq#Empty_11929| () T@Seq_3347)
(declare-fun |Seq#Update_16239| (T@Seq_29851 Int T@Ref) T@Seq_29851)
(declare-fun |Seq#Update_3347| (T@Seq_3347 Int Int) T@Seq_3347)
(declare-fun |Seq#Take_16239| (T@Seq_29851 Int) T@Seq_29851)
(declare-fun |Seq#Take_3347| (T@Seq_3347 Int) T@Seq_3347)
(declare-fun |sumContrib#condqp3| (T@PolymorphicMapType_23562 T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun |sk_sumContrib#condqp3| (Int Int) Int)
(declare-fun alen_16373 (T@VCTArrayDomainType_43550) Int)
(declare-fun loc_16373 (T@VCTArrayDomainType_43550 Int) T@Ref)
(declare-fun |Seq#Contains_3347| (T@Seq_3347 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3347)
(declare-fun |Seq#Contains_29851| (T@Seq_29851 T@Ref) Bool)
(declare-fun |Seq#Skolem_29851| (T@Seq_29851 T@Ref) Int)
(declare-fun |Seq#Skolem_3347| (T@Seq_3347 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_23562 T@PolymorphicMapType_23562 T@PolymorphicMapType_23583) Bool)
(declare-fun IsPredicateField_16221_65892 (T@Field_16221_65801) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16221 (T@Field_16221_65801) T@Field_16221_65934)
(declare-fun HasDirectPerm_16221_65865 (T@PolymorphicMapType_23583 T@Ref T@Field_16221_65801) Bool)
(declare-fun IsWandField_16221_67639 (T@Field_16221_65801) Bool)
(declare-fun WandMaskField_16221 (T@Field_16221_65801) T@Field_16221_65934)
(declare-fun |Seq#Singleton_16239| (T@Ref) T@Seq_29851)
(declare-fun |Seq#Singleton_3581| (Int) T@Seq_3347)
(declare-fun |Seq#Append_29851| (T@Seq_29851 T@Seq_29851) T@Seq_29851)
(declare-fun |Seq#Append_3581| (T@Seq_3347 T@Seq_3347) T@Seq_3347)
(declare-fun dummyHeap () T@PolymorphicMapType_23562)
(declare-fun ZeroMask () T@PolymorphicMapType_23583)
(declare-fun InsidePredicate_23622_23622 (T@Field_16221_65801 T@FrameType T@Field_16221_65801 T@FrameType) Bool)
(declare-fun IsPredicateField_16221_3581 (T@Field_29804_3581) Bool)
(declare-fun IsWandField_16221_3581 (T@Field_29804_3581) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16221_71185 (T@Field_16221_65934) Bool)
(declare-fun IsWandField_16221_71201 (T@Field_16221_65934) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_16221_23636 (T@Field_23635_23636) Bool)
(declare-fun IsWandField_16221_23636 (T@Field_23635_23636) Bool)
(declare-fun IsPredicateField_16221_53 (T@Field_23622_53) Bool)
(declare-fun IsWandField_16221_53 (T@Field_23622_53) Bool)
(declare-fun seqToSeqHelper_wild (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun seqToSeqHelper_frac (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun HasDirectPerm_16221_71639 (T@PolymorphicMapType_23583 T@Ref T@Field_16221_65934) Bool)
(declare-fun HasDirectPerm_16221_23636 (T@PolymorphicMapType_23583 T@Ref T@Field_23635_23636) Bool)
(declare-fun HasDirectPerm_16221_53 (T@PolymorphicMapType_23583 T@Ref T@Field_23622_53) Bool)
(declare-fun HasDirectPerm_16221_3581 (T@PolymorphicMapType_23583 T@Ref T@Field_29804_3581) Bool)
(declare-fun |seqToSeqHelper_frac#condqp2| (T@PolymorphicMapType_23562 T@Seq_29851 Int) Int)
(declare-fun |sk_seqToSeqHelper_frac#condqp2| (Int Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |seqToSeqHelper_wild#condqp1| (T@PolymorphicMapType_23562 T@Seq_29851 Int) Int)
(declare-fun |sk_seqToSeqHelper_wild#condqp1| (Int Int) Int)
(declare-fun |seqToSeqHelper_wild#frame| (T@FrameType T@Seq_29851 Int) T@Seq_3347)
(declare-fun FrameFragment_3887 (Int) T@FrameType)
(declare-fun |seqToSeqHelper_frac#frame| (T@FrameType T@Seq_29851 Int) T@Seq_3347)
(declare-fun sumMask (T@PolymorphicMapType_23583 T@PolymorphicMapType_23583 T@PolymorphicMapType_23583) Bool)
(declare-fun |Seq#Equal_29851| (T@Seq_29851 T@Seq_29851) Bool)
(declare-fun |Seq#Equal_3347| (T@Seq_3347 T@Seq_3347) Bool)
(declare-fun sumContrib (T@PolymorphicMapType_23562 T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun |seqToSeqHelper_wild#trigger| (T@FrameType T@Seq_29851 Int) Bool)
(declare-fun |seqToSeqHelper_frac#trigger| (T@FrameType T@Seq_29851 Int) Bool)
(declare-fun |Seq#ContainsTrigger_16239| (T@Seq_29851 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3347| (T@Seq_3347 Int) Bool)
(declare-fun |sumContrib#frame| (T@FrameType T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun |Seq#SkolemDiff_29851| (T@Seq_29851 T@Seq_29851) Int)
(declare-fun |Seq#SkolemDiff_3347| (T@Seq_3347 T@Seq_3347) Int)
(assert (forall ((s T@Seq_29851) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_16239| s)) (= (|Seq#Length_16239| (|Seq#Drop_16239| s n)) (- (|Seq#Length_16239| s) n))) (=> (< (|Seq#Length_16239| s) n) (= (|Seq#Length_16239| (|Seq#Drop_16239| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_16239| (|Seq#Drop_16239| s n)) (|Seq#Length_16239| s))))
 :qid |stdinbpl.350:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_16239| (|Seq#Drop_16239| s n)))
 :pattern ( (|Seq#Length_16239| s) (|Seq#Drop_16239| s n))
)))
(assert (forall ((s@@0 T@Seq_3347) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3347| s@@0)) (= (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)) (- (|Seq#Length_3347| s@@0) n@@0))) (=> (< (|Seq#Length_3347| s@@0) n@@0) (= (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)) (|Seq#Length_3347| s@@0))))
 :qid |stdinbpl.350:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3347| s@@0) (|Seq#Drop_3347| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_23562) (Heap1 T@PolymorphicMapType_23562) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_23562) (Mask T@PolymorphicMapType_23583) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_23562) (Heap1@@0 T@PolymorphicMapType_23562) (Heap2 T@PolymorphicMapType_23562) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_23562) (A_1 T@VCTArrayDomainType_43550) (i Int) (P_1 Real) ) (! (dummyFunction_3581 (|sumContrib#triggerStateless| A_1 i P_1))
 :qid |stdinbpl.1387:15|
 :skolemid |129|
 :pattern ( (|sumContrib'| Heap@@0 A_1 i P_1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16221_65934) ) (!  (not (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16221_65801) ) (!  (not (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_29804_3581) ) (!  (not (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_23635_23636) ) (!  (not (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_23622_53) ) (!  (not (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_23562) (xs T@Seq_29851) (i@@0 Int) ) (! (dummyFunction_29950 (|seqToSeqHelper_wild#triggerStateless| xs i@@0))
 :qid |stdinbpl.661:15|
 :skolemid |61|
 :pattern ( (|seqToSeqHelper_wild'| Heap@@1 xs i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_23562) (xs@@0 T@Seq_29851) (i@@1 Int) ) (! (dummyFunction_29950 (|seqToSeqHelper_frac#triggerStateless| xs@@0 i@@1))
 :qid |stdinbpl.1024:15|
 :skolemid |95|
 :pattern ( (|seqToSeqHelper_frac'| Heap@@2 xs@@0 i@@1))
)))
(assert (forall ((s@@1 T@Seq_29851) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_16239| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_16239| (|Seq#Drop_16239| s@@1 n@@1) j) (|Seq#Index_16239| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.371:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_16239| (|Seq#Drop_16239| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3347) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3347| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3347| (|Seq#Drop_3347| s@@2 n@@2) j@@0) (|Seq#Index_3347| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.371:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3347| (|Seq#Drop_3347| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_16239| |Seq#Empty_16239|) 0))
(assert (= (|Seq#Length_3347| |Seq#Empty_11929|) 0))
(assert (forall ((s@@3 T@Seq_29851) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_16239| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_16239| (|Seq#Update_16239| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_16239| (|Seq#Update_16239| s@@3 i@@2 v) n@@3) (|Seq#Index_16239| s@@3 n@@3)))))
 :qid |stdinbpl.326:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_16239| (|Seq#Update_16239| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_16239| s@@3 n@@3) (|Seq#Update_16239| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_3347) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3347| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_3347| (|Seq#Update_3347| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_3347| (|Seq#Update_3347| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_3347| s@@4 n@@4)))))
 :qid |stdinbpl.326:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3347| (|Seq#Update_3347| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_3347| s@@4 n@@4) (|Seq#Update_3347| s@@4 i@@3 v@@0))
)))
(assert (forall ((s@@5 T@Seq_29851) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_16239| s@@5)) (= (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_16239| s@@5) n@@5) (= (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)) (|Seq#Length_16239| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)) 0)))
 :qid |stdinbpl.337:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)))
 :pattern ( (|Seq#Take_16239| s@@5 n@@5) (|Seq#Length_16239| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3347) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3347| s@@6)) (= (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3347| s@@6) n@@6) (= (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)) (|Seq#Length_3347| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)) 0)))
 :qid |stdinbpl.337:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3347| s@@6 n@@6) (|Seq#Length_3347| s@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_23562) (Heap1Heap T@PolymorphicMapType_23562) (A_1@@0 T@VCTArrayDomainType_43550) (i@@4 Int) (P_1@@0 Real) ) (!  (=> (and (=  (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)) (alen_16373 A_1@@0)))  (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)) (alen_16373 A_1@@0)))) (=> (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)) (alen_16373 A_1@@0))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap) (loc_16373 A_1@@0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) item_1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap) (loc_16373 A_1@@0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) item_1)))) (= (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)))
 :qid |stdinbpl.1410:15|
 :skolemid |132|
 :pattern ( (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3347| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.611:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3347| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_29851) (x T@Ref) ) (!  (=> (|Seq#Contains_29851| s@@7 x) (and (and (<= 0 (|Seq#Skolem_29851| s@@7 x)) (< (|Seq#Skolem_29851| s@@7 x) (|Seq#Length_16239| s@@7))) (= (|Seq#Index_16239| s@@7 (|Seq#Skolem_29851| s@@7 x)) x)))
 :qid |stdinbpl.469:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_29851| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3347) (x@@0 Int) ) (!  (=> (|Seq#Contains_3347| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3347| s@@8 x@@0)) (< (|Seq#Skolem_3347| s@@8 x@@0) (|Seq#Length_3347| s@@8))) (= (|Seq#Index_3347| s@@8 (|Seq#Skolem_3347| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.469:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3347| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_29851) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_16239| s@@9 n@@7) s@@9))
 :qid |stdinbpl.453:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_16239| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3347) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3347| s@@10 n@@8) s@@10))
 :qid |stdinbpl.453:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3347| s@@10 n@@8))
)))
(assert (forall ((i@@5 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@5 j@@1) (- i@@5 j@@1))
 :qid |stdinbpl.306:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@5 j@@1))
)))
(assert (forall ((i@@6 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@6 j@@2) (+ i@@6 j@@2))
 :qid |stdinbpl.304:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@6 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_23562) (ExhaleHeap T@PolymorphicMapType_23562) (Mask@@0 T@PolymorphicMapType_23583) (pm_f_32 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16221_65865 Mask@@0 null pm_f_32) (IsPredicateField_16221_65892 pm_f_32)) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@3) null (PredicateMaskField_16221 pm_f_32)) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap) null (PredicateMaskField_16221 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_16221_65892 pm_f_32) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap) null (PredicateMaskField_16221 pm_f_32)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_23562) (ExhaleHeap@@0 T@PolymorphicMapType_23562) (Mask@@1 T@PolymorphicMapType_23583) (pm_f_32@@0 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16221_65865 Mask@@1 null pm_f_32@@0) (IsWandField_16221_67639 pm_f_32@@0)) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@4) null (WandMaskField_16221 pm_f_32@@0)) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@0) null (WandMaskField_16221 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_16221_67639 pm_f_32@@0) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@0) null (WandMaskField_16221 pm_f_32@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_29851| (|Seq#Singleton_16239| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.594:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_29851| (|Seq#Singleton_16239| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3347| (|Seq#Singleton_3581| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.594:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3347| (|Seq#Singleton_3581| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_29851) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_16239| s@@11))) (= (|Seq#Index_16239| (|Seq#Take_16239| s@@11 n@@9) j@@3) (|Seq#Index_16239| s@@11 j@@3)))
 :qid |stdinbpl.345:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_16239| (|Seq#Take_16239| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_16239| s@@11 j@@3) (|Seq#Take_16239| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3347) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3347| s@@12))) (= (|Seq#Index_3347| (|Seq#Take_3347| s@@12 n@@10) j@@4) (|Seq#Index_3347| s@@12 j@@4)))
 :qid |stdinbpl.345:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3347| (|Seq#Take_3347| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3347| s@@12 j@@4) (|Seq#Take_3347| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_29851) (t T@Seq_29851) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_16239| s@@13))) (< n@@11 (|Seq#Length_16239| (|Seq#Append_29851| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_16239| s@@13)) (|Seq#Length_16239| s@@13)) n@@11) (= (|Seq#Take_16239| (|Seq#Append_29851| s@@13 t) n@@11) (|Seq#Append_29851| s@@13 (|Seq#Take_16239| t (|Seq#Sub| n@@11 (|Seq#Length_16239| s@@13)))))))
 :qid |stdinbpl.430:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_16239| (|Seq#Append_29851| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3347) (t@@0 T@Seq_3347) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3347| s@@14))) (< n@@12 (|Seq#Length_3347| (|Seq#Append_3581| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3347| s@@14)) (|Seq#Length_3347| s@@14)) n@@12) (= (|Seq#Take_3347| (|Seq#Append_3581| s@@14 t@@0) n@@12) (|Seq#Append_3581| s@@14 (|Seq#Take_3347| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3347| s@@14)))))))
 :qid |stdinbpl.430:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3347| (|Seq#Append_3581| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_23562) (ExhaleHeap@@1 T@PolymorphicMapType_23562) (Mask@@2 T@PolymorphicMapType_23583) (o_36 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@5) o_36 $allocated) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@1) o_36 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@1) o_36 $allocated))
)))
(assert (forall ((p T@Field_16221_65801) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_23622_23622 p v_1 p w))
 :qid |stdinbpl.248:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23622_23622 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_29851) (s1 T@Seq_29851) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_16239|)) (not (= s1 |Seq#Empty_16239|))) (<= (|Seq#Length_16239| s0) n@@13)) (< n@@13 (|Seq#Length_16239| (|Seq#Append_29851| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_16239| s0)) (|Seq#Length_16239| s0)) n@@13) (= (|Seq#Index_16239| (|Seq#Append_29851| s0 s1) n@@13) (|Seq#Index_16239| s1 (|Seq#Sub| n@@13 (|Seq#Length_16239| s0))))))
 :qid |stdinbpl.317:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_16239| (|Seq#Append_29851| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3347) (s1@@0 T@Seq_3347) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_11929|)) (not (= s1@@0 |Seq#Empty_11929|))) (<= (|Seq#Length_3347| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3347| (|Seq#Append_3581| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3347| s0@@0)) (|Seq#Length_3347| s0@@0)) n@@14) (= (|Seq#Index_3347| (|Seq#Append_3581| s0@@0 s1@@0) n@@14) (|Seq#Index_3347| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3347| s0@@0))))))
 :qid |stdinbpl.317:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3347| (|Seq#Append_3581| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_16221_3581 item_1)))
(assert  (not (IsWandField_16221_3581 item_1)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_23562) (ExhaleHeap@@2 T@PolymorphicMapType_23562) (Mask@@3 T@PolymorphicMapType_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_23583) (o_2@@4 T@Ref) (f_4@@4 T@Field_16221_65934) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_16221_71185 f_4@@4))) (not (IsWandField_16221_71201 f_4@@4))) (<= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_23583) (o_2@@5 T@Ref) (f_4@@5 T@Field_16221_65801) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_16221_65892 f_4@@5))) (not (IsWandField_16221_67639 f_4@@5))) (<= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_23583) (o_2@@6 T@Ref) (f_4@@6 T@Field_23635_23636) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_16221_23636 f_4@@6))) (not (IsWandField_16221_23636 f_4@@6))) (<= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_23583) (o_2@@7 T@Ref) (f_4@@7 T@Field_23622_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_16221_53 f_4@@7))) (not (IsWandField_16221_53 f_4@@7))) (<= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_23583) (o_2@@8 T@Ref) (f_4@@8 T@Field_29804_3581) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_16221_3581 f_4@@8))) (not (IsWandField_16221_3581 f_4@@8))) (<= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_23562) (Mask@@9 T@PolymorphicMapType_23583) (xs@@1 T@Seq_29851) (i@@7 Int) ) (!  (=> (and (state Heap@@7 Mask@@9) (< AssumeFunctionsAbove 0)) (=> (and (and (<= 0 i@@7) (<= i@@7 (|Seq#Length_16239| xs@@1))) (forall ((k Int) (j_9 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_16239| xs@@1)) (and (>= j_9 0) (and (< j_9 (|Seq#Length_16239| xs@@1)) (not (= k j_9)))))) (not (= (|Seq#Index_16239| xs@@1 k) (|Seq#Index_16239| xs@@1 j_9))))
 :qid |stdinbpl.669:96|
 :skolemid |62|
 :pattern ( (|Seq#Index_16239| xs@@1 k) (|Seq#Index_16239| xs@@1 j_9))
))) (= (seqToSeqHelper_wild Heap@@7 xs@@1 i@@7) (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@7) (|Seq#Index_16239| xs@@1 i@@7) item_1)) (|seqToSeqHelper_wild'| Heap@@7 xs@@1 (+ i@@7 1))))))
 :qid |stdinbpl.667:15|
 :skolemid |63|
 :pattern ( (state Heap@@7 Mask@@9) (seqToSeqHelper_wild Heap@@7 xs@@1 i@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_23562) (Mask@@10 T@PolymorphicMapType_23583) (xs@@2 T@Seq_29851) (i@@8 Int) ) (!  (=> (and (state Heap@@8 Mask@@10) (< AssumeFunctionsAbove 1)) (=> (and (and (<= 0 i@@8) (<= i@@8 (|Seq#Length_16239| xs@@2))) (forall ((k@@0 Int) (j_9@@0 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_16239| xs@@2)) (and (>= j_9@@0 0) (and (< j_9@@0 (|Seq#Length_16239| xs@@2)) (not (= k@@0 j_9@@0)))))) (not (= (|Seq#Index_16239| xs@@2 k@@0) (|Seq#Index_16239| xs@@2 j_9@@0))))
 :qid |stdinbpl.1032:96|
 :skolemid |96|
 :pattern ( (|Seq#Index_16239| xs@@2 k@@0) (|Seq#Index_16239| xs@@2 j_9@@0))
))) (= (seqToSeqHelper_frac Heap@@8 xs@@2 i@@8) (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@8) (|Seq#Index_16239| xs@@2 i@@8) item_1)) (|seqToSeqHelper_frac'| Heap@@8 xs@@2 (+ i@@8 1))))))
 :qid |stdinbpl.1030:15|
 :skolemid |97|
 :pattern ( (state Heap@@8 Mask@@10) (seqToSeqHelper_frac Heap@@8 xs@@2 i@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_23583) (o_2@@9 T@Ref) (f_4@@9 T@Field_16221_65934) ) (! (= (HasDirectPerm_16221_71639 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_71639 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_23583) (o_2@@10 T@Ref) (f_4@@10 T@Field_16221_65801) ) (! (= (HasDirectPerm_16221_65865 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_65865 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_23583) (o_2@@11 T@Ref) (f_4@@11 T@Field_23635_23636) ) (! (= (HasDirectPerm_16221_23636 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_23636 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_23583) (o_2@@12 T@Ref) (f_4@@12 T@Field_23622_53) ) (! (= (HasDirectPerm_16221_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_23583) (o_2@@13 T@Ref) (f_4@@13 T@Field_29804_3581) ) (! (= (HasDirectPerm_16221_3581 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_3581 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_23562) (Heap1Heap@@0 T@PolymorphicMapType_23562) (xs@@3 T@Seq_29851) (i@@9 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77))))  (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77))))) (=> (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77)))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap@@0) (|Seq#Index_16239| xs@@3 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) item_1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap@@0) (|Seq#Index_16239| xs@@3 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) item_1)))) (= (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)))
 :qid |stdinbpl.1050:15|
 :skolemid |99|
 :pattern ( (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_23562) (ExhaleHeap@@3 T@PolymorphicMapType_23562) (Mask@@16 T@PolymorphicMapType_23583) (pm_f_32@@1 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_16221_65865 Mask@@16 null pm_f_32@@1) (IsPredicateField_16221_65892 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_41 T@Field_23622_53) ) (!  (=> (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32 f_41) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@9) o2_32 f_41) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32 f_41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32 f_41))
)) (forall ((o2_32@@0 T@Ref) (f_41@@0 T@Field_23635_23636) ) (!  (=> (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@0 f_41@@0) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@9) o2_32@@0 f_41@@0) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@0 f_41@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@0 f_41@@0))
))) (forall ((o2_32@@1 T@Ref) (f_41@@1 T@Field_29804_3581) ) (!  (=> (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@1 f_41@@1) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@9) o2_32@@1 f_41@@1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@1 f_41@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@1 f_41@@1))
))) (forall ((o2_32@@2 T@Ref) (f_41@@2 T@Field_16221_65801) ) (!  (=> (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@2 f_41@@2) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@9) o2_32@@2 f_41@@2) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@2 f_41@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@2 f_41@@2))
))) (forall ((o2_32@@3 T@Ref) (f_41@@3 T@Field_16221_65934) ) (!  (=> (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@3 f_41@@3) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) o2_32@@3 f_41@@3) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@3 f_41@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@3 f_41@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (IsPredicateField_16221_65892 pm_f_32@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_23562) (ExhaleHeap@@4 T@PolymorphicMapType_23562) (Mask@@17 T@PolymorphicMapType_23583) (pm_f_32@@2 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_16221_65865 Mask@@17 null pm_f_32@@2) (IsWandField_16221_67639 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_41@@4 T@Field_23622_53) ) (!  (=> (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@4 f_41@@4) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@10) o2_32@@4 f_41@@4) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@4 f_41@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@4 f_41@@4))
)) (forall ((o2_32@@5 T@Ref) (f_41@@5 T@Field_23635_23636) ) (!  (=> (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@5 f_41@@5) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@10) o2_32@@5 f_41@@5) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@5 f_41@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@5 f_41@@5))
))) (forall ((o2_32@@6 T@Ref) (f_41@@6 T@Field_29804_3581) ) (!  (=> (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@6 f_41@@6) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@10) o2_32@@6 f_41@@6) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@6 f_41@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@6 f_41@@6))
))) (forall ((o2_32@@7 T@Ref) (f_41@@7 T@Field_16221_65801) ) (!  (=> (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@7 f_41@@7) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@10) o2_32@@7 f_41@@7) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@7 f_41@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@7 f_41@@7))
))) (forall ((o2_32@@8 T@Ref) (f_41@@8 T@Field_16221_65934) ) (!  (=> (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@8 f_41@@8) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) o2_32@@8 f_41@@8) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@8 f_41@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@8 f_41@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (IsWandField_16221_67639 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.236:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3347| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.609:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3347| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_23562) (ExhaleHeap@@5 T@PolymorphicMapType_23562) (Mask@@18 T@PolymorphicMapType_23583) (o_36@@0 T@Ref) (f_41@@9 T@Field_16221_65934) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_16221_71639 Mask@@18 o_36@@0 f_41@@9) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@11) o_36@@0 f_41@@9) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@5) o_36@@0 f_41@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@5) o_36@@0 f_41@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_23562) (ExhaleHeap@@6 T@PolymorphicMapType_23562) (Mask@@19 T@PolymorphicMapType_23583) (o_36@@1 T@Ref) (f_41@@10 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_16221_65865 Mask@@19 o_36@@1 f_41@@10) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@12) o_36@@1 f_41@@10) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@6) o_36@@1 f_41@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@6) o_36@@1 f_41@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_23562) (ExhaleHeap@@7 T@PolymorphicMapType_23562) (Mask@@20 T@PolymorphicMapType_23583) (o_36@@2 T@Ref) (f_41@@11 T@Field_23635_23636) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_16221_23636 Mask@@20 o_36@@2 f_41@@11) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@13) o_36@@2 f_41@@11) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@7) o_36@@2 f_41@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@7) o_36@@2 f_41@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_23562) (ExhaleHeap@@8 T@PolymorphicMapType_23562) (Mask@@21 T@PolymorphicMapType_23583) (o_36@@3 T@Ref) (f_41@@12 T@Field_23622_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_16221_53 Mask@@21 o_36@@3 f_41@@12) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@14) o_36@@3 f_41@@12) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@8) o_36@@3 f_41@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@8) o_36@@3 f_41@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_23562) (ExhaleHeap@@9 T@PolymorphicMapType_23562) (Mask@@22 T@PolymorphicMapType_23583) (o_36@@4 T@Ref) (f_41@@13 T@Field_29804_3581) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_16221_3581 Mask@@22 o_36@@4 f_41@@13) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@15) o_36@@4 f_41@@13) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@9) o_36@@4 f_41@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@9) o_36@@4 f_41@@13))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_23562) (Heap1Heap@@1 T@PolymorphicMapType_23562) (xs@@4 T@Seq_29851) (i@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4)))  (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4)))) (=> (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap@@1) (|Seq#Index_16239| xs@@4 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) item_1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap@@1) (|Seq#Index_16239| xs@@4 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) item_1)))) (= (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)))
 :qid |stdinbpl.687:15|
 :skolemid |65|
 :pattern ( (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((s0@@1 T@Seq_29851) (s1@@1 T@Seq_29851) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_16239|)) (not (= s1@@1 |Seq#Empty_16239|))) (= (|Seq#Length_16239| (|Seq#Append_29851| s0@@1 s1@@1)) (+ (|Seq#Length_16239| s0@@1) (|Seq#Length_16239| s1@@1))))
 :qid |stdinbpl.286:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_16239| (|Seq#Append_29851| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3347) (s1@@2 T@Seq_3347) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_11929|)) (not (= s1@@2 |Seq#Empty_11929|))) (= (|Seq#Length_3347| (|Seq#Append_3581| s0@@2 s1@@2)) (+ (|Seq#Length_3347| s0@@2) (|Seq#Length_3347| s1@@2))))
 :qid |stdinbpl.286:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3347| (|Seq#Append_3581| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_16221_65934) ) (! (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_16221_65801) ) (! (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_23635_23636) ) (! (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_23622_53) ) (! (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_29804_3581) ) (! (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_29851) (t@@1 T@Seq_29851) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_16239| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_16239| s@@15)) (|Seq#Length_16239| s@@15)) n@@15) (= (|Seq#Drop_16239| (|Seq#Append_29851| s@@15 t@@1) n@@15) (|Seq#Drop_16239| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_16239| s@@15))))))
 :qid |stdinbpl.443:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_16239| (|Seq#Append_29851| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3347) (t@@2 T@Seq_3347) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3347| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3347| s@@16)) (|Seq#Length_3347| s@@16)) n@@16) (= (|Seq#Drop_3347| (|Seq#Append_3581| s@@16 t@@2) n@@16) (|Seq#Drop_3347| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3347| s@@16))))))
 :qid |stdinbpl.443:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3347| (|Seq#Append_3581| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_23562) (xs@@5 T@Seq_29851) (i@@11 Int) ) (!  (and (= (seqToSeqHelper_wild Heap@@16 xs@@5 i@@11) (|seqToSeqHelper_wild'| Heap@@16 xs@@5 i@@11)) (dummyFunction_29950 (|seqToSeqHelper_wild#triggerStateless| xs@@5 i@@11)))
 :qid |stdinbpl.657:15|
 :skolemid |60|
 :pattern ( (seqToSeqHelper_wild Heap@@16 xs@@5 i@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_23562) (xs@@6 T@Seq_29851) (i@@12 Int) ) (!  (and (= (seqToSeqHelper_frac Heap@@17 xs@@6 i@@12) (|seqToSeqHelper_frac'| Heap@@17 xs@@6 i@@12)) (dummyFunction_29950 (|seqToSeqHelper_frac#triggerStateless| xs@@6 i@@12)))
 :qid |stdinbpl.1020:15|
 :skolemid |94|
 :pattern ( (seqToSeqHelper_frac Heap@@17 xs@@6 i@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_23562) (Mask@@23 T@PolymorphicMapType_23583) (xs@@7 T@Seq_29851) (i@@13 Int) ) (!  (=> (state Heap@@18 Mask@@23) (= (|seqToSeqHelper_wild'| Heap@@18 xs@@7 i@@13) (|seqToSeqHelper_wild#frame| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@18 xs@@7 i@@13)) xs@@7 i@@13)))
 :qid |stdinbpl.677:15|
 :skolemid |64|
 :pattern ( (state Heap@@18 Mask@@23) (|seqToSeqHelper_wild'| Heap@@18 xs@@7 i@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_23562) (Mask@@24 T@PolymorphicMapType_23583) (xs@@8 T@Seq_29851) (i@@14 Int) ) (!  (=> (state Heap@@19 Mask@@24) (= (|seqToSeqHelper_frac'| Heap@@19 xs@@8 i@@14) (|seqToSeqHelper_frac#frame| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@19 xs@@8 i@@14)) xs@@8 i@@14)))
 :qid |stdinbpl.1040:15|
 :skolemid |98|
 :pattern ( (state Heap@@19 Mask@@24) (|seqToSeqHelper_frac'| Heap@@19 xs@@8 i@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_23583) (SummandMask1 T@PolymorphicMapType_23583) (SummandMask2 T@PolymorphicMapType_23583) (o_2@@19 T@Ref) (f_4@@19 T@Field_16221_65934) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_23583) (SummandMask1@@0 T@PolymorphicMapType_23583) (SummandMask2@@0 T@PolymorphicMapType_23583) (o_2@@20 T@Ref) (f_4@@20 T@Field_16221_65801) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_23583) (SummandMask1@@1 T@PolymorphicMapType_23583) (SummandMask2@@1 T@PolymorphicMapType_23583) (o_2@@21 T@Ref) (f_4@@21 T@Field_23635_23636) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_23583) (SummandMask1@@2 T@PolymorphicMapType_23583) (SummandMask2@@2 T@PolymorphicMapType_23583) (o_2@@22 T@Ref) (f_4@@22 T@Field_23622_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_23583) (SummandMask1@@3 T@PolymorphicMapType_23583) (SummandMask2@@3 T@PolymorphicMapType_23583) (o_2@@23 T@Ref) (f_4@@23 T@Field_29804_3581) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3347| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3347| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.608:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3347| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_29851) (b T@Seq_29851) ) (!  (=> (|Seq#Equal_29851| a b) (= a b))
 :qid |stdinbpl.581:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_29851| a b))
)))
(assert (forall ((a@@0 T@Seq_3347) (b@@0 T@Seq_3347) ) (!  (=> (|Seq#Equal_3347| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.581:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3347| a@@0 b@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_23562) (A_1@@1 T@VCTArrayDomainType_43550) (i@@15 Int) (P_1@@1 Real) ) (!  (and (= (sumContrib Heap@@20 A_1@@1 i@@15 P_1@@1) (|sumContrib'| Heap@@20 A_1@@1 i@@15 P_1@@1)) (dummyFunction_3581 (|sumContrib#triggerStateless| A_1@@1 i@@15 P_1@@1)))
 :qid |stdinbpl.1383:15|
 :skolemid |128|
 :pattern ( (sumContrib Heap@@20 A_1@@1 i@@15 P_1@@1))
)))
(assert (forall ((a_2 T@VCTArrayDomainType_43550) ) (! (>= (alen_16373 a_2) 0)
 :qid |stdinbpl.631:20|
 :skolemid |58|
 :pattern ( (alen_16373 a_2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_23562) (Mask@@25 T@PolymorphicMapType_23583) (xs@@9 T@Seq_29851) (i@@16 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (or (< AssumeFunctionsAbove 0) (|seqToSeqHelper_wild#trigger| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@21 xs@@9 i@@16)) xs@@9 i@@16))) (=> (and (and (<= 0 i@@16) (<= i@@16 (|Seq#Length_16239| xs@@9))) (forall ((k_1_1 Int) (j_3_1 Int) ) (!  (=> (and (>= k_1_1 0) (and (< k_1_1 (|Seq#Length_16239| xs@@9)) (and (>= j_3_1 0) (and (< j_3_1 (|Seq#Length_16239| xs@@9)) (not (= k_1_1 j_3_1)))))) (not (= (|Seq#Index_16239| xs@@9 k_1_1) (|Seq#Index_16239| xs@@9 j_3_1))))
 :qid |stdinbpl.702:193|
 :skolemid |68|
 :pattern ( (|Seq#Index_16239| xs@@9 k_1_1) (|Seq#Index_16239| xs@@9 j_3_1))
))) (forall ((j_5_1 Int) ) (!  (=> (and (<= i@@16 j_5_1) (< j_5_1 (|Seq#Length_16239| xs@@9))) (= (|Seq#Index_3347| (|seqToSeqHelper_wild'| Heap@@21 xs@@9 i@@16) (- j_5_1 i@@16)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@21) (|Seq#Index_16239| xs@@9 j_5_1) item_1)))
 :qid |stdinbpl.705:17|
 :skolemid |69|
 :pattern ( (|Seq#Index_16239| xs@@9 j_5_1))
))))
 :qid |stdinbpl.700:15|
 :skolemid |70|
 :pattern ( (state Heap@@21 Mask@@25) (|seqToSeqHelper_wild'| Heap@@21 xs@@9 i@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_23562) (Mask@@26 T@PolymorphicMapType_23583) (xs@@10 T@Seq_29851) (i@@17 Int) ) (!  (=> (and (state Heap@@22 Mask@@26) (or (< AssumeFunctionsAbove 1) (|seqToSeqHelper_frac#trigger| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@22 xs@@10 i@@17)) xs@@10 i@@17))) (=> (and (and (<= 0 i@@17) (<= i@@17 (|Seq#Length_16239| xs@@10))) (forall ((k_1_1@@0 Int) (j_3_1@@0 Int) ) (!  (=> (and (>= k_1_1@@0 0) (and (< k_1_1@@0 (|Seq#Length_16239| xs@@10)) (and (>= j_3_1@@0 0) (and (< j_3_1@@0 (|Seq#Length_16239| xs@@10)) (not (= k_1_1@@0 j_3_1@@0)))))) (not (= (|Seq#Index_16239| xs@@10 k_1_1@@0) (|Seq#Index_16239| xs@@10 j_3_1@@0))))
 :qid |stdinbpl.1065:193|
 :skolemid |102|
 :pattern ( (|Seq#Index_16239| xs@@10 k_1_1@@0) (|Seq#Index_16239| xs@@10 j_3_1@@0))
))) (forall ((j_5_1@@0 Int) ) (!  (=> (and (<= i@@17 j_5_1@@0) (< j_5_1@@0 (|Seq#Length_16239| xs@@10))) (= (|Seq#Index_3347| (|seqToSeqHelper_frac'| Heap@@22 xs@@10 i@@17) (- j_5_1@@0 i@@17)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@22) (|Seq#Index_16239| xs@@10 j_5_1@@0) item_1)))
 :qid |stdinbpl.1068:17|
 :skolemid |103|
 :pattern ( (|Seq#Index_16239| xs@@10 j_5_1@@0))
))))
 :qid |stdinbpl.1063:15|
 :skolemid |104|
 :pattern ( (state Heap@@22 Mask@@26) (|seqToSeqHelper_frac'| Heap@@22 xs@@10 i@@17))
)))
(assert (forall ((s@@17 T@Seq_29851) (i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length_16239| s@@17))) (|Seq#ContainsTrigger_16239| s@@17 (|Seq#Index_16239| s@@17 i@@18)))
 :qid |stdinbpl.474:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_16239| s@@17 i@@18))
)))
(assert (forall ((s@@18 T@Seq_3347) (i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 (|Seq#Length_3347| s@@18))) (|Seq#ContainsTrigger_3347| s@@18 (|Seq#Index_3347| s@@18 i@@19)))
 :qid |stdinbpl.474:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3347| s@@18 i@@19))
)))
(assert (forall ((s0@@3 T@Seq_29851) (s1@@3 T@Seq_29851) ) (!  (and (=> (= s0@@3 |Seq#Empty_16239|) (= (|Seq#Append_29851| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_16239|) (= (|Seq#Append_29851| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.292:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_29851| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3347) (s1@@4 T@Seq_3347) ) (!  (and (=> (= s0@@4 |Seq#Empty_11929|) (= (|Seq#Append_3581| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_11929|) (= (|Seq#Append_3581| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.292:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3581| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_16239| (|Seq#Singleton_16239| t@@3) 0) t@@3)
 :qid |stdinbpl.296:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_16239| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3347| (|Seq#Singleton_3581| t@@4) 0) t@@4)
 :qid |stdinbpl.296:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3581| t@@4))
)))
(assert (forall ((s@@19 T@Seq_29851) ) (! (<= 0 (|Seq#Length_16239| s@@19))
 :qid |stdinbpl.275:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_16239| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3347) ) (! (<= 0 (|Seq#Length_3347| s@@20))
 :qid |stdinbpl.275:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3347| s@@20))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_23562) (Mask@@27 T@PolymorphicMapType_23583) (xs@@11 T@Seq_29851) (i@@20 Int) ) (!  (=> (and (state Heap@@23 Mask@@27) (or (< AssumeFunctionsAbove 0) (|seqToSeqHelper_wild#trigger| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@23 xs@@11 i@@20)) xs@@11 i@@20))) (=> (and (and (<= 0 i@@20) (<= i@@20 (|Seq#Length_16239| xs@@11))) (forall ((k_1_1@@1 Int) (j_3_1@@1 Int) ) (!  (=> (and (>= k_1_1@@1 0) (and (< k_1_1@@1 (|Seq#Length_16239| xs@@11)) (and (>= j_3_1@@1 0) (and (< j_3_1@@1 (|Seq#Length_16239| xs@@11)) (not (= k_1_1@@1 j_3_1@@1)))))) (not (= (|Seq#Index_16239| xs@@11 k_1_1@@1) (|Seq#Index_16239| xs@@11 j_3_1@@1))))
 :qid |stdinbpl.695:193|
 :skolemid |66|
 :pattern ( (|Seq#Index_16239| xs@@11 k_1_1@@1) (|Seq#Index_16239| xs@@11 j_3_1@@1))
))) (= (|Seq#Length_3347| (|seqToSeqHelper_wild'| Heap@@23 xs@@11 i@@20)) (- (|Seq#Length_16239| xs@@11) i@@20))))
 :qid |stdinbpl.693:15|
 :skolemid |67|
 :pattern ( (state Heap@@23 Mask@@27) (|seqToSeqHelper_wild'| Heap@@23 xs@@11 i@@20))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_23562) (Mask@@28 T@PolymorphicMapType_23583) (xs@@12 T@Seq_29851) (i@@21 Int) ) (!  (=> (and (state Heap@@24 Mask@@28) (or (< AssumeFunctionsAbove 1) (|seqToSeqHelper_frac#trigger| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@24 xs@@12 i@@21)) xs@@12 i@@21))) (=> (and (and (<= 0 i@@21) (<= i@@21 (|Seq#Length_16239| xs@@12))) (forall ((k_1_1@@2 Int) (j_3_1@@2 Int) ) (!  (=> (and (>= k_1_1@@2 0) (and (< k_1_1@@2 (|Seq#Length_16239| xs@@12)) (and (>= j_3_1@@2 0) (and (< j_3_1@@2 (|Seq#Length_16239| xs@@12)) (not (= k_1_1@@2 j_3_1@@2)))))) (not (= (|Seq#Index_16239| xs@@12 k_1_1@@2) (|Seq#Index_16239| xs@@12 j_3_1@@2))))
 :qid |stdinbpl.1058:193|
 :skolemid |100|
 :pattern ( (|Seq#Index_16239| xs@@12 k_1_1@@2) (|Seq#Index_16239| xs@@12 j_3_1@@2))
))) (= (|Seq#Length_3347| (|seqToSeqHelper_frac'| Heap@@24 xs@@12 i@@21)) (- (|Seq#Length_16239| xs@@12) i@@21))))
 :qid |stdinbpl.1056:15|
 :skolemid |101|
 :pattern ( (state Heap@@24 Mask@@28) (|seqToSeqHelper_frac'| Heap@@24 xs@@12 i@@21))
)))
(assert (forall ((s0@@5 T@Seq_29851) (s1@@5 T@Seq_29851) ) (!  (=> (|Seq#Equal_29851| s0@@5 s1@@5) (and (= (|Seq#Length_16239| s0@@5) (|Seq#Length_16239| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_16239| s0@@5))) (= (|Seq#Index_16239| s0@@5 j@@6) (|Seq#Index_16239| s1@@5 j@@6)))
 :qid |stdinbpl.571:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_16239| s0@@5 j@@6))
 :pattern ( (|Seq#Index_16239| s1@@5 j@@6))
))))
 :qid |stdinbpl.568:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_29851| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3347) (s1@@6 T@Seq_3347) ) (!  (=> (|Seq#Equal_3347| s0@@6 s1@@6) (and (= (|Seq#Length_3347| s0@@6) (|Seq#Length_3347| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3347| s0@@6))) (= (|Seq#Index_3347| s0@@6 j@@7) (|Seq#Index_3347| s1@@6 j@@7)))
 :qid |stdinbpl.571:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3347| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3347| s1@@6 j@@7))
))))
 :qid |stdinbpl.568:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3347| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_16239| (|Seq#Singleton_16239| t@@5)) 1)
 :qid |stdinbpl.283:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_16239| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3347| (|Seq#Singleton_3581| t@@6)) 1)
 :qid |stdinbpl.283:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3581| t@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_23562) (Mask@@29 T@PolymorphicMapType_23583) (A_1@@2 T@VCTArrayDomainType_43550) (i@@22 Int) (P_1@@2 Real) ) (!  (=> (state Heap@@25 Mask@@29) (= (|sumContrib'| Heap@@25 A_1@@2 i@@22 P_1@@2) (|sumContrib#frame| (FrameFragment_3887 (|sumContrib#condqp3| Heap@@25 A_1@@2 i@@22 P_1@@2)) A_1@@2 i@@22 P_1@@2)))
 :qid |stdinbpl.1400:15|
 :skolemid |131|
 :pattern ( (state Heap@@25 Mask@@29) (|sumContrib'| Heap@@25 A_1@@2 i@@22 P_1@@2))
)))
(assert (forall ((s@@21 T@Seq_29851) (t@@7 T@Seq_29851) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_16239| s@@21))) (= (|Seq#Take_16239| (|Seq#Append_29851| s@@21 t@@7) n@@17) (|Seq#Take_16239| s@@21 n@@17)))
 :qid |stdinbpl.425:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_16239| (|Seq#Append_29851| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3347) (t@@8 T@Seq_3347) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3347| s@@22))) (= (|Seq#Take_3347| (|Seq#Append_3581| s@@22 t@@8) n@@18) (|Seq#Take_3347| s@@22 n@@18)))
 :qid |stdinbpl.425:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3347| (|Seq#Append_3581| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_29851) (i@@23 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_16239| s@@23))) (= (|Seq#Length_16239| (|Seq#Update_16239| s@@23 i@@23 v@@2)) (|Seq#Length_16239| s@@23)))
 :qid |stdinbpl.324:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_16239| (|Seq#Update_16239| s@@23 i@@23 v@@2)))
 :pattern ( (|Seq#Length_16239| s@@23) (|Seq#Update_16239| s@@23 i@@23 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3347) (i@@24 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3347| s@@24))) (= (|Seq#Length_3347| (|Seq#Update_3347| s@@24 i@@24 v@@3)) (|Seq#Length_3347| s@@24)))
 :qid |stdinbpl.324:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3347| (|Seq#Update_3347| s@@24 i@@24 v@@3)))
 :pattern ( (|Seq#Length_3347| s@@24) (|Seq#Update_3347| s@@24 i@@24 v@@3))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_23562) (Mask@@30 T@PolymorphicMapType_23583) (A_1@@3 T@VCTArrayDomainType_43550) (i@@25 Int) (P_1@@3 Real) ) (!  (=> (and (state Heap@@26 Mask@@30) (< AssumeFunctionsAbove 2)) (=> (and (and (< (/ (to_real 0) (to_real 1)) P_1@@3) (< P_1@@3 (/ (to_real 1) (to_real 1)))) (and (<= 0 i@@25) (<= i@@25 (alen_16373 A_1@@3)))) (= (sumContrib Heap@@26 A_1@@3 i@@25 P_1@@3) (ite (= i@@25 (alen_16373 A_1@@3)) 0 (+ (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@26) (loc_16373 A_1@@3 i@@25) item_1) (|sumContrib'| Heap@@26 A_1@@3 (+ i@@25 1) P_1@@3))))))
 :qid |stdinbpl.1393:15|
 :skolemid |130|
 :pattern ( (state Heap@@26 Mask@@30) (sumContrib Heap@@26 A_1@@3 i@@25 P_1@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_23562) (o_24 T@Ref) (f_48 T@Field_16221_65801) (v@@4 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@27) (store (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@27) o_24 f_48 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@27) (store (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@27) o_24 f_48 v@@4)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_23562) (o_24@@0 T@Ref) (f_48@@0 T@Field_16221_65934) (v@@5 T@PolymorphicMapType_24111) ) (! (succHeap Heap@@28 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@28) (store (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@28) o_24@@0 f_48@@0 v@@5) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@28) (store (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@28) o_24@@0 f_48@@0 v@@5) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_23562) (o_24@@1 T@Ref) (f_48@@1 T@Field_29804_3581) (v@@6 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@29) (store (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@29) o_24@@1 f_48@@1 v@@6) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@29) (store (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@29) o_24@@1 f_48@@1 v@@6) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_23562) (o_24@@2 T@Ref) (f_48@@2 T@Field_23635_23636) (v@@7 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@30) (store (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@30) o_24@@2 f_48@@2 v@@7) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@30) (store (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@30) o_24@@2 f_48@@2 v@@7) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_23562) (o_24@@3 T@Ref) (f_48@@3 T@Field_23622_53) (v@@8 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_23562 (store (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@31) o_24@@3 f_48@@3 v@@8) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (store (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@31) o_24@@3 f_48@@3 v@@8) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@31)))
)))
(assert (forall ((s@@25 T@Seq_29851) (t@@9 T@Seq_29851) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_16239| s@@25))) (= (|Seq#Drop_16239| (|Seq#Append_29851| s@@25 t@@9) n@@19) (|Seq#Append_29851| (|Seq#Drop_16239| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.439:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_16239| (|Seq#Append_29851| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3347) (t@@10 T@Seq_3347) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3347| s@@26))) (= (|Seq#Drop_3347| (|Seq#Append_3581| s@@26 t@@10) n@@20) (|Seq#Append_3581| (|Seq#Drop_3347| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.439:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3347| (|Seq#Append_3581| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_29851) (n@@21 Int) (i@@26 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@26)) (< i@@26 (|Seq#Length_16239| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@26 n@@21) n@@21) i@@26) (= (|Seq#Index_16239| (|Seq#Drop_16239| s@@27 n@@21) (|Seq#Sub| i@@26 n@@21)) (|Seq#Index_16239| s@@27 i@@26))))
 :qid |stdinbpl.375:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_16239| s@@27 n@@21) (|Seq#Index_16239| s@@27 i@@26))
)))
(assert (forall ((s@@28 T@Seq_3347) (n@@22 Int) (i@@27 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@27)) (< i@@27 (|Seq#Length_3347| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@27 n@@22) n@@22) i@@27) (= (|Seq#Index_3347| (|Seq#Drop_3347| s@@28 n@@22) (|Seq#Sub| i@@27 n@@22)) (|Seq#Index_3347| s@@28 i@@27))))
 :qid |stdinbpl.375:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3347| s@@28 n@@22) (|Seq#Index_3347| s@@28 i@@27))
)))
(assert (forall ((s0@@7 T@Seq_29851) (s1@@7 T@Seq_29851) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_16239|)) (not (= s1@@7 |Seq#Empty_16239|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_16239| s0@@7))) (= (|Seq#Index_16239| (|Seq#Append_29851| s0@@7 s1@@7) n@@23) (|Seq#Index_16239| s0@@7 n@@23)))
 :qid |stdinbpl.315:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_16239| (|Seq#Append_29851| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_16239| s0@@7 n@@23) (|Seq#Append_29851| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3347) (s1@@8 T@Seq_3347) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_11929|)) (not (= s1@@8 |Seq#Empty_11929|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3347| s0@@8))) (= (|Seq#Index_3347| (|Seq#Append_3581| s0@@8 s1@@8) n@@24) (|Seq#Index_3347| s0@@8 n@@24)))
 :qid |stdinbpl.315:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3347| (|Seq#Append_3581| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3347| s0@@8 n@@24) (|Seq#Append_3581| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_29851) (s1@@9 T@Seq_29851) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_16239|)) (not (= s1@@9 |Seq#Empty_16239|))) (<= 0 m)) (< m (|Seq#Length_16239| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_16239| s0@@9)) (|Seq#Length_16239| s0@@9)) m) (= (|Seq#Index_16239| (|Seq#Append_29851| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_16239| s0@@9))) (|Seq#Index_16239| s1@@9 m))))
 :qid |stdinbpl.320:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_16239| s1@@9 m) (|Seq#Append_29851| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3347) (s1@@10 T@Seq_3347) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_11929|)) (not (= s1@@10 |Seq#Empty_11929|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3347| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3347| s0@@10)) (|Seq#Length_3347| s0@@10)) m@@0) (= (|Seq#Index_3347| (|Seq#Append_3581| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3347| s0@@10))) (|Seq#Index_3347| s1@@10 m@@0))))
 :qid |stdinbpl.320:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3347| s1@@10 m@@0) (|Seq#Append_3581| s0@@10 s1@@10))
)))
(assert (forall ((o_24@@4 T@Ref) (f_26 T@Field_23635_23636) (Heap@@32 T@PolymorphicMapType_23562) ) (!  (=> (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@32) o_24@@4 $allocated) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@32) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@32) o_24@@4 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@32) o_24@@4 f_26))
)))
(assert (forall ((s@@29 T@Seq_29851) (x@@3 T@Ref) (i@@28 Int) ) (!  (=> (and (and (<= 0 i@@28) (< i@@28 (|Seq#Length_16239| s@@29))) (= (|Seq#Index_16239| s@@29 i@@28) x@@3)) (|Seq#Contains_29851| s@@29 x@@3))
 :qid |stdinbpl.472:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_29851| s@@29 x@@3) (|Seq#Index_16239| s@@29 i@@28))
)))
(assert (forall ((s@@30 T@Seq_3347) (x@@4 Int) (i@@29 Int) ) (!  (=> (and (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3347| s@@30))) (= (|Seq#Index_3347| s@@30 i@@29) x@@4)) (|Seq#Contains_3347| s@@30 x@@4))
 :qid |stdinbpl.472:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3347| s@@30 x@@4) (|Seq#Index_3347| s@@30 i@@29))
)))
(assert (forall ((s0@@11 T@Seq_29851) (s1@@11 T@Seq_29851) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_29851| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_29851| s0@@11 s1@@11))) (not (= (|Seq#Length_16239| s0@@11) (|Seq#Length_16239| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_29851| s0@@11 s1@@11))) (= (|Seq#Length_16239| s0@@11) (|Seq#Length_16239| s1@@11))) (= (|Seq#SkolemDiff_29851| s0@@11 s1@@11) (|Seq#SkolemDiff_29851| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_29851| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_29851| s0@@11 s1@@11) (|Seq#Length_16239| s0@@11))) (not (= (|Seq#Index_16239| s0@@11 (|Seq#SkolemDiff_29851| s0@@11 s1@@11)) (|Seq#Index_16239| s1@@11 (|Seq#SkolemDiff_29851| s0@@11 s1@@11))))))
 :qid |stdinbpl.576:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_29851| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3347) (s1@@12 T@Seq_3347) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3347| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3347| s0@@12 s1@@12))) (not (= (|Seq#Length_3347| s0@@12) (|Seq#Length_3347| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3347| s0@@12 s1@@12))) (= (|Seq#Length_3347| s0@@12) (|Seq#Length_3347| s1@@12))) (= (|Seq#SkolemDiff_3347| s0@@12 s1@@12) (|Seq#SkolemDiff_3347| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3347| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3347| s0@@12 s1@@12) (|Seq#Length_3347| s0@@12))) (not (= (|Seq#Index_3347| s0@@12 (|Seq#SkolemDiff_3347| s0@@12 s1@@12)) (|Seq#Index_3347| s1@@12 (|Seq#SkolemDiff_3347| s0@@12 s1@@12))))))
 :qid |stdinbpl.576:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3347| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_16221_65801) (v_1@@0 T@FrameType) (q T@Field_16221_65801) (w@@0 T@FrameType) (r T@Field_16221_65801) (u T@FrameType) ) (!  (=> (and (InsidePredicate_23622_23622 p@@1 v_1@@0 q w@@0) (InsidePredicate_23622_23622 q w@@0 r u)) (InsidePredicate_23622_23622 p@@1 v_1@@0 r u))
 :qid |stdinbpl.243:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23622_23622 p@@1 v_1@@0 q w@@0) (InsidePredicate_23622_23622 q w@@0 r u))
)))
(assert (forall ((a_2@@0 T@VCTArrayDomainType_43550) (i@@30 Int) (j_9@@1 Int) ) (!  (=> (and (>= i@@30 0) (and (>= j_9@@1 0) (and (< i@@30 (alen_16373 a_2@@0)) (and (< j_9@@1 (alen_16373 a_2@@0)) (not (= i@@30 j_9@@1)))))) (not (= (loc_16373 a_2@@0 i@@30) (loc_16373 a_2@@0 j_9@@1))))
 :qid |stdinbpl.637:20|
 :skolemid |59|
 :pattern ( (loc_16373 a_2@@0 i@@30) (loc_16373 a_2@@0 j_9@@1))
)))
(assert (forall ((s@@31 T@Seq_29851) ) (!  (=> (= (|Seq#Length_16239| s@@31) 0) (= s@@31 |Seq#Empty_16239|))
 :qid |stdinbpl.279:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_16239| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3347) ) (!  (=> (= (|Seq#Length_3347| s@@32) 0) (= s@@32 |Seq#Empty_11929|))
 :qid |stdinbpl.279:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3347| s@@32))
)))
(assert (forall ((s@@33 T@Seq_29851) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_16239| s@@33 n@@25) |Seq#Empty_16239|))
 :qid |stdinbpl.455:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_16239| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3347) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3347| s@@34 n@@26) |Seq#Empty_11929|))
 :qid |stdinbpl.455:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3347| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun j@@8 () Int)
(declare-fun xs@@13 () T@Seq_29851)
(declare-fun wildcard () Real)
(declare-fun Heap@@33 () T@PolymorphicMapType_23562)
(declare-fun k_1 () Int)
(declare-fun j_5 () Int)
(declare-fun i@@31 () Int)
(declare-fun k_6 () Int)
(declare-fun j_14_1 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@0 () T@PolymorphicMapType_23583)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun j_18_1 () Int)
(declare-fun Result@0 () T@Seq_3347)
(declare-fun j_7 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun j_2 () Int)
(declare-fun k_4 () Int)
(declare-fun j_6 () Int)
(set-info :boogie-vc-id |seqToSeqHelper_wild#definedness|)
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
 (=> (= (ControlFlow 0 0) 64) (let ((anon8_correct true))
(let ((anon38_Else_correct  (=> (and (not (and (<= 0 j@@8) (< j@@8 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 60) 56)) anon8_correct)))
(let ((anon38_Then_correct  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 57) (- 0 59)) (>= j@@8 0)) (=> (>= j@@8 0) (and (=> (= (ControlFlow 0 57) (- 0 58)) (< j@@8 (|Seq#Length_16239| xs@@13))) (=> (< j@@8 (|Seq#Length_16239| xs@@13)) (=> (= (ControlFlow 0 57) 56) anon8_correct))))))))
(let ((anon37_Else_correct  (=> (= (ControlFlow 0 55) (- 0 54)) (forall ((j_9_1 Int) (j_9_2 Int) ) (!  (=> (and (and (and (and (not (= j_9_1 j_9_2)) (and (<= 0 j_9_1) (< j_9_1 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_9_2) (< j_9_2 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_16239| xs@@13 j_9_1) (|Seq#Index_16239| xs@@13 j_9_2))))
 :qid |stdinbpl.783:19|
 :skolemid |72|
)))))
(let ((anon35_Else_correct  (=> (and (forall ((k_3 Int) (j_7_1 Int) ) (!  (=> (and (>= k_3 0) (and (< k_3 (|Seq#Length_16239| xs@@13)) (and (>= j_7_1 0) (and (< j_7_1 (|Seq#Length_16239| xs@@13)) (not (= k_3 j_7_1)))))) (not (= (|Seq#Index_16239| xs@@13 k_3) (|Seq#Index_16239| xs@@13 j_7_1))))
 :qid |stdinbpl.765:24|
 :skolemid |71|
 :pattern ( (|Seq#Index_16239| xs@@13 k_3) (|Seq#Index_16239| xs@@13 j_7_1))
)) (state Heap@@33 ZeroMask)) (and (and (=> (= (ControlFlow 0 61) 55) anon37_Else_correct) (=> (= (ControlFlow 0 61) 57) anon38_Then_correct)) (=> (= (ControlFlow 0 61) 60) anon38_Else_correct)))))
(let ((anon4_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (>= k_1 0) (and (< k_1 (|Seq#Length_16239| xs@@13)) (and (>= j_5 0) (and (< j_5 (|Seq#Length_16239| xs@@13)) (not (= k_1 j_5))))))) (= (ControlFlow 0 53) 47)) anon4_correct)))
(let ((anon36_Then_correct  (=> (and (>= k_1 0) (and (< k_1 (|Seq#Length_16239| xs@@13)) (and (>= j_5 0) (and (< j_5 (|Seq#Length_16239| xs@@13)) (not (= k_1 j_5)))))) (and (=> (= (ControlFlow 0 48) (- 0 52)) (>= k_1 0)) (=> (>= k_1 0) (and (=> (= (ControlFlow 0 48) (- 0 51)) (< k_1 (|Seq#Length_16239| xs@@13))) (=> (< k_1 (|Seq#Length_16239| xs@@13)) (and (=> (= (ControlFlow 0 48) (- 0 50)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 48) (- 0 49)) (< j_5 (|Seq#Length_16239| xs@@13))) (=> (< j_5 (|Seq#Length_16239| xs@@13)) (=> (= (ControlFlow 0 48) 47) anon4_correct))))))))))))
(let ((anon34_Then_correct  (=> (<= 0 i@@31) (=> (and (<= i@@31 (|Seq#Length_16239| xs@@13)) (state Heap@@33 ZeroMask)) (and (and (=> (= (ControlFlow 0 62) 61) anon35_Else_correct) (=> (= (ControlFlow 0 62) 48) anon36_Then_correct)) (=> (= (ControlFlow 0 62) 53) anon36_Else_correct))))))
(let ((anon22_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (>= k_6 0) (and (< k_6 (|Seq#Length_16239| xs@@13)) (and (>= j_14_1 0) (and (< j_14_1 (|Seq#Length_16239| xs@@13)) (not (= k_6 j_14_1))))))) (= (ControlFlow 0 36) 33)) anon22_correct)))
(let ((anon45_Then_correct  (=> (and (>= k_6 0) (and (< k_6 (|Seq#Length_16239| xs@@13)) (and (>= j_14_1 0) (and (< j_14_1 (|Seq#Length_16239| xs@@13)) (not (= k_6 j_14_1)))))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (not (= (|Seq#Index_16239| xs@@13 k_6) (|Seq#Index_16239| xs@@13 j_14_1)))) (=> (not (= (|Seq#Index_16239| xs@@13 k_6) (|Seq#Index_16239| xs@@13 j_14_1))) (=> (= (ControlFlow 0 34) 33) anon22_correct))))))
(let ((anon44_Else_correct  (=> (and (forall ((k_7_1_1 Int) (j_15_1_1 Int) ) (!  (=> (and (>= k_7_1_1 0) (and (< k_7_1_1 (|Seq#Length_16239| xs@@13)) (and (>= j_15_1_1 0) (and (< j_15_1_1 (|Seq#Length_16239| xs@@13)) (not (= k_7_1_1 j_15_1_1)))))) (not (= (|Seq#Index_16239| xs@@13 k_7_1_1) (|Seq#Index_16239| xs@@13 j_15_1_1))))
 :qid |stdinbpl.917:24|
 :skolemid |85|
 :pattern ( (|Seq#Index_16239| xs@@13 k_7_1_1) (|Seq#Index_16239| xs@@13 j_15_1_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 29) (- 0 32)) (forall ((j_16_2 Int) ) (!  (=> (and (<= 0 j_16_2) (< j_16_2 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_16_2) item_1) NoPerm))
 :qid |stdinbpl.925:19|
 :skolemid |86|
))) (=> (forall ((j_16_2@@0 Int) ) (!  (=> (and (<= 0 j_16_2@@0) (< j_16_2@@0 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_16_2@@0) item_1) NoPerm))
 :qid |stdinbpl.925:19|
 :skolemid |86|
)) (=> (forall ((j_16_2@@1 Int) ) (!  (=> (and (<= 0 j_16_2@@1) (< j_16_2@@1 (|Seq#Length_16239| xs@@13))) (< wildcard@0 (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_16_2@@1) item_1)))
 :qid |stdinbpl.929:24|
 :skolemid |87|
)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (forall ((j_16_2@@2 Int) ) (!  (=> (and (and (<= 0 j_16_2@@2) (< j_16_2@@2 (|Seq#Length_16239| xs@@13))) (dummyFunction_3581 (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@33) (|Seq#Index_16239| xs@@13 j_16_2@@2) item_1))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.936:21|
 :skolemid |88|
 :pattern ( (|Seq#Index_16239| xs@@13 j_16_2@@2))
 :pattern ( (|Seq#Index_16239| xs@@13 j_16_2@@2))
))) (=> (forall ((j_16_2@@3 Int) ) (!  (=> (and (and (<= 0 j_16_2@@3) (< j_16_2@@3 (|Seq#Length_16239| xs@@13))) (dummyFunction_3581 (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@33) (|Seq#Index_16239| xs@@13 j_16_2@@3) item_1))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.936:21|
 :skolemid |88|
 :pattern ( (|Seq#Index_16239| xs@@13 j_16_2@@3))
 :pattern ( (|Seq#Index_16239| xs@@13 j_16_2@@3))
)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((j_16_2@@4 Int) (j_16_3 Int) ) (!  (=> (and (and (and (and (not (= j_16_2@@4 j_16_3)) (and (<= 0 j_16_2@@4) (< j_16_2@@4 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_16_3) (< j_16_3 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_16239| xs@@13 j_16_2@@4) (|Seq#Index_16239| xs@@13 j_16_3))))
 :qid |stdinbpl.943:21|
 :skolemid |89|
 :pattern ( (neverTriggered3 j_16_2@@4) (neverTriggered3 j_16_3))
))) (=> (forall ((j_16_2@@5 Int) (j_16_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_16_2@@5 j_16_3@@0)) (and (<= 0 j_16_2@@5) (< j_16_2@@5 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_16_3@@0) (< j_16_3@@0 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_16239| xs@@13 j_16_2@@5) (|Seq#Index_16239| xs@@13 j_16_3@@0))))
 :qid |stdinbpl.943:21|
 :skolemid |89|
 :pattern ( (neverTriggered3 j_16_2@@5) (neverTriggered3 j_16_3@@0))
)) (=> (= (ControlFlow 0 29) (- 0 28)) (forall ((j_16_2@@6 Int) ) (!  (=> (and (<= 0 j_16_2@@6) (< j_16_2@@6 (|Seq#Length_16239| xs@@13))) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_16_2@@6) item_1) NoPerm)))
 :qid |stdinbpl.950:21|
 :skolemid |90|
 :pattern ( (|Seq#Index_16239| xs@@13 j_16_2@@6))
 :pattern ( (|Seq#Index_16239| xs@@13 j_16_2@@6))
)))))))))))))
(let ((anon43_Then_correct  (and (=> (= (ControlFlow 0 37) (- 0 39)) (<= 0 (+ i@@31 1))) (=> (<= 0 (+ i@@31 1)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= (+ i@@31 1) (|Seq#Length_16239| xs@@13))) (=> (<= (+ i@@31 1) (|Seq#Length_16239| xs@@13)) (and (and (=> (= (ControlFlow 0 37) 29) anon44_Else_correct) (=> (= (ControlFlow 0 37) 34) anon45_Then_correct)) (=> (= (ControlFlow 0 37) 36) anon45_Else_correct))))))))
(let ((anon32_correct true))
(let ((anon49_Else_correct  (=> (and (not (and (<= i@@31 j_18_1) (< j_18_1 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 25) 22)) anon32_correct)))
(let ((anon49_Then_correct  (=> (and (<= i@@31 j_18_1) (< j_18_1 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (= (|Seq#Index_3347| Result@0 (- j_18_1 i@@31)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@33) (|Seq#Index_16239| xs@@13 j_18_1) item_1))) (=> (= (|Seq#Index_3347| Result@0 (- j_18_1 i@@31)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@33) (|Seq#Index_16239| xs@@13 j_18_1) item_1)) (=> (= (ControlFlow 0 23) 22) anon32_correct))))))
(let ((anon28_correct true))
(let ((anon47_Else_correct  (=> (and (not (and (<= i@@31 j_7) (< j_7 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 21) 14)) anon28_correct)))
(let ((anon47_Then_correct  (=> (and (<= i@@31 j_7) (< j_7 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 15) (- 0 20)) (>= (- j_7 i@@31) 0)) (=> (>= (- j_7 i@@31) 0) (and (=> (= (ControlFlow 0 15) (- 0 19)) (< (- j_7 i@@31) (|Seq#Length_3347| Result@0))) (=> (< (- j_7 i@@31) (|Seq#Length_3347| Result@0)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 15) (- 0 17)) (< j_7 (|Seq#Length_16239| xs@@13))) (=> (< j_7 (|Seq#Length_16239| xs@@13)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_16221_3581 QPMask@0 (|Seq#Index_16239| xs@@13 j_7) item_1)) (=> (HasDirectPerm_16221_3581 QPMask@0 (|Seq#Index_16239| xs@@13 j_7) item_1) (=> (= (ControlFlow 0 15) 14) anon28_correct))))))))))))))
(let ((anon48_Else_correct true))
(let ((anon43_Else_correct  (=> (and (|seqToSeqHelper_wild#trigger| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@33 xs@@13 (+ i@@31 1))) xs@@13 (+ i@@31 1)) (= Result@0 (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@33) (|Seq#Index_16239| xs@@13 i@@31) item_1)) (seqToSeqHelper_wild Heap@@33 xs@@13 (+ i@@31 1))))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (= (|Seq#Length_3347| Result@0) (- (|Seq#Length_16239| xs@@13) i@@31))) (=> (= (|Seq#Length_3347| Result@0) (- (|Seq#Length_16239| xs@@13) i@@31)) (and (and (and (and (=> (= (ControlFlow 0 26) 13) anon48_Else_correct) (=> (= (ControlFlow 0 26) 23) anon49_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon49_Else_correct)) (=> (= (ControlFlow 0 26) 15) anon47_Then_correct)) (=> (= (ControlFlow 0 26) 21) anon47_Else_correct)))))))
(let ((anon41_Else_correct  (and (=> (= (ControlFlow 0 40) (- 0 44)) (forall ((j_13_2 Int) (j_13_3 Int) ) (!  (=> (and (and (and (and (not (= j_13_2 j_13_3)) (and (<= 0 j_13_2) (< j_13_2 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_13_3) (< j_13_3 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_16239| xs@@13 j_13_2) (|Seq#Index_16239| xs@@13 j_13_3))))
 :qid |stdinbpl.857:17|
 :skolemid |79|
))) (=> (forall ((j_13_2@@0 Int) (j_13_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_13_2@@0 j_13_3@@0)) (and (<= 0 j_13_2@@0) (< j_13_2@@0 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_13_3@@0) (< j_13_3@@0 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_16239| xs@@13 j_13_2@@0) (|Seq#Index_16239| xs@@13 j_13_3@@0))))
 :qid |stdinbpl.857:17|
 :skolemid |79|
)) (=> (and (and (forall ((j_13_2@@1 Int) ) (!  (=> (and (<= 0 j_13_2@@1) (< j_13_2@@1 (|Seq#Length_16239| xs@@13))) (and (qpRange2 (|Seq#Index_16239| xs@@13 j_13_2@@1)) (= (invRecv2 (|Seq#Index_16239| xs@@13 j_13_2@@1)) j_13_2@@1)))
 :qid |stdinbpl.863:24|
 :skolemid |80|
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@1))
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (|Seq#Length_16239| xs@@13))) (qpRange2 o_4)) (= (|Seq#Index_16239| xs@@13 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.867:24|
 :skolemid |81|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((j_13_2@@2 Int) ) (!  (=> (and (<= 0 j_13_2@@2) (< j_13_2@@2 (|Seq#Length_16239| xs@@13))) (not (= (|Seq#Index_16239| xs@@13 j_13_2@@2) null)))
 :qid |stdinbpl.873:24|
 :skolemid |82|
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@2))
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_16239| xs@@13))) (qpRange2 o_4@@0)) (and (= (|Seq#Index_16239| xs@@13 (invRecv2 o_4@@0)) o_4@@0) (< (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_4@@0 item_1) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_4@@0 item_1)))) (=> (not (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_16239| xs@@13))) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_4@@0 item_1) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_4@@0 item_1))))
 :qid |stdinbpl.879:24|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_4@@0 item_1))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_23622_53) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.883:31|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_23635_23636) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.883:31|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_29804_3581) ) (!  (=> (not (= f_5@@1 item_1)) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.883:31|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_16221_65801) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.883:31|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_16221_65934) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.883:31|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@0) o_4@@5 f_5@@3))
))) (and (and (state Heap@@33 QPMask@0) (state Heap@@33 QPMask@0)) (and (< i@@31 (|Seq#Length_16239| xs@@13)) (state Heap@@33 QPMask@0)))) (and (=> (= (ControlFlow 0 40) (- 0 43)) (>= i@@31 0)) (=> (>= i@@31 0) (and (=> (= (ControlFlow 0 40) (- 0 42)) (< i@@31 (|Seq#Length_16239| xs@@13))) (=> (< i@@31 (|Seq#Length_16239| xs@@13)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (HasDirectPerm_16221_3581 QPMask@0 (|Seq#Index_16239| xs@@13 i@@31) item_1)) (=> (HasDirectPerm_16221_3581 QPMask@0 (|Seq#Index_16239| xs@@13 i@@31) item_1) (and (=> (= (ControlFlow 0 40) 37) anon43_Then_correct) (=> (= (ControlFlow 0 40) 26) anon43_Else_correct))))))))))))))
(let ((anon17_correct true))
(let ((anon42_Else_correct  (=> (and (not (and (<= 0 j_2) (< j_2 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 12) 8)) anon17_correct)))
(let ((anon42_Then_correct  (=> (and (<= 0 j_2) (< j_2 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_2 (|Seq#Length_16239| xs@@13))) (=> (< j_2 (|Seq#Length_16239| xs@@13)) (=> (= (ControlFlow 0 9) 8) anon17_correct))))))))
(let ((anon39_Else_correct  (=> (and (forall ((k_5 Int) (j_11_2 Int) ) (!  (=> (and (>= k_5 0) (and (< k_5 (|Seq#Length_16239| xs@@13)) (and (>= j_11_2 0) (and (< j_11_2 (|Seq#Length_16239| xs@@13)) (not (= k_5 j_11_2)))))) (not (= (|Seq#Index_16239| xs@@13 k_5) (|Seq#Index_16239| xs@@13 j_11_2))))
 :qid |stdinbpl.839:22|
 :skolemid |78|
 :pattern ( (|Seq#Index_16239| xs@@13 k_5) (|Seq#Index_16239| xs@@13 j_11_2))
)) (state Heap@@33 ZeroMask)) (and (and (=> (= (ControlFlow 0 45) 40) anon41_Else_correct) (=> (= (ControlFlow 0 45) 9) anon42_Then_correct)) (=> (= (ControlFlow 0 45) 12) anon42_Else_correct)))))
(let ((anon13_correct true))
(let ((anon40_Else_correct  (=> (and (not (and (>= k_4 0) (and (< k_4 (|Seq#Length_16239| xs@@13)) (and (>= j_6 0) (and (< j_6 (|Seq#Length_16239| xs@@13)) (not (= k_4 j_6))))))) (= (ControlFlow 0 7) 1)) anon13_correct)))
(let ((anon40_Then_correct  (=> (and (>= k_4 0) (and (< k_4 (|Seq#Length_16239| xs@@13)) (and (>= j_6 0) (and (< j_6 (|Seq#Length_16239| xs@@13)) (not (= k_4 j_6)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_4 0)) (=> (>= k_4 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_4 (|Seq#Length_16239| xs@@13))) (=> (< k_4 (|Seq#Length_16239| xs@@13)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_6 (|Seq#Length_16239| xs@@13))) (=> (< j_6 (|Seq#Length_16239| xs@@13)) (=> (= (ControlFlow 0 2) 1) anon13_correct))))))))))))
(let ((anon34_Else_correct  (=> (<= 0 i@@31) (=> (and (<= i@@31 (|Seq#Length_16239| xs@@13)) (state Heap@@33 ZeroMask)) (and (and (=> (= (ControlFlow 0 46) 45) anon39_Else_correct) (=> (= (ControlFlow 0 46) 2) anon40_Then_correct)) (=> (= (ControlFlow 0 46) 7) anon40_Else_correct))))))
(let ((anon0_correct  (=> (state Heap@@33 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 63) 62) anon34_Then_correct) (=> (= (ControlFlow 0 63) 46) anon34_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 64) 63)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
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
(declare-sort T@Field_23622_53 0)
(declare-sort T@Field_23635_23636 0)
(declare-sort T@Field_29804_3581 0)
(declare-sort T@Field_16221_65934 0)
(declare-sort T@Field_16221_65801 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_23583 0)) (((PolymorphicMapType_23583 (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| (Array T@Ref T@Field_29804_3581 Real)) (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| (Array T@Ref T@Field_23622_53 Real)) (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| (Array T@Ref T@Field_23635_23636 Real)) (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| (Array T@Ref T@Field_16221_65801 Real)) (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| (Array T@Ref T@Field_16221_65934 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24111 0)) (((PolymorphicMapType_24111 (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (Array T@Ref T@Field_23622_53 Bool)) (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (Array T@Ref T@Field_23635_23636 Bool)) (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (Array T@Ref T@Field_29804_3581 Bool)) (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (Array T@Ref T@Field_16221_65801 Bool)) (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (Array T@Ref T@Field_16221_65934 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23562 0)) (((PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| (Array T@Ref T@Field_23622_53 Bool)) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| (Array T@Ref T@Field_23635_23636 T@Ref)) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| (Array T@Ref T@Field_29804_3581 Int)) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| (Array T@Ref T@Field_16221_65934 T@PolymorphicMapType_24111)) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| (Array T@Ref T@Field_16221_65801 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_23622_53)
(declare-fun item_1 () T@Field_29804_3581)
(declare-sort T@Seq_29851 0)
(declare-fun |Seq#Length_16239| (T@Seq_29851) Int)
(declare-fun |Seq#Drop_16239| (T@Seq_29851 Int) T@Seq_29851)
(declare-sort T@Seq_3347 0)
(declare-fun |Seq#Length_3347| (T@Seq_3347) Int)
(declare-fun |Seq#Drop_3347| (T@Seq_3347 Int) T@Seq_3347)
(declare-fun succHeap (T@PolymorphicMapType_23562 T@PolymorphicMapType_23562) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_23562 T@PolymorphicMapType_23562) Bool)
(declare-fun state (T@PolymorphicMapType_23562 T@PolymorphicMapType_23583) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_23583) Bool)
(declare-sort T@VCTArrayDomainType_43550 0)
(declare-fun |sumContrib'| (T@PolymorphicMapType_23562 T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun dummyFunction_3581 (Int) Bool)
(declare-fun |sumContrib#triggerStateless| (T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_24111)
(declare-fun |seqToSeqHelper_wild'| (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun dummyFunction_29950 (T@Seq_3347) Bool)
(declare-fun |seqToSeqHelper_wild#triggerStateless| (T@Seq_29851 Int) T@Seq_3347)
(declare-fun |seqToSeqHelper_frac'| (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun |seqToSeqHelper_frac#triggerStateless| (T@Seq_29851 Int) T@Seq_3347)
(declare-fun |Seq#Index_16239| (T@Seq_29851 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3347| (T@Seq_3347 Int) Int)
(declare-fun |Seq#Empty_16239| () T@Seq_29851)
(declare-fun |Seq#Empty_11929| () T@Seq_3347)
(declare-fun |Seq#Update_16239| (T@Seq_29851 Int T@Ref) T@Seq_29851)
(declare-fun |Seq#Update_3347| (T@Seq_3347 Int Int) T@Seq_3347)
(declare-fun |Seq#Take_16239| (T@Seq_29851 Int) T@Seq_29851)
(declare-fun |Seq#Take_3347| (T@Seq_3347 Int) T@Seq_3347)
(declare-fun |sumContrib#condqp3| (T@PolymorphicMapType_23562 T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun |sk_sumContrib#condqp3| (Int Int) Int)
(declare-fun alen_16373 (T@VCTArrayDomainType_43550) Int)
(declare-fun loc_16373 (T@VCTArrayDomainType_43550 Int) T@Ref)
(declare-fun |Seq#Contains_3347| (T@Seq_3347 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3347)
(declare-fun |Seq#Contains_29851| (T@Seq_29851 T@Ref) Bool)
(declare-fun |Seq#Skolem_29851| (T@Seq_29851 T@Ref) Int)
(declare-fun |Seq#Skolem_3347| (T@Seq_3347 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_23562 T@PolymorphicMapType_23562 T@PolymorphicMapType_23583) Bool)
(declare-fun IsPredicateField_16221_65892 (T@Field_16221_65801) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16221 (T@Field_16221_65801) T@Field_16221_65934)
(declare-fun HasDirectPerm_16221_65865 (T@PolymorphicMapType_23583 T@Ref T@Field_16221_65801) Bool)
(declare-fun IsWandField_16221_67639 (T@Field_16221_65801) Bool)
(declare-fun WandMaskField_16221 (T@Field_16221_65801) T@Field_16221_65934)
(declare-fun |Seq#Singleton_16239| (T@Ref) T@Seq_29851)
(declare-fun |Seq#Singleton_3581| (Int) T@Seq_3347)
(declare-fun |Seq#Append_29851| (T@Seq_29851 T@Seq_29851) T@Seq_29851)
(declare-fun |Seq#Append_3581| (T@Seq_3347 T@Seq_3347) T@Seq_3347)
(declare-fun dummyHeap () T@PolymorphicMapType_23562)
(declare-fun ZeroMask () T@PolymorphicMapType_23583)
(declare-fun InsidePredicate_23622_23622 (T@Field_16221_65801 T@FrameType T@Field_16221_65801 T@FrameType) Bool)
(declare-fun IsPredicateField_16221_3581 (T@Field_29804_3581) Bool)
(declare-fun IsWandField_16221_3581 (T@Field_29804_3581) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16221_71185 (T@Field_16221_65934) Bool)
(declare-fun IsWandField_16221_71201 (T@Field_16221_65934) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_16221_23636 (T@Field_23635_23636) Bool)
(declare-fun IsWandField_16221_23636 (T@Field_23635_23636) Bool)
(declare-fun IsPredicateField_16221_53 (T@Field_23622_53) Bool)
(declare-fun IsWandField_16221_53 (T@Field_23622_53) Bool)
(declare-fun seqToSeqHelper_wild (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun seqToSeqHelper_frac (T@PolymorphicMapType_23562 T@Seq_29851 Int) T@Seq_3347)
(declare-fun HasDirectPerm_16221_71639 (T@PolymorphicMapType_23583 T@Ref T@Field_16221_65934) Bool)
(declare-fun HasDirectPerm_16221_23636 (T@PolymorphicMapType_23583 T@Ref T@Field_23635_23636) Bool)
(declare-fun HasDirectPerm_16221_53 (T@PolymorphicMapType_23583 T@Ref T@Field_23622_53) Bool)
(declare-fun HasDirectPerm_16221_3581 (T@PolymorphicMapType_23583 T@Ref T@Field_29804_3581) Bool)
(declare-fun |seqToSeqHelper_frac#condqp2| (T@PolymorphicMapType_23562 T@Seq_29851 Int) Int)
(declare-fun |sk_seqToSeqHelper_frac#condqp2| (Int Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |seqToSeqHelper_wild#condqp1| (T@PolymorphicMapType_23562 T@Seq_29851 Int) Int)
(declare-fun |sk_seqToSeqHelper_wild#condqp1| (Int Int) Int)
(declare-fun |seqToSeqHelper_wild#frame| (T@FrameType T@Seq_29851 Int) T@Seq_3347)
(declare-fun FrameFragment_3887 (Int) T@FrameType)
(declare-fun |seqToSeqHelper_frac#frame| (T@FrameType T@Seq_29851 Int) T@Seq_3347)
(declare-fun sumMask (T@PolymorphicMapType_23583 T@PolymorphicMapType_23583 T@PolymorphicMapType_23583) Bool)
(declare-fun |Seq#Equal_29851| (T@Seq_29851 T@Seq_29851) Bool)
(declare-fun |Seq#Equal_3347| (T@Seq_3347 T@Seq_3347) Bool)
(declare-fun sumContrib (T@PolymorphicMapType_23562 T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun |seqToSeqHelper_wild#trigger| (T@FrameType T@Seq_29851 Int) Bool)
(declare-fun |seqToSeqHelper_frac#trigger| (T@FrameType T@Seq_29851 Int) Bool)
(declare-fun |Seq#ContainsTrigger_16239| (T@Seq_29851 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3347| (T@Seq_3347 Int) Bool)
(declare-fun |sumContrib#frame| (T@FrameType T@VCTArrayDomainType_43550 Int Real) Int)
(declare-fun |Seq#SkolemDiff_29851| (T@Seq_29851 T@Seq_29851) Int)
(declare-fun |Seq#SkolemDiff_3347| (T@Seq_3347 T@Seq_3347) Int)
(assert (forall ((s T@Seq_29851) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_16239| s)) (= (|Seq#Length_16239| (|Seq#Drop_16239| s n)) (- (|Seq#Length_16239| s) n))) (=> (< (|Seq#Length_16239| s) n) (= (|Seq#Length_16239| (|Seq#Drop_16239| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_16239| (|Seq#Drop_16239| s n)) (|Seq#Length_16239| s))))
 :qid |stdinbpl.350:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_16239| (|Seq#Drop_16239| s n)))
 :pattern ( (|Seq#Length_16239| s) (|Seq#Drop_16239| s n))
)))
(assert (forall ((s@@0 T@Seq_3347) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3347| s@@0)) (= (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)) (- (|Seq#Length_3347| s@@0) n@@0))) (=> (< (|Seq#Length_3347| s@@0) n@@0) (= (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)) (|Seq#Length_3347| s@@0))))
 :qid |stdinbpl.350:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3347| (|Seq#Drop_3347| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3347| s@@0) (|Seq#Drop_3347| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_23562) (Heap1 T@PolymorphicMapType_23562) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_23562) (Mask T@PolymorphicMapType_23583) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_23562) (Heap1@@0 T@PolymorphicMapType_23562) (Heap2 T@PolymorphicMapType_23562) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_23562) (A_1 T@VCTArrayDomainType_43550) (i Int) (P_1 Real) ) (! (dummyFunction_3581 (|sumContrib#triggerStateless| A_1 i P_1))
 :qid |stdinbpl.1387:15|
 :skolemid |129|
 :pattern ( (|sumContrib'| Heap@@0 A_1 i P_1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16221_65934) ) (!  (not (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16221_65801) ) (!  (not (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_29804_3581) ) (!  (not (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_23635_23636) ) (!  (not (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_23622_53) ) (!  (not (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_23562) (xs T@Seq_29851) (i@@0 Int) ) (! (dummyFunction_29950 (|seqToSeqHelper_wild#triggerStateless| xs i@@0))
 :qid |stdinbpl.661:15|
 :skolemid |61|
 :pattern ( (|seqToSeqHelper_wild'| Heap@@1 xs i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_23562) (xs@@0 T@Seq_29851) (i@@1 Int) ) (! (dummyFunction_29950 (|seqToSeqHelper_frac#triggerStateless| xs@@0 i@@1))
 :qid |stdinbpl.1024:15|
 :skolemid |95|
 :pattern ( (|seqToSeqHelper_frac'| Heap@@2 xs@@0 i@@1))
)))
(assert (forall ((s@@1 T@Seq_29851) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_16239| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_16239| (|Seq#Drop_16239| s@@1 n@@1) j) (|Seq#Index_16239| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.371:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_16239| (|Seq#Drop_16239| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3347) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3347| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3347| (|Seq#Drop_3347| s@@2 n@@2) j@@0) (|Seq#Index_3347| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.371:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3347| (|Seq#Drop_3347| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_16239| |Seq#Empty_16239|) 0))
(assert (= (|Seq#Length_3347| |Seq#Empty_11929|) 0))
(assert (forall ((s@@3 T@Seq_29851) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_16239| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_16239| (|Seq#Update_16239| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_16239| (|Seq#Update_16239| s@@3 i@@2 v) n@@3) (|Seq#Index_16239| s@@3 n@@3)))))
 :qid |stdinbpl.326:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_16239| (|Seq#Update_16239| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_16239| s@@3 n@@3) (|Seq#Update_16239| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_3347) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3347| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_3347| (|Seq#Update_3347| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_3347| (|Seq#Update_3347| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_3347| s@@4 n@@4)))))
 :qid |stdinbpl.326:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3347| (|Seq#Update_3347| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_3347| s@@4 n@@4) (|Seq#Update_3347| s@@4 i@@3 v@@0))
)))
(assert (forall ((s@@5 T@Seq_29851) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_16239| s@@5)) (= (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_16239| s@@5) n@@5) (= (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)) (|Seq#Length_16239| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)) 0)))
 :qid |stdinbpl.337:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_16239| (|Seq#Take_16239| s@@5 n@@5)))
 :pattern ( (|Seq#Take_16239| s@@5 n@@5) (|Seq#Length_16239| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3347) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3347| s@@6)) (= (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3347| s@@6) n@@6) (= (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)) (|Seq#Length_3347| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)) 0)))
 :qid |stdinbpl.337:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3347| (|Seq#Take_3347| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3347| s@@6 n@@6) (|Seq#Length_3347| s@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_23562) (Heap1Heap T@PolymorphicMapType_23562) (A_1@@0 T@VCTArrayDomainType_43550) (i@@4 Int) (P_1@@0 Real) ) (!  (=> (and (=  (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)) (alen_16373 A_1@@0)))  (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)) (alen_16373 A_1@@0)))) (=> (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)) (alen_16373 A_1@@0))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap) (loc_16373 A_1@@0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) item_1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap) (loc_16373 A_1@@0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0))) item_1)))) (= (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0)))
 :qid |stdinbpl.1410:15|
 :skolemid |132|
 :pattern ( (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_1@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_1@@0) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3347| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.611:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3347| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_29851) (x T@Ref) ) (!  (=> (|Seq#Contains_29851| s@@7 x) (and (and (<= 0 (|Seq#Skolem_29851| s@@7 x)) (< (|Seq#Skolem_29851| s@@7 x) (|Seq#Length_16239| s@@7))) (= (|Seq#Index_16239| s@@7 (|Seq#Skolem_29851| s@@7 x)) x)))
 :qid |stdinbpl.469:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_29851| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3347) (x@@0 Int) ) (!  (=> (|Seq#Contains_3347| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3347| s@@8 x@@0)) (< (|Seq#Skolem_3347| s@@8 x@@0) (|Seq#Length_3347| s@@8))) (= (|Seq#Index_3347| s@@8 (|Seq#Skolem_3347| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.469:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3347| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_29851) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_16239| s@@9 n@@7) s@@9))
 :qid |stdinbpl.453:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_16239| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3347) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3347| s@@10 n@@8) s@@10))
 :qid |stdinbpl.453:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3347| s@@10 n@@8))
)))
(assert (forall ((i@@5 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@5 j@@1) (- i@@5 j@@1))
 :qid |stdinbpl.306:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@5 j@@1))
)))
(assert (forall ((i@@6 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@6 j@@2) (+ i@@6 j@@2))
 :qid |stdinbpl.304:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@6 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_23562) (ExhaleHeap T@PolymorphicMapType_23562) (Mask@@0 T@PolymorphicMapType_23583) (pm_f_32 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16221_65865 Mask@@0 null pm_f_32) (IsPredicateField_16221_65892 pm_f_32)) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@3) null (PredicateMaskField_16221 pm_f_32)) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap) null (PredicateMaskField_16221 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_16221_65892 pm_f_32) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap) null (PredicateMaskField_16221 pm_f_32)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_23562) (ExhaleHeap@@0 T@PolymorphicMapType_23562) (Mask@@1 T@PolymorphicMapType_23583) (pm_f_32@@0 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16221_65865 Mask@@1 null pm_f_32@@0) (IsWandField_16221_67639 pm_f_32@@0)) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@4) null (WandMaskField_16221 pm_f_32@@0)) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@0) null (WandMaskField_16221 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_16221_67639 pm_f_32@@0) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@0) null (WandMaskField_16221 pm_f_32@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_29851| (|Seq#Singleton_16239| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.594:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_29851| (|Seq#Singleton_16239| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3347| (|Seq#Singleton_3581| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.594:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3347| (|Seq#Singleton_3581| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_29851) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_16239| s@@11))) (= (|Seq#Index_16239| (|Seq#Take_16239| s@@11 n@@9) j@@3) (|Seq#Index_16239| s@@11 j@@3)))
 :qid |stdinbpl.345:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_16239| (|Seq#Take_16239| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_16239| s@@11 j@@3) (|Seq#Take_16239| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3347) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3347| s@@12))) (= (|Seq#Index_3347| (|Seq#Take_3347| s@@12 n@@10) j@@4) (|Seq#Index_3347| s@@12 j@@4)))
 :qid |stdinbpl.345:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3347| (|Seq#Take_3347| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3347| s@@12 j@@4) (|Seq#Take_3347| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_29851) (t T@Seq_29851) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_16239| s@@13))) (< n@@11 (|Seq#Length_16239| (|Seq#Append_29851| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_16239| s@@13)) (|Seq#Length_16239| s@@13)) n@@11) (= (|Seq#Take_16239| (|Seq#Append_29851| s@@13 t) n@@11) (|Seq#Append_29851| s@@13 (|Seq#Take_16239| t (|Seq#Sub| n@@11 (|Seq#Length_16239| s@@13)))))))
 :qid |stdinbpl.430:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_16239| (|Seq#Append_29851| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3347) (t@@0 T@Seq_3347) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3347| s@@14))) (< n@@12 (|Seq#Length_3347| (|Seq#Append_3581| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3347| s@@14)) (|Seq#Length_3347| s@@14)) n@@12) (= (|Seq#Take_3347| (|Seq#Append_3581| s@@14 t@@0) n@@12) (|Seq#Append_3581| s@@14 (|Seq#Take_3347| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3347| s@@14)))))))
 :qid |stdinbpl.430:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3347| (|Seq#Append_3581| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_23562) (ExhaleHeap@@1 T@PolymorphicMapType_23562) (Mask@@2 T@PolymorphicMapType_23583) (o_36 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@5) o_36 $allocated) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@1) o_36 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@1) o_36 $allocated))
)))
(assert (forall ((p T@Field_16221_65801) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_23622_23622 p v_1 p w))
 :qid |stdinbpl.248:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23622_23622 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_29851) (s1 T@Seq_29851) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_16239|)) (not (= s1 |Seq#Empty_16239|))) (<= (|Seq#Length_16239| s0) n@@13)) (< n@@13 (|Seq#Length_16239| (|Seq#Append_29851| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_16239| s0)) (|Seq#Length_16239| s0)) n@@13) (= (|Seq#Index_16239| (|Seq#Append_29851| s0 s1) n@@13) (|Seq#Index_16239| s1 (|Seq#Sub| n@@13 (|Seq#Length_16239| s0))))))
 :qid |stdinbpl.317:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_16239| (|Seq#Append_29851| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3347) (s1@@0 T@Seq_3347) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_11929|)) (not (= s1@@0 |Seq#Empty_11929|))) (<= (|Seq#Length_3347| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3347| (|Seq#Append_3581| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3347| s0@@0)) (|Seq#Length_3347| s0@@0)) n@@14) (= (|Seq#Index_3347| (|Seq#Append_3581| s0@@0 s1@@0) n@@14) (|Seq#Index_3347| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3347| s0@@0))))))
 :qid |stdinbpl.317:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3347| (|Seq#Append_3581| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_16221_3581 item_1)))
(assert  (not (IsWandField_16221_3581 item_1)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_23562) (ExhaleHeap@@2 T@PolymorphicMapType_23562) (Mask@@3 T@PolymorphicMapType_23583) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_23583) (o_2@@4 T@Ref) (f_4@@4 T@Field_16221_65934) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_16221_71185 f_4@@4))) (not (IsWandField_16221_71201 f_4@@4))) (<= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_23583) (o_2@@5 T@Ref) (f_4@@5 T@Field_16221_65801) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_16221_65892 f_4@@5))) (not (IsWandField_16221_67639 f_4@@5))) (<= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_23583) (o_2@@6 T@Ref) (f_4@@6 T@Field_23635_23636) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_16221_23636 f_4@@6))) (not (IsWandField_16221_23636 f_4@@6))) (<= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_23583) (o_2@@7 T@Ref) (f_4@@7 T@Field_23622_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_16221_53 f_4@@7))) (not (IsWandField_16221_53 f_4@@7))) (<= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_23583) (o_2@@8 T@Ref) (f_4@@8 T@Field_29804_3581) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_16221_3581 f_4@@8))) (not (IsWandField_16221_3581 f_4@@8))) (<= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_23562) (Mask@@9 T@PolymorphicMapType_23583) (xs@@1 T@Seq_29851) (i@@7 Int) ) (!  (=> (and (state Heap@@7 Mask@@9) (< AssumeFunctionsAbove 0)) (=> (and (and (<= 0 i@@7) (<= i@@7 (|Seq#Length_16239| xs@@1))) (forall ((k Int) (j_9 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_16239| xs@@1)) (and (>= j_9 0) (and (< j_9 (|Seq#Length_16239| xs@@1)) (not (= k j_9)))))) (not (= (|Seq#Index_16239| xs@@1 k) (|Seq#Index_16239| xs@@1 j_9))))
 :qid |stdinbpl.669:96|
 :skolemid |62|
 :pattern ( (|Seq#Index_16239| xs@@1 k) (|Seq#Index_16239| xs@@1 j_9))
))) (= (seqToSeqHelper_wild Heap@@7 xs@@1 i@@7) (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@7) (|Seq#Index_16239| xs@@1 i@@7) item_1)) (|seqToSeqHelper_wild'| Heap@@7 xs@@1 (+ i@@7 1))))))
 :qid |stdinbpl.667:15|
 :skolemid |63|
 :pattern ( (state Heap@@7 Mask@@9) (seqToSeqHelper_wild Heap@@7 xs@@1 i@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_23562) (Mask@@10 T@PolymorphicMapType_23583) (xs@@2 T@Seq_29851) (i@@8 Int) ) (!  (=> (and (state Heap@@8 Mask@@10) (< AssumeFunctionsAbove 1)) (=> (and (and (<= 0 i@@8) (<= i@@8 (|Seq#Length_16239| xs@@2))) (forall ((k@@0 Int) (j_9@@0 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_16239| xs@@2)) (and (>= j_9@@0 0) (and (< j_9@@0 (|Seq#Length_16239| xs@@2)) (not (= k@@0 j_9@@0)))))) (not (= (|Seq#Index_16239| xs@@2 k@@0) (|Seq#Index_16239| xs@@2 j_9@@0))))
 :qid |stdinbpl.1032:96|
 :skolemid |96|
 :pattern ( (|Seq#Index_16239| xs@@2 k@@0) (|Seq#Index_16239| xs@@2 j_9@@0))
))) (= (seqToSeqHelper_frac Heap@@8 xs@@2 i@@8) (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@8) (|Seq#Index_16239| xs@@2 i@@8) item_1)) (|seqToSeqHelper_frac'| Heap@@8 xs@@2 (+ i@@8 1))))))
 :qid |stdinbpl.1030:15|
 :skolemid |97|
 :pattern ( (state Heap@@8 Mask@@10) (seqToSeqHelper_frac Heap@@8 xs@@2 i@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_23583) (o_2@@9 T@Ref) (f_4@@9 T@Field_16221_65934) ) (! (= (HasDirectPerm_16221_71639 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_71639 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_23583) (o_2@@10 T@Ref) (f_4@@10 T@Field_16221_65801) ) (! (= (HasDirectPerm_16221_65865 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_65865 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_23583) (o_2@@11 T@Ref) (f_4@@11 T@Field_23635_23636) ) (! (= (HasDirectPerm_16221_23636 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_23636 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_23583) (o_2@@12 T@Ref) (f_4@@12 T@Field_23622_53) ) (! (= (HasDirectPerm_16221_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_23583) (o_2@@13 T@Ref) (f_4@@13 T@Field_29804_3581) ) (! (= (HasDirectPerm_16221_3581 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16221_3581 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_23562) (Heap1Heap@@0 T@PolymorphicMapType_23562) (xs@@3 T@Seq_29851) (i@@9 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77))))  (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77))))) (=> (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77)))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap@@0) (|Seq#Index_16239| xs@@3 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) item_1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap@@0) (|Seq#Index_16239| xs@@3 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) item_1)))) (= (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)))
 :qid |stdinbpl.1050:15|
 :skolemid |99|
 :pattern ( (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_23562) (ExhaleHeap@@3 T@PolymorphicMapType_23562) (Mask@@16 T@PolymorphicMapType_23583) (pm_f_32@@1 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_16221_65865 Mask@@16 null pm_f_32@@1) (IsPredicateField_16221_65892 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_41 T@Field_23622_53) ) (!  (=> (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32 f_41) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@9) o2_32 f_41) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32 f_41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32 f_41))
)) (forall ((o2_32@@0 T@Ref) (f_41@@0 T@Field_23635_23636) ) (!  (=> (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@0 f_41@@0) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@9) o2_32@@0 f_41@@0) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@0 f_41@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@0 f_41@@0))
))) (forall ((o2_32@@1 T@Ref) (f_41@@1 T@Field_29804_3581) ) (!  (=> (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@1 f_41@@1) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@9) o2_32@@1 f_41@@1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@1 f_41@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@1 f_41@@1))
))) (forall ((o2_32@@2 T@Ref) (f_41@@2 T@Field_16221_65801) ) (!  (=> (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@2 f_41@@2) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@9) o2_32@@2 f_41@@2) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@2 f_41@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@2 f_41@@2))
))) (forall ((o2_32@@3 T@Ref) (f_41@@3 T@Field_16221_65934) ) (!  (=> (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_32@@1))) o2_32@@3 f_41@@3) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) o2_32@@3 f_41@@3) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@3 f_41@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@3) o2_32@@3 f_41@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (IsPredicateField_16221_65892 pm_f_32@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_23562) (ExhaleHeap@@4 T@PolymorphicMapType_23562) (Mask@@17 T@PolymorphicMapType_23583) (pm_f_32@@2 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_16221_65865 Mask@@17 null pm_f_32@@2) (IsWandField_16221_67639 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_41@@4 T@Field_23622_53) ) (!  (=> (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@4 f_41@@4) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@10) o2_32@@4 f_41@@4) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@4 f_41@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@4 f_41@@4))
)) (forall ((o2_32@@5 T@Ref) (f_41@@5 T@Field_23635_23636) ) (!  (=> (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@5 f_41@@5) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@10) o2_32@@5 f_41@@5) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@5 f_41@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@5 f_41@@5))
))) (forall ((o2_32@@6 T@Ref) (f_41@@6 T@Field_29804_3581) ) (!  (=> (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@6 f_41@@6) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@10) o2_32@@6 f_41@@6) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@6 f_41@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@6 f_41@@6))
))) (forall ((o2_32@@7 T@Ref) (f_41@@7 T@Field_16221_65801) ) (!  (=> (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@7 f_41@@7) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@10) o2_32@@7 f_41@@7) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@7 f_41@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@7 f_41@@7))
))) (forall ((o2_32@@8 T@Ref) (f_41@@8 T@Field_16221_65934) ) (!  (=> (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_32@@2))) o2_32@@8 f_41@@8) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) o2_32@@8 f_41@@8) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@8 f_41@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@4) o2_32@@8 f_41@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (IsWandField_16221_67639 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.236:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3347| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.609:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3347| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_23562) (ExhaleHeap@@5 T@PolymorphicMapType_23562) (Mask@@18 T@PolymorphicMapType_23583) (o_36@@0 T@Ref) (f_41@@9 T@Field_16221_65934) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_16221_71639 Mask@@18 o_36@@0 f_41@@9) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@11) o_36@@0 f_41@@9) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@5) o_36@@0 f_41@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@5) o_36@@0 f_41@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_23562) (ExhaleHeap@@6 T@PolymorphicMapType_23562) (Mask@@19 T@PolymorphicMapType_23583) (o_36@@1 T@Ref) (f_41@@10 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_16221_65865 Mask@@19 o_36@@1 f_41@@10) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@12) o_36@@1 f_41@@10) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@6) o_36@@1 f_41@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@6) o_36@@1 f_41@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_23562) (ExhaleHeap@@7 T@PolymorphicMapType_23562) (Mask@@20 T@PolymorphicMapType_23583) (o_36@@2 T@Ref) (f_41@@11 T@Field_23635_23636) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_16221_23636 Mask@@20 o_36@@2 f_41@@11) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@13) o_36@@2 f_41@@11) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@7) o_36@@2 f_41@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@7) o_36@@2 f_41@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_23562) (ExhaleHeap@@8 T@PolymorphicMapType_23562) (Mask@@21 T@PolymorphicMapType_23583) (o_36@@3 T@Ref) (f_41@@12 T@Field_23622_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_16221_53 Mask@@21 o_36@@3 f_41@@12) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@14) o_36@@3 f_41@@12) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@8) o_36@@3 f_41@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@8) o_36@@3 f_41@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_23562) (ExhaleHeap@@9 T@PolymorphicMapType_23562) (Mask@@22 T@PolymorphicMapType_23583) (o_36@@4 T@Ref) (f_41@@13 T@Field_29804_3581) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_16221_3581 Mask@@22 o_36@@4 f_41@@13) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@15) o_36@@4 f_41@@13) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@9) o_36@@4 f_41@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@9) o_36@@4 f_41@@13))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_23562) (Heap1Heap@@1 T@PolymorphicMapType_23562) (xs@@4 T@Seq_29851) (i@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4)))  (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4)))) (=> (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap@@1) (|Seq#Index_16239| xs@@4 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) item_1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap@@1) (|Seq#Index_16239| xs@@4 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) item_1)))) (= (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)))
 :qid |stdinbpl.687:15|
 :skolemid |65|
 :pattern ( (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((s0@@1 T@Seq_29851) (s1@@1 T@Seq_29851) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_16239|)) (not (= s1@@1 |Seq#Empty_16239|))) (= (|Seq#Length_16239| (|Seq#Append_29851| s0@@1 s1@@1)) (+ (|Seq#Length_16239| s0@@1) (|Seq#Length_16239| s1@@1))))
 :qid |stdinbpl.286:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_16239| (|Seq#Append_29851| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3347) (s1@@2 T@Seq_3347) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_11929|)) (not (= s1@@2 |Seq#Empty_11929|))) (= (|Seq#Length_3347| (|Seq#Append_3581| s0@@2 s1@@2)) (+ (|Seq#Length_3347| s0@@2) (|Seq#Length_3347| s1@@2))))
 :qid |stdinbpl.286:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3347| (|Seq#Append_3581| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_16221_65934) ) (! (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_16221_65801) ) (! (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_23635_23636) ) (! (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_23622_53) ) (! (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_29804_3581) ) (! (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_29851) (t@@1 T@Seq_29851) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_16239| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_16239| s@@15)) (|Seq#Length_16239| s@@15)) n@@15) (= (|Seq#Drop_16239| (|Seq#Append_29851| s@@15 t@@1) n@@15) (|Seq#Drop_16239| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_16239| s@@15))))))
 :qid |stdinbpl.443:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_16239| (|Seq#Append_29851| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3347) (t@@2 T@Seq_3347) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3347| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3347| s@@16)) (|Seq#Length_3347| s@@16)) n@@16) (= (|Seq#Drop_3347| (|Seq#Append_3581| s@@16 t@@2) n@@16) (|Seq#Drop_3347| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3347| s@@16))))))
 :qid |stdinbpl.443:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3347| (|Seq#Append_3581| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_23562) (xs@@5 T@Seq_29851) (i@@11 Int) ) (!  (and (= (seqToSeqHelper_wild Heap@@16 xs@@5 i@@11) (|seqToSeqHelper_wild'| Heap@@16 xs@@5 i@@11)) (dummyFunction_29950 (|seqToSeqHelper_wild#triggerStateless| xs@@5 i@@11)))
 :qid |stdinbpl.657:15|
 :skolemid |60|
 :pattern ( (seqToSeqHelper_wild Heap@@16 xs@@5 i@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_23562) (xs@@6 T@Seq_29851) (i@@12 Int) ) (!  (and (= (seqToSeqHelper_frac Heap@@17 xs@@6 i@@12) (|seqToSeqHelper_frac'| Heap@@17 xs@@6 i@@12)) (dummyFunction_29950 (|seqToSeqHelper_frac#triggerStateless| xs@@6 i@@12)))
 :qid |stdinbpl.1020:15|
 :skolemid |94|
 :pattern ( (seqToSeqHelper_frac Heap@@17 xs@@6 i@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_23562) (Mask@@23 T@PolymorphicMapType_23583) (xs@@7 T@Seq_29851) (i@@13 Int) ) (!  (=> (state Heap@@18 Mask@@23) (= (|seqToSeqHelper_wild'| Heap@@18 xs@@7 i@@13) (|seqToSeqHelper_wild#frame| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@18 xs@@7 i@@13)) xs@@7 i@@13)))
 :qid |stdinbpl.677:15|
 :skolemid |64|
 :pattern ( (state Heap@@18 Mask@@23) (|seqToSeqHelper_wild'| Heap@@18 xs@@7 i@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_23562) (Mask@@24 T@PolymorphicMapType_23583) (xs@@8 T@Seq_29851) (i@@14 Int) ) (!  (=> (state Heap@@19 Mask@@24) (= (|seqToSeqHelper_frac'| Heap@@19 xs@@8 i@@14) (|seqToSeqHelper_frac#frame| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@19 xs@@8 i@@14)) xs@@8 i@@14)))
 :qid |stdinbpl.1040:15|
 :skolemid |98|
 :pattern ( (state Heap@@19 Mask@@24) (|seqToSeqHelper_frac'| Heap@@19 xs@@8 i@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_23583) (SummandMask1 T@PolymorphicMapType_23583) (SummandMask2 T@PolymorphicMapType_23583) (o_2@@19 T@Ref) (f_4@@19 T@Field_16221_65934) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_23583) (SummandMask1@@0 T@PolymorphicMapType_23583) (SummandMask2@@0 T@PolymorphicMapType_23583) (o_2@@20 T@Ref) (f_4@@20 T@Field_16221_65801) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_23583) (SummandMask1@@1 T@PolymorphicMapType_23583) (SummandMask2@@1 T@PolymorphicMapType_23583) (o_2@@21 T@Ref) (f_4@@21 T@Field_23635_23636) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_23583) (SummandMask1@@2 T@PolymorphicMapType_23583) (SummandMask2@@2 T@PolymorphicMapType_23583) (o_2@@22 T@Ref) (f_4@@22 T@Field_23622_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_23583) (SummandMask1@@3 T@PolymorphicMapType_23583) (SummandMask2@@3 T@PolymorphicMapType_23583) (o_2@@23 T@Ref) (f_4@@23 T@Field_29804_3581) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3347| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3347| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.608:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3347| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_29851) (b T@Seq_29851) ) (!  (=> (|Seq#Equal_29851| a b) (= a b))
 :qid |stdinbpl.581:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_29851| a b))
)))
(assert (forall ((a@@0 T@Seq_3347) (b@@0 T@Seq_3347) ) (!  (=> (|Seq#Equal_3347| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.581:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3347| a@@0 b@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_23562) (A_1@@1 T@VCTArrayDomainType_43550) (i@@15 Int) (P_1@@1 Real) ) (!  (and (= (sumContrib Heap@@20 A_1@@1 i@@15 P_1@@1) (|sumContrib'| Heap@@20 A_1@@1 i@@15 P_1@@1)) (dummyFunction_3581 (|sumContrib#triggerStateless| A_1@@1 i@@15 P_1@@1)))
 :qid |stdinbpl.1383:15|
 :skolemid |128|
 :pattern ( (sumContrib Heap@@20 A_1@@1 i@@15 P_1@@1))
)))
(assert (forall ((a_2 T@VCTArrayDomainType_43550) ) (! (>= (alen_16373 a_2) 0)
 :qid |stdinbpl.631:20|
 :skolemid |58|
 :pattern ( (alen_16373 a_2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_23562) (Mask@@25 T@PolymorphicMapType_23583) (xs@@9 T@Seq_29851) (i@@16 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (or (< AssumeFunctionsAbove 0) (|seqToSeqHelper_wild#trigger| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@21 xs@@9 i@@16)) xs@@9 i@@16))) (=> (and (and (<= 0 i@@16) (<= i@@16 (|Seq#Length_16239| xs@@9))) (forall ((k_1_1 Int) (j_3_1 Int) ) (!  (=> (and (>= k_1_1 0) (and (< k_1_1 (|Seq#Length_16239| xs@@9)) (and (>= j_3_1 0) (and (< j_3_1 (|Seq#Length_16239| xs@@9)) (not (= k_1_1 j_3_1)))))) (not (= (|Seq#Index_16239| xs@@9 k_1_1) (|Seq#Index_16239| xs@@9 j_3_1))))
 :qid |stdinbpl.702:193|
 :skolemid |68|
 :pattern ( (|Seq#Index_16239| xs@@9 k_1_1) (|Seq#Index_16239| xs@@9 j_3_1))
))) (forall ((j_5_1 Int) ) (!  (=> (and (<= i@@16 j_5_1) (< j_5_1 (|Seq#Length_16239| xs@@9))) (= (|Seq#Index_3347| (|seqToSeqHelper_wild'| Heap@@21 xs@@9 i@@16) (- j_5_1 i@@16)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@21) (|Seq#Index_16239| xs@@9 j_5_1) item_1)))
 :qid |stdinbpl.705:17|
 :skolemid |69|
 :pattern ( (|Seq#Index_16239| xs@@9 j_5_1))
))))
 :qid |stdinbpl.700:15|
 :skolemid |70|
 :pattern ( (state Heap@@21 Mask@@25) (|seqToSeqHelper_wild'| Heap@@21 xs@@9 i@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_23562) (Mask@@26 T@PolymorphicMapType_23583) (xs@@10 T@Seq_29851) (i@@17 Int) ) (!  (=> (and (state Heap@@22 Mask@@26) (or (< AssumeFunctionsAbove 1) (|seqToSeqHelper_frac#trigger| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@22 xs@@10 i@@17)) xs@@10 i@@17))) (=> (and (and (<= 0 i@@17) (<= i@@17 (|Seq#Length_16239| xs@@10))) (forall ((k_1_1@@0 Int) (j_3_1@@0 Int) ) (!  (=> (and (>= k_1_1@@0 0) (and (< k_1_1@@0 (|Seq#Length_16239| xs@@10)) (and (>= j_3_1@@0 0) (and (< j_3_1@@0 (|Seq#Length_16239| xs@@10)) (not (= k_1_1@@0 j_3_1@@0)))))) (not (= (|Seq#Index_16239| xs@@10 k_1_1@@0) (|Seq#Index_16239| xs@@10 j_3_1@@0))))
 :qid |stdinbpl.1065:193|
 :skolemid |102|
 :pattern ( (|Seq#Index_16239| xs@@10 k_1_1@@0) (|Seq#Index_16239| xs@@10 j_3_1@@0))
))) (forall ((j_5_1@@0 Int) ) (!  (=> (and (<= i@@17 j_5_1@@0) (< j_5_1@@0 (|Seq#Length_16239| xs@@10))) (= (|Seq#Index_3347| (|seqToSeqHelper_frac'| Heap@@22 xs@@10 i@@17) (- j_5_1@@0 i@@17)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@22) (|Seq#Index_16239| xs@@10 j_5_1@@0) item_1)))
 :qid |stdinbpl.1068:17|
 :skolemid |103|
 :pattern ( (|Seq#Index_16239| xs@@10 j_5_1@@0))
))))
 :qid |stdinbpl.1063:15|
 :skolemid |104|
 :pattern ( (state Heap@@22 Mask@@26) (|seqToSeqHelper_frac'| Heap@@22 xs@@10 i@@17))
)))
(assert (forall ((s@@17 T@Seq_29851) (i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length_16239| s@@17))) (|Seq#ContainsTrigger_16239| s@@17 (|Seq#Index_16239| s@@17 i@@18)))
 :qid |stdinbpl.474:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_16239| s@@17 i@@18))
)))
(assert (forall ((s@@18 T@Seq_3347) (i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 (|Seq#Length_3347| s@@18))) (|Seq#ContainsTrigger_3347| s@@18 (|Seq#Index_3347| s@@18 i@@19)))
 :qid |stdinbpl.474:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3347| s@@18 i@@19))
)))
(assert (forall ((s0@@3 T@Seq_29851) (s1@@3 T@Seq_29851) ) (!  (and (=> (= s0@@3 |Seq#Empty_16239|) (= (|Seq#Append_29851| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_16239|) (= (|Seq#Append_29851| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.292:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_29851| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3347) (s1@@4 T@Seq_3347) ) (!  (and (=> (= s0@@4 |Seq#Empty_11929|) (= (|Seq#Append_3581| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_11929|) (= (|Seq#Append_3581| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.292:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3581| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_16239| (|Seq#Singleton_16239| t@@3) 0) t@@3)
 :qid |stdinbpl.296:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_16239| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3347| (|Seq#Singleton_3581| t@@4) 0) t@@4)
 :qid |stdinbpl.296:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3581| t@@4))
)))
(assert (forall ((s@@19 T@Seq_29851) ) (! (<= 0 (|Seq#Length_16239| s@@19))
 :qid |stdinbpl.275:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_16239| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3347) ) (! (<= 0 (|Seq#Length_3347| s@@20))
 :qid |stdinbpl.275:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3347| s@@20))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_23562) (Mask@@27 T@PolymorphicMapType_23583) (xs@@11 T@Seq_29851) (i@@20 Int) ) (!  (=> (and (state Heap@@23 Mask@@27) (or (< AssumeFunctionsAbove 0) (|seqToSeqHelper_wild#trigger| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@23 xs@@11 i@@20)) xs@@11 i@@20))) (=> (and (and (<= 0 i@@20) (<= i@@20 (|Seq#Length_16239| xs@@11))) (forall ((k_1_1@@1 Int) (j_3_1@@1 Int) ) (!  (=> (and (>= k_1_1@@1 0) (and (< k_1_1@@1 (|Seq#Length_16239| xs@@11)) (and (>= j_3_1@@1 0) (and (< j_3_1@@1 (|Seq#Length_16239| xs@@11)) (not (= k_1_1@@1 j_3_1@@1)))))) (not (= (|Seq#Index_16239| xs@@11 k_1_1@@1) (|Seq#Index_16239| xs@@11 j_3_1@@1))))
 :qid |stdinbpl.695:193|
 :skolemid |66|
 :pattern ( (|Seq#Index_16239| xs@@11 k_1_1@@1) (|Seq#Index_16239| xs@@11 j_3_1@@1))
))) (= (|Seq#Length_3347| (|seqToSeqHelper_wild'| Heap@@23 xs@@11 i@@20)) (- (|Seq#Length_16239| xs@@11) i@@20))))
 :qid |stdinbpl.693:15|
 :skolemid |67|
 :pattern ( (state Heap@@23 Mask@@27) (|seqToSeqHelper_wild'| Heap@@23 xs@@11 i@@20))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_23562) (Mask@@28 T@PolymorphicMapType_23583) (xs@@12 T@Seq_29851) (i@@21 Int) ) (!  (=> (and (state Heap@@24 Mask@@28) (or (< AssumeFunctionsAbove 1) (|seqToSeqHelper_frac#trigger| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@24 xs@@12 i@@21)) xs@@12 i@@21))) (=> (and (and (<= 0 i@@21) (<= i@@21 (|Seq#Length_16239| xs@@12))) (forall ((k_1_1@@2 Int) (j_3_1@@2 Int) ) (!  (=> (and (>= k_1_1@@2 0) (and (< k_1_1@@2 (|Seq#Length_16239| xs@@12)) (and (>= j_3_1@@2 0) (and (< j_3_1@@2 (|Seq#Length_16239| xs@@12)) (not (= k_1_1@@2 j_3_1@@2)))))) (not (= (|Seq#Index_16239| xs@@12 k_1_1@@2) (|Seq#Index_16239| xs@@12 j_3_1@@2))))
 :qid |stdinbpl.1058:193|
 :skolemid |100|
 :pattern ( (|Seq#Index_16239| xs@@12 k_1_1@@2) (|Seq#Index_16239| xs@@12 j_3_1@@2))
))) (= (|Seq#Length_3347| (|seqToSeqHelper_frac'| Heap@@24 xs@@12 i@@21)) (- (|Seq#Length_16239| xs@@12) i@@21))))
 :qid |stdinbpl.1056:15|
 :skolemid |101|
 :pattern ( (state Heap@@24 Mask@@28) (|seqToSeqHelper_frac'| Heap@@24 xs@@12 i@@21))
)))
(assert (forall ((s0@@5 T@Seq_29851) (s1@@5 T@Seq_29851) ) (!  (=> (|Seq#Equal_29851| s0@@5 s1@@5) (and (= (|Seq#Length_16239| s0@@5) (|Seq#Length_16239| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_16239| s0@@5))) (= (|Seq#Index_16239| s0@@5 j@@6) (|Seq#Index_16239| s1@@5 j@@6)))
 :qid |stdinbpl.571:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_16239| s0@@5 j@@6))
 :pattern ( (|Seq#Index_16239| s1@@5 j@@6))
))))
 :qid |stdinbpl.568:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_29851| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3347) (s1@@6 T@Seq_3347) ) (!  (=> (|Seq#Equal_3347| s0@@6 s1@@6) (and (= (|Seq#Length_3347| s0@@6) (|Seq#Length_3347| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3347| s0@@6))) (= (|Seq#Index_3347| s0@@6 j@@7) (|Seq#Index_3347| s1@@6 j@@7)))
 :qid |stdinbpl.571:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3347| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3347| s1@@6 j@@7))
))))
 :qid |stdinbpl.568:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3347| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_16239| (|Seq#Singleton_16239| t@@5)) 1)
 :qid |stdinbpl.283:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_16239| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3347| (|Seq#Singleton_3581| t@@6)) 1)
 :qid |stdinbpl.283:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3581| t@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_23562) (Mask@@29 T@PolymorphicMapType_23583) (A_1@@2 T@VCTArrayDomainType_43550) (i@@22 Int) (P_1@@2 Real) ) (!  (=> (state Heap@@25 Mask@@29) (= (|sumContrib'| Heap@@25 A_1@@2 i@@22 P_1@@2) (|sumContrib#frame| (FrameFragment_3887 (|sumContrib#condqp3| Heap@@25 A_1@@2 i@@22 P_1@@2)) A_1@@2 i@@22 P_1@@2)))
 :qid |stdinbpl.1400:15|
 :skolemid |131|
 :pattern ( (state Heap@@25 Mask@@29) (|sumContrib'| Heap@@25 A_1@@2 i@@22 P_1@@2))
)))
(assert (forall ((s@@21 T@Seq_29851) (t@@7 T@Seq_29851) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_16239| s@@21))) (= (|Seq#Take_16239| (|Seq#Append_29851| s@@21 t@@7) n@@17) (|Seq#Take_16239| s@@21 n@@17)))
 :qid |stdinbpl.425:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_16239| (|Seq#Append_29851| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3347) (t@@8 T@Seq_3347) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3347| s@@22))) (= (|Seq#Take_3347| (|Seq#Append_3581| s@@22 t@@8) n@@18) (|Seq#Take_3347| s@@22 n@@18)))
 :qid |stdinbpl.425:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3347| (|Seq#Append_3581| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_29851) (i@@23 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_16239| s@@23))) (= (|Seq#Length_16239| (|Seq#Update_16239| s@@23 i@@23 v@@2)) (|Seq#Length_16239| s@@23)))
 :qid |stdinbpl.324:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_16239| (|Seq#Update_16239| s@@23 i@@23 v@@2)))
 :pattern ( (|Seq#Length_16239| s@@23) (|Seq#Update_16239| s@@23 i@@23 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3347) (i@@24 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3347| s@@24))) (= (|Seq#Length_3347| (|Seq#Update_3347| s@@24 i@@24 v@@3)) (|Seq#Length_3347| s@@24)))
 :qid |stdinbpl.324:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3347| (|Seq#Update_3347| s@@24 i@@24 v@@3)))
 :pattern ( (|Seq#Length_3347| s@@24) (|Seq#Update_3347| s@@24 i@@24 v@@3))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_23562) (Mask@@30 T@PolymorphicMapType_23583) (A_1@@3 T@VCTArrayDomainType_43550) (i@@25 Int) (P_1@@3 Real) ) (!  (=> (and (state Heap@@26 Mask@@30) (< AssumeFunctionsAbove 2)) (=> (and (and (< (/ (to_real 0) (to_real 1)) P_1@@3) (< P_1@@3 (/ (to_real 1) (to_real 1)))) (and (<= 0 i@@25) (<= i@@25 (alen_16373 A_1@@3)))) (= (sumContrib Heap@@26 A_1@@3 i@@25 P_1@@3) (ite (= i@@25 (alen_16373 A_1@@3)) 0 (+ (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@26) (loc_16373 A_1@@3 i@@25) item_1) (|sumContrib'| Heap@@26 A_1@@3 (+ i@@25 1) P_1@@3))))))
 :qid |stdinbpl.1393:15|
 :skolemid |130|
 :pattern ( (state Heap@@26 Mask@@30) (sumContrib Heap@@26 A_1@@3 i@@25 P_1@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_23562) (o_24 T@Ref) (f_48 T@Field_16221_65801) (v@@4 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@27) (store (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@27) o_24 f_48 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@27) (store (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@27) o_24 f_48 v@@4)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_23562) (o_24@@0 T@Ref) (f_48@@0 T@Field_16221_65934) (v@@5 T@PolymorphicMapType_24111) ) (! (succHeap Heap@@28 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@28) (store (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@28) o_24@@0 f_48@@0 v@@5) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@28) (store (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@28) o_24@@0 f_48@@0 v@@5) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_23562) (o_24@@1 T@Ref) (f_48@@1 T@Field_29804_3581) (v@@6 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@29) (store (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@29) o_24@@1 f_48@@1 v@@6) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@29) (store (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@29) o_24@@1 f_48@@1 v@@6) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_23562) (o_24@@2 T@Ref) (f_48@@2 T@Field_23635_23636) (v@@7 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@30) (store (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@30) o_24@@2 f_48@@2 v@@7) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@30) (store (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@30) o_24@@2 f_48@@2 v@@7) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_23562) (o_24@@3 T@Ref) (f_48@@3 T@Field_23622_53) (v@@8 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_23562 (store (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@31) o_24@@3 f_48@@3 v@@8) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (store (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@31) o_24@@3 f_48@@3 v@@8) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@31)))
)))
(assert (forall ((s@@25 T@Seq_29851) (t@@9 T@Seq_29851) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_16239| s@@25))) (= (|Seq#Drop_16239| (|Seq#Append_29851| s@@25 t@@9) n@@19) (|Seq#Append_29851| (|Seq#Drop_16239| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.439:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_16239| (|Seq#Append_29851| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3347) (t@@10 T@Seq_3347) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3347| s@@26))) (= (|Seq#Drop_3347| (|Seq#Append_3581| s@@26 t@@10) n@@20) (|Seq#Append_3581| (|Seq#Drop_3347| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.439:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3347| (|Seq#Append_3581| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_29851) (n@@21 Int) (i@@26 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@26)) (< i@@26 (|Seq#Length_16239| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@26 n@@21) n@@21) i@@26) (= (|Seq#Index_16239| (|Seq#Drop_16239| s@@27 n@@21) (|Seq#Sub| i@@26 n@@21)) (|Seq#Index_16239| s@@27 i@@26))))
 :qid |stdinbpl.375:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_16239| s@@27 n@@21) (|Seq#Index_16239| s@@27 i@@26))
)))
(assert (forall ((s@@28 T@Seq_3347) (n@@22 Int) (i@@27 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@27)) (< i@@27 (|Seq#Length_3347| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@27 n@@22) n@@22) i@@27) (= (|Seq#Index_3347| (|Seq#Drop_3347| s@@28 n@@22) (|Seq#Sub| i@@27 n@@22)) (|Seq#Index_3347| s@@28 i@@27))))
 :qid |stdinbpl.375:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3347| s@@28 n@@22) (|Seq#Index_3347| s@@28 i@@27))
)))
(assert (forall ((s0@@7 T@Seq_29851) (s1@@7 T@Seq_29851) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_16239|)) (not (= s1@@7 |Seq#Empty_16239|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_16239| s0@@7))) (= (|Seq#Index_16239| (|Seq#Append_29851| s0@@7 s1@@7) n@@23) (|Seq#Index_16239| s0@@7 n@@23)))
 :qid |stdinbpl.315:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_16239| (|Seq#Append_29851| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_16239| s0@@7 n@@23) (|Seq#Append_29851| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3347) (s1@@8 T@Seq_3347) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_11929|)) (not (= s1@@8 |Seq#Empty_11929|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3347| s0@@8))) (= (|Seq#Index_3347| (|Seq#Append_3581| s0@@8 s1@@8) n@@24) (|Seq#Index_3347| s0@@8 n@@24)))
 :qid |stdinbpl.315:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3347| (|Seq#Append_3581| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3347| s0@@8 n@@24) (|Seq#Append_3581| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_29851) (s1@@9 T@Seq_29851) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_16239|)) (not (= s1@@9 |Seq#Empty_16239|))) (<= 0 m)) (< m (|Seq#Length_16239| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_16239| s0@@9)) (|Seq#Length_16239| s0@@9)) m) (= (|Seq#Index_16239| (|Seq#Append_29851| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_16239| s0@@9))) (|Seq#Index_16239| s1@@9 m))))
 :qid |stdinbpl.320:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_16239| s1@@9 m) (|Seq#Append_29851| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3347) (s1@@10 T@Seq_3347) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_11929|)) (not (= s1@@10 |Seq#Empty_11929|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3347| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3347| s0@@10)) (|Seq#Length_3347| s0@@10)) m@@0) (= (|Seq#Index_3347| (|Seq#Append_3581| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3347| s0@@10))) (|Seq#Index_3347| s1@@10 m@@0))))
 :qid |stdinbpl.320:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3347| s1@@10 m@@0) (|Seq#Append_3581| s0@@10 s1@@10))
)))
(assert (forall ((o_24@@4 T@Ref) (f_26 T@Field_23635_23636) (Heap@@32 T@PolymorphicMapType_23562) ) (!  (=> (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@32) o_24@@4 $allocated) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@32) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@32) o_24@@4 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@32) o_24@@4 f_26))
)))
(assert (forall ((s@@29 T@Seq_29851) (x@@3 T@Ref) (i@@28 Int) ) (!  (=> (and (and (<= 0 i@@28) (< i@@28 (|Seq#Length_16239| s@@29))) (= (|Seq#Index_16239| s@@29 i@@28) x@@3)) (|Seq#Contains_29851| s@@29 x@@3))
 :qid |stdinbpl.472:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_29851| s@@29 x@@3) (|Seq#Index_16239| s@@29 i@@28))
)))
(assert (forall ((s@@30 T@Seq_3347) (x@@4 Int) (i@@29 Int) ) (!  (=> (and (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3347| s@@30))) (= (|Seq#Index_3347| s@@30 i@@29) x@@4)) (|Seq#Contains_3347| s@@30 x@@4))
 :qid |stdinbpl.472:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3347| s@@30 x@@4) (|Seq#Index_3347| s@@30 i@@29))
)))
(assert (forall ((s0@@11 T@Seq_29851) (s1@@11 T@Seq_29851) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_29851| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_29851| s0@@11 s1@@11))) (not (= (|Seq#Length_16239| s0@@11) (|Seq#Length_16239| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_29851| s0@@11 s1@@11))) (= (|Seq#Length_16239| s0@@11) (|Seq#Length_16239| s1@@11))) (= (|Seq#SkolemDiff_29851| s0@@11 s1@@11) (|Seq#SkolemDiff_29851| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_29851| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_29851| s0@@11 s1@@11) (|Seq#Length_16239| s0@@11))) (not (= (|Seq#Index_16239| s0@@11 (|Seq#SkolemDiff_29851| s0@@11 s1@@11)) (|Seq#Index_16239| s1@@11 (|Seq#SkolemDiff_29851| s0@@11 s1@@11))))))
 :qid |stdinbpl.576:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_29851| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3347) (s1@@12 T@Seq_3347) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3347| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3347| s0@@12 s1@@12))) (not (= (|Seq#Length_3347| s0@@12) (|Seq#Length_3347| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3347| s0@@12 s1@@12))) (= (|Seq#Length_3347| s0@@12) (|Seq#Length_3347| s1@@12))) (= (|Seq#SkolemDiff_3347| s0@@12 s1@@12) (|Seq#SkolemDiff_3347| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3347| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3347| s0@@12 s1@@12) (|Seq#Length_3347| s0@@12))) (not (= (|Seq#Index_3347| s0@@12 (|Seq#SkolemDiff_3347| s0@@12 s1@@12)) (|Seq#Index_3347| s1@@12 (|Seq#SkolemDiff_3347| s0@@12 s1@@12))))))
 :qid |stdinbpl.576:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3347| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_16221_65801) (v_1@@0 T@FrameType) (q T@Field_16221_65801) (w@@0 T@FrameType) (r T@Field_16221_65801) (u T@FrameType) ) (!  (=> (and (InsidePredicate_23622_23622 p@@1 v_1@@0 q w@@0) (InsidePredicate_23622_23622 q w@@0 r u)) (InsidePredicate_23622_23622 p@@1 v_1@@0 r u))
 :qid |stdinbpl.243:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23622_23622 p@@1 v_1@@0 q w@@0) (InsidePredicate_23622_23622 q w@@0 r u))
)))
(assert (forall ((a_2@@0 T@VCTArrayDomainType_43550) (i@@30 Int) (j_9@@1 Int) ) (!  (=> (and (>= i@@30 0) (and (>= j_9@@1 0) (and (< i@@30 (alen_16373 a_2@@0)) (and (< j_9@@1 (alen_16373 a_2@@0)) (not (= i@@30 j_9@@1)))))) (not (= (loc_16373 a_2@@0 i@@30) (loc_16373 a_2@@0 j_9@@1))))
 :qid |stdinbpl.637:20|
 :skolemid |59|
 :pattern ( (loc_16373 a_2@@0 i@@30) (loc_16373 a_2@@0 j_9@@1))
)))
(assert (forall ((s@@31 T@Seq_29851) ) (!  (=> (= (|Seq#Length_16239| s@@31) 0) (= s@@31 |Seq#Empty_16239|))
 :qid |stdinbpl.279:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_16239| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3347) ) (!  (=> (= (|Seq#Length_3347| s@@32) 0) (= s@@32 |Seq#Empty_11929|))
 :qid |stdinbpl.279:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3347| s@@32))
)))
(assert (forall ((s@@33 T@Seq_29851) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_16239| s@@33 n@@25) |Seq#Empty_16239|))
 :qid |stdinbpl.455:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_16239| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3347) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3347| s@@34 n@@26) |Seq#Empty_11929|))
 :qid |stdinbpl.455:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3347| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

