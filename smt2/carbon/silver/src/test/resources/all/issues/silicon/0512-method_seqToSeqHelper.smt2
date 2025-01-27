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
(declare-fun item () T@Field_29804_3581)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_23562) (A_1 T@VCTArrayDomainType_43550) (i Int) (P_2 Real) ) (! (dummyFunction_3581 (|sumContrib#triggerStateless| A_1 i P_2))
 :qid |stdinbpl.1387:15|
 :skolemid |129|
 :pattern ( (|sumContrib'| Heap@@0 A_1 i P_2))
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
(assert (forall ((Heap2Heap T@PolymorphicMapType_23562) (Heap1Heap T@PolymorphicMapType_23562) (A_1@@0 T@VCTArrayDomainType_43550) (i@@4 Int) (P_2@@0 Real) ) (!  (=> (and (=  (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0)) (alen_16373 A_1@@0)))  (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0)) (alen_16373 A_1@@0)))) (=> (and (<= 0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0))) (< (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0)) (alen_16373 A_1@@0))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap) (loc_16373 A_1@@0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0))) item) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap) (loc_16373 A_1@@0 (|sk_sumContrib#condqp3| (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0))) item)))) (= (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0)))
 :qid |stdinbpl.1410:15|
 :skolemid |132|
 :pattern ( (|sumContrib#condqp3| Heap2Heap A_1@@0 i@@4 P_2@@0) (|sumContrib#condqp3| Heap1Heap A_1@@0 i@@4 P_2@@0) (succHeapTrans Heap2Heap Heap1Heap))
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
(assert (forall ((Heap@@3 T@PolymorphicMapType_23562) (ExhaleHeap T@PolymorphicMapType_23562) (Mask@@0 T@PolymorphicMapType_23583) (pm_f_25 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16221_65865 Mask@@0 null pm_f_25) (IsPredicateField_16221_65892 pm_f_25)) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@3) null (PredicateMaskField_16221 pm_f_25)) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap) null (PredicateMaskField_16221 pm_f_25)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_16221_65892 pm_f_25) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap) null (PredicateMaskField_16221 pm_f_25)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_23562) (ExhaleHeap@@0 T@PolymorphicMapType_23562) (Mask@@1 T@PolymorphicMapType_23583) (pm_f_25@@0 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16221_65865 Mask@@1 null pm_f_25@@0) (IsWandField_16221_67639 pm_f_25@@0)) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@4) null (WandMaskField_16221 pm_f_25@@0)) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@0) null (WandMaskField_16221 pm_f_25@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_16221_67639 pm_f_25@@0) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@0) null (WandMaskField_16221 pm_f_25@@0)))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_23562) (ExhaleHeap@@1 T@PolymorphicMapType_23562) (Mask@@2 T@PolymorphicMapType_23583) (o_53 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@5) o_53 $allocated) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@1) o_53 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@1) o_53 $allocated))
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
(assert  (not (IsPredicateField_16221_3581 item)))
(assert  (not (IsWandField_16221_3581 item)))
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
(assert (forall ((Heap@@7 T@PolymorphicMapType_23562) (Mask@@9 T@PolymorphicMapType_23583) (xs@@1 T@Seq_29851) (i@@7 Int) ) (!  (=> (and (state Heap@@7 Mask@@9) (< AssumeFunctionsAbove 0)) (=> (and (and (<= 0 i@@7) (<= i@@7 (|Seq#Length_16239| xs@@1))) (forall ((k Int) (j@@5 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_16239| xs@@1)) (and (>= j@@5 0) (and (< j@@5 (|Seq#Length_16239| xs@@1)) (not (= k j@@5)))))) (not (= (|Seq#Index_16239| xs@@1 k) (|Seq#Index_16239| xs@@1 j@@5))))
 :qid |stdinbpl.669:96|
 :skolemid |62|
 :pattern ( (|Seq#Index_16239| xs@@1 k) (|Seq#Index_16239| xs@@1 j@@5))
))) (= (seqToSeqHelper_wild Heap@@7 xs@@1 i@@7) (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@7) (|Seq#Index_16239| xs@@1 i@@7) item)) (|seqToSeqHelper_wild'| Heap@@7 xs@@1 (+ i@@7 1))))))
 :qid |stdinbpl.667:15|
 :skolemid |63|
 :pattern ( (state Heap@@7 Mask@@9) (seqToSeqHelper_wild Heap@@7 xs@@1 i@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_23562) (Mask@@10 T@PolymorphicMapType_23583) (xs@@2 T@Seq_29851) (i@@8 Int) ) (!  (=> (and (state Heap@@8 Mask@@10) (< AssumeFunctionsAbove 1)) (=> (and (and (<= 0 i@@8) (<= i@@8 (|Seq#Length_16239| xs@@2))) (forall ((k@@0 Int) (j@@6 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_16239| xs@@2)) (and (>= j@@6 0) (and (< j@@6 (|Seq#Length_16239| xs@@2)) (not (= k@@0 j@@6)))))) (not (= (|Seq#Index_16239| xs@@2 k@@0) (|Seq#Index_16239| xs@@2 j@@6))))
 :qid |stdinbpl.1032:96|
 :skolemid |96|
 :pattern ( (|Seq#Index_16239| xs@@2 k@@0) (|Seq#Index_16239| xs@@2 j@@6))
))) (= (seqToSeqHelper_frac Heap@@8 xs@@2 i@@8) (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@8) (|Seq#Index_16239| xs@@2 i@@8) item)) (|seqToSeqHelper_frac'| Heap@@8 xs@@2 (+ i@@8 1))))))
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
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_23562) (Heap1Heap@@0 T@PolymorphicMapType_23562) (xs@@3 T@Seq_29851) (i@@9 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77))))  (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77))))) (=> (and (and (<= 0 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) (< (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)) (|Seq#Length_16239| xs@@3))) (< NoPerm (/ (to_real 1) (to_real 77)))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap@@0) (|Seq#Index_16239| xs@@3 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) item) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap@@0) (|Seq#Index_16239| xs@@3 (|sk_seqToSeqHelper_frac#condqp2| (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9))) item)))) (= (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9)))
 :qid |stdinbpl.1050:15|
 :skolemid |99|
 :pattern ( (|seqToSeqHelper_frac#condqp2| Heap2Heap@@0 xs@@3 i@@9) (|seqToSeqHelper_frac#condqp2| Heap1Heap@@0 xs@@3 i@@9) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_23562) (ExhaleHeap@@3 T@PolymorphicMapType_23562) (Mask@@16 T@PolymorphicMapType_23583) (pm_f_25@@1 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_16221_65865 Mask@@16 null pm_f_25@@1) (IsPredicateField_16221_65892 pm_f_25@@1)) (and (and (and (and (forall ((o2_25 T@Ref) (f_67 T@Field_23622_53) ) (!  (=> (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_25@@1))) o2_25 f_67) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@9) o2_25 f_67) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25 f_67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25 f_67))
)) (forall ((o2_25@@0 T@Ref) (f_67@@0 T@Field_23635_23636) ) (!  (=> (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_25@@1))) o2_25@@0 f_67@@0) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@9) o2_25@@0 f_67@@0) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@0 f_67@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@0 f_67@@0))
))) (forall ((o2_25@@1 T@Ref) (f_67@@1 T@Field_29804_3581) ) (!  (=> (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_25@@1))) o2_25@@1 f_67@@1) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@9) o2_25@@1 f_67@@1) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@1 f_67@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@1 f_67@@1))
))) (forall ((o2_25@@2 T@Ref) (f_67@@2 T@Field_16221_65801) ) (!  (=> (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_25@@1))) o2_25@@2 f_67@@2) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@9) o2_25@@2 f_67@@2) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@2 f_67@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@2 f_67@@2))
))) (forall ((o2_25@@3 T@Ref) (f_67@@3 T@Field_16221_65934) ) (!  (=> (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) null (PredicateMaskField_16221 pm_f_25@@1))) o2_25@@3 f_67@@3) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@9) o2_25@@3 f_67@@3) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@3 f_67@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@3) o2_25@@3 f_67@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@16) (IsPredicateField_16221_65892 pm_f_25@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_23562) (ExhaleHeap@@4 T@PolymorphicMapType_23562) (Mask@@17 T@PolymorphicMapType_23583) (pm_f_25@@2 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_16221_65865 Mask@@17 null pm_f_25@@2) (IsWandField_16221_67639 pm_f_25@@2)) (and (and (and (and (forall ((o2_25@@4 T@Ref) (f_67@@4 T@Field_23622_53) ) (!  (=> (select (|PolymorphicMapType_24111_23622_53#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_25@@2))) o2_25@@4 f_67@@4) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@10) o2_25@@4 f_67@@4) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@4 f_67@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@4 f_67@@4))
)) (forall ((o2_25@@5 T@Ref) (f_67@@5 T@Field_23635_23636) ) (!  (=> (select (|PolymorphicMapType_24111_23622_23636#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_25@@2))) o2_25@@5 f_67@@5) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@10) o2_25@@5 f_67@@5) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@5 f_67@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@5 f_67@@5))
))) (forall ((o2_25@@6 T@Ref) (f_67@@6 T@Field_29804_3581) ) (!  (=> (select (|PolymorphicMapType_24111_23622_3581#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_25@@2))) o2_25@@6 f_67@@6) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@10) o2_25@@6 f_67@@6) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@6 f_67@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@6 f_67@@6))
))) (forall ((o2_25@@7 T@Ref) (f_67@@7 T@Field_16221_65801) ) (!  (=> (select (|PolymorphicMapType_24111_23622_65801#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_25@@2))) o2_25@@7 f_67@@7) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@10) o2_25@@7 f_67@@7) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@7 f_67@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@7 f_67@@7))
))) (forall ((o2_25@@8 T@Ref) (f_67@@8 T@Field_16221_65934) ) (!  (=> (select (|PolymorphicMapType_24111_23622_67112#PolymorphicMapType_24111| (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) null (WandMaskField_16221 pm_f_25@@2))) o2_25@@8 f_67@@8) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@10) o2_25@@8 f_67@@8) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@8 f_67@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@4) o2_25@@8 f_67@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@17) (IsWandField_16221_67639 pm_f_25@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.236:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3347| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.609:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3347| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_23562) (ExhaleHeap@@5 T@PolymorphicMapType_23562) (Mask@@18 T@PolymorphicMapType_23583) (o_53@@0 T@Ref) (f_67@@9 T@Field_16221_65934) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_16221_71639 Mask@@18 o_53@@0 f_67@@9) (= (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@11) o_53@@0 f_67@@9) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@5) o_53@@0 f_67@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| ExhaleHeap@@5) o_53@@0 f_67@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_23562) (ExhaleHeap@@6 T@PolymorphicMapType_23562) (Mask@@19 T@PolymorphicMapType_23583) (o_53@@1 T@Ref) (f_67@@10 T@Field_16221_65801) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_16221_65865 Mask@@19 o_53@@1 f_67@@10) (= (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@12) o_53@@1 f_67@@10) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@6) o_53@@1 f_67@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| ExhaleHeap@@6) o_53@@1 f_67@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_23562) (ExhaleHeap@@7 T@PolymorphicMapType_23562) (Mask@@20 T@PolymorphicMapType_23583) (o_53@@2 T@Ref) (f_67@@11 T@Field_23635_23636) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_16221_23636 Mask@@20 o_53@@2 f_67@@11) (= (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@13) o_53@@2 f_67@@11) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@7) o_53@@2 f_67@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| ExhaleHeap@@7) o_53@@2 f_67@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_23562) (ExhaleHeap@@8 T@PolymorphicMapType_23562) (Mask@@21 T@PolymorphicMapType_23583) (o_53@@3 T@Ref) (f_67@@12 T@Field_23622_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_16221_53 Mask@@21 o_53@@3 f_67@@12) (= (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@14) o_53@@3 f_67@@12) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@8) o_53@@3 f_67@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| ExhaleHeap@@8) o_53@@3 f_67@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_23562) (ExhaleHeap@@9 T@PolymorphicMapType_23562) (Mask@@22 T@PolymorphicMapType_23583) (o_53@@4 T@Ref) (f_67@@13 T@Field_29804_3581) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_16221_3581 Mask@@22 o_53@@4 f_67@@13) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@15) o_53@@4 f_67@@13) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@9) o_53@@4 f_67@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@@9) o_53@@4 f_67@@13))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_23562) (Heap1Heap@@1 T@PolymorphicMapType_23562) (xs@@4 T@Seq_29851) (i@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4)))  (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4)))) (=> (and (<= 0 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) (< (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)) (|Seq#Length_16239| xs@@4))) (= (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap2Heap@@1) (|Seq#Index_16239| xs@@4 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) item) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap1Heap@@1) (|Seq#Index_16239| xs@@4 (|sk_seqToSeqHelper_wild#condqp1| (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10))) item)))) (= (|seqToSeqHelper_wild#condqp1| Heap2Heap@@1 xs@@4 i@@10) (|seqToSeqHelper_wild#condqp1| Heap1Heap@@1 xs@@4 i@@10)))
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
(assert (forall ((Heap@@20 T@PolymorphicMapType_23562) (A_1@@1 T@VCTArrayDomainType_43550) (i@@15 Int) (P_2@@1 Real) ) (!  (and (= (sumContrib Heap@@20 A_1@@1 i@@15 P_2@@1) (|sumContrib'| Heap@@20 A_1@@1 i@@15 P_2@@1)) (dummyFunction_3581 (|sumContrib#triggerStateless| A_1@@1 i@@15 P_2@@1)))
 :qid |stdinbpl.1383:15|
 :skolemid |128|
 :pattern ( (sumContrib Heap@@20 A_1@@1 i@@15 P_2@@1))
)))
(assert (forall ((a_2 T@VCTArrayDomainType_43550) ) (! (>= (alen_16373 a_2) 0)
 :qid |stdinbpl.631:20|
 :skolemid |58|
 :pattern ( (alen_16373 a_2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_23562) (Mask@@25 T@PolymorphicMapType_23583) (xs@@9 T@Seq_29851) (i@@16 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (or (< AssumeFunctionsAbove 0) (|seqToSeqHelper_wild#trigger| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@21 xs@@9 i@@16)) xs@@9 i@@16))) (=> (and (and (<= 0 i@@16) (<= i@@16 (|Seq#Length_16239| xs@@9))) (forall ((k_1 Int) (j_3 Int) ) (!  (=> (and (>= k_1 0) (and (< k_1 (|Seq#Length_16239| xs@@9)) (and (>= j_3 0) (and (< j_3 (|Seq#Length_16239| xs@@9)) (not (= k_1 j_3)))))) (not (= (|Seq#Index_16239| xs@@9 k_1) (|Seq#Index_16239| xs@@9 j_3))))
 :qid |stdinbpl.702:193|
 :skolemid |68|
 :pattern ( (|Seq#Index_16239| xs@@9 k_1) (|Seq#Index_16239| xs@@9 j_3))
))) (forall ((j_5 Int) ) (!  (=> (and (<= i@@16 j_5) (< j_5 (|Seq#Length_16239| xs@@9))) (= (|Seq#Index_3347| (|seqToSeqHelper_wild'| Heap@@21 xs@@9 i@@16) (- j_5 i@@16)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@21) (|Seq#Index_16239| xs@@9 j_5) item)))
 :qid |stdinbpl.705:17|
 :skolemid |69|
 :pattern ( (|Seq#Index_16239| xs@@9 j_5))
))))
 :qid |stdinbpl.700:15|
 :skolemid |70|
 :pattern ( (state Heap@@21 Mask@@25) (|seqToSeqHelper_wild'| Heap@@21 xs@@9 i@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_23562) (Mask@@26 T@PolymorphicMapType_23583) (xs@@10 T@Seq_29851) (i@@17 Int) ) (!  (=> (and (state Heap@@22 Mask@@26) (or (< AssumeFunctionsAbove 1) (|seqToSeqHelper_frac#trigger| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@22 xs@@10 i@@17)) xs@@10 i@@17))) (=> (and (and (<= 0 i@@17) (<= i@@17 (|Seq#Length_16239| xs@@10))) (forall ((k_1@@0 Int) (j_3@@0 Int) ) (!  (=> (and (>= k_1@@0 0) (and (< k_1@@0 (|Seq#Length_16239| xs@@10)) (and (>= j_3@@0 0) (and (< j_3@@0 (|Seq#Length_16239| xs@@10)) (not (= k_1@@0 j_3@@0)))))) (not (= (|Seq#Index_16239| xs@@10 k_1@@0) (|Seq#Index_16239| xs@@10 j_3@@0))))
 :qid |stdinbpl.1065:193|
 :skolemid |102|
 :pattern ( (|Seq#Index_16239| xs@@10 k_1@@0) (|Seq#Index_16239| xs@@10 j_3@@0))
))) (forall ((j_5@@0 Int) ) (!  (=> (and (<= i@@17 j_5@@0) (< j_5@@0 (|Seq#Length_16239| xs@@10))) (= (|Seq#Index_3347| (|seqToSeqHelper_frac'| Heap@@22 xs@@10 i@@17) (- j_5@@0 i@@17)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@22) (|Seq#Index_16239| xs@@10 j_5@@0) item)))
 :qid |stdinbpl.1068:17|
 :skolemid |103|
 :pattern ( (|Seq#Index_16239| xs@@10 j_5@@0))
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
(assert (forall ((Heap@@23 T@PolymorphicMapType_23562) (Mask@@27 T@PolymorphicMapType_23583) (xs@@11 T@Seq_29851) (i@@20 Int) ) (!  (=> (and (state Heap@@23 Mask@@27) (or (< AssumeFunctionsAbove 0) (|seqToSeqHelper_wild#trigger| (FrameFragment_3887 (|seqToSeqHelper_wild#condqp1| Heap@@23 xs@@11 i@@20)) xs@@11 i@@20))) (=> (and (and (<= 0 i@@20) (<= i@@20 (|Seq#Length_16239| xs@@11))) (forall ((k_1@@1 Int) (j_3@@1 Int) ) (!  (=> (and (>= k_1@@1 0) (and (< k_1@@1 (|Seq#Length_16239| xs@@11)) (and (>= j_3@@1 0) (and (< j_3@@1 (|Seq#Length_16239| xs@@11)) (not (= k_1@@1 j_3@@1)))))) (not (= (|Seq#Index_16239| xs@@11 k_1@@1) (|Seq#Index_16239| xs@@11 j_3@@1))))
 :qid |stdinbpl.695:193|
 :skolemid |66|
 :pattern ( (|Seq#Index_16239| xs@@11 k_1@@1) (|Seq#Index_16239| xs@@11 j_3@@1))
))) (= (|Seq#Length_3347| (|seqToSeqHelper_wild'| Heap@@23 xs@@11 i@@20)) (- (|Seq#Length_16239| xs@@11) i@@20))))
 :qid |stdinbpl.693:15|
 :skolemid |67|
 :pattern ( (state Heap@@23 Mask@@27) (|seqToSeqHelper_wild'| Heap@@23 xs@@11 i@@20))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_23562) (Mask@@28 T@PolymorphicMapType_23583) (xs@@12 T@Seq_29851) (i@@21 Int) ) (!  (=> (and (state Heap@@24 Mask@@28) (or (< AssumeFunctionsAbove 1) (|seqToSeqHelper_frac#trigger| (FrameFragment_3887 (|seqToSeqHelper_frac#condqp2| Heap@@24 xs@@12 i@@21)) xs@@12 i@@21))) (=> (and (and (<= 0 i@@21) (<= i@@21 (|Seq#Length_16239| xs@@12))) (forall ((k_1@@2 Int) (j_3@@2 Int) ) (!  (=> (and (>= k_1@@2 0) (and (< k_1@@2 (|Seq#Length_16239| xs@@12)) (and (>= j_3@@2 0) (and (< j_3@@2 (|Seq#Length_16239| xs@@12)) (not (= k_1@@2 j_3@@2)))))) (not (= (|Seq#Index_16239| xs@@12 k_1@@2) (|Seq#Index_16239| xs@@12 j_3@@2))))
 :qid |stdinbpl.1058:193|
 :skolemid |100|
 :pattern ( (|Seq#Index_16239| xs@@12 k_1@@2) (|Seq#Index_16239| xs@@12 j_3@@2))
))) (= (|Seq#Length_3347| (|seqToSeqHelper_frac'| Heap@@24 xs@@12 i@@21)) (- (|Seq#Length_16239| xs@@12) i@@21))))
 :qid |stdinbpl.1056:15|
 :skolemid |101|
 :pattern ( (state Heap@@24 Mask@@28) (|seqToSeqHelper_frac'| Heap@@24 xs@@12 i@@21))
)))
(assert (forall ((s0@@5 T@Seq_29851) (s1@@5 T@Seq_29851) ) (!  (=> (|Seq#Equal_29851| s0@@5 s1@@5) (and (= (|Seq#Length_16239| s0@@5) (|Seq#Length_16239| s1@@5)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_16239| s0@@5))) (= (|Seq#Index_16239| s0@@5 j@@8) (|Seq#Index_16239| s1@@5 j@@8)))
 :qid |stdinbpl.571:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_16239| s0@@5 j@@8))
 :pattern ( (|Seq#Index_16239| s1@@5 j@@8))
))))
 :qid |stdinbpl.568:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_29851| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3347) (s1@@6 T@Seq_3347) ) (!  (=> (|Seq#Equal_3347| s0@@6 s1@@6) (and (= (|Seq#Length_3347| s0@@6) (|Seq#Length_3347| s1@@6)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_3347| s0@@6))) (= (|Seq#Index_3347| s0@@6 j@@9) (|Seq#Index_3347| s1@@6 j@@9)))
 :qid |stdinbpl.571:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3347| s0@@6 j@@9))
 :pattern ( (|Seq#Index_3347| s1@@6 j@@9))
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
(assert (forall ((Heap@@25 T@PolymorphicMapType_23562) (Mask@@29 T@PolymorphicMapType_23583) (A_1@@2 T@VCTArrayDomainType_43550) (i@@22 Int) (P_2@@2 Real) ) (!  (=> (state Heap@@25 Mask@@29) (= (|sumContrib'| Heap@@25 A_1@@2 i@@22 P_2@@2) (|sumContrib#frame| (FrameFragment_3887 (|sumContrib#condqp3| Heap@@25 A_1@@2 i@@22 P_2@@2)) A_1@@2 i@@22 P_2@@2)))
 :qid |stdinbpl.1400:15|
 :skolemid |131|
 :pattern ( (state Heap@@25 Mask@@29) (|sumContrib'| Heap@@25 A_1@@2 i@@22 P_2@@2))
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
(assert (forall ((Heap@@26 T@PolymorphicMapType_23562) (Mask@@30 T@PolymorphicMapType_23583) (A_1@@3 T@VCTArrayDomainType_43550) (i@@25 Int) (P_2@@3 Real) ) (!  (=> (and (state Heap@@26 Mask@@30) (< AssumeFunctionsAbove 2)) (=> (and (and (< (/ (to_real 0) (to_real 1)) P_2@@3) (< P_2@@3 (/ (to_real 1) (to_real 1)))) (and (<= 0 i@@25) (<= i@@25 (alen_16373 A_1@@3)))) (= (sumContrib Heap@@26 A_1@@3 i@@25 P_2@@3) (ite (= i@@25 (alen_16373 A_1@@3)) 0 (+ (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@26) (loc_16373 A_1@@3 i@@25) item) (|sumContrib'| Heap@@26 A_1@@3 (+ i@@25 1) P_2@@3))))))
 :qid |stdinbpl.1393:15|
 :skolemid |130|
 :pattern ( (state Heap@@26 Mask@@30) (sumContrib Heap@@26 A_1@@3 i@@25 P_2@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_23562) (o_8 T@Ref) (f_63 T@Field_16221_65801) (v@@4 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@27) (store (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@27) o_8 f_63 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@27) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@27) (store (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@27) o_8 f_63 v@@4)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_23562) (o_8@@0 T@Ref) (f_63@@0 T@Field_16221_65934) (v@@5 T@PolymorphicMapType_24111) ) (! (succHeap Heap@@28 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@28) (store (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@28) o_8@@0 f_63@@0 v@@5) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@28) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@28) (store (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@28) o_8@@0 f_63@@0 v@@5) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_23562) (o_8@@1 T@Ref) (f_63@@1 T@Field_29804_3581) (v@@6 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@29) (store (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@29) o_8@@1 f_63@@1 v@@6) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@29) (store (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@29) o_8@@1 f_63@@1 v@@6) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@29) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_23562) (o_8@@2 T@Ref) (f_63@@2 T@Field_23635_23636) (v@@7 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@30) (store (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@30) o_8@@2 f_63@@2 v@@7) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@30) (store (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@30) o_8@@2 f_63@@2 v@@7) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@30) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_23562) (o_8@@3 T@Ref) (f_63@@3 T@Field_23622_53) (v@@8 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_23562 (store (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@31) o_8@@3 f_63@@3 v@@8) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_23562 (store (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@31) o_8@@3 f_63@@3 v@@8) (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_16221_65978#PolymorphicMapType_23562| Heap@@31) (|PolymorphicMapType_23562_23622_65801#PolymorphicMapType_23562| Heap@@31)))
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
(assert (forall ((o_8@@4 T@Ref) (f_14 T@Field_23635_23636) (Heap@@32 T@PolymorphicMapType_23562) ) (!  (=> (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@32) o_8@@4 $allocated) (select (|PolymorphicMapType_23562_15989_53#PolymorphicMapType_23562| Heap@@32) (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@32) o_8@@4 f_14) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_23562_15992_15993#PolymorphicMapType_23562| Heap@@32) o_8@@4 f_14))
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
(assert (forall ((a_2@@0 T@VCTArrayDomainType_43550) (i@@30 Int) (j@@10 Int) ) (!  (=> (and (>= i@@30 0) (and (>= j@@10 0) (and (< i@@30 (alen_16373 a_2@@0)) (and (< j@@10 (alen_16373 a_2@@0)) (not (= i@@30 j@@10)))))) (not (= (loc_16373 a_2@@0 i@@30) (loc_16373 a_2@@0 j@@10))))
 :qid |stdinbpl.637:20|
 :skolemid |59|
 :pattern ( (loc_16373 a_2@@0 i@@30) (loc_16373 a_2@@0 j@@10))
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
(declare-fun i@@31 () Int)
(declare-fun j_23 () Int)
(declare-fun xs@@13 () T@Seq_29851)
(declare-fun res () T@Seq_3347)
(declare-fun QPMask@4 () T@PolymorphicMapType_23583)
(declare-fun wildcard () Real)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_23562)
(declare-fun j_9 () Int)
(declare-fun k_2_2 () Int)
(declare-fun j_11_1 () Int)
(declare-fun j_9_1 () Int)
(declare-fun res@2 () T@Seq_3347)
(declare-fun Heap@0 () T@PolymorphicMapType_23562)
(declare-fun Mask@0 () T@PolymorphicMapType_23583)
(declare-fun wildcard@1 () Real)
(declare-fun neverTriggered11 (Int) Bool)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_23583)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@0 () T@PolymorphicMapType_23583)
(declare-fun Heap@@33 () T@PolymorphicMapType_23562)
(declare-fun neverTriggered12 (Int) Bool)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_23583)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_23562)
(declare-fun arg_i@0 () Int)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_23583)
(declare-fun tail_1@0 () T@Seq_3347)
(declare-fun res@1 () T@Seq_3347)
(declare-fun res@0 () T@Seq_3347)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun j_22 () Int)
(declare-fun k_20 () Int)
(declare-fun j_8 () Int)
(set-info :boogie-vc-id method_seqToSeqHelper)
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
 (=> (= (ControlFlow 0 0) 64) (let ((anon16_correct true))
(let ((anon38_Else_correct  (=> (and (not (and (<= i@@31 j_23) (< j_23 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 56) 49)) anon16_correct)))
(let ((anon38_Then_correct  (=> (and (<= i@@31 j_23) (< j_23 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 50) (- 0 55)) (>= (- j_23 i@@31) 0)) (=> (>= (- j_23 i@@31) 0) (and (=> (= (ControlFlow 0 50) (- 0 54)) (< (- j_23 i@@31) (|Seq#Length_3347| res))) (=> (< (- j_23 i@@31) (|Seq#Length_3347| res)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (>= j_23 0)) (=> (>= j_23 0) (and (=> (= (ControlFlow 0 50) (- 0 52)) (< j_23 (|Seq#Length_16239| xs@@13))) (=> (< j_23 (|Seq#Length_16239| xs@@13)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (HasDirectPerm_16221_3581 QPMask@4 (|Seq#Index_16239| xs@@13 j_23) item)) (=> (HasDirectPerm_16221_3581 QPMask@4 (|Seq#Index_16239| xs@@13 j_23) item) (=> (= (ControlFlow 0 50) 49) anon16_correct))))))))))))))
(let ((anon37_Else_correct true))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((j_5@@1 Int) (j_5_1 Int) ) (!  (=> (and (and (and (and (not (= j_5@@1 j_5_1)) (and (<= 0 j_5@@1) (< j_5@@1 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_5_1) (< j_5_1 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_16239| xs@@13 j_5@@1) (|Seq#Index_16239| xs@@13 j_5_1))))
 :qid |stdinbpl.1695:15|
 :skolemid |153|
))) (=> (forall ((j_5@@2 Int) (j_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_5@@2 j_5_1@@0)) (and (<= 0 j_5@@2) (< j_5@@2 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_5_1@@0) (< j_5_1@@0 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_16239| xs@@13 j_5@@2) (|Seq#Index_16239| xs@@13 j_5_1@@0))))
 :qid |stdinbpl.1695:15|
 :skolemid |153|
)) (=> (and (and (forall ((j_5@@3 Int) ) (!  (=> (and (<= 0 j_5@@3) (< j_5@@3 (|Seq#Length_16239| xs@@13))) (and (qpRange10 (|Seq#Index_16239| xs@@13 j_5@@3)) (= (invRecv10 (|Seq#Index_16239| xs@@13 j_5@@3)) j_5@@3)))
 :qid |stdinbpl.1701:22|
 :skolemid |154|
 :pattern ( (|Seq#Index_16239| xs@@13 j_5@@3))
 :pattern ( (|Seq#Index_16239| xs@@13 j_5@@3))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv10 o_9)) (< (invRecv10 o_9) (|Seq#Length_16239| xs@@13))) (qpRange10 o_9)) (= (|Seq#Index_16239| xs@@13 (invRecv10 o_9)) o_9))
 :qid |stdinbpl.1705:22|
 :skolemid |155|
 :pattern ( (invRecv10 o_9))
))) (and (forall ((j_5@@4 Int) ) (!  (=> (and (<= 0 j_5@@4) (< j_5@@4 (|Seq#Length_16239| xs@@13))) (not (= (|Seq#Index_16239| xs@@13 j_5@@4) null)))
 :qid |stdinbpl.1711:22|
 :skolemid |156|
 :pattern ( (|Seq#Index_16239| xs@@13 j_5@@4))
 :pattern ( (|Seq#Index_16239| xs@@13 j_5@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (|Seq#Length_16239| xs@@13))) (qpRange10 o_9@@0)) (and (= (|Seq#Index_16239| xs@@13 (invRecv10 o_9@@0)) o_9@@0) (< (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@0 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@4) o_9@@0 item)))) (=> (not (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (|Seq#Length_16239| xs@@13))) (qpRange10 o_9@@0))) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@4) o_9@@0 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@0 item))))
 :qid |stdinbpl.1717:22|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@4) o_9@@0 item))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_23622_53) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@4) o_9@@1 f_5)))
 :qid |stdinbpl.1721:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@4) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_23635_23636) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@4) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1721:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@4) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_29804_3581) ) (!  (=> (not (= f_5@@1 item)) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@4) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1721:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@4) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_16221_65801) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@4) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1721:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@4) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_16221_65934) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@4) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1721:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@4) o_9@@5 f_5@@3))
))) (and (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4)) (and (= (|Seq#Length_3347| res) (- (|Seq#Length_16239| xs@@13) i@@31)) (state PostHeap@0 QPMask@4)))) (and (and (=> (= (ControlFlow 0 57) 48) anon37_Else_correct) (=> (= (ControlFlow 0 57) 50) anon38_Then_correct)) (=> (= (ControlFlow 0 57) 56) anon38_Else_correct))))))))
(let ((anon12_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (<= 0 j_9) (< j_9 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 47) 43)) anon12_correct)))
(let ((anon36_Then_correct  (=> (and (<= 0 j_9) (< j_9 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (>= j_9 0)) (=> (>= j_9 0) (and (=> (= (ControlFlow 0 44) (- 0 45)) (< j_9 (|Seq#Length_16239| xs@@13))) (=> (< j_9 (|Seq#Length_16239| xs@@13)) (=> (= (ControlFlow 0 44) 43) anon12_correct))))))))
(let ((anon34_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (<= 0 i@@31)) (and (<= i@@31 (|Seq#Length_16239| xs@@13)) (state PostHeap@0 ZeroMask))) (and (and (=> (= (ControlFlow 0 59) 57) anon35_Else_correct) (=> (= (ControlFlow 0 59) 44) anon36_Then_correct)) (=> (= (ControlFlow 0 59) 47) anon36_Else_correct)))))
(let ((anon22_correct true))
(let ((anon41_Else_correct  (=> (and (not (and (>= k_2_2 0) (and (< k_2_2 (|Seq#Length_16239| xs@@13)) (and (>= j_11_1 0) (and (< j_11_1 (|Seq#Length_16239| xs@@13)) (not (= k_2_2 j_11_1))))))) (= (ControlFlow 0 39) 36)) anon22_correct)))
(let ((anon41_Then_correct  (=> (and (>= k_2_2 0) (and (< k_2_2 (|Seq#Length_16239| xs@@13)) (and (>= j_11_1 0) (and (< j_11_1 (|Seq#Length_16239| xs@@13)) (not (= k_2_2 j_11_1)))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (not (= (|Seq#Index_16239| xs@@13 k_2_2) (|Seq#Index_16239| xs@@13 j_11_1)))) (=> (not (= (|Seq#Index_16239| xs@@13 k_2_2) (|Seq#Index_16239| xs@@13 j_11_1))) (=> (= (ControlFlow 0 37) 36) anon22_correct))))))
(let ((anon28_correct true))
(let ((anon43_Else_correct  (=> (and (not (and (<= i@@31 j_9_1) (< j_9_1 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 17) 14)) anon28_correct)))
(let ((anon43_Then_correct  (=> (and (<= i@@31 j_9_1) (< j_9_1 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= (|Seq#Index_3347| res@2 (- j_9_1 i@@31)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@0) (|Seq#Index_16239| xs@@13 j_9_1) item))) (=> (= (|Seq#Index_3347| res@2 (- j_9_1 i@@31)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@0) (|Seq#Index_16239| xs@@13 j_9_1) item)) (=> (= (ControlFlow 0 15) 14) anon28_correct))))))
(let ((anon42_Else_correct true))
(let ((anon25_correct  (=> (state Heap@0 Mask@0) (and (=> (= (ControlFlow 0 18) (- 0 25)) (<= 0 i@@31)) (=> (<= 0 i@@31) (and (=> (= (ControlFlow 0 18) (- 0 24)) (<= i@@31 (|Seq#Length_16239| xs@@13))) (=> (<= i@@31 (|Seq#Length_16239| xs@@13)) (=> (> wildcard@1 0.0) (and (=> (= (ControlFlow 0 18) (- 0 23)) (forall ((j_8_2 Int) ) (!  (=> (and (<= 0 j_8_2) (< j_8_2 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) (|Seq#Index_16239| xs@@13 j_8_2) item) NoPerm))
 :qid |stdinbpl.1921:15|
 :skolemid |177|
))) (=> (forall ((j_8_2@@0 Int) ) (!  (=> (and (<= 0 j_8_2@@0) (< j_8_2@@0 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) (|Seq#Index_16239| xs@@13 j_8_2@@0) item) NoPerm))
 :qid |stdinbpl.1921:15|
 :skolemid |177|
)) (=> (forall ((j_8_2@@1 Int) ) (!  (=> (and (<= 0 j_8_2@@1) (< j_8_2@@1 (|Seq#Length_16239| xs@@13))) (< wildcard@1 (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) (|Seq#Index_16239| xs@@13 j_8_2@@1) item)))
 :qid |stdinbpl.1925:20|
 :skolemid |178|
)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (forall ((j_8_2@@2 Int) ) (!  (=> (and (and (<= 0 j_8_2@@2) (< j_8_2@@2 (|Seq#Length_16239| xs@@13))) (dummyFunction_3581 (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@0) (|Seq#Index_16239| xs@@13 j_8_2@@2) item))) (>= wildcard@1 NoPerm))
 :qid |stdinbpl.1932:17|
 :skolemid |179|
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@2))
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@2))
))) (=> (forall ((j_8_2@@3 Int) ) (!  (=> (and (and (<= 0 j_8_2@@3) (< j_8_2@@3 (|Seq#Length_16239| xs@@13))) (dummyFunction_3581 (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@0) (|Seq#Index_16239| xs@@13 j_8_2@@3) item))) (>= wildcard@1 NoPerm))
 :qid |stdinbpl.1932:17|
 :skolemid |179|
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@3))
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@3))
)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (forall ((j_8_2@@4 Int) (j_8_3 Int) ) (!  (=> (and (and (and (and (not (= j_8_2@@4 j_8_3)) (and (<= 0 j_8_2@@4) (< j_8_2@@4 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_8_3) (< j_8_3 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= (|Seq#Index_16239| xs@@13 j_8_2@@4) (|Seq#Index_16239| xs@@13 j_8_3))))
 :qid |stdinbpl.1939:17|
 :skolemid |180|
 :pattern ( (neverTriggered11 j_8_2@@4) (neverTriggered11 j_8_3))
))) (=> (forall ((j_8_2@@5 Int) (j_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_8_2@@5 j_8_3@@0)) (and (<= 0 j_8_2@@5) (< j_8_2@@5 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_8_3@@0) (< j_8_3@@0 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= (|Seq#Index_16239| xs@@13 j_8_2@@5) (|Seq#Index_16239| xs@@13 j_8_3@@0))))
 :qid |stdinbpl.1939:17|
 :skolemid |180|
 :pattern ( (neverTriggered11 j_8_2@@5) (neverTriggered11 j_8_3@@0))
)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (forall ((j_8_2@@6 Int) ) (!  (=> (and (<= 0 j_8_2@@6) (< j_8_2@@6 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) (|Seq#Index_16239| xs@@13 j_8_2@@6) item) NoPerm))
 :qid |stdinbpl.1946:17|
 :skolemid |181|
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@6))
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@6))
))) (=> (forall ((j_8_2@@7 Int) ) (!  (=> (and (<= 0 j_8_2@@7) (< j_8_2@@7 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) (|Seq#Index_16239| xs@@13 j_8_2@@7) item) NoPerm))
 :qid |stdinbpl.1946:17|
 :skolemid |181|
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@7))
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@7))
)) (=> (forall ((j_8_2@@8 Int) ) (!  (=> (and (and (<= 0 j_8_2@@8) (< j_8_2@@8 (|Seq#Length_16239| xs@@13))) (< NoPerm wildcard@1)) (and (qpRange11 (|Seq#Index_16239| xs@@13 j_8_2@@8)) (= (invRecv11 (|Seq#Index_16239| xs@@13 j_8_2@@8)) j_8_2@@8)))
 :qid |stdinbpl.1952:22|
 :skolemid |182|
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@8))
 :pattern ( (|Seq#Index_16239| xs@@13 j_8_2@@8))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv11 o_9@@6)) (< (invRecv11 o_9@@6) (|Seq#Length_16239| xs@@13))) (and (< NoPerm wildcard@1) (qpRange11 o_9@@6))) (= (|Seq#Index_16239| xs@@13 (invRecv11 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1956:22|
 :skolemid |183|
 :pattern ( (invRecv11 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv11 o_9@@7)) (< (invRecv11 o_9@@7) (|Seq#Length_16239| xs@@13))) (and (< NoPerm wildcard@1) (qpRange11 o_9@@7))) (and (= (|Seq#Index_16239| xs@@13 (invRecv11 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@3) o_9@@7 item) (- (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) o_9@@7 item) wildcard@1)))) (=> (not (and (and (<= 0 (invRecv11 o_9@@7)) (< (invRecv11 o_9@@7) (|Seq#Length_16239| xs@@13))) (and (< NoPerm wildcard@1) (qpRange11 o_9@@7)))) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@3) o_9@@7 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) o_9@@7 item))))
 :qid |stdinbpl.1962:22|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@3) o_9@@7 item))
))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_23622_53) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| Mask@0) o_9@@8 f_5@@4) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@3) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1968:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@3) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_23635_23636) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| Mask@0) o_9@@9 f_5@@5) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@3) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1968:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@3) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_29804_3581) ) (!  (=> (not (= f_5@@6 item)) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| Mask@0) o_9@@10 f_5@@6) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@3) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1968:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@3) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_16221_65801) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| Mask@0) o_9@@11 f_5@@7) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@3) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1968:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@3) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_16221_65934) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| Mask@0) o_9@@12 f_5@@8) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@3) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1968:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@3) o_9@@12 f_5@@8))
))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (|Seq#Length_3347| res@2) (- (|Seq#Length_16239| xs@@13) i@@31))) (=> (= (|Seq#Length_3347| res@2) (- (|Seq#Length_16239| xs@@13) i@@31)) (and (and (=> (= (ControlFlow 0 18) 13) anon42_Else_correct) (=> (= (ControlFlow 0 18) 15) anon43_Then_correct)) (=> (= (ControlFlow 0 18) 17) anon43_Else_correct))))))))))))))))))))))))
(let ((anon40_Else_correct  (=> (and (forall ((k_3_1 Int) (j_12_1 Int) ) (!  (=> (and (>= k_3_1 0) (and (< k_3_1 (|Seq#Length_16239| xs@@13)) (and (>= j_12_1 0) (and (< j_12_1 (|Seq#Length_16239| xs@@13)) (not (= k_3_1 j_12_1)))))) (not (= (|Seq#Index_16239| xs@@13 k_3_1) (|Seq#Index_16239| xs@@13 j_12_1))))
 :qid |stdinbpl.1778:26|
 :skolemid |160|
 :pattern ( (|Seq#Index_16239| xs@@13 k_3_1) (|Seq#Index_16239| xs@@13 j_12_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 27) (- 0 35)) (forall ((j_13_2 Int) ) (!  (=> (and (<= 0 j_13_2) (< j_13_2 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_13_2) item) NoPerm))
 :qid |stdinbpl.1786:21|
 :skolemid |161|
))) (=> (forall ((j_13_2@@0 Int) ) (!  (=> (and (<= 0 j_13_2@@0) (< j_13_2@@0 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_13_2@@0) item) NoPerm))
 :qid |stdinbpl.1786:21|
 :skolemid |161|
)) (=> (forall ((j_13_2@@1 Int) ) (!  (=> (and (<= 0 j_13_2@@1) (< j_13_2@@1 (|Seq#Length_16239| xs@@13))) (< wildcard@0 (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_13_2@@1) item)))
 :qid |stdinbpl.1790:26|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 27) (- 0 34)) (forall ((j_13_2@@2 Int) ) (!  (=> (and (and (<= 0 j_13_2@@2) (< j_13_2@@2 (|Seq#Length_16239| xs@@13))) (dummyFunction_3581 (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@33) (|Seq#Index_16239| xs@@13 j_13_2@@2) item))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1797:23|
 :skolemid |163|
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@2))
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@2))
))) (=> (forall ((j_13_2@@3 Int) ) (!  (=> (and (and (<= 0 j_13_2@@3) (< j_13_2@@3 (|Seq#Length_16239| xs@@13))) (dummyFunction_3581 (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| Heap@@33) (|Seq#Index_16239| xs@@13 j_13_2@@3) item))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1797:23|
 :skolemid |163|
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@3))
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@3))
)) (and (=> (= (ControlFlow 0 27) (- 0 33)) (forall ((j_13_2@@4 Int) (j_13_3 Int) ) (!  (=> (and (and (and (and (not (= j_13_2@@4 j_13_3)) (and (<= 0 j_13_2@@4) (< j_13_2@@4 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_13_3) (< j_13_3 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_16239| xs@@13 j_13_2@@4) (|Seq#Index_16239| xs@@13 j_13_3))))
 :qid |stdinbpl.1804:23|
 :skolemid |164|
 :pattern ( (neverTriggered12 j_13_2@@4) (neverTriggered12 j_13_3))
))) (=> (forall ((j_13_2@@5 Int) (j_13_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_13_2@@5 j_13_3@@0)) (and (<= 0 j_13_2@@5) (< j_13_2@@5 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_13_3@@0) (< j_13_3@@0 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_16239| xs@@13 j_13_2@@5) (|Seq#Index_16239| xs@@13 j_13_3@@0))))
 :qid |stdinbpl.1804:23|
 :skolemid |164|
 :pattern ( (neverTriggered12 j_13_2@@5) (neverTriggered12 j_13_3@@0))
)) (and (=> (= (ControlFlow 0 27) (- 0 32)) (forall ((j_13_2@@6 Int) ) (!  (=> (and (<= 0 j_13_2@@6) (< j_13_2@@6 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_13_2@@6) item) NoPerm))
 :qid |stdinbpl.1811:23|
 :skolemid |165|
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@6))
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@6))
))) (=> (forall ((j_13_2@@7 Int) ) (!  (=> (and (<= 0 j_13_2@@7) (< j_13_2@@7 (|Seq#Length_16239| xs@@13))) (> (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) (|Seq#Index_16239| xs@@13 j_13_2@@7) item) NoPerm))
 :qid |stdinbpl.1811:23|
 :skolemid |165|
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@7))
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@7))
)) (=> (forall ((j_13_2@@8 Int) ) (!  (=> (and (and (<= 0 j_13_2@@8) (< j_13_2@@8 (|Seq#Length_16239| xs@@13))) (< NoPerm wildcard@0)) (and (qpRange12 (|Seq#Index_16239| xs@@13 j_13_2@@8)) (= (invRecv12 (|Seq#Index_16239| xs@@13 j_13_2@@8)) j_13_2@@8)))
 :qid |stdinbpl.1817:28|
 :skolemid |166|
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@8))
 :pattern ( (|Seq#Index_16239| xs@@13 j_13_2@@8))
)) (=> (and (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv12 o_9@@13)) (< (invRecv12 o_9@@13) (|Seq#Length_16239| xs@@13))) (and (< NoPerm wildcard@0) (qpRange12 o_9@@13))) (= (|Seq#Index_16239| xs@@13 (invRecv12 o_9@@13)) o_9@@13))
 :qid |stdinbpl.1821:28|
 :skolemid |167|
 :pattern ( (invRecv12 o_9@@13))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv12 o_9@@14)) (< (invRecv12 o_9@@14) (|Seq#Length_16239| xs@@13))) (and (< NoPerm wildcard@0) (qpRange12 o_9@@14))) (and (= (|Seq#Index_16239| xs@@13 (invRecv12 o_9@@14)) o_9@@14) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@14 item) (- (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@14 item) wildcard@0)))) (=> (not (and (and (<= 0 (invRecv12 o_9@@14)) (< (invRecv12 o_9@@14) (|Seq#Length_16239| xs@@13))) (and (< NoPerm wildcard@0) (qpRange12 o_9@@14)))) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@14 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@14 item))))
 :qid |stdinbpl.1827:28|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@14 item))
))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_23622_53) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@0) o_9@@15 f_5@@9) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@1) o_9@@15 f_5@@9)))
 :qid |stdinbpl.1833:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@1) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_23635_23636) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@0) o_9@@16 f_5@@10) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@1) o_9@@16 f_5@@10)))
 :qid |stdinbpl.1833:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@1) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_29804_3581) ) (!  (=> (not (= f_5@@11 item)) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@17 f_5@@11) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@17 f_5@@11)))
 :qid |stdinbpl.1833:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_16221_65801) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@0) o_9@@18 f_5@@12) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@1) o_9@@18 f_5@@12)))
 :qid |stdinbpl.1833:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@1) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_16221_65934) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@0) o_9@@19 f_5@@13) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@1) o_9@@19 f_5@@13)))
 :qid |stdinbpl.1833:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@1) o_9@@19 f_5@@13))
))) (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@0 QPMask@1)) (and (<= 0 arg_i@0) (<= arg_i@0 (|Seq#Length_16239| xs@@13)))) (and (=> (= (ControlFlow 0 27) (- 0 31)) (forall ((j_14_2 Int) (j_14_3 Int) ) (!  (=> (and (and (and (and (not (= j_14_2 j_14_3)) (and (<= 0 j_14_2) (< j_14_2 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_14_3) (< j_14_3 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_16239| xs@@13 j_14_2) (|Seq#Index_16239| xs@@13 j_14_3))))
 :qid |stdinbpl.1851:21|
 :skolemid |170|
))) (=> (forall ((j_14_2@@0 Int) (j_14_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_14_2@@0 j_14_3@@0)) (and (<= 0 j_14_2@@0) (< j_14_2@@0 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_14_3@@0) (< j_14_3@@0 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_16239| xs@@13 j_14_2@@0) (|Seq#Index_16239| xs@@13 j_14_3@@0))))
 :qid |stdinbpl.1851:21|
 :skolemid |170|
)) (=> (and (and (forall ((j_14_2@@1 Int) ) (!  (=> (and (<= 0 j_14_2@@1) (< j_14_2@@1 (|Seq#Length_16239| xs@@13))) (and (qpRange13 (|Seq#Index_16239| xs@@13 j_14_2@@1)) (= (invRecv13 (|Seq#Index_16239| xs@@13 j_14_2@@1)) j_14_2@@1)))
 :qid |stdinbpl.1857:28|
 :skolemid |171|
 :pattern ( (|Seq#Index_16239| xs@@13 j_14_2@@1))
 :pattern ( (|Seq#Index_16239| xs@@13 j_14_2@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv13 o_9@@20)) (< (invRecv13 o_9@@20) (|Seq#Length_16239| xs@@13))) (qpRange13 o_9@@20)) (= (|Seq#Index_16239| xs@@13 (invRecv13 o_9@@20)) o_9@@20))
 :qid |stdinbpl.1861:28|
 :skolemid |172|
 :pattern ( (invRecv13 o_9@@20))
))) (and (forall ((j_14_2@@2 Int) ) (!  (=> (and (<= 0 j_14_2@@2) (< j_14_2@@2 (|Seq#Length_16239| xs@@13))) (not (= (|Seq#Index_16239| xs@@13 j_14_2@@2) null)))
 :qid |stdinbpl.1867:28|
 :skolemid |173|
 :pattern ( (|Seq#Index_16239| xs@@13 j_14_2@@2))
 :pattern ( (|Seq#Index_16239| xs@@13 j_14_2@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv13 o_9@@21)) (< (invRecv13 o_9@@21) (|Seq#Length_16239| xs@@13))) (qpRange13 o_9@@21)) (and (= (|Seq#Index_16239| xs@@13 (invRecv13 o_9@@21)) o_9@@21) (< (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@21 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@2) o_9@@21 item)))) (=> (not (and (and (<= 0 (invRecv13 o_9@@21)) (< (invRecv13 o_9@@21) (|Seq#Length_16239| xs@@13))) (qpRange13 o_9@@21))) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@2) o_9@@21 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@21 item))))
 :qid |stdinbpl.1873:28|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@2) o_9@@21 item))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_23622_53) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@1) o_9@@22 f_5@@14) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@2) o_9@@22 f_5@@14)))
 :qid |stdinbpl.1877:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@1) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@2) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_23635_23636) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@1) o_9@@23 f_5@@15) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@2) o_9@@23 f_5@@15)))
 :qid |stdinbpl.1877:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@1) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@2) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_29804_3581) ) (!  (=> (not (= f_5@@16 item)) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@24 f_5@@16) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@2) o_9@@24 f_5@@16)))
 :qid |stdinbpl.1877:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@1) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@2) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_16221_65801) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@1) o_9@@25 f_5@@17) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@2) o_9@@25 f_5@@17)))
 :qid |stdinbpl.1877:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@1) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@2) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_16221_65934) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@1) o_9@@26 f_5@@18) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@2) o_9@@26 f_5@@18)))
 :qid |stdinbpl.1877:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@1) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@2) o_9@@26 f_5@@18))
))) (state ExhaleHeap@0 QPMask@2)) (and (and (= (|Seq#Length_3347| tail_1@0) (- (|Seq#Length_16239| xs@@13) arg_i@0)) (forall ((j_15_2 Int) ) (!  (=> (and (<= arg_i@0 j_15_2) (< j_15_2 (|Seq#Length_16239| xs@@13))) (= (|Seq#Index_3347| tail_1@0 (- j_15_2 arg_i@0)) (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@0) (|Seq#Index_16239| xs@@13 j_15_2) item)))
 :qid |stdinbpl.1884:26|
 :skolemid |176|
 :pattern ( (|Seq#Index_16239| xs@@13 j_15_2))
))) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (>= i@@31 0)) (=> (>= i@@31 0) (and (=> (= (ControlFlow 0 27) (- 0 29)) (< i@@31 (|Seq#Length_16239| xs@@13))) (=> (< i@@31 (|Seq#Length_16239| xs@@13)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (HasDirectPerm_16221_3581 QPMask@2 (|Seq#Index_16239| xs@@13 i@@31) item)) (=> (HasDirectPerm_16221_3581 QPMask@2 (|Seq#Index_16239| xs@@13 i@@31) item) (=> (and (= res@1 (|Seq#Append_3581| (|Seq#Singleton_3581| (select (|PolymorphicMapType_23562_16221_3581#PolymorphicMapType_23562| ExhaleHeap@0) (|Seq#Index_16239| xs@@13 i@@31) item)) tail_1@0)) (state ExhaleHeap@0 QPMask@2)) (=> (and (and (= Mask@0 QPMask@2) (= Heap@0 ExhaleHeap@0)) (and (= res@2 res@1) (= (ControlFlow 0 27) 18))) anon25_correct)))))))))))))))))))))))))))
(let ((anon39_Then_correct  (=> (and (< i@@31 (|Seq#Length_16239| xs@@13)) (= arg_i@0 (+ i@@31 1))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (<= 0 arg_i@0)) (=> (<= 0 arg_i@0) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= arg_i@0 (|Seq#Length_16239| xs@@13))) (=> (<= arg_i@0 (|Seq#Length_16239| xs@@13)) (and (and (=> (= (ControlFlow 0 40) 27) anon40_Else_correct) (=> (= (ControlFlow 0 40) 37) anon41_Then_correct)) (=> (= (ControlFlow 0 40) 39) anon41_Else_correct)))))))))
(let ((anon39_Else_correct  (=> (<= (|Seq#Length_16239| xs@@13) i@@31) (=> (and (= res@0 |Seq#Empty_11929|) (state Heap@@33 QPMask@0)) (=> (and (and (= Mask@0 QPMask@0) (= Heap@0 Heap@@33)) (and (= res@2 res@0) (= (ControlFlow 0 26) 18))) anon25_correct)))))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((j_3@@3 Int) (j_3_1 Int) ) (!  (=> (and (and (and (and (not (= j_3@@3 j_3_1)) (and (<= 0 j_3@@3) (< j_3@@3 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_3_1) (< j_3_1 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_16239| xs@@13 j_3@@3) (|Seq#Index_16239| xs@@13 j_3_1))))
 :qid |stdinbpl.1635:15|
 :skolemid |147|
))) (=> (forall ((j_3@@4 Int) (j_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_3@@4 j_3_1@@0)) (and (<= 0 j_3@@4) (< j_3@@4 (|Seq#Length_16239| xs@@13)))) (and (<= 0 j_3_1@@0) (< j_3_1@@0 (|Seq#Length_16239| xs@@13)))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_16239| xs@@13 j_3@@4) (|Seq#Index_16239| xs@@13 j_3_1@@0))))
 :qid |stdinbpl.1635:15|
 :skolemid |147|
)) (=> (and (and (forall ((j_3@@5 Int) ) (!  (=> (and (<= 0 j_3@@5) (< j_3@@5 (|Seq#Length_16239| xs@@13))) (and (qpRange9 (|Seq#Index_16239| xs@@13 j_3@@5)) (= (invRecv9 (|Seq#Index_16239| xs@@13 j_3@@5)) j_3@@5)))
 :qid |stdinbpl.1641:22|
 :skolemid |148|
 :pattern ( (|Seq#Index_16239| xs@@13 j_3@@5))
 :pattern ( (|Seq#Index_16239| xs@@13 j_3@@5))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv9 o_9@@27)) (< (invRecv9 o_9@@27) (|Seq#Length_16239| xs@@13))) (qpRange9 o_9@@27)) (= (|Seq#Index_16239| xs@@13 (invRecv9 o_9@@27)) o_9@@27))
 :qid |stdinbpl.1645:22|
 :skolemid |149|
 :pattern ( (invRecv9 o_9@@27))
))) (and (forall ((j_3@@6 Int) ) (!  (=> (and (<= 0 j_3@@6) (< j_3@@6 (|Seq#Length_16239| xs@@13))) (not (= (|Seq#Index_16239| xs@@13 j_3@@6) null)))
 :qid |stdinbpl.1651:22|
 :skolemid |150|
 :pattern ( (|Seq#Index_16239| xs@@13 j_3@@6))
 :pattern ( (|Seq#Index_16239| xs@@13 j_3@@6))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv9 o_9@@28)) (< (invRecv9 o_9@@28) (|Seq#Length_16239| xs@@13))) (qpRange9 o_9@@28)) (and (= (|Seq#Index_16239| xs@@13 (invRecv9 o_9@@28)) o_9@@28) (< (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@28 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@28 item)))) (=> (not (and (and (<= 0 (invRecv9 o_9@@28)) (< (invRecv9 o_9@@28) (|Seq#Length_16239| xs@@13))) (qpRange9 o_9@@28))) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@28 item) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@28 item))))
 :qid |stdinbpl.1657:22|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@28 item))
)))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_23622_53) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_9@@29 f_5@@19) (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@0) o_9@@29 f_5@@19)))
 :qid |stdinbpl.1661:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| ZeroMask) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_23583_16221_53#PolymorphicMapType_23583| QPMask@0) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_23635_23636) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_9@@30 f_5@@20) (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@0) o_9@@30 f_5@@20)))
 :qid |stdinbpl.1661:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| ZeroMask) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_23583_16221_23636#PolymorphicMapType_23583| QPMask@0) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_29804_3581) ) (!  (=> (not (= f_5@@21 item)) (= (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@31 f_5@@21) (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@31 f_5@@21)))
 :qid |stdinbpl.1661:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| ZeroMask) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_23583_16221_3581#PolymorphicMapType_23583| QPMask@0) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_16221_65801) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_9@@32 f_5@@22) (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@0) o_9@@32 f_5@@22)))
 :qid |stdinbpl.1661:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| ZeroMask) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_23583_16221_65801#PolymorphicMapType_23583| QPMask@0) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_16221_65934) ) (!  (=> true (= (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_9@@33 f_5@@23) (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@0) o_9@@33 f_5@@23)))
 :qid |stdinbpl.1661:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| ZeroMask) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_23583_16221_70056#PolymorphicMapType_23583| QPMask@0) o_9@@33 f_5@@23))
))) (and (state Heap@@33 QPMask@0) (state Heap@@33 QPMask@0))) (and (and (=> (= (ControlFlow 0 60) 59) anon34_Then_correct) (=> (= (ControlFlow 0 60) 40) anon39_Then_correct)) (=> (= (ControlFlow 0 60) 26) anon39_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon33_Else_correct  (=> (and (not (and (<= 0 j_22) (< j_22 (|Seq#Length_16239| xs@@13)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon33_Then_correct  (=> (and (<= 0 j_22) (< j_22 (|Seq#Length_16239| xs@@13))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_22 0)) (=> (>= j_22 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_22 (|Seq#Length_16239| xs@@13))) (=> (< j_22 (|Seq#Length_16239| xs@@13)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon30_Else_correct  (=> (and (forall ((k_1@@3 Int) (j_1 Int) ) (!  (=> (and (>= k_1@@3 0) (and (< k_1@@3 (|Seq#Length_16239| xs@@13)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_16239| xs@@13)) (not (= k_1@@3 j_1)))))) (not (= (|Seq#Index_16239| xs@@13 k_1@@3) (|Seq#Index_16239| xs@@13 j_1))))
 :qid |stdinbpl.1617:20|
 :skolemid |146|
 :pattern ( (|Seq#Index_16239| xs@@13 k_1@@3) (|Seq#Index_16239| xs@@13 j_1))
)) (state Heap@@33 ZeroMask)) (and (and (=> (= (ControlFlow 0 62) 60) anon32_Else_correct) (=> (= (ControlFlow 0 62) 9) anon33_Then_correct)) (=> (= (ControlFlow 0 62) 12) anon33_Else_correct)))))
(let ((anon3_correct true))
(let ((anon31_Else_correct  (=> (and (not (and (>= k_20 0) (and (< k_20 (|Seq#Length_16239| xs@@13)) (and (>= j_8 0) (and (< j_8 (|Seq#Length_16239| xs@@13)) (not (= k_20 j_8))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon31_Then_correct  (=> (and (>= k_20 0) (and (< k_20 (|Seq#Length_16239| xs@@13)) (and (>= j_8 0) (and (< j_8 (|Seq#Length_16239| xs@@13)) (not (= k_20 j_8)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_20 0)) (=> (>= k_20 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_20 (|Seq#Length_16239| xs@@13))) (=> (< k_20 (|Seq#Length_16239| xs@@13)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_8 0)) (=> (>= j_8 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_8 (|Seq#Length_16239| xs@@13))) (=> (< j_8 (|Seq#Length_16239| xs@@13)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@33 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (<= 0 i@@31)) (and (<= i@@31 (|Seq#Length_16239| xs@@13)) (state Heap@@33 ZeroMask))) (and (and (=> (= (ControlFlow 0 63) 62) anon30_Else_correct) (=> (= (ControlFlow 0 63) 2) anon31_Then_correct)) (=> (= (ControlFlow 0 63) 7) anon31_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 64) 63)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
