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
(declare-sort T@Field_12347_53 0)
(declare-sort T@Field_12360_12361 0)
(declare-sort T@Field_18501_3245 0)
(declare-sort T@Field_8390_32347 0)
(declare-sort T@Field_8390_32214 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12308 0)) (((PolymorphicMapType_12308 (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| (Array T@Ref T@Field_18501_3245 Real)) (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| (Array T@Ref T@Field_12347_53 Real)) (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| (Array T@Ref T@Field_12360_12361 Real)) (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| (Array T@Ref T@Field_8390_32214 Real)) (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| (Array T@Ref T@Field_8390_32347 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12836 0)) (((PolymorphicMapType_12836 (|PolymorphicMapType_12836_12347_53#PolymorphicMapType_12836| (Array T@Ref T@Field_12347_53 Bool)) (|PolymorphicMapType_12836_12347_12361#PolymorphicMapType_12836| (Array T@Ref T@Field_12360_12361 Bool)) (|PolymorphicMapType_12836_12347_3245#PolymorphicMapType_12836| (Array T@Ref T@Field_18501_3245 Bool)) (|PolymorphicMapType_12836_12347_32214#PolymorphicMapType_12836| (Array T@Ref T@Field_8390_32214 Bool)) (|PolymorphicMapType_12836_12347_33525#PolymorphicMapType_12836| (Array T@Ref T@Field_8390_32347 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12287 0)) (((PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| (Array T@Ref T@Field_12347_53 Bool)) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| (Array T@Ref T@Field_12360_12361 T@Ref)) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| (Array T@Ref T@Field_18501_3245 Int)) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| (Array T@Ref T@Field_8390_32347 T@PolymorphicMapType_12836)) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| (Array T@Ref T@Field_8390_32214 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12347_53)
(declare-fun Integer__item () T@Field_18501_3245)
(declare-sort T@Seq_3011 0)
(declare-fun |Seq#Length_3011| (T@Seq_3011) Int)
(declare-fun |Seq#Drop_3011| (T@Seq_3011 Int) T@Seq_3011)
(declare-sort T@VCTArrayDomainType_19414 0)
(declare-fun IsReordered (T@PolymorphicMapType_12287 T@VCTArrayDomainType_19414 T@Seq_3011 T@VCTArrayDomainType_19414 Int) Bool)
(declare-fun |IsReordered'| (T@PolymorphicMapType_12287 T@VCTArrayDomainType_19414 T@Seq_3011 T@VCTArrayDomainType_19414 Int) Bool)
(declare-fun dummyFunction_3515 (Bool) Bool)
(declare-fun |IsReordered#triggerStateless| (T@VCTArrayDomainType_19414 T@Seq_3011 T@VCTArrayDomainType_19414 Int) Bool)
(declare-fun state (T@PolymorphicMapType_12287 T@PolymorphicMapType_12308) Bool)
(declare-fun |CheckBounded'| (T@PolymorphicMapType_12287 T@Seq_3011 Int) Bool)
(declare-fun |CheckBounded#frame| (T@FrameType T@Seq_3011 Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_12287 T@PolymorphicMapType_12287) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12287 T@PolymorphicMapType_12287) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12308) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12836)
(declare-fun |CheckBounded#triggerStateless| (T@Seq_3011 Int) Bool)
(declare-fun |Seq#Index_3011| (T@Seq_3011 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |CheckBounded#trigger| (T@FrameType T@Seq_3011 Int) Bool)
(declare-fun |Seq#Empty_3011| () T@Seq_3011)
(declare-fun |Seq#Update_3011| (T@Seq_3011 Int Int) T@Seq_3011)
(declare-fun |Seq#Take_3011| (T@Seq_3011 Int) T@Seq_3011)
(declare-fun |Seq#Contains_3011| (T@Seq_3011 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3011)
(declare-fun |Seq#Skolem_3011| (T@Seq_3011 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12287 T@PolymorphicMapType_12287 T@PolymorphicMapType_12308) Bool)
(declare-fun IsPredicateField_8390_32305 (T@Field_8390_32214) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8390 (T@Field_8390_32214) T@Field_8390_32347)
(declare-fun HasDirectPerm_8390_32278 (T@PolymorphicMapType_12308 T@Ref T@Field_8390_32214) Bool)
(declare-fun IsWandField_8390_34052 (T@Field_8390_32214) Bool)
(declare-fun WandMaskField_8390 (T@Field_8390_32214) T@Field_8390_32347)
(declare-fun |Seq#Singleton_3011| (Int) T@Seq_3011)
(declare-fun |Seq#Append_3011| (T@Seq_3011 T@Seq_3011) T@Seq_3011)
(declare-fun dummyHeap () T@PolymorphicMapType_12287)
(declare-fun ZeroMask () T@PolymorphicMapType_12308)
(declare-fun InsidePredicate_12347_12347 (T@Field_8390_32214 T@FrameType T@Field_8390_32214 T@FrameType) Bool)
(declare-fun IsPredicateField_8390_3245 (T@Field_18501_3245) Bool)
(declare-fun IsWandField_8390_3245 (T@Field_18501_3245) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8390_37598 (T@Field_8390_32347) Bool)
(declare-fun IsWandField_8390_37614 (T@Field_8390_32347) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8390_12361 (T@Field_12360_12361) Bool)
(declare-fun IsWandField_8390_12361 (T@Field_12360_12361) Bool)
(declare-fun IsPredicateField_8390_53 (T@Field_12347_53) Bool)
(declare-fun IsWandField_8390_53 (T@Field_12347_53) Bool)
(declare-fun |IsReordered#trigger| (T@FrameType T@VCTArrayDomainType_19414 T@Seq_3011 T@VCTArrayDomainType_19414 Int) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4067 (Int) T@FrameType)
(declare-fun |IsReordered#condqp1| (T@PolymorphicMapType_12287 T@VCTArrayDomainType_19414 T@Seq_3011 T@VCTArrayDomainType_19414 Int) Int)
(declare-fun FrameFragment_10605 (T@FrameType) T@FrameType)
(declare-fun |IsReordered#condqp2| (T@PolymorphicMapType_12287 T@VCTArrayDomainType_19414 T@Seq_3011 T@VCTArrayDomainType_19414 Int) Int)
(declare-fun alen_8439 (T@VCTArrayDomainType_19414) Int)
(declare-fun CheckBounded (T@PolymorphicMapType_12287 T@Seq_3011 Int) Bool)
(declare-fun loc_8442 (T@VCTArrayDomainType_19414 Int) T@Ref)
(declare-fun HasDirectPerm_8390_38052 (T@PolymorphicMapType_12308 T@Ref T@Field_8390_32347) Bool)
(declare-fun HasDirectPerm_8390_12361 (T@PolymorphicMapType_12308 T@Ref T@Field_12360_12361) Bool)
(declare-fun HasDirectPerm_8390_53 (T@PolymorphicMapType_12308 T@Ref T@Field_12347_53) Bool)
(declare-fun HasDirectPerm_8390_3245 (T@PolymorphicMapType_12308 T@Ref T@Field_18501_3245) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |IsReordered#frame| (T@FrameType T@VCTArrayDomainType_19414 T@Seq_3011 T@VCTArrayDomainType_19414 Int) Bool)
(declare-fun |sk_IsReordered#condqp1| (Int Int) Int)
(declare-fun |sk_IsReordered#condqp2| (Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_12308 T@PolymorphicMapType_12308 T@PolymorphicMapType_12308) Bool)
(declare-fun |Seq#Equal_3011| (T@Seq_3011 T@Seq_3011) Bool)
(declare-fun |Seq#ContainsTrigger_3011| (T@Seq_3011 Int) Bool)
(declare-fun |Seq#SkolemDiff_3011| (T@Seq_3011 T@Seq_3011) Int)
(assert (forall ((s T@Seq_3011) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3011| s)) (= (|Seq#Length_3011| (|Seq#Drop_3011| s n)) (- (|Seq#Length_3011| s) n))) (=> (< (|Seq#Length_3011| s) n) (= (|Seq#Length_3011| (|Seq#Drop_3011| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3011| (|Seq#Drop_3011| s n)) (|Seq#Length_3011| s))))
 :qid |stdinbpl.307:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3011| (|Seq#Drop_3011| s n)))
 :pattern ( (|Seq#Length_3011| s) (|Seq#Drop_3011| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_12287) (origL T@VCTArrayDomainType_19414) (newO T@Seq_3011) (newL T@VCTArrayDomainType_19414) (maxLen Int) ) (!  (and (= (IsReordered Heap origL newO newL maxLen) (|IsReordered'| Heap origL newO newL maxLen)) (dummyFunction_3515 (|IsReordered#triggerStateless| origL newO newL maxLen)))
 :qid |stdinbpl.690:15|
 :skolemid |66|
 :pattern ( (IsReordered Heap origL newO newL maxLen))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12287) (Mask T@PolymorphicMapType_12308) (order T@Seq_3011) (maxLen@@0 Int) ) (!  (=> (state Heap@@0 Mask) (= (|CheckBounded'| Heap@@0 order maxLen@@0) (|CheckBounded#frame| EmptyFrame order maxLen@@0)))
 :qid |stdinbpl.625:15|
 :skolemid |62|
 :pattern ( (state Heap@@0 Mask) (|CheckBounded'| Heap@@0 order maxLen@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12287) (Heap1 T@PolymorphicMapType_12287) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12287) (Mask@@0 T@PolymorphicMapType_12308) ) (!  (=> (state Heap@@1 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12287) (Heap1@@0 T@PolymorphicMapType_12287) (Heap2 T@PolymorphicMapType_12287) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8390_32347) ) (!  (not (select (|PolymorphicMapType_12836_12347_33525#PolymorphicMapType_12836| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12836_12347_33525#PolymorphicMapType_12836| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8390_32214) ) (!  (not (select (|PolymorphicMapType_12836_12347_32214#PolymorphicMapType_12836| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12836_12347_32214#PolymorphicMapType_12836| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18501_3245) ) (!  (not (select (|PolymorphicMapType_12836_12347_3245#PolymorphicMapType_12836| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12836_12347_3245#PolymorphicMapType_12836| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12360_12361) ) (!  (not (select (|PolymorphicMapType_12836_12347_12361#PolymorphicMapType_12836| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12836_12347_12361#PolymorphicMapType_12836| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12347_53) ) (!  (not (select (|PolymorphicMapType_12836_12347_53#PolymorphicMapType_12836| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12836_12347_53#PolymorphicMapType_12836| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12287) (order@@0 T@Seq_3011) (maxLen@@1 Int) ) (! (dummyFunction_3515 (|CheckBounded#triggerStateless| order@@0 maxLen@@1))
 :qid |stdinbpl.618:15|
 :skolemid |61|
 :pattern ( (|CheckBounded'| Heap@@2 order@@0 maxLen@@1))
)))
(assert (forall ((s@@0 T@Seq_3011) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3011| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3011| (|Seq#Drop_3011| s@@0 n@@0) j) (|Seq#Index_3011| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.328:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3011| (|Seq#Drop_3011| s@@0 n@@0) j))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12287) (Mask@@1 T@PolymorphicMapType_12308) (order@@1 T@Seq_3011) (maxLen@@2 Int) ) (!  (=> (and (state Heap@@3 Mask@@1) (or (< AssumeFunctionsAbove 1) (|CheckBounded#trigger| EmptyFrame order@@1 maxLen@@2))) (and (<= (|Seq#Length_3011| order@@1) maxLen@@2) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length_3011| order@@1))) (and (<= 0 (|Seq#Index_3011| order@@1 i)) (< (|Seq#Index_3011| order@@1 i) maxLen@@2)))
 :qid |stdinbpl.633:145|
 :skolemid |63|
 :pattern ( (|Seq#Index_3011| order@@1 i))
))))
 :qid |stdinbpl.631:15|
 :skolemid |64|
 :pattern ( (state Heap@@3 Mask@@1) (|CheckBounded'| Heap@@3 order@@1 maxLen@@2))
)))
(assert (= (|Seq#Length_3011| |Seq#Empty_3011|) 0))
(assert (forall ((s@@1 T@Seq_3011) (i@@0 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3011| s@@1))) (and (=> (= i@@0 n@@1) (= (|Seq#Index_3011| (|Seq#Update_3011| s@@1 i@@0 v) n@@1) v)) (=> (not (= i@@0 n@@1)) (= (|Seq#Index_3011| (|Seq#Update_3011| s@@1 i@@0 v) n@@1) (|Seq#Index_3011| s@@1 n@@1)))))
 :qid |stdinbpl.283:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3011| (|Seq#Update_3011| s@@1 i@@0 v) n@@1))
 :pattern ( (|Seq#Index_3011| s@@1 n@@1) (|Seq#Update_3011| s@@1 i@@0 v))
)))
(assert (forall ((s@@2 T@Seq_3011) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3011| s@@2)) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3011| s@@2) n@@2) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@2 n@@2)) (|Seq#Length_3011| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@2 n@@2)) 0)))
 :qid |stdinbpl.294:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3011| (|Seq#Take_3011| s@@2 n@@2)))
 :pattern ( (|Seq#Take_3011| s@@2 n@@2) (|Seq#Length_3011| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3011| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.568:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3011) (x Int) ) (!  (=> (|Seq#Contains_3011| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3011| s@@3 x)) (< (|Seq#Skolem_3011| s@@3 x) (|Seq#Length_3011| s@@3))) (= (|Seq#Index_3011| s@@3 (|Seq#Skolem_3011| s@@3 x)) x)))
 :qid |stdinbpl.426:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3011| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_3011) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3011| s@@4 n@@3) s@@4))
 :qid |stdinbpl.410:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3011| s@@4 n@@3))
)))
(assert (forall ((i@@1 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@1 j@@0) (- i@@1 j@@0))
 :qid |stdinbpl.263:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@0))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@2 j@@1) (+ i@@2 j@@1))
 :qid |stdinbpl.261:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12287) (ExhaleHeap T@PolymorphicMapType_12287) (Mask@@2 T@PolymorphicMapType_12308) (pm_f_28 T@Field_8390_32214) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_8390_32278 Mask@@2 null pm_f_28) (IsPredicateField_8390_32305 pm_f_28)) (= (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@4) null (PredicateMaskField_8390 pm_f_28)) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap) null (PredicateMaskField_8390 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (IsPredicateField_8390_32305 pm_f_28) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap) null (PredicateMaskField_8390 pm_f_28)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12287) (ExhaleHeap@@0 T@PolymorphicMapType_12287) (Mask@@3 T@PolymorphicMapType_12308) (pm_f_28@@0 T@Field_8390_32214) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_8390_32278 Mask@@3 null pm_f_28@@0) (IsWandField_8390_34052 pm_f_28@@0)) (= (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@5) null (WandMaskField_8390 pm_f_28@@0)) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@0) null (WandMaskField_8390 pm_f_28@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (IsWandField_8390_34052 pm_f_28@@0) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@0) null (WandMaskField_8390 pm_f_28@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3011| (|Seq#Singleton_3011| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.551:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3011| (|Seq#Singleton_3011| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_3011) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3011| s@@5))) (= (|Seq#Index_3011| (|Seq#Take_3011| s@@5 n@@4) j@@2) (|Seq#Index_3011| s@@5 j@@2)))
 :qid |stdinbpl.302:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3011| (|Seq#Take_3011| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3011| s@@5 j@@2) (|Seq#Take_3011| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3011) (t T@Seq_3011) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3011| s@@6))) (< n@@5 (|Seq#Length_3011| (|Seq#Append_3011| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3011| s@@6)) (|Seq#Length_3011| s@@6)) n@@5) (= (|Seq#Take_3011| (|Seq#Append_3011| s@@6 t) n@@5) (|Seq#Append_3011| s@@6 (|Seq#Take_3011| t (|Seq#Sub| n@@5 (|Seq#Length_3011| s@@6)))))))
 :qid |stdinbpl.387:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3011| (|Seq#Append_3011| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12287) (ExhaleHeap@@1 T@PolymorphicMapType_12287) (Mask@@4 T@PolymorphicMapType_12308) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@6) o_41 $allocated) (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@1) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@1) o_41 $allocated))
)))
(assert (forall ((p T@Field_8390_32214) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12347_12347 p v_1 p w))
 :qid |stdinbpl.205:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12347_12347 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3011) (s1 T@Seq_3011) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3011|)) (not (= s1 |Seq#Empty_3011|))) (<= (|Seq#Length_3011| s0) n@@6)) (< n@@6 (|Seq#Length_3011| (|Seq#Append_3011| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3011| s0)) (|Seq#Length_3011| s0)) n@@6) (= (|Seq#Index_3011| (|Seq#Append_3011| s0 s1) n@@6) (|Seq#Index_3011| s1 (|Seq#Sub| n@@6 (|Seq#Length_3011| s0))))))
 :qid |stdinbpl.274:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3011| (|Seq#Append_3011| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_8390_3245 Integer__item)))
(assert  (not (IsWandField_8390_3245 Integer__item)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12287) (ExhaleHeap@@2 T@PolymorphicMapType_12287) (Mask@@5 T@PolymorphicMapType_12308) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12308) (o_2@@4 T@Ref) (f_4@@4 T@Field_8390_32347) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8390_37598 f_4@@4))) (not (IsWandField_8390_37614 f_4@@4))) (<= (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12308) (o_2@@5 T@Ref) (f_4@@5 T@Field_8390_32214) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8390_32305 f_4@@5))) (not (IsWandField_8390_34052 f_4@@5))) (<= (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12308) (o_2@@6 T@Ref) (f_4@@6 T@Field_12360_12361) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8390_12361 f_4@@6))) (not (IsWandField_8390_12361 f_4@@6))) (<= (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12308) (o_2@@7 T@Ref) (f_4@@7 T@Field_12347_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8390_53 f_4@@7))) (not (IsWandField_8390_53 f_4@@7))) (<= (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12308) (o_2@@8 T@Ref) (f_4@@8 T@Field_18501_3245) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8390_3245 f_4@@8))) (not (IsWandField_8390_3245 f_4@@8))) (<= (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12287) (Mask@@11 T@PolymorphicMapType_12308) (origL@@0 T@VCTArrayDomainType_19414) (newO@@0 T@Seq_3011) (newL@@0 T@VCTArrayDomainType_19414) (maxLen@@3 Int) ) (!  (=> (and (state Heap@@8 Mask@@11) (or (< AssumeFunctionsAbove 0) (|IsReordered#trigger| (CombineFrames (FrameFragment_4067 (|IsReordered#condqp1| Heap@@8 origL@@0 newO@@0 newL@@0 maxLen@@3)) (FrameFragment_10605 (ite (not (= origL@@0 newL@@0)) (FrameFragment_4067 (|IsReordered#condqp2| Heap@@8 origL@@0 newO@@0 newL@@0 maxLen@@3)) EmptyFrame))) origL@@0 newO@@0 newL@@0 maxLen@@3))) (= (|IsReordered'| Heap@@8 origL@@0 newO@@0 newL@@0 maxLen@@3)  (and (<= maxLen@@3 (alen_8439 origL@@0)) (and (<= maxLen@@3 (alen_8439 newL@@0)) (and (CheckBounded Heap@@8 newO@@0 maxLen@@3) (forall ((i_7_1 Int) ) (!  (=> (and (<= 0 i_7_1) (< i_7_1 (|Seq#Length_3011| newO@@0))) (= (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@8) (loc_8442 newL@@0 i_7_1) Integer__item) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@8) (loc_8442 origL@@0 (|Seq#Index_3011| newO@@0 i_7_1)) Integer__item)))
 :qid |stdinbpl.738:472|
 :skolemid |73|
 :pattern ( (loc_8442 origL@@0 (|Seq#Index_3011| newO@@0 i_7_1)))
)))))))
 :qid |stdinbpl.736:15|
 :skolemid |74|
 :pattern ( (state Heap@@8 Mask@@11) (|IsReordered'| Heap@@8 origL@@0 newO@@0 newL@@0 maxLen@@3))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12308) (o_2@@9 T@Ref) (f_4@@9 T@Field_8390_32347) ) (! (= (HasDirectPerm_8390_38052 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8390_38052 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12308) (o_2@@10 T@Ref) (f_4@@10 T@Field_8390_32214) ) (! (= (HasDirectPerm_8390_32278 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8390_32278 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12308) (o_2@@11 T@Ref) (f_4@@11 T@Field_12360_12361) ) (! (= (HasDirectPerm_8390_12361 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8390_12361 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12308) (o_2@@12 T@Ref) (f_4@@12 T@Field_12347_53) ) (! (= (HasDirectPerm_8390_53 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8390_53 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12308) (o_2@@13 T@Ref) (f_4@@13 T@Field_18501_3245) ) (! (= (HasDirectPerm_8390_3245 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8390_3245 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12287) (origL@@1 T@VCTArrayDomainType_19414) (newO@@1 T@Seq_3011) (newL@@1 T@VCTArrayDomainType_19414) (maxLen@@4 Int) ) (! (dummyFunction_3515 (|IsReordered#triggerStateless| origL@@1 newO@@1 newL@@1 maxLen@@4))
 :qid |stdinbpl.694:15|
 :skolemid |67|
 :pattern ( (|IsReordered'| Heap@@9 origL@@1 newO@@1 newL@@1 maxLen@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12287) (ExhaleHeap@@3 T@PolymorphicMapType_12287) (Mask@@17 T@PolymorphicMapType_12308) (pm_f_28@@1 T@Field_8390_32214) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_8390_32278 Mask@@17 null pm_f_28@@1) (IsPredicateField_8390_32305 pm_f_28@@1)) (and (and (and (and (forall ((o2_28 T@Ref) (f_27 T@Field_12347_53) ) (!  (=> (select (|PolymorphicMapType_12836_12347_53#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@10) null (PredicateMaskField_8390 pm_f_28@@1))) o2_28 f_27) (= (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@10) o2_28 f_27) (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28 f_27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28 f_27))
)) (forall ((o2_28@@0 T@Ref) (f_27@@0 T@Field_12360_12361) ) (!  (=> (select (|PolymorphicMapType_12836_12347_12361#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@10) null (PredicateMaskField_8390 pm_f_28@@1))) o2_28@@0 f_27@@0) (= (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@10) o2_28@@0 f_27@@0) (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@0 f_27@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@0 f_27@@0))
))) (forall ((o2_28@@1 T@Ref) (f_27@@1 T@Field_18501_3245) ) (!  (=> (select (|PolymorphicMapType_12836_12347_3245#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@10) null (PredicateMaskField_8390 pm_f_28@@1))) o2_28@@1 f_27@@1) (= (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@10) o2_28@@1 f_27@@1) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@1 f_27@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@1 f_27@@1))
))) (forall ((o2_28@@2 T@Ref) (f_27@@2 T@Field_8390_32214) ) (!  (=> (select (|PolymorphicMapType_12836_12347_32214#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@10) null (PredicateMaskField_8390 pm_f_28@@1))) o2_28@@2 f_27@@2) (= (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@10) o2_28@@2 f_27@@2) (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@2 f_27@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@2 f_27@@2))
))) (forall ((o2_28@@3 T@Ref) (f_27@@3 T@Field_8390_32347) ) (!  (=> (select (|PolymorphicMapType_12836_12347_33525#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@10) null (PredicateMaskField_8390 pm_f_28@@1))) o2_28@@3 f_27@@3) (= (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@10) o2_28@@3 f_27@@3) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@3 f_27@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@3) o2_28@@3 f_27@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@17) (IsPredicateField_8390_32305 pm_f_28@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12287) (ExhaleHeap@@4 T@PolymorphicMapType_12287) (Mask@@18 T@PolymorphicMapType_12308) (pm_f_28@@2 T@Field_8390_32214) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_8390_32278 Mask@@18 null pm_f_28@@2) (IsWandField_8390_34052 pm_f_28@@2)) (and (and (and (and (forall ((o2_28@@4 T@Ref) (f_27@@4 T@Field_12347_53) ) (!  (=> (select (|PolymorphicMapType_12836_12347_53#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@11) null (WandMaskField_8390 pm_f_28@@2))) o2_28@@4 f_27@@4) (= (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@11) o2_28@@4 f_27@@4) (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@4 f_27@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@4 f_27@@4))
)) (forall ((o2_28@@5 T@Ref) (f_27@@5 T@Field_12360_12361) ) (!  (=> (select (|PolymorphicMapType_12836_12347_12361#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@11) null (WandMaskField_8390 pm_f_28@@2))) o2_28@@5 f_27@@5) (= (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@11) o2_28@@5 f_27@@5) (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@5 f_27@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@5 f_27@@5))
))) (forall ((o2_28@@6 T@Ref) (f_27@@6 T@Field_18501_3245) ) (!  (=> (select (|PolymorphicMapType_12836_12347_3245#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@11) null (WandMaskField_8390 pm_f_28@@2))) o2_28@@6 f_27@@6) (= (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@11) o2_28@@6 f_27@@6) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@6 f_27@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@6 f_27@@6))
))) (forall ((o2_28@@7 T@Ref) (f_27@@7 T@Field_8390_32214) ) (!  (=> (select (|PolymorphicMapType_12836_12347_32214#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@11) null (WandMaskField_8390 pm_f_28@@2))) o2_28@@7 f_27@@7) (= (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@11) o2_28@@7 f_27@@7) (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@7 f_27@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@7 f_27@@7))
))) (forall ((o2_28@@8 T@Ref) (f_27@@8 T@Field_8390_32347) ) (!  (=> (select (|PolymorphicMapType_12836_12347_33525#PolymorphicMapType_12836| (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@11) null (WandMaskField_8390 pm_f_28@@2))) o2_28@@8 f_27@@8) (= (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@11) o2_28@@8 f_27@@8) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@8 f_27@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@4) o2_28@@8 f_27@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@18) (IsWandField_8390_34052 pm_f_28@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.193:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3011| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.566:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3011| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12287) (ExhaleHeap@@5 T@PolymorphicMapType_12287) (Mask@@19 T@PolymorphicMapType_12308) (o_41@@0 T@Ref) (f_27@@9 T@Field_8390_32347) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_8390_38052 Mask@@19 o_41@@0 f_27@@9) (= (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@12) o_41@@0 f_27@@9) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@5) o_41@@0 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| ExhaleHeap@@5) o_41@@0 f_27@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12287) (ExhaleHeap@@6 T@PolymorphicMapType_12287) (Mask@@20 T@PolymorphicMapType_12308) (o_41@@1 T@Ref) (f_27@@10 T@Field_8390_32214) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_8390_32278 Mask@@20 o_41@@1 f_27@@10) (= (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@13) o_41@@1 f_27@@10) (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| ExhaleHeap@@6) o_41@@1 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| ExhaleHeap@@6) o_41@@1 f_27@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12287) (ExhaleHeap@@7 T@PolymorphicMapType_12287) (Mask@@21 T@PolymorphicMapType_12308) (o_41@@2 T@Ref) (f_27@@11 T@Field_12360_12361) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_8390_12361 Mask@@21 o_41@@2 f_27@@11) (= (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@14) o_41@@2 f_27@@11) (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| ExhaleHeap@@7) o_41@@2 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| ExhaleHeap@@7) o_41@@2 f_27@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12287) (ExhaleHeap@@8 T@PolymorphicMapType_12287) (Mask@@22 T@PolymorphicMapType_12308) (o_41@@3 T@Ref) (f_27@@12 T@Field_12347_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_8390_53 Mask@@22 o_41@@3 f_27@@12) (= (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@15) o_41@@3 f_27@@12) (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@8) o_41@@3 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| ExhaleHeap@@8) o_41@@3 f_27@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12287) (ExhaleHeap@@9 T@PolymorphicMapType_12287) (Mask@@23 T@PolymorphicMapType_12308) (o_41@@4 T@Ref) (f_27@@13 T@Field_18501_3245) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_8390_3245 Mask@@23 o_41@@4 f_27@@13) (= (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@16) o_41@@4 f_27@@13) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| ExhaleHeap@@9) o_41@@4 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| ExhaleHeap@@9) o_41@@4 f_27@@13))
)))
(assert (forall ((s0@@0 T@Seq_3011) (s1@@0 T@Seq_3011) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3011|)) (not (= s1@@0 |Seq#Empty_3011|))) (= (|Seq#Length_3011| (|Seq#Append_3011| s0@@0 s1@@0)) (+ (|Seq#Length_3011| s0@@0) (|Seq#Length_3011| s1@@0))))
 :qid |stdinbpl.243:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3011| (|Seq#Append_3011| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8390_32347) ) (! (= (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8390_32214) ) (! (= (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12360_12361) ) (! (= (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12347_53) ) (! (= (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18501_3245) ) (! (= (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_3011) (t@@0 T@Seq_3011) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3011| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3011| s@@7)) (|Seq#Length_3011| s@@7)) n@@7) (= (|Seq#Drop_3011| (|Seq#Append_3011| s@@7 t@@0) n@@7) (|Seq#Drop_3011| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3011| s@@7))))))
 :qid |stdinbpl.400:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3011| (|Seq#Append_3011| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12287) (Mask@@24 T@PolymorphicMapType_12308) (origL@@2 T@VCTArrayDomainType_19414) (newO@@2 T@Seq_3011) (newL@@2 T@VCTArrayDomainType_19414) (maxLen@@5 Int) ) (!  (=> (state Heap@@17 Mask@@24) (= (|IsReordered'| Heap@@17 origL@@2 newO@@2 newL@@2 maxLen@@5) (|IsReordered#frame| (CombineFrames (FrameFragment_4067 (|IsReordered#condqp1| Heap@@17 origL@@2 newO@@2 newL@@2 maxLen@@5)) (FrameFragment_10605 (ite (not (= origL@@2 newL@@2)) (FrameFragment_4067 (|IsReordered#condqp2| Heap@@17 origL@@2 newO@@2 newL@@2 maxLen@@5)) EmptyFrame))) origL@@2 newO@@2 newL@@2 maxLen@@5)))
 :qid |stdinbpl.710:15|
 :skolemid |70|
 :pattern ( (state Heap@@17 Mask@@24) (|IsReordered'| Heap@@17 origL@@2 newO@@2 newL@@2 maxLen@@5))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_12287) (Heap1Heap T@PolymorphicMapType_12287) (origL@@3 T@VCTArrayDomainType_19414) (newO@@3 T@Seq_3011) (newL@@3 T@VCTArrayDomainType_19414) (maxLen@@6 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6))) (< (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6)) (alen_8439 origL@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (<= 0 (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6))) (< (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6)) (alen_8439 origL@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (<= 0 (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6))) (< (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6)) (alen_8439 origL@@3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap2Heap) (loc_8442 origL@@3 (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6))) Integer__item) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap1Heap) (loc_8442 origL@@3 (|sk_IsReordered#condqp1| (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6))) Integer__item)))) (= (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6)))
 :qid |stdinbpl.720:15|
 :skolemid |71|
 :pattern ( (|IsReordered#condqp1| Heap2Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (|IsReordered#condqp1| Heap1Heap origL@@3 newO@@3 newL@@3 maxLen@@6) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_12287) (Heap1Heap@@0 T@PolymorphicMapType_12287) (origL@@4 T@VCTArrayDomainType_19414) (newO@@4 T@Seq_3011) (newL@@4 T@VCTArrayDomainType_19414) (maxLen@@7 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7))) (< (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7)) (alen_8439 newL@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (<= 0 (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7))) (< (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7)) (alen_8439 newL@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (<= 0 (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7))) (< (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7)) (alen_8439 newL@@4))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap2Heap@@0) (loc_8442 newL@@4 (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7))) Integer__item) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap1Heap@@0) (loc_8442 newL@@4 (|sk_IsReordered#condqp2| (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7))) Integer__item)))) (= (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7)))
 :qid |stdinbpl.730:15|
 :skolemid |72|
 :pattern ( (|IsReordered#condqp2| Heap2Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (|IsReordered#condqp2| Heap1Heap@@0 origL@@4 newO@@4 newL@@4 maxLen@@7) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12308) (SummandMask1 T@PolymorphicMapType_12308) (SummandMask2 T@PolymorphicMapType_12308) (o_2@@19 T@Ref) (f_4@@19 T@Field_8390_32347) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12308_8390_36469#PolymorphicMapType_12308| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12308) (SummandMask1@@0 T@PolymorphicMapType_12308) (SummandMask2@@0 T@PolymorphicMapType_12308) (o_2@@20 T@Ref) (f_4@@20 T@Field_8390_32214) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12308_8390_32214#PolymorphicMapType_12308| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12308) (SummandMask1@@1 T@PolymorphicMapType_12308) (SummandMask2@@1 T@PolymorphicMapType_12308) (o_2@@21 T@Ref) (f_4@@21 T@Field_12360_12361) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12308_8390_12361#PolymorphicMapType_12308| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12308) (SummandMask1@@2 T@PolymorphicMapType_12308) (SummandMask2@@2 T@PolymorphicMapType_12308) (o_2@@22 T@Ref) (f_4@@22 T@Field_12347_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12308_8390_53#PolymorphicMapType_12308| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12308) (SummandMask1@@3 T@PolymorphicMapType_12308) (SummandMask2@@3 T@PolymorphicMapType_12308) (o_2@@23 T@Ref) (f_4@@23 T@Field_18501_3245) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12308_8390_3245#PolymorphicMapType_12308| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.565:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3011) (b T@Seq_3011) ) (!  (=> (|Seq#Equal_3011| a b) (= a b))
 :qid |stdinbpl.538:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3011| a b))
)))
(assert (forall ((a_2 T@VCTArrayDomainType_19414) ) (! (>= (alen_8439 a_2) 0)
 :qid |stdinbpl.588:20|
 :skolemid |58|
 :pattern ( (alen_8439 a_2))
)))
(assert (forall ((s@@8 T@Seq_3011) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_3011| s@@8))) (|Seq#ContainsTrigger_3011| s@@8 (|Seq#Index_3011| s@@8 i@@3)))
 :qid |stdinbpl.431:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3011| s@@8 i@@3))
)))
(assert (forall ((s0@@1 T@Seq_3011) (s1@@1 T@Seq_3011) ) (!  (and (=> (= s0@@1 |Seq#Empty_3011|) (= (|Seq#Append_3011| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3011|) (= (|Seq#Append_3011| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.249:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3011| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3011| (|Seq#Singleton_3011| t@@1) 0) t@@1)
 :qid |stdinbpl.253:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3011| t@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12287) (Mask@@25 T@PolymorphicMapType_12308) (origL@@5 T@VCTArrayDomainType_19414) (newO@@5 T@Seq_3011) (newL@@5 T@VCTArrayDomainType_19414) (maxLen@@8 Int) ) (!  (=> (and (state Heap@@18 Mask@@25) (< AssumeFunctionsAbove 0)) (= (IsReordered Heap@@18 origL@@5 newO@@5 newL@@5 maxLen@@8)  (and (<= maxLen@@8 (alen_8439 origL@@5)) (and (<= maxLen@@8 (alen_8439 newL@@5)) (and (CheckBounded Heap@@18 newO@@5 maxLen@@8) (forall ((i_2_1 Int) ) (!  (=> (and (<= 0 i_2_1) (< i_2_1 (|Seq#Length_3011| newO@@5))) (= (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@18) (loc_8442 newL@@5 i_2_1) Integer__item) (select (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@18) (loc_8442 origL@@5 (|Seq#Index_3011| newO@@5 i_2_1)) Integer__item)))
 :qid |stdinbpl.702:211|
 :skolemid |68|
 :pattern ( (loc_8442 origL@@5 (|Seq#Index_3011| newO@@5 i_2_1)))
)))))))
 :qid |stdinbpl.700:15|
 :skolemid |69|
 :pattern ( (state Heap@@18 Mask@@25) (IsReordered Heap@@18 origL@@5 newO@@5 newL@@5 maxLen@@8))
)))
(assert (forall ((s@@9 T@Seq_3011) ) (! (<= 0 (|Seq#Length_3011| s@@9))
 :qid |stdinbpl.232:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3011| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_3011) (s1@@2 T@Seq_3011) ) (!  (=> (|Seq#Equal_3011| s0@@2 s1@@2) (and (= (|Seq#Length_3011| s0@@2) (|Seq#Length_3011| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3011| s0@@2))) (= (|Seq#Index_3011| s0@@2 j@@4) (|Seq#Index_3011| s1@@2 j@@4)))
 :qid |stdinbpl.528:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3011| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3011| s1@@2 j@@4))
))))
 :qid |stdinbpl.525:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3011| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3011| (|Seq#Singleton_3011| t@@2)) 1)
 :qid |stdinbpl.240:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3011| t@@2))
)))
(assert (forall ((s@@10 T@Seq_3011) (t@@3 T@Seq_3011) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3011| s@@10))) (= (|Seq#Take_3011| (|Seq#Append_3011| s@@10 t@@3) n@@8) (|Seq#Take_3011| s@@10 n@@8)))
 :qid |stdinbpl.382:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3011| (|Seq#Append_3011| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3011) (i@@4 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3011| s@@11))) (= (|Seq#Length_3011| (|Seq#Update_3011| s@@11 i@@4 v@@1)) (|Seq#Length_3011| s@@11)))
 :qid |stdinbpl.281:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3011| (|Seq#Update_3011| s@@11 i@@4 v@@1)))
 :pattern ( (|Seq#Length_3011| s@@11) (|Seq#Update_3011| s@@11 i@@4 v@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12287) (o_22 T@Ref) (f_12 T@Field_8390_32214) (v@@2 T@FrameType) ) (! (succHeap Heap@@19 (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@19) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@19) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@19) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@19) (store (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@19) o_22 f_12 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@19) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@19) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@19) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@19) (store (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@19) o_22 f_12 v@@2)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12287) (o_22@@0 T@Ref) (f_12@@0 T@Field_8390_32347) (v@@3 T@PolymorphicMapType_12836) ) (! (succHeap Heap@@20 (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@20) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@20) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@20) (store (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@20) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@20) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@20) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@20) (store (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@20) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12287) (o_22@@1 T@Ref) (f_12@@1 T@Field_18501_3245) (v@@4 Int) ) (! (succHeap Heap@@21 (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@21) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@21) (store (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@21) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@21) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@21) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@21) (store (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@21) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@21) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12287) (o_22@@2 T@Ref) (f_12@@2 T@Field_12360_12361) (v@@5 T@Ref) ) (! (succHeap Heap@@22 (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@22) (store (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@22) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@22) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@22) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12287 (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@22) (store (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@22) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@22) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@22) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12287) (o_22@@3 T@Ref) (f_12@@3 T@Field_12347_53) (v@@6 Bool) ) (! (succHeap Heap@@23 (PolymorphicMapType_12287 (store (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@23) o_22@@3 f_12@@3 v@@6) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@23) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@23) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@23) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12287 (store (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@23) o_22@@3 f_12@@3 v@@6) (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@23) (|PolymorphicMapType_12287_8390_3245#PolymorphicMapType_12287| Heap@@23) (|PolymorphicMapType_12287_8390_32391#PolymorphicMapType_12287| Heap@@23) (|PolymorphicMapType_12287_12347_32214#PolymorphicMapType_12287| Heap@@23)))
)))
(assert (forall ((s@@12 T@Seq_3011) (t@@4 T@Seq_3011) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3011| s@@12))) (= (|Seq#Drop_3011| (|Seq#Append_3011| s@@12 t@@4) n@@9) (|Seq#Append_3011| (|Seq#Drop_3011| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.396:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3011| (|Seq#Append_3011| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_3011) (n@@10 Int) (i@@5 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@5)) (< i@@5 (|Seq#Length_3011| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@5 n@@10) n@@10) i@@5) (= (|Seq#Index_3011| (|Seq#Drop_3011| s@@13 n@@10) (|Seq#Sub| i@@5 n@@10)) (|Seq#Index_3011| s@@13 i@@5))))
 :qid |stdinbpl.332:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3011| s@@13 n@@10) (|Seq#Index_3011| s@@13 i@@5))
)))
(assert (forall ((s0@@3 T@Seq_3011) (s1@@3 T@Seq_3011) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3011|)) (not (= s1@@3 |Seq#Empty_3011|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3011| s0@@3))) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@3 s1@@3) n@@11) (|Seq#Index_3011| s0@@3 n@@11)))
 :qid |stdinbpl.272:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3011| (|Seq#Append_3011| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3011| s0@@3 n@@11) (|Seq#Append_3011| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3011) (s1@@4 T@Seq_3011) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3011|)) (not (= s1@@4 |Seq#Empty_3011|))) (<= 0 m)) (< m (|Seq#Length_3011| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3011| s0@@4)) (|Seq#Length_3011| s0@@4)) m) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3011| s0@@4))) (|Seq#Index_3011| s1@@4 m))))
 :qid |stdinbpl.277:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3011| s1@@4 m) (|Seq#Append_3011| s0@@4 s1@@4))
)))
(assert (forall ((o_22@@4 T@Ref) (f_30 T@Field_12360_12361) (Heap@@24 T@PolymorphicMapType_12287) ) (!  (=> (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@24) o_22@@4 $allocated) (select (|PolymorphicMapType_12287_8186_53#PolymorphicMapType_12287| Heap@@24) (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@24) o_22@@4 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12287_8189_8190#PolymorphicMapType_12287| Heap@@24) o_22@@4 f_30))
)))
(assert (forall ((s@@14 T@Seq_3011) (x@@1 Int) (i@@6 Int) ) (!  (=> (and (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3011| s@@14))) (= (|Seq#Index_3011| s@@14 i@@6) x@@1)) (|Seq#Contains_3011| s@@14 x@@1))
 :qid |stdinbpl.429:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3011| s@@14 x@@1) (|Seq#Index_3011| s@@14 i@@6))
)))
(assert (forall ((s0@@5 T@Seq_3011) (s1@@5 T@Seq_3011) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3011| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3011| s0@@5 s1@@5))) (not (= (|Seq#Length_3011| s0@@5) (|Seq#Length_3011| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3011| s0@@5 s1@@5))) (= (|Seq#Length_3011| s0@@5) (|Seq#Length_3011| s1@@5))) (= (|Seq#SkolemDiff_3011| s0@@5 s1@@5) (|Seq#SkolemDiff_3011| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3011| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3011| s0@@5 s1@@5) (|Seq#Length_3011| s0@@5))) (not (= (|Seq#Index_3011| s0@@5 (|Seq#SkolemDiff_3011| s0@@5 s1@@5)) (|Seq#Index_3011| s1@@5 (|Seq#SkolemDiff_3011| s0@@5 s1@@5))))))
 :qid |stdinbpl.533:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3011| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_8390_32214) (v_1@@0 T@FrameType) (q T@Field_8390_32214) (w@@0 T@FrameType) (r T@Field_8390_32214) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12347_12347 p@@1 v_1@@0 q w@@0) (InsidePredicate_12347_12347 q w@@0 r u)) (InsidePredicate_12347_12347 p@@1 v_1@@0 r u))
 :qid |stdinbpl.200:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12347_12347 p@@1 v_1@@0 q w@@0) (InsidePredicate_12347_12347 q w@@0 r u))
)))
(assert (forall ((a_2@@0 T@VCTArrayDomainType_19414) (i@@7 Int) (j_9 Int) ) (!  (=> (and (>= i@@7 0) (and (>= j_9 0) (and (< i@@7 (alen_8439 a_2@@0)) (and (< j_9 (alen_8439 a_2@@0)) (not (= i@@7 j_9)))))) (not (= (loc_8442 a_2@@0 i@@7) (loc_8442 a_2@@0 j_9))))
 :qid |stdinbpl.594:20|
 :skolemid |59|
 :pattern ( (loc_8442 a_2@@0 i@@7) (loc_8442 a_2@@0 j_9))
)))
(assert (forall ((s@@15 T@Seq_3011) ) (!  (=> (= (|Seq#Length_3011| s@@15) 0) (= s@@15 |Seq#Empty_3011|))
 :qid |stdinbpl.236:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3011| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3011) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_3011| s@@16 n@@12) |Seq#Empty_3011|))
 :qid |stdinbpl.412:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3011| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12287) (order@@2 T@Seq_3011) (maxLen@@9 Int) ) (!  (and (= (CheckBounded Heap@@25 order@@2 maxLen@@9) (|CheckBounded'| Heap@@25 order@@2 maxLen@@9)) (dummyFunction_3515 (|CheckBounded#triggerStateless| order@@2 maxLen@@9)))
 :qid |stdinbpl.614:15|
 :skolemid |60|
 :pattern ( (CheckBounded Heap@@25 order@@2 maxLen@@9))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun order@@3 () T@Seq_3011)
(declare-fun i_14 () Int)
(declare-fun Heap@@26 () T@PolymorphicMapType_12287)
(declare-fun maxLen@@10 () Int)
(set-info :boogie-vc-id |CheckBounded#definedness|)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon4_correct true))
(let ((anon8_Else_correct  (=> (and (< (|Seq#Index_3011| order@@3 i_14) 0) (= (ControlFlow 0 7) 2)) anon4_correct)))
(let ((anon8_Then_correct  (=> (<= 0 (|Seq#Index_3011| order@@3 i_14)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< i_14 (|Seq#Length_3011| order@@3))) (=> (< i_14 (|Seq#Length_3011| order@@3)) (=> (= (ControlFlow 0 4) 2) anon4_correct))))))))
(let ((anon7_Then_correct  (=> (and (<= 0 i_14) (< i_14 (|Seq#Length_3011| order@@3))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 8) (- 0 9)) (< i_14 (|Seq#Length_3011| order@@3))) (=> (< i_14 (|Seq#Length_3011| order@@3)) (and (=> (= (ControlFlow 0 8) 4) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct)))))))))
(let ((anon7_Else_correct  (=> (and (not (and (<= 0 i_14) (< i_14 (|Seq#Length_3011| order@@3)))) (= (ControlFlow 0 3) 2)) anon4_correct)))
(let ((anon6_Else_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@26 ZeroMask) (not AssumePermUpperBound)) (and (= AssumeFunctionsAbove 1) (<= (|Seq#Length_3011| order@@3) maxLen@@10))) (and (and (=> (= (ControlFlow 0 11) 1) anon6_Else_correct) (=> (= (ControlFlow 0 11) 8) anon7_Then_correct)) (=> (= (ControlFlow 0 11) 3) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
