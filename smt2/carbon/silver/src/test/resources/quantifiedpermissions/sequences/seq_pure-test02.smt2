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
(declare-sort T@Field_18448_53 0)
(declare-sort T@Field_18461_18462 0)
(declare-sort T@Field_24495_3346 0)
(declare-sort T@Field_12439_52168 0)
(declare-sort T@Field_12439_52035 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_18409 0)) (((PolymorphicMapType_18409 (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| (Array T@Ref T@Field_24495_3346 Real)) (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| (Array T@Ref T@Field_18448_53 Real)) (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| (Array T@Ref T@Field_18461_18462 Real)) (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| (Array T@Ref T@Field_12439_52035 Real)) (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| (Array T@Ref T@Field_12439_52168 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18937 0)) (((PolymorphicMapType_18937 (|PolymorphicMapType_18937_18448_53#PolymorphicMapType_18937| (Array T@Ref T@Field_18448_53 Bool)) (|PolymorphicMapType_18937_18448_18462#PolymorphicMapType_18937| (Array T@Ref T@Field_18461_18462 Bool)) (|PolymorphicMapType_18937_18448_3346#PolymorphicMapType_18937| (Array T@Ref T@Field_24495_3346 Bool)) (|PolymorphicMapType_18937_18448_52035#PolymorphicMapType_18937| (Array T@Ref T@Field_12439_52035 Bool)) (|PolymorphicMapType_18937_18448_53346#PolymorphicMapType_18937| (Array T@Ref T@Field_12439_52168 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18388 0)) (((PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| (Array T@Ref T@Field_18448_53 Bool)) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| (Array T@Ref T@Field_18461_18462 T@Ref)) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| (Array T@Ref T@Field_24495_3346 Int)) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| (Array T@Ref T@Field_12439_52168 T@PolymorphicMapType_18937)) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| (Array T@Ref T@Field_12439_52035 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_18448_53)
(declare-fun f_7 () T@Field_24495_3346)
(declare-sort T@Seq_24540 0)
(declare-fun |Seq#Length_12443| (T@Seq_24540) Int)
(declare-fun |Seq#Drop_12443| (T@Seq_24540 Int) T@Seq_24540)
(declare-sort T@Seq_3224 0)
(declare-fun |Seq#Length_3224| (T@Seq_3224) Int)
(declare-fun |Seq#Drop_3224| (T@Seq_3224 Int) T@Seq_3224)
(declare-fun succHeap (T@PolymorphicMapType_18388 T@PolymorphicMapType_18388) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18388 T@PolymorphicMapType_18388) Bool)
(declare-fun state (T@PolymorphicMapType_18388 T@PolymorphicMapType_18409) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18409) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_18937)
(declare-fun |Seq#Index_12443| (T@Seq_24540 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3224| (T@Seq_3224 Int) Int)
(declare-fun |Seq#Empty_12443| () T@Seq_24540)
(declare-fun |Seq#Empty_3224| () T@Seq_3224)
(declare-fun |Seq#Update_12443| (T@Seq_24540 Int T@Ref) T@Seq_24540)
(declare-fun |Seq#Update_3224| (T@Seq_3224 Int Int) T@Seq_3224)
(declare-fun |Seq#Take_12443| (T@Seq_24540 Int) T@Seq_24540)
(declare-fun |Seq#Take_3224| (T@Seq_3224 Int) T@Seq_3224)
(declare-fun |Seq#Contains_3224| (T@Seq_3224 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3224)
(declare-fun |Seq#Contains_24540| (T@Seq_24540 T@Ref) Bool)
(declare-fun |Seq#Skolem_24540| (T@Seq_24540 T@Ref) Int)
(declare-fun |Seq#Skolem_3224| (T@Seq_3224 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18388 T@PolymorphicMapType_18388 T@PolymorphicMapType_18409) Bool)
(declare-fun IsPredicateField_12439_52126 (T@Field_12439_52035) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12439 (T@Field_12439_52035) T@Field_12439_52168)
(declare-fun HasDirectPerm_12439_52099 (T@PolymorphicMapType_18409 T@Ref T@Field_12439_52035) Bool)
(declare-fun IsWandField_12439_53873 (T@Field_12439_52035) Bool)
(declare-fun WandMaskField_12439 (T@Field_12439_52035) T@Field_12439_52168)
(declare-fun |Seq#Singleton_12443| (T@Ref) T@Seq_24540)
(declare-fun |Seq#Singleton_3224| (Int) T@Seq_3224)
(declare-fun |Seq#Append_24540| (T@Seq_24540 T@Seq_24540) T@Seq_24540)
(declare-fun |Seq#Append_3224| (T@Seq_3224 T@Seq_3224) T@Seq_3224)
(declare-fun dummyHeap () T@PolymorphicMapType_18388)
(declare-fun ZeroMask () T@PolymorphicMapType_18409)
(declare-fun InsidePredicate_18448_18448 (T@Field_12439_52035 T@FrameType T@Field_12439_52035 T@FrameType) Bool)
(declare-fun IsPredicateField_12439_3346 (T@Field_24495_3346) Bool)
(declare-fun IsWandField_12439_3346 (T@Field_24495_3346) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12439_57419 (T@Field_12439_52168) Bool)
(declare-fun IsWandField_12439_57435 (T@Field_12439_52168) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12439_18462 (T@Field_18461_18462) Bool)
(declare-fun IsWandField_12439_18462 (T@Field_18461_18462) Bool)
(declare-fun IsPredicateField_12439_53 (T@Field_18448_53) Bool)
(declare-fun IsWandField_12439_53 (T@Field_18448_53) Bool)
(declare-fun HasDirectPerm_12439_57873 (T@PolymorphicMapType_18409 T@Ref T@Field_12439_52168) Bool)
(declare-fun HasDirectPerm_12439_18462 (T@PolymorphicMapType_18409 T@Ref T@Field_18461_18462) Bool)
(declare-fun HasDirectPerm_12439_53 (T@PolymorphicMapType_18409 T@Ref T@Field_18448_53) Bool)
(declare-fun HasDirectPerm_12439_3346 (T@PolymorphicMapType_18409 T@Ref T@Field_24495_3346) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18409 T@PolymorphicMapType_18409 T@PolymorphicMapType_18409) Bool)
(declare-fun |Seq#Equal_24540| (T@Seq_24540 T@Seq_24540) Bool)
(declare-fun |Seq#Equal_3224| (T@Seq_3224 T@Seq_3224) Bool)
(declare-fun |Seq#ContainsTrigger_12443| (T@Seq_24540 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3224| (T@Seq_3224 Int) Bool)
(declare-fun |Seq#SkolemDiff_24540| (T@Seq_24540 T@Seq_24540) Int)
(declare-fun |Seq#SkolemDiff_3224| (T@Seq_3224 T@Seq_3224) Int)
(assert (forall ((s T@Seq_24540) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12443| s)) (= (|Seq#Length_12443| (|Seq#Drop_12443| s n)) (- (|Seq#Length_12443| s) n))) (=> (< (|Seq#Length_12443| s) n) (= (|Seq#Length_12443| (|Seq#Drop_12443| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12443| (|Seq#Drop_12443| s n)) (|Seq#Length_12443| s))))
 :qid |stdinbpl.330:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12443| (|Seq#Drop_12443| s n)))
 :pattern ( (|Seq#Length_12443| s) (|Seq#Drop_12443| s n))
)))
(assert (forall ((s@@0 T@Seq_3224) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3224| s@@0)) (= (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)) (- (|Seq#Length_3224| s@@0) n@@0))) (=> (< (|Seq#Length_3224| s@@0) n@@0) (= (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)) (|Seq#Length_3224| s@@0))))
 :qid |stdinbpl.330:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3224| s@@0) (|Seq#Drop_3224| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_18388) (Heap1 T@PolymorphicMapType_18388) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18388) (Mask T@PolymorphicMapType_18409) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18388) (Heap1@@0 T@PolymorphicMapType_18388) (Heap2 T@PolymorphicMapType_18388) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12439_52168) ) (!  (not (select (|PolymorphicMapType_18937_18448_53346#PolymorphicMapType_18937| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18937_18448_53346#PolymorphicMapType_18937| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12439_52035) ) (!  (not (select (|PolymorphicMapType_18937_18448_52035#PolymorphicMapType_18937| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18937_18448_52035#PolymorphicMapType_18937| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_24495_3346) ) (!  (not (select (|PolymorphicMapType_18937_18448_3346#PolymorphicMapType_18937| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18937_18448_3346#PolymorphicMapType_18937| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18461_18462) ) (!  (not (select (|PolymorphicMapType_18937_18448_18462#PolymorphicMapType_18937| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18937_18448_18462#PolymorphicMapType_18937| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18448_53) ) (!  (not (select (|PolymorphicMapType_18937_18448_53#PolymorphicMapType_18937| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18937_18448_53#PolymorphicMapType_18937| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_24540) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12443| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12443| (|Seq#Drop_12443| s@@1 n@@1) j) (|Seq#Index_12443| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.351:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12443| (|Seq#Drop_12443| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3224) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3224| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3224| (|Seq#Drop_3224| s@@2 n@@2) j@@0) (|Seq#Index_3224| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.351:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3224| (|Seq#Drop_3224| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_12443| |Seq#Empty_12443|) 0))
(assert (= (|Seq#Length_3224| |Seq#Empty_3224|) 0))
(assert (forall ((s@@3 T@Seq_24540) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12443| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_12443| (|Seq#Update_12443| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_12443| (|Seq#Update_12443| s@@3 i v) n@@3) (|Seq#Index_12443| s@@3 n@@3)))))
 :qid |stdinbpl.306:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12443| (|Seq#Update_12443| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_12443| s@@3 n@@3) (|Seq#Update_12443| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3224) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3224| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3224| (|Seq#Update_3224| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3224| (|Seq#Update_3224| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3224| s@@4 n@@4)))))
 :qid |stdinbpl.306:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3224| (|Seq#Update_3224| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3224| s@@4 n@@4) (|Seq#Update_3224| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_24540) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12443| s@@5)) (= (|Seq#Length_12443| (|Seq#Take_12443| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12443| s@@5) n@@5) (= (|Seq#Length_12443| (|Seq#Take_12443| s@@5 n@@5)) (|Seq#Length_12443| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12443| (|Seq#Take_12443| s@@5 n@@5)) 0)))
 :qid |stdinbpl.317:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12443| (|Seq#Take_12443| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12443| s@@5 n@@5) (|Seq#Length_12443| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3224) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3224| s@@6)) (= (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3224| s@@6) n@@6) (= (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)) (|Seq#Length_3224| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)) 0)))
 :qid |stdinbpl.317:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3224| s@@6 n@@6) (|Seq#Length_3224| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3224| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.591:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_24540) (x T@Ref) ) (!  (=> (|Seq#Contains_24540| s@@7 x) (and (and (<= 0 (|Seq#Skolem_24540| s@@7 x)) (< (|Seq#Skolem_24540| s@@7 x) (|Seq#Length_12443| s@@7))) (= (|Seq#Index_12443| s@@7 (|Seq#Skolem_24540| s@@7 x)) x)))
 :qid |stdinbpl.449:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_24540| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3224) (x@@0 Int) ) (!  (=> (|Seq#Contains_3224| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3224| s@@8 x@@0)) (< (|Seq#Skolem_3224| s@@8 x@@0) (|Seq#Length_3224| s@@8))) (= (|Seq#Index_3224| s@@8 (|Seq#Skolem_3224| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.449:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3224| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_24540) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12443| s@@9 n@@7) s@@9))
 :qid |stdinbpl.433:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12443| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3224) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3224| s@@10 n@@8) s@@10))
 :qid |stdinbpl.433:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3224| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.286:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.284:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18388) (ExhaleHeap T@PolymorphicMapType_18388) (Mask@@0 T@PolymorphicMapType_18409) (pm_f_19 T@Field_12439_52035) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12439_52099 Mask@@0 null pm_f_19) (IsPredicateField_12439_52126 pm_f_19)) (= (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@0) null (PredicateMaskField_12439 pm_f_19)) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap) null (PredicateMaskField_12439 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12439_52126 pm_f_19) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap) null (PredicateMaskField_12439 pm_f_19)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18388) (ExhaleHeap@@0 T@PolymorphicMapType_18388) (Mask@@1 T@PolymorphicMapType_18409) (pm_f_19@@0 T@Field_12439_52035) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12439_52099 Mask@@1 null pm_f_19@@0) (IsWandField_12439_53873 pm_f_19@@0)) (= (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@1) null (WandMaskField_12439 pm_f_19@@0)) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@0) null (WandMaskField_12439 pm_f_19@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_12439_53873 pm_f_19@@0) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@0) null (WandMaskField_12439 pm_f_19@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_24540| (|Seq#Singleton_12443| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.574:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_24540| (|Seq#Singleton_12443| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3224| (|Seq#Singleton_3224| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.574:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3224| (|Seq#Singleton_3224| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_24540) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12443| s@@11))) (= (|Seq#Index_12443| (|Seq#Take_12443| s@@11 n@@9) j@@3) (|Seq#Index_12443| s@@11 j@@3)))
 :qid |stdinbpl.325:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12443| (|Seq#Take_12443| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12443| s@@11 j@@3) (|Seq#Take_12443| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3224) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3224| s@@12))) (= (|Seq#Index_3224| (|Seq#Take_3224| s@@12 n@@10) j@@4) (|Seq#Index_3224| s@@12 j@@4)))
 :qid |stdinbpl.325:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3224| (|Seq#Take_3224| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3224| s@@12 j@@4) (|Seq#Take_3224| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_24540) (t T@Seq_24540) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12443| s@@13))) (< n@@11 (|Seq#Length_12443| (|Seq#Append_24540| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12443| s@@13)) (|Seq#Length_12443| s@@13)) n@@11) (= (|Seq#Take_12443| (|Seq#Append_24540| s@@13 t) n@@11) (|Seq#Append_24540| s@@13 (|Seq#Take_12443| t (|Seq#Sub| n@@11 (|Seq#Length_12443| s@@13)))))))
 :qid |stdinbpl.410:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12443| (|Seq#Append_24540| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3224) (t@@0 T@Seq_3224) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3224| s@@14))) (< n@@12 (|Seq#Length_3224| (|Seq#Append_3224| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3224| s@@14)) (|Seq#Length_3224| s@@14)) n@@12) (= (|Seq#Take_3224| (|Seq#Append_3224| s@@14 t@@0) n@@12) (|Seq#Append_3224| s@@14 (|Seq#Take_3224| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3224| s@@14)))))))
 :qid |stdinbpl.410:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3224| (|Seq#Append_3224| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18388) (ExhaleHeap@@1 T@PolymorphicMapType_18388) (Mask@@2 T@PolymorphicMapType_18409) (o_44 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@2) o_44 $allocated) (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@1) o_44 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@1) o_44 $allocated))
)))
(assert (forall ((p T@Field_12439_52035) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18448_18448 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18448_18448 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_24540) (s1 T@Seq_24540) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12443|)) (not (= s1 |Seq#Empty_12443|))) (<= (|Seq#Length_12443| s0) n@@13)) (< n@@13 (|Seq#Length_12443| (|Seq#Append_24540| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12443| s0)) (|Seq#Length_12443| s0)) n@@13) (= (|Seq#Index_12443| (|Seq#Append_24540| s0 s1) n@@13) (|Seq#Index_12443| s1 (|Seq#Sub| n@@13 (|Seq#Length_12443| s0))))))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12443| (|Seq#Append_24540| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3224) (s1@@0 T@Seq_3224) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3224|)) (not (= s1@@0 |Seq#Empty_3224|))) (<= (|Seq#Length_3224| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3224| (|Seq#Append_3224| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3224| s0@@0)) (|Seq#Length_3224| s0@@0)) n@@14) (= (|Seq#Index_3224| (|Seq#Append_3224| s0@@0 s1@@0) n@@14) (|Seq#Index_3224| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3224| s0@@0))))))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3224| (|Seq#Append_3224| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_12439_3346 f_7)))
(assert  (not (IsWandField_12439_3346 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18388) (ExhaleHeap@@2 T@PolymorphicMapType_18388) (Mask@@3 T@PolymorphicMapType_18409) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_18409) (o_2@@4 T@Ref) (f_4@@4 T@Field_12439_52168) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_12439_57419 f_4@@4))) (not (IsWandField_12439_57435 f_4@@4))) (<= (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_18409) (o_2@@5 T@Ref) (f_4@@5 T@Field_12439_52035) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_12439_52126 f_4@@5))) (not (IsWandField_12439_53873 f_4@@5))) (<= (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_18409) (o_2@@6 T@Ref) (f_4@@6 T@Field_18461_18462) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12439_18462 f_4@@6))) (not (IsWandField_12439_18462 f_4@@6))) (<= (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_18409) (o_2@@7 T@Ref) (f_4@@7 T@Field_18448_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_12439_53 f_4@@7))) (not (IsWandField_12439_53 f_4@@7))) (<= (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_18409) (o_2@@8 T@Ref) (f_4@@8 T@Field_24495_3346) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12439_3346 f_4@@8))) (not (IsWandField_12439_3346 f_4@@8))) (<= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18409) (o_2@@9 T@Ref) (f_4@@9 T@Field_12439_52168) ) (! (= (HasDirectPerm_12439_57873 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12439_57873 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18409) (o_2@@10 T@Ref) (f_4@@10 T@Field_12439_52035) ) (! (= (HasDirectPerm_12439_52099 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12439_52099 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18409) (o_2@@11 T@Ref) (f_4@@11 T@Field_18461_18462) ) (! (= (HasDirectPerm_12439_18462 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12439_18462 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18409) (o_2@@12 T@Ref) (f_4@@12 T@Field_18448_53) ) (! (= (HasDirectPerm_12439_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12439_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18409) (o_2@@13 T@Ref) (f_4@@13 T@Field_24495_3346) ) (! (= (HasDirectPerm_12439_3346 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12439_3346 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18388) (ExhaleHeap@@3 T@PolymorphicMapType_18388) (Mask@@14 T@PolymorphicMapType_18409) (pm_f_19@@1 T@Field_12439_52035) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_12439_52099 Mask@@14 null pm_f_19@@1) (IsPredicateField_12439_52126 pm_f_19@@1)) (and (and (and (and (forall ((o2_19 T@Ref) (f_47 T@Field_18448_53) ) (!  (=> (select (|PolymorphicMapType_18937_18448_53#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@4) null (PredicateMaskField_12439 pm_f_19@@1))) o2_19 f_47) (= (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@4) o2_19 f_47) (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19 f_47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19 f_47))
)) (forall ((o2_19@@0 T@Ref) (f_47@@0 T@Field_18461_18462) ) (!  (=> (select (|PolymorphicMapType_18937_18448_18462#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@4) null (PredicateMaskField_12439 pm_f_19@@1))) o2_19@@0 f_47@@0) (= (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@4) o2_19@@0 f_47@@0) (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@0 f_47@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@0 f_47@@0))
))) (forall ((o2_19@@1 T@Ref) (f_47@@1 T@Field_24495_3346) ) (!  (=> (select (|PolymorphicMapType_18937_18448_3346#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@4) null (PredicateMaskField_12439 pm_f_19@@1))) o2_19@@1 f_47@@1) (= (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@4) o2_19@@1 f_47@@1) (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@1 f_47@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@1 f_47@@1))
))) (forall ((o2_19@@2 T@Ref) (f_47@@2 T@Field_12439_52035) ) (!  (=> (select (|PolymorphicMapType_18937_18448_52035#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@4) null (PredicateMaskField_12439 pm_f_19@@1))) o2_19@@2 f_47@@2) (= (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@4) o2_19@@2 f_47@@2) (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@2 f_47@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@2 f_47@@2))
))) (forall ((o2_19@@3 T@Ref) (f_47@@3 T@Field_12439_52168) ) (!  (=> (select (|PolymorphicMapType_18937_18448_53346#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@4) null (PredicateMaskField_12439 pm_f_19@@1))) o2_19@@3 f_47@@3) (= (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@4) o2_19@@3 f_47@@3) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@3 f_47@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@3) o2_19@@3 f_47@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_12439_52126 pm_f_19@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18388) (ExhaleHeap@@4 T@PolymorphicMapType_18388) (Mask@@15 T@PolymorphicMapType_18409) (pm_f_19@@2 T@Field_12439_52035) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_12439_52099 Mask@@15 null pm_f_19@@2) (IsWandField_12439_53873 pm_f_19@@2)) (and (and (and (and (forall ((o2_19@@4 T@Ref) (f_47@@4 T@Field_18448_53) ) (!  (=> (select (|PolymorphicMapType_18937_18448_53#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@5) null (WandMaskField_12439 pm_f_19@@2))) o2_19@@4 f_47@@4) (= (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@5) o2_19@@4 f_47@@4) (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@4 f_47@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@4 f_47@@4))
)) (forall ((o2_19@@5 T@Ref) (f_47@@5 T@Field_18461_18462) ) (!  (=> (select (|PolymorphicMapType_18937_18448_18462#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@5) null (WandMaskField_12439 pm_f_19@@2))) o2_19@@5 f_47@@5) (= (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@5) o2_19@@5 f_47@@5) (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@5 f_47@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@5 f_47@@5))
))) (forall ((o2_19@@6 T@Ref) (f_47@@6 T@Field_24495_3346) ) (!  (=> (select (|PolymorphicMapType_18937_18448_3346#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@5) null (WandMaskField_12439 pm_f_19@@2))) o2_19@@6 f_47@@6) (= (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@5) o2_19@@6 f_47@@6) (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@6 f_47@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@6 f_47@@6))
))) (forall ((o2_19@@7 T@Ref) (f_47@@7 T@Field_12439_52035) ) (!  (=> (select (|PolymorphicMapType_18937_18448_52035#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@5) null (WandMaskField_12439 pm_f_19@@2))) o2_19@@7 f_47@@7) (= (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@5) o2_19@@7 f_47@@7) (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@7 f_47@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@7 f_47@@7))
))) (forall ((o2_19@@8 T@Ref) (f_47@@8 T@Field_12439_52168) ) (!  (=> (select (|PolymorphicMapType_18937_18448_53346#PolymorphicMapType_18937| (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@5) null (WandMaskField_12439 pm_f_19@@2))) o2_19@@8 f_47@@8) (= (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@5) o2_19@@8 f_47@@8) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@8 f_47@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@4) o2_19@@8 f_47@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_12439_53873 pm_f_19@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3224| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.589:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3224| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18388) (ExhaleHeap@@5 T@PolymorphicMapType_18388) (Mask@@16 T@PolymorphicMapType_18409) (o_44@@0 T@Ref) (f_47@@9 T@Field_12439_52168) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_12439_57873 Mask@@16 o_44@@0 f_47@@9) (= (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@6) o_44@@0 f_47@@9) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@5) o_44@@0 f_47@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| ExhaleHeap@@5) o_44@@0 f_47@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18388) (ExhaleHeap@@6 T@PolymorphicMapType_18388) (Mask@@17 T@PolymorphicMapType_18409) (o_44@@1 T@Ref) (f_47@@10 T@Field_12439_52035) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_12439_52099 Mask@@17 o_44@@1 f_47@@10) (= (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@7) o_44@@1 f_47@@10) (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| ExhaleHeap@@6) o_44@@1 f_47@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| ExhaleHeap@@6) o_44@@1 f_47@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18388) (ExhaleHeap@@7 T@PolymorphicMapType_18388) (Mask@@18 T@PolymorphicMapType_18409) (o_44@@2 T@Ref) (f_47@@11 T@Field_18461_18462) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_12439_18462 Mask@@18 o_44@@2 f_47@@11) (= (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@8) o_44@@2 f_47@@11) (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| ExhaleHeap@@7) o_44@@2 f_47@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| ExhaleHeap@@7) o_44@@2 f_47@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18388) (ExhaleHeap@@8 T@PolymorphicMapType_18388) (Mask@@19 T@PolymorphicMapType_18409) (o_44@@3 T@Ref) (f_47@@12 T@Field_18448_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_12439_53 Mask@@19 o_44@@3 f_47@@12) (= (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@9) o_44@@3 f_47@@12) (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@8) o_44@@3 f_47@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| ExhaleHeap@@8) o_44@@3 f_47@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18388) (ExhaleHeap@@9 T@PolymorphicMapType_18388) (Mask@@20 T@PolymorphicMapType_18409) (o_44@@4 T@Ref) (f_47@@13 T@Field_24495_3346) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_12439_3346 Mask@@20 o_44@@4 f_47@@13) (= (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@10) o_44@@4 f_47@@13) (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| ExhaleHeap@@9) o_44@@4 f_47@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| ExhaleHeap@@9) o_44@@4 f_47@@13))
)))
(assert (forall ((s0@@1 T@Seq_24540) (s1@@1 T@Seq_24540) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12443|)) (not (= s1@@1 |Seq#Empty_12443|))) (= (|Seq#Length_12443| (|Seq#Append_24540| s0@@1 s1@@1)) (+ (|Seq#Length_12443| s0@@1) (|Seq#Length_12443| s1@@1))))
 :qid |stdinbpl.266:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12443| (|Seq#Append_24540| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3224) (s1@@2 T@Seq_3224) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3224|)) (not (= s1@@2 |Seq#Empty_3224|))) (= (|Seq#Length_3224| (|Seq#Append_3224| s0@@2 s1@@2)) (+ (|Seq#Length_3224| s0@@2) (|Seq#Length_3224| s1@@2))))
 :qid |stdinbpl.266:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3224| (|Seq#Append_3224| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12439_52168) ) (! (= (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12439_52035) ) (! (= (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_18461_18462) ) (! (= (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_18448_53) ) (! (= (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_24495_3346) ) (! (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_24540) (t@@1 T@Seq_24540) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12443| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12443| s@@15)) (|Seq#Length_12443| s@@15)) n@@15) (= (|Seq#Drop_12443| (|Seq#Append_24540| s@@15 t@@1) n@@15) (|Seq#Drop_12443| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12443| s@@15))))))
 :qid |stdinbpl.423:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12443| (|Seq#Append_24540| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3224) (t@@2 T@Seq_3224) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3224| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3224| s@@16)) (|Seq#Length_3224| s@@16)) n@@16) (= (|Seq#Drop_3224| (|Seq#Append_3224| s@@16 t@@2) n@@16) (|Seq#Drop_3224| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3224| s@@16))))))
 :qid |stdinbpl.423:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3224| (|Seq#Append_3224| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18409) (SummandMask1 T@PolymorphicMapType_18409) (SummandMask2 T@PolymorphicMapType_18409) (o_2@@19 T@Ref) (f_4@@19 T@Field_12439_52168) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18409) (SummandMask1@@0 T@PolymorphicMapType_18409) (SummandMask2@@0 T@PolymorphicMapType_18409) (o_2@@20 T@Ref) (f_4@@20 T@Field_12439_52035) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18409) (SummandMask1@@1 T@PolymorphicMapType_18409) (SummandMask2@@1 T@PolymorphicMapType_18409) (o_2@@21 T@Ref) (f_4@@21 T@Field_18461_18462) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18409) (SummandMask1@@2 T@PolymorphicMapType_18409) (SummandMask2@@2 T@PolymorphicMapType_18409) (o_2@@22 T@Ref) (f_4@@22 T@Field_18448_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18409) (SummandMask1@@3 T@PolymorphicMapType_18409) (SummandMask2@@3 T@PolymorphicMapType_18409) (o_2@@23 T@Ref) (f_4@@23 T@Field_24495_3346) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3224| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3224| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.588:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3224| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_24540) (b T@Seq_24540) ) (!  (=> (|Seq#Equal_24540| a b) (= a b))
 :qid |stdinbpl.561:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_24540| a b))
)))
(assert (forall ((a@@0 T@Seq_3224) (b@@0 T@Seq_3224) ) (!  (=> (|Seq#Equal_3224| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.561:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3224| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_24540) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_12443| s@@17))) (|Seq#ContainsTrigger_12443| s@@17 (|Seq#Index_12443| s@@17 i@@3)))
 :qid |stdinbpl.454:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12443| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3224) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3224| s@@18))) (|Seq#ContainsTrigger_3224| s@@18 (|Seq#Index_3224| s@@18 i@@4)))
 :qid |stdinbpl.454:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3224| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_24540) (s1@@3 T@Seq_24540) ) (!  (and (=> (= s0@@3 |Seq#Empty_12443|) (= (|Seq#Append_24540| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12443|) (= (|Seq#Append_24540| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.272:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_24540| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3224) (s1@@4 T@Seq_3224) ) (!  (and (=> (= s0@@4 |Seq#Empty_3224|) (= (|Seq#Append_3224| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3224|) (= (|Seq#Append_3224| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.272:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3224| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12443| (|Seq#Singleton_12443| t@@3) 0) t@@3)
 :qid |stdinbpl.276:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12443| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3224| (|Seq#Singleton_3224| t@@4) 0) t@@4)
 :qid |stdinbpl.276:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3224| t@@4))
)))
(assert (forall ((s@@19 T@Seq_24540) ) (! (<= 0 (|Seq#Length_12443| s@@19))
 :qid |stdinbpl.255:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12443| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3224) ) (! (<= 0 (|Seq#Length_3224| s@@20))
 :qid |stdinbpl.255:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3224| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_24540) (s1@@5 T@Seq_24540) ) (!  (=> (|Seq#Equal_24540| s0@@5 s1@@5) (and (= (|Seq#Length_12443| s0@@5) (|Seq#Length_12443| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12443| s0@@5))) (= (|Seq#Index_12443| s0@@5 j@@6) (|Seq#Index_12443| s1@@5 j@@6)))
 :qid |stdinbpl.551:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12443| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12443| s1@@5 j@@6))
))))
 :qid |stdinbpl.548:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_24540| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3224) (s1@@6 T@Seq_3224) ) (!  (=> (|Seq#Equal_3224| s0@@6 s1@@6) (and (= (|Seq#Length_3224| s0@@6) (|Seq#Length_3224| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3224| s0@@6))) (= (|Seq#Index_3224| s0@@6 j@@7) (|Seq#Index_3224| s1@@6 j@@7)))
 :qid |stdinbpl.551:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3224| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3224| s1@@6 j@@7))
))))
 :qid |stdinbpl.548:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3224| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12443| (|Seq#Singleton_12443| t@@5)) 1)
 :qid |stdinbpl.263:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12443| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3224| (|Seq#Singleton_3224| t@@6)) 1)
 :qid |stdinbpl.263:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3224| t@@6))
)))
(assert (forall ((s@@21 T@Seq_24540) (t@@7 T@Seq_24540) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12443| s@@21))) (= (|Seq#Take_12443| (|Seq#Append_24540| s@@21 t@@7) n@@17) (|Seq#Take_12443| s@@21 n@@17)))
 :qid |stdinbpl.405:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12443| (|Seq#Append_24540| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3224) (t@@8 T@Seq_3224) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3224| s@@22))) (= (|Seq#Take_3224| (|Seq#Append_3224| s@@22 t@@8) n@@18) (|Seq#Take_3224| s@@22 n@@18)))
 :qid |stdinbpl.405:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3224| (|Seq#Append_3224| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_24540) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_12443| s@@23))) (= (|Seq#Length_12443| (|Seq#Update_12443| s@@23 i@@5 v@@2)) (|Seq#Length_12443| s@@23)))
 :qid |stdinbpl.304:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12443| (|Seq#Update_12443| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_12443| s@@23) (|Seq#Update_12443| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3224) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3224| s@@24))) (= (|Seq#Length_3224| (|Seq#Update_3224| s@@24 i@@6 v@@3)) (|Seq#Length_3224| s@@24)))
 :qid |stdinbpl.304:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3224| (|Seq#Update_3224| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3224| s@@24) (|Seq#Update_3224| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18388) (o_43 T@Ref) (f_41 T@Field_12439_52035) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@11) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@11) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@11) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@11) (store (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@11) o_43 f_41 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@11) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@11) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@11) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@11) (store (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@11) o_43 f_41 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18388) (o_43@@0 T@Ref) (f_41@@0 T@Field_12439_52168) (v@@5 T@PolymorphicMapType_18937) ) (! (succHeap Heap@@12 (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@12) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@12) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@12) (store (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@12) o_43@@0 f_41@@0 v@@5) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@12) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@12) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@12) (store (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@12) o_43@@0 f_41@@0 v@@5) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18388) (o_43@@1 T@Ref) (f_41@@1 T@Field_24495_3346) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@13) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@13) (store (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@13) o_43@@1 f_41@@1 v@@6) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@13) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@13) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@13) (store (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@13) o_43@@1 f_41@@1 v@@6) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@13) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18388) (o_43@@2 T@Ref) (f_41@@2 T@Field_18461_18462) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@14) (store (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@14) o_43@@2 f_41@@2 v@@7) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@14) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@14) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@14) (store (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@14) o_43@@2 f_41@@2 v@@7) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@14) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@14) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18388) (o_43@@3 T@Ref) (f_41@@3 T@Field_18448_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_18388 (store (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@15) o_43@@3 f_41@@3 v@@8) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@15) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@15) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@15) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18388 (store (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@15) o_43@@3 f_41@@3 v@@8) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@15) (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@15) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@15) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_24540) (t@@9 T@Seq_24540) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12443| s@@25))) (= (|Seq#Drop_12443| (|Seq#Append_24540| s@@25 t@@9) n@@19) (|Seq#Append_24540| (|Seq#Drop_12443| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.419:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12443| (|Seq#Append_24540| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3224) (t@@10 T@Seq_3224) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3224| s@@26))) (= (|Seq#Drop_3224| (|Seq#Append_3224| s@@26 t@@10) n@@20) (|Seq#Append_3224| (|Seq#Drop_3224| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.419:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3224| (|Seq#Append_3224| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_24540) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_12443| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_12443| (|Seq#Drop_12443| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_12443| s@@27 i@@7))))
 :qid |stdinbpl.355:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12443| s@@27 n@@21) (|Seq#Index_12443| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3224) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3224| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3224| (|Seq#Drop_3224| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3224| s@@28 i@@8))))
 :qid |stdinbpl.355:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3224| s@@28 n@@22) (|Seq#Index_3224| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_24540) (s1@@7 T@Seq_24540) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12443|)) (not (= s1@@7 |Seq#Empty_12443|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12443| s0@@7))) (= (|Seq#Index_12443| (|Seq#Append_24540| s0@@7 s1@@7) n@@23) (|Seq#Index_12443| s0@@7 n@@23)))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12443| (|Seq#Append_24540| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12443| s0@@7 n@@23) (|Seq#Append_24540| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3224) (s1@@8 T@Seq_3224) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3224|)) (not (= s1@@8 |Seq#Empty_3224|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3224| s0@@8))) (= (|Seq#Index_3224| (|Seq#Append_3224| s0@@8 s1@@8) n@@24) (|Seq#Index_3224| s0@@8 n@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3224| (|Seq#Append_3224| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3224| s0@@8 n@@24) (|Seq#Append_3224| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_24540) (s1@@9 T@Seq_24540) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12443|)) (not (= s1@@9 |Seq#Empty_12443|))) (<= 0 m)) (< m (|Seq#Length_12443| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12443| s0@@9)) (|Seq#Length_12443| s0@@9)) m) (= (|Seq#Index_12443| (|Seq#Append_24540| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12443| s0@@9))) (|Seq#Index_12443| s1@@9 m))))
 :qid |stdinbpl.300:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12443| s1@@9 m) (|Seq#Append_24540| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3224) (s1@@10 T@Seq_3224) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3224|)) (not (= s1@@10 |Seq#Empty_3224|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3224| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3224| s0@@10)) (|Seq#Length_3224| s0@@10)) m@@0) (= (|Seq#Index_3224| (|Seq#Append_3224| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3224| s0@@10))) (|Seq#Index_3224| s1@@10 m@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3224| s1@@10 m@@0) (|Seq#Append_3224| s0@@10 s1@@10))
)))
(assert (forall ((o_43@@4 T@Ref) (f_15 T@Field_18461_18462) (Heap@@16 T@PolymorphicMapType_18388) ) (!  (=> (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@16) o_43@@4 $allocated) (select (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@16) (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@16) o_43@@4 f_15) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@16) o_43@@4 f_15))
)))
(assert (forall ((s@@29 T@Seq_24540) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_12443| s@@29))) (= (|Seq#Index_12443| s@@29 i@@9) x@@3)) (|Seq#Contains_24540| s@@29 x@@3))
 :qid |stdinbpl.452:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_24540| s@@29 x@@3) (|Seq#Index_12443| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3224) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3224| s@@30))) (= (|Seq#Index_3224| s@@30 i@@10) x@@4)) (|Seq#Contains_3224| s@@30 x@@4))
 :qid |stdinbpl.452:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3224| s@@30 x@@4) (|Seq#Index_3224| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_24540) (s1@@11 T@Seq_24540) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_24540| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_24540| s0@@11 s1@@11))) (not (= (|Seq#Length_12443| s0@@11) (|Seq#Length_12443| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_24540| s0@@11 s1@@11))) (= (|Seq#Length_12443| s0@@11) (|Seq#Length_12443| s1@@11))) (= (|Seq#SkolemDiff_24540| s0@@11 s1@@11) (|Seq#SkolemDiff_24540| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_24540| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_24540| s0@@11 s1@@11) (|Seq#Length_12443| s0@@11))) (not (= (|Seq#Index_12443| s0@@11 (|Seq#SkolemDiff_24540| s0@@11 s1@@11)) (|Seq#Index_12443| s1@@11 (|Seq#SkolemDiff_24540| s0@@11 s1@@11))))))
 :qid |stdinbpl.556:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_24540| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3224) (s1@@12 T@Seq_3224) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3224| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3224| s0@@12 s1@@12))) (not (= (|Seq#Length_3224| s0@@12) (|Seq#Length_3224| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3224| s0@@12 s1@@12))) (= (|Seq#Length_3224| s0@@12) (|Seq#Length_3224| s1@@12))) (= (|Seq#SkolemDiff_3224| s0@@12 s1@@12) (|Seq#SkolemDiff_3224| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3224| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3224| s0@@12 s1@@12) (|Seq#Length_3224| s0@@12))) (not (= (|Seq#Index_3224| s0@@12 (|Seq#SkolemDiff_3224| s0@@12 s1@@12)) (|Seq#Index_3224| s1@@12 (|Seq#SkolemDiff_3224| s0@@12 s1@@12))))))
 :qid |stdinbpl.556:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3224| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_12439_52035) (v_1@@0 T@FrameType) (q T@Field_12439_52035) (w@@0 T@FrameType) (r T@Field_12439_52035) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18448_18448 p@@1 v_1@@0 q w@@0) (InsidePredicate_18448_18448 q w@@0 r u)) (InsidePredicate_18448_18448 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18448_18448 p@@1 v_1@@0 q w@@0) (InsidePredicate_18448_18448 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_24540) ) (!  (=> (= (|Seq#Length_12443| s@@31) 0) (= s@@31 |Seq#Empty_12443|))
 :qid |stdinbpl.259:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12443| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3224) ) (!  (=> (= (|Seq#Length_3224| s@@32) 0) (= s@@32 |Seq#Empty_3224|))
 :qid |stdinbpl.259:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3224| s@@32))
)))
(assert (forall ((s@@33 T@Seq_24540) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12443| s@@33 n@@25) |Seq#Empty_12443|))
 :qid |stdinbpl.435:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12443| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3224) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3224| s@@34 n@@26) |Seq#Empty_3224|))
 :qid |stdinbpl.435:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3224| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun S () T@Seq_24540)
(declare-fun j_25 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_18409)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_18388)
(declare-fun j_11 () Int)
(declare-fun j_9_1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_18388)
(declare-fun QPMask@0 () T@PolymorphicMapType_18409)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_18409)
(declare-fun j_12_2 () Int)
(declare-fun j_18 () Int)
(declare-fun a_2 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_18388)
(declare-fun j_4 () Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun j_10 () Int)
(declare-fun j1_23 () Int)
(declare-fun j2_5 () Int)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon20_correct true))
(let ((anon45_Else_correct  (=> (and (not (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_25)) (= (ControlFlow 0 52) 47)) anon20_correct)))
(let ((anon45_Then_correct  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_25) (and (=> (= (ControlFlow 0 48) (- 0 51)) (>= j_25 0)) (=> (>= j_25 0) (and (=> (= (ControlFlow 0 48) (- 0 50)) (< j_25 (|Seq#Length_12443| S))) (=> (< j_25 (|Seq#Length_12443| S)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (HasDirectPerm_12439_3346 QPMask@2 (|Seq#Index_12443| S j_25) f_7)) (=> (HasDirectPerm_12439_3346 QPMask@2 (|Seq#Index_12443| S j_25) f_7) (=> (= (ControlFlow 0 48) 47) anon20_correct))))))))))
(let ((anon44_Else_correct true))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 53) (- 0 54)) (forall ((j_5_1 Int) (j_5_2 Int) ) (!  (=> (and (and (and (and (not (= j_5_1 j_5_2)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12443| S j_5_1) (|Seq#Index_12443| S j_5_2))))
 :qid |stdinbpl.1015:15|
 :skolemid |88|
))) (=> (forall ((j_5_1@@0 Int) (j_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_5_1@@0 j_5_2@@0)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1@@0)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12443| S j_5_1@@0) (|Seq#Index_12443| S j_5_2@@0))))
 :qid |stdinbpl.1015:15|
 :skolemid |88|
)) (=> (and (and (forall ((j_5_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1@@1) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_12443| S j_5_1@@1)) (= (invRecv5 (|Seq#Index_12443| S j_5_1@@1)) j_5_1@@1)))
 :qid |stdinbpl.1021:22|
 :skolemid |89|
 :pattern ( (|Seq#Index_12443| S j_5_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1@@1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1@@1))
 :pattern ( (|Seq#Index_12443| S j_5_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv5 o_4)) (< NoPerm FullPerm)) (qpRange5 o_4)) (= (|Seq#Index_12443| S (invRecv5 o_4)) o_4))
 :qid |stdinbpl.1025:22|
 :skolemid |90|
 :pattern ( (invRecv5 o_4))
))) (and (forall ((j_5_1@@2 Int) ) (!  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1@@2) (not (= (|Seq#Index_12443| S j_5_1@@2) null)))
 :qid |stdinbpl.1031:22|
 :skolemid |91|
 :pattern ( (|Seq#Index_12443| S j_5_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1@@2))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_5_1@@2))
 :pattern ( (|Seq#Index_12443| S j_5_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv5 o_4@@0)) (< NoPerm FullPerm)) (qpRange5 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_12443| S (invRecv5 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@2) o_4@@0 f_7) (+ (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv5 o_4@@0)) (< NoPerm FullPerm)) (qpRange5 o_4@@0))) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@2) o_4@@0 f_7) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.1037:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@2) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_18448_53) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.1041:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_18461_18462) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1041:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_24495_3346) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1041:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_12439_52035) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1041:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_12439_52168) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1041:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| QPMask@2) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 53) 46) anon44_Else_correct) (=> (= (ControlFlow 0 53) 48) anon45_Then_correct)) (=> (= (ControlFlow 0 53) 52) anon45_Else_correct))))))))
(let ((anon16_correct true))
(let ((anon43_Else_correct  (=> (and (not (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_11)) (= (ControlFlow 0 45) 41)) anon16_correct)))
(let ((anon43_Then_correct  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_11) (and (=> (= (ControlFlow 0 42) (- 0 44)) (>= j_11 0)) (=> (>= j_11 0) (and (=> (= (ControlFlow 0 42) (- 0 43)) (< j_11 (|Seq#Length_12443| S))) (=> (< j_11 (|Seq#Length_12443| S)) (=> (= (ControlFlow 0 42) 41) anon16_correct))))))))
(let ((anon41_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 55) 53) anon42_Else_correct) (=> (= (ControlFlow 0 55) 42) anon43_Then_correct)) (=> (= (ControlFlow 0 55) 45) anon43_Else_correct)))))
(let ((anon33_correct true))
(let ((anon51_Else_correct  (=> (and (not (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_9_1)) (= (ControlFlow 0 33) 30)) anon33_correct)))
(let ((anon51_Then_correct  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_9_1) (and (=> (= (ControlFlow 0 31) (- 0 32)) (> (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@0) (|Seq#Index_12443| S j_9_1) f_7) 0)) (=> (> (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@0) (|Seq#Index_12443| S j_9_1) f_7) 0) (=> (= (ControlFlow 0 31) 30) anon33_correct))))))
(let ((anon50_Else_correct true))
(let ((anon48_Else_correct  (=> (and (forall ((j_13_1 Int) ) (!  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_13_1) (> (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@0) (|Seq#Index_12443| S j_13_1) f_7) 0))
 :qid |stdinbpl.1108:20|
 :skolemid |95|
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_13_1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_13_1))
 :pattern ( (|Seq#Index_12443| S j_13_1))
)) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 34) (- 0 36)) (forall ((j_8 Int) (j_8_1 Int) ) (!  (=> (and (and (and (and (not (= j_8 j_8_1)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12443| S j_8) (|Seq#Index_12443| S j_8_1))))
 :qid |stdinbpl.1124:17|
 :skolemid |96|
 :pattern ( (neverTriggered6 j_8) (neverTriggered6 j_8_1))
))) (=> (forall ((j_8@@0 Int) (j_8_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_8@@0 j_8_1@@0)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@0)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12443| S j_8@@0) (|Seq#Index_12443| S j_8_1@@0))))
 :qid |stdinbpl.1124:17|
 :skolemid |96|
 :pattern ( (neverTriggered6 j_8@@0) (neverTriggered6 j_8_1@@0))
)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (forall ((j_8@@1 Int) ) (!  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@1) (>= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) (|Seq#Index_12443| S j_8@@1) f_7) FullPerm))
 :qid |stdinbpl.1131:17|
 :skolemid |97|
 :pattern ( (|Seq#Index_12443| S j_8@@1))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@1))
 :pattern ( (|Seq#Index_12443| S j_8@@1))
))) (=> (forall ((j_8@@2 Int) ) (!  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@2) (>= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) (|Seq#Index_12443| S j_8@@2) f_7) FullPerm))
 :qid |stdinbpl.1131:17|
 :skolemid |97|
 :pattern ( (|Seq#Index_12443| S j_8@@2))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@2))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@2))
 :pattern ( (|Seq#Index_12443| S j_8@@2))
)) (=> (forall ((j_8@@3 Int) ) (!  (=> (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@3) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_12443| S j_8@@3)) (= (invRecv6 (|Seq#Index_12443| S j_8@@3)) j_8@@3)))
 :qid |stdinbpl.1137:22|
 :skolemid |98|
 :pattern ( (|Seq#Index_12443| S j_8@@3))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@3))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_8@@3))
 :pattern ( (|Seq#Index_12443| S j_8@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv6 o_4@@6)) (and (< NoPerm FullPerm) (qpRange6 o_4@@6))) (= (|Seq#Index_12443| S (invRecv6 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1141:22|
 :skolemid |99|
 :pattern ( (invRecv6 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv6 o_4@@7)) (and (< NoPerm FullPerm) (qpRange6 o_4@@7))) (and (= (|Seq#Index_12443| S (invRecv6 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@1) o_4@@7 f_7) (- (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@7 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv6 o_4@@7)) (and (< NoPerm FullPerm) (qpRange6 o_4@@7)))) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@1) o_4@@7 f_7) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@7 f_7))))
 :qid |stdinbpl.1147:22|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@1) o_4@@7 f_7))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_18448_53) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1153:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_18461_18462) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1153:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_24495_3346) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1153:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_12439_52035) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1153:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_12439_52168) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1153:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| QPMask@1) o_4@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 34) 29) anon50_Else_correct) (=> (= (ControlFlow 0 34) 31) anon51_Then_correct)) (=> (= (ControlFlow 0 34) 33) anon51_Else_correct))))))))))))
(let ((anon29_correct true))
(let ((anon49_Else_correct  (=> (and (not (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_12_2)) (= (ControlFlow 0 28) 25)) anon29_correct)))
(let ((anon49_Then_correct  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_12_2) (and (=> (= (ControlFlow 0 26) (- 0 27)) (> (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@0) (|Seq#Index_12443| S j_12_2) f_7) 0)) (=> (> (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@0) (|Seq#Index_12443| S j_12_2) f_7) 0) (=> (= (ControlFlow 0 26) 25) anon29_correct))))))
(let ((anon25_correct true))
(let ((anon47_Else_correct  (=> (and (not (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_18)) (= (ControlFlow 0 24) 19)) anon25_correct)))
(let ((anon47_Then_correct  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_18) (and (=> (= (ControlFlow 0 20) (- 0 23)) (>= j_18 0)) (=> (>= j_18 0) (and (=> (= (ControlFlow 0 20) (- 0 22)) (< j_18 (|Seq#Length_12443| S))) (=> (< j_18 (|Seq#Length_12443| S)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_12439_3346 QPMask@0 (|Seq#Index_12443| S j_18) f_7)) (=> (HasDirectPerm_12439_3346 QPMask@0 (|Seq#Index_12443| S j_18) f_7) (=> (= (ControlFlow 0 20) 19) anon25_correct))))))))))
(let ((anon41_Else_correct  (and (=> (= (ControlFlow 0 37) (- 0 40)) (>= a_2 0)) (=> (>= a_2 0) (and (=> (= (ControlFlow 0 37) (- 0 39)) (< a_2 (|Seq#Length_12443| S))) (=> (< a_2 (|Seq#Length_12443| S)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (= FullPerm (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) (|Seq#Index_12443| S a_2) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) (|Seq#Index_12443| S a_2) f_7)) (=> (and (= Heap@0 (PolymorphicMapType_18388 (|PolymorphicMapType_18388_12221_53#PolymorphicMapType_18388| Heap@@17) (|PolymorphicMapType_18388_12224_12225#PolymorphicMapType_18388| Heap@@17) (store (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@17) (|Seq#Index_12443| S a_2) f_7 (- 0 1)) (|PolymorphicMapType_18388_12439_52212#PolymorphicMapType_18388| Heap@@17) (|PolymorphicMapType_18388_18448_52035#PolymorphicMapType_18388| Heap@@17))) (state Heap@0 QPMask@0)) (and (and (and (and (=> (= (ControlFlow 0 37) 34) anon48_Else_correct) (=> (= (ControlFlow 0 37) 26) anon49_Then_correct)) (=> (= (ControlFlow 0 37) 28) anon49_Else_correct)) (=> (= (ControlFlow 0 37) 20) anon47_Then_correct)) (=> (= (ControlFlow 0 37) 24) anon47_Else_correct)))))))))))
(let ((anon39_Else_correct  (=> (and (forall ((j_3_1 Int) ) (!  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_3_1) (> (select (|PolymorphicMapType_18388_12439_3346#PolymorphicMapType_18388| Heap@@17) (|Seq#Index_12443| S j_3_1) f_7) 0))
 :qid |stdinbpl.986:20|
 :skolemid |87|
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_3_1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_3_1))
 :pattern ( (|Seq#Index_12443| S j_3_1))
)) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 56) 55) anon41_Then_correct) (=> (= (ControlFlow 0 56) 37) anon41_Else_correct)))))
(let ((anon11_correct true))
(let ((anon40_Else_correct  (=> (and (not (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_4)) (= (ControlFlow 0 18) 13)) anon11_correct)))
(let ((anon40_Then_correct  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_4) (and (=> (= (ControlFlow 0 14) (- 0 17)) (>= j_4 0)) (=> (>= j_4 0) (and (=> (= (ControlFlow 0 14) (- 0 16)) (< j_4 (|Seq#Length_12443| S))) (=> (< j_4 (|Seq#Length_12443| S)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_12439_3346 QPMask@0 (|Seq#Index_12443| S j_4) f_7)) (=> (HasDirectPerm_12439_3346 QPMask@0 (|Seq#Index_12443| S j_4) f_7) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))
(let ((anon37_Else_correct  (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12443| S j_1) (|Seq#Index_12443| S j_1_1))))
 :qid |stdinbpl.940:15|
 :skolemid |81|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1@@0)) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12443| S j_1@@0) (|Seq#Index_12443| S j_1_1@@0))))
 :qid |stdinbpl.940:15|
 :skolemid |81|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1@@1) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_12443| S j_1@@1)) (= (invRecv4 (|Seq#Index_12443| S j_1@@1)) j_1@@1)))
 :qid |stdinbpl.946:22|
 :skolemid |82|
 :pattern ( (|Seq#Index_12443| S j_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1@@1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1@@1))
 :pattern ( (|Seq#Index_12443| S j_1@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv4 o_4@@13)) (< NoPerm FullPerm)) (qpRange4 o_4@@13)) (= (|Seq#Index_12443| S (invRecv4 o_4@@13)) o_4@@13))
 :qid |stdinbpl.950:22|
 :skolemid |83|
 :pattern ( (invRecv4 o_4@@13))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1@@2) (not (= (|Seq#Index_12443| S j_1@@2) null)))
 :qid |stdinbpl.956:22|
 :skolemid |84|
 :pattern ( (|Seq#Index_12443| S j_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1@@2))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_1@@2))
 :pattern ( (|Seq#Index_12443| S j_1@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv4 o_4@@14)) (< NoPerm FullPerm)) (qpRange4 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_12443| S (invRecv4 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@14 f_7) (+ (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@14 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) (invRecv4 o_4@@14)) (< NoPerm FullPerm)) (qpRange4 o_4@@14))) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@14 f_7) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@14 f_7))))
 :qid |stdinbpl.962:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@14 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_18448_53) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.966:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_18409_12439_53#PolymorphicMapType_18409| QPMask@0) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_18461_18462) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.966:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_18409_12439_18462#PolymorphicMapType_18409| QPMask@0) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_24495_3346) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.966:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_18409_12439_3346#PolymorphicMapType_18409| QPMask@0) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_12439_52035) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.966:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_18409_12439_52035#PolymorphicMapType_18409| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_12439_52168) ) (!  (=> true (= (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.966:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_18409_12439_56290#PolymorphicMapType_18409| QPMask@0) o_4@@19 f_5@@13))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 57) 56) anon39_Else_correct) (=> (= (ControlFlow 0 57) 14) anon40_Then_correct)) (=> (= (ControlFlow 0 57) 18) anon40_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon38_Else_correct  (=> (and (not (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_10)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon38_Then_correct  (=> (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j_10) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_10 0)) (=> (>= j_10 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_10 (|Seq#Length_12443| S))) (=> (< j_10 (|Seq#Length_12443| S)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon35_Else_correct  (=> (and (forall ((j1_1 Int) (j2_1 Int) ) (!  (=> (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_1) (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_1) (not (= j1_1 j2_1)))) (not (= (|Seq#Index_12443| S j1_1) (|Seq#Index_12443| S j2_1))))
 :qid |stdinbpl.922:20|
 :skolemid |80|
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_1) (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_1))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_1) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_1) (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_1) (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_1))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_1) (|Seq#Index_12443| S j2_1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_1) (|Seq#Index_12443| S j2_1))
 :pattern ( (|Seq#ContainsTrigger_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_1) (|Seq#Index_12443| S j1_1))
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_1) (|Seq#Index_12443| S j1_1))
 :pattern ( (|Seq#Index_12443| S j1_1) (|Seq#Index_12443| S j2_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 59) 57) anon37_Else_correct) (=> (= (ControlFlow 0 59) 9) anon38_Then_correct)) (=> (= (ControlFlow 0 59) 12) anon38_Else_correct)))))
(let ((anon3_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_23) (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_5) (not (= j1_23 j2_5))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon36_Then_correct  (=> (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j1_23) (and (|Seq#Contains_3224| (|Seq#Range| 0 (|Seq#Length_12443| S)) j2_5) (not (= j1_23 j2_5)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j1_23 0)) (=> (>= j1_23 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j1_23 (|Seq#Length_12443| S))) (=> (< j1_23 (|Seq#Length_12443| S)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j2_5 0)) (=> (>= j2_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j2_5 (|Seq#Length_12443| S))) (=> (< j2_5 (|Seq#Length_12443| S)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (<= 0 a_2)) (and (< a_2 (|Seq#Length_12443| S)) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 60) 59) anon35_Else_correct) (=> (= (ControlFlow 0 60) 2) anon36_Then_correct)) (=> (= (ControlFlow 0 60) 7) anon36_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 61) 60) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 26) (- 27))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
