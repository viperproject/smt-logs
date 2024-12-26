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
(declare-sort T@Field_12590_53 0)
(declare-sort T@Field_12603_12604 0)
(declare-sort T@Field_18626_3205 0)
(declare-sort T@Field_12590_34814 0)
(declare-sort T@Field_12590_34681 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12551 0)) (((PolymorphicMapType_12551 (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| (Array T@Ref T@Field_18626_3205 Real)) (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| (Array T@Ref T@Field_12590_53 Real)) (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| (Array T@Ref T@Field_12603_12604 Real)) (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| (Array T@Ref T@Field_12590_34681 Real)) (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| (Array T@Ref T@Field_12590_34814 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13079 0)) (((PolymorphicMapType_13079 (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| (Array T@Ref T@Field_12590_53 Bool)) (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| (Array T@Ref T@Field_12603_12604 Bool)) (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| (Array T@Ref T@Field_18626_3205 Bool)) (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| (Array T@Ref T@Field_12590_34681 Bool)) (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| (Array T@Ref T@Field_12590_34814 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12530 0)) (((PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| (Array T@Ref T@Field_12590_53 Bool)) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| (Array T@Ref T@Field_12603_12604 T@Ref)) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| (Array T@Ref T@Field_18626_3205 Int)) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| (Array T@Ref T@Field_12590_34814 T@PolymorphicMapType_13079)) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| (Array T@Ref T@Field_12590_34681 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12590_53)
(declare-fun f_7 () T@Field_18626_3205)
(declare-sort T@Seq_19270 0)
(declare-fun |Seq#Length_8471| (T@Seq_19270) Int)
(declare-fun |Seq#Drop_8471| (T@Seq_19270 Int) T@Seq_19270)
(declare-sort T@Seq_3083 0)
(declare-fun |Seq#Length_3083| (T@Seq_3083) Int)
(declare-fun |Seq#Drop_3083| (T@Seq_3083 Int) T@Seq_3083)
(declare-fun state (T@PolymorphicMapType_12530 T@PolymorphicMapType_12551) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_12530 Int Bool) Bool)
(declare-fun |fun01#frame| (T@FrameType Int Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_12530 T@PolymorphicMapType_12530) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12530 T@PolymorphicMapType_12530) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12551) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13079)
(declare-fun dummyFunction_3435 (Bool) Bool)
(declare-fun |fun01#triggerStateless| (Int Bool) Bool)
(declare-fun |Seq#Index_8471| (T@Seq_19270 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3083| (T@Seq_3083 Int) Int)
(declare-fun |Seq#Empty_8471| () T@Seq_19270)
(declare-fun |Seq#Empty_3083| () T@Seq_3083)
(declare-fun |Seq#Update_8471| (T@Seq_19270 Int T@Ref) T@Seq_19270)
(declare-fun |Seq#Update_3083| (T@Seq_3083 Int Int) T@Seq_3083)
(declare-fun |Seq#Take_8471| (T@Seq_19270 Int) T@Seq_19270)
(declare-fun |Seq#Take_3083| (T@Seq_3083 Int) T@Seq_3083)
(declare-fun |Seq#Contains_3083| (T@Seq_3083 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3083)
(declare-fun |Seq#Contains_19270| (T@Seq_19270 T@Ref) Bool)
(declare-fun |Seq#Skolem_19270| (T@Seq_19270 T@Ref) Int)
(declare-fun |Seq#Skolem_3083| (T@Seq_3083 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12530 T@PolymorphicMapType_12530 T@PolymorphicMapType_12551) Bool)
(declare-fun IsPredicateField_12590_34772 (T@Field_12590_34681) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12590 (T@Field_12590_34681) T@Field_12590_34814)
(declare-fun HasDirectPerm_12590_34745 (T@PolymorphicMapType_12551 T@Ref T@Field_12590_34681) Bool)
(declare-fun IsWandField_12590_36519 (T@Field_12590_34681) Bool)
(declare-fun WandMaskField_12590 (T@Field_12590_34681) T@Field_12590_34814)
(declare-fun |Seq#Singleton_8471| (T@Ref) T@Seq_19270)
(declare-fun |Seq#Singleton_3083| (Int) T@Seq_3083)
(declare-fun |Seq#Append_19270| (T@Seq_19270 T@Seq_19270) T@Seq_19270)
(declare-fun |Seq#Append_3083| (T@Seq_3083 T@Seq_3083) T@Seq_3083)
(declare-fun dummyHeap () T@PolymorphicMapType_12530)
(declare-fun ZeroMask () T@PolymorphicMapType_12551)
(declare-fun InsidePredicate_12590_12590 (T@Field_12590_34681 T@FrameType T@Field_12590_34681 T@FrameType) Bool)
(declare-fun IsPredicateField_8457_3205 (T@Field_18626_3205) Bool)
(declare-fun IsWandField_8457_3205 (T@Field_18626_3205) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8457_40065 (T@Field_12590_34814) Bool)
(declare-fun IsWandField_8457_40081 (T@Field_12590_34814) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8457_12604 (T@Field_12603_12604) Bool)
(declare-fun IsWandField_8457_12604 (T@Field_12603_12604) Bool)
(declare-fun IsPredicateField_8457_53 (T@Field_12590_53) Bool)
(declare-fun IsWandField_8457_53 (T@Field_12590_53) Bool)
(declare-fun HasDirectPerm_12590_40519 (T@PolymorphicMapType_12551 T@Ref T@Field_12590_34814) Bool)
(declare-fun HasDirectPerm_12590_3205 (T@PolymorphicMapType_12551 T@Ref T@Field_18626_3205) Bool)
(declare-fun HasDirectPerm_12590_12604 (T@PolymorphicMapType_12551 T@Ref T@Field_12603_12604) Bool)
(declare-fun HasDirectPerm_12590_53 (T@PolymorphicMapType_12551 T@Ref T@Field_12590_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12551 T@PolymorphicMapType_12551 T@PolymorphicMapType_12551) Bool)
(declare-fun |Seq#Equal_19270| (T@Seq_19270 T@Seq_19270) Bool)
(declare-fun |Seq#Equal_3083| (T@Seq_3083 T@Seq_3083) Bool)
(declare-fun |Seq#ContainsTrigger_8471| (T@Seq_19270 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3083| (T@Seq_3083 Int) Bool)
(declare-fun |Seq#SkolemDiff_19270| (T@Seq_19270 T@Seq_19270) Int)
(declare-fun |Seq#SkolemDiff_3083| (T@Seq_3083 T@Seq_3083) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun01#trigger| (T@FrameType Int Bool) Bool)
(declare-fun fun01 (T@PolymorphicMapType_12530 Int Bool) Bool)
(assert (forall ((s T@Seq_19270) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8471| s)) (= (|Seq#Length_8471| (|Seq#Drop_8471| s n)) (- (|Seq#Length_8471| s) n))) (=> (< (|Seq#Length_8471| s) n) (= (|Seq#Length_8471| (|Seq#Drop_8471| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8471| (|Seq#Drop_8471| s n)) (|Seq#Length_8471| s))))
 :qid |stdinbpl.315:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8471| (|Seq#Drop_8471| s n)))
 :pattern ( (|Seq#Length_8471| s) (|Seq#Drop_8471| s n))
)))
(assert (forall ((s@@0 T@Seq_3083) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3083| s@@0)) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) (- (|Seq#Length_3083| s@@0) n@@0))) (=> (< (|Seq#Length_3083| s@@0) n@@0) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) (|Seq#Length_3083| s@@0))))
 :qid |stdinbpl.315:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3083| s@@0) (|Seq#Drop_3083| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_12530) (Mask T@PolymorphicMapType_12551) (i Int) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|fun01'| Heap i b_24) (|fun01#frame| EmptyFrame i b_24)))
 :qid |stdinbpl.608:15|
 :skolemid |60|
 :pattern ( (state Heap Mask) (|fun01'| Heap i b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12530) (Heap1 T@PolymorphicMapType_12530) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12530) (Mask@@0 T@PolymorphicMapType_12551) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12530) (Heap1@@0 T@PolymorphicMapType_12530) (Heap2 T@PolymorphicMapType_12530) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12590_34814) ) (!  (not (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12590_34681) ) (!  (not (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18626_3205) ) (!  (not (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12603_12604) ) (!  (not (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12590_53) ) (!  (not (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12530) (i@@0 Int) (b_24@@0 Bool) ) (! (dummyFunction_3435 (|fun01#triggerStateless| i@@0 b_24@@0))
 :qid |stdinbpl.601:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@1 i@@0 b_24@@0))
)))
(assert (forall ((s@@1 T@Seq_19270) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8471| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8471| (|Seq#Drop_8471| s@@1 n@@1) j) (|Seq#Index_8471| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.336:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8471| (|Seq#Drop_8471| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3083) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3083| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3083| (|Seq#Drop_3083| s@@2 n@@2) j@@0) (|Seq#Index_3083| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.336:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3083| (|Seq#Drop_3083| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8471| |Seq#Empty_8471|) 0))
(assert (= (|Seq#Length_3083| |Seq#Empty_3083|) 0))
(assert (forall ((s@@3 T@Seq_19270) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8471| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_8471| (|Seq#Update_8471| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_8471| (|Seq#Update_8471| s@@3 i@@1 v) n@@3) (|Seq#Index_8471| s@@3 n@@3)))))
 :qid |stdinbpl.291:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8471| (|Seq#Update_8471| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_8471| s@@3 n@@3) (|Seq#Update_8471| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3083) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3083| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3083| s@@4 n@@4)))))
 :qid |stdinbpl.291:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3083| s@@4 n@@4) (|Seq#Update_3083| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_19270) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8471| s@@5)) (= (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8471| s@@5) n@@5) (= (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)) (|Seq#Length_8471| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)) 0)))
 :qid |stdinbpl.302:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8471| s@@5 n@@5) (|Seq#Length_8471| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3083) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3083| s@@6)) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3083| s@@6) n@@6) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) (|Seq#Length_3083| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) 0)))
 :qid |stdinbpl.302:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3083| s@@6 n@@6) (|Seq#Length_3083| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3083| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.576:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_19270) (x T@Ref) ) (!  (=> (|Seq#Contains_19270| s@@7 x) (and (and (<= 0 (|Seq#Skolem_19270| s@@7 x)) (< (|Seq#Skolem_19270| s@@7 x) (|Seq#Length_8471| s@@7))) (= (|Seq#Index_8471| s@@7 (|Seq#Skolem_19270| s@@7 x)) x)))
 :qid |stdinbpl.434:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19270| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3083) (x@@0 Int) ) (!  (=> (|Seq#Contains_3083| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3083| s@@8 x@@0)) (< (|Seq#Skolem_3083| s@@8 x@@0) (|Seq#Length_3083| s@@8))) (= (|Seq#Index_3083| s@@8 (|Seq#Skolem_3083| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.434:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3083| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_19270) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8471| s@@9 n@@7) s@@9))
 :qid |stdinbpl.418:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8471| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3083) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3083| s@@10 n@@8) s@@10))
 :qid |stdinbpl.418:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3083| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.271:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.269:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12530) (ExhaleHeap T@PolymorphicMapType_12530) (Mask@@1 T@PolymorphicMapType_12551) (pm_f_11 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_12590_34745 Mask@@1 null pm_f_11) (IsPredicateField_12590_34772 pm_f_11)) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@2) null (PredicateMaskField_12590 pm_f_11)) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap) null (PredicateMaskField_12590 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_12590_34772 pm_f_11) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap) null (PredicateMaskField_12590 pm_f_11)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12530) (ExhaleHeap@@0 T@PolymorphicMapType_12530) (Mask@@2 T@PolymorphicMapType_12551) (pm_f_11@@0 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_12590_34745 Mask@@2 null pm_f_11@@0) (IsWandField_12590_36519 pm_f_11@@0)) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@3) null (WandMaskField_12590 pm_f_11@@0)) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@0) null (WandMaskField_12590 pm_f_11@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_12590_36519 pm_f_11@@0) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@0) null (WandMaskField_12590 pm_f_11@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_19270| (|Seq#Singleton_8471| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.559:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19270| (|Seq#Singleton_8471| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3083| (|Seq#Singleton_3083| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.559:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3083| (|Seq#Singleton_3083| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_19270) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8471| s@@11))) (= (|Seq#Index_8471| (|Seq#Take_8471| s@@11 n@@9) j@@3) (|Seq#Index_8471| s@@11 j@@3)))
 :qid |stdinbpl.310:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8471| (|Seq#Take_8471| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8471| s@@11 j@@3) (|Seq#Take_8471| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3083) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3083| s@@12))) (= (|Seq#Index_3083| (|Seq#Take_3083| s@@12 n@@10) j@@4) (|Seq#Index_3083| s@@12 j@@4)))
 :qid |stdinbpl.310:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3083| (|Seq#Take_3083| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3083| s@@12 j@@4) (|Seq#Take_3083| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_19270) (t T@Seq_19270) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8471| s@@13))) (< n@@11 (|Seq#Length_8471| (|Seq#Append_19270| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8471| s@@13)) (|Seq#Length_8471| s@@13)) n@@11) (= (|Seq#Take_8471| (|Seq#Append_19270| s@@13 t) n@@11) (|Seq#Append_19270| s@@13 (|Seq#Take_8471| t (|Seq#Sub| n@@11 (|Seq#Length_8471| s@@13)))))))
 :qid |stdinbpl.395:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8471| (|Seq#Append_19270| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3083) (t@@0 T@Seq_3083) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3083| s@@14))) (< n@@12 (|Seq#Length_3083| (|Seq#Append_3083| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3083| s@@14)) (|Seq#Length_3083| s@@14)) n@@12) (= (|Seq#Take_3083| (|Seq#Append_3083| s@@14 t@@0) n@@12) (|Seq#Append_3083| s@@14 (|Seq#Take_3083| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3083| s@@14)))))))
 :qid |stdinbpl.395:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3083| (|Seq#Append_3083| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12530) (ExhaleHeap@@1 T@PolymorphicMapType_12530) (Mask@@3 T@PolymorphicMapType_12551) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@4) o_31 $allocated) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@1) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@1) o_31 $allocated))
)))
(assert (forall ((p T@Field_12590_34681) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12590_12590 p v_1 p w))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12590_12590 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_19270) (s1 T@Seq_19270) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8471|)) (not (= s1 |Seq#Empty_8471|))) (<= (|Seq#Length_8471| s0) n@@13)) (< n@@13 (|Seq#Length_8471| (|Seq#Append_19270| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8471| s0)) (|Seq#Length_8471| s0)) n@@13) (= (|Seq#Index_8471| (|Seq#Append_19270| s0 s1) n@@13) (|Seq#Index_8471| s1 (|Seq#Sub| n@@13 (|Seq#Length_8471| s0))))))
 :qid |stdinbpl.282:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8471| (|Seq#Append_19270| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3083) (s1@@0 T@Seq_3083) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3083|)) (not (= s1@@0 |Seq#Empty_3083|))) (<= (|Seq#Length_3083| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3083| (|Seq#Append_3083| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3083| s0@@0)) (|Seq#Length_3083| s0@@0)) n@@14) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@0 s1@@0) n@@14) (|Seq#Index_3083| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3083| s0@@0))))))
 :qid |stdinbpl.282:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3083| (|Seq#Append_3083| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8457_3205 f_7)))
(assert  (not (IsWandField_8457_3205 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12530) (ExhaleHeap@@2 T@PolymorphicMapType_12530) (Mask@@4 T@PolymorphicMapType_12551) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12551) (o_2@@4 T@Ref) (f_4@@4 T@Field_12590_34814) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_8457_40065 f_4@@4))) (not (IsWandField_8457_40081 f_4@@4))) (<= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12551) (o_2@@5 T@Ref) (f_4@@5 T@Field_12590_34681) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12590_34772 f_4@@5))) (not (IsWandField_12590_36519 f_4@@5))) (<= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12551) (o_2@@6 T@Ref) (f_4@@6 T@Field_12603_12604) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8457_12604 f_4@@6))) (not (IsWandField_8457_12604 f_4@@6))) (<= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12551) (o_2@@7 T@Ref) (f_4@@7 T@Field_12590_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8457_53 f_4@@7))) (not (IsWandField_8457_53 f_4@@7))) (<= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12551) (o_2@@8 T@Ref) (f_4@@8 T@Field_18626_3205) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8457_3205 f_4@@8))) (not (IsWandField_8457_3205 f_4@@8))) (<= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12551) (o_2@@9 T@Ref) (f_4@@9 T@Field_12590_34814) ) (! (= (HasDirectPerm_12590_40519 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_40519 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12551) (o_2@@10 T@Ref) (f_4@@10 T@Field_12590_34681) ) (! (= (HasDirectPerm_12590_34745 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_34745 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12551) (o_2@@11 T@Ref) (f_4@@11 T@Field_18626_3205) ) (! (= (HasDirectPerm_12590_3205 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_3205 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12551) (o_2@@12 T@Ref) (f_4@@12 T@Field_12603_12604) ) (! (= (HasDirectPerm_12590_12604 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_12604 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12551) (o_2@@13 T@Ref) (f_4@@13 T@Field_12590_53) ) (! (= (HasDirectPerm_12590_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12530) (ExhaleHeap@@3 T@PolymorphicMapType_12530) (Mask@@15 T@PolymorphicMapType_12551) (pm_f_11@@1 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_12590_34745 Mask@@15 null pm_f_11@@1) (IsPredicateField_12590_34772 pm_f_11@@1)) (and (and (and (and (forall ((o2_11 T@Ref) (f_36 T@Field_12590_53) ) (!  (=> (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11 f_36) (= (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@6) o2_11 f_36) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11 f_36))
)) (forall ((o2_11@@0 T@Ref) (f_36@@0 T@Field_12603_12604) ) (!  (=> (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@0 f_36@@0) (= (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@6) o2_11@@0 f_36@@0) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@0 f_36@@0))
))) (forall ((o2_11@@1 T@Ref) (f_36@@1 T@Field_18626_3205) ) (!  (=> (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@1 f_36@@1) (= (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@6) o2_11@@1 f_36@@1) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@1 f_36@@1))
))) (forall ((o2_11@@2 T@Ref) (f_36@@2 T@Field_12590_34681) ) (!  (=> (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@2 f_36@@2) (= (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@6) o2_11@@2 f_36@@2) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@2 f_36@@2))
))) (forall ((o2_11@@3 T@Ref) (f_36@@3 T@Field_12590_34814) ) (!  (=> (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@3 f_36@@3) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) o2_11@@3 f_36@@3) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@3 f_36@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@3 f_36@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_12590_34772 pm_f_11@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12530) (ExhaleHeap@@4 T@PolymorphicMapType_12530) (Mask@@16 T@PolymorphicMapType_12551) (pm_f_11@@2 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_12590_34745 Mask@@16 null pm_f_11@@2) (IsWandField_12590_36519 pm_f_11@@2)) (and (and (and (and (forall ((o2_11@@4 T@Ref) (f_36@@4 T@Field_12590_53) ) (!  (=> (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@4 f_36@@4) (= (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@7) o2_11@@4 f_36@@4) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@4 f_36@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@4 f_36@@4))
)) (forall ((o2_11@@5 T@Ref) (f_36@@5 T@Field_12603_12604) ) (!  (=> (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@5 f_36@@5) (= (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@7) o2_11@@5 f_36@@5) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@5 f_36@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@5 f_36@@5))
))) (forall ((o2_11@@6 T@Ref) (f_36@@6 T@Field_18626_3205) ) (!  (=> (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@6 f_36@@6) (= (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@7) o2_11@@6 f_36@@6) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@6 f_36@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@6 f_36@@6))
))) (forall ((o2_11@@7 T@Ref) (f_36@@7 T@Field_12590_34681) ) (!  (=> (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@7 f_36@@7) (= (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@7) o2_11@@7 f_36@@7) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@7 f_36@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@7 f_36@@7))
))) (forall ((o2_11@@8 T@Ref) (f_36@@8 T@Field_12590_34814) ) (!  (=> (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@8 f_36@@8) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) o2_11@@8 f_36@@8) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@8 f_36@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@8 f_36@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_12590_36519 pm_f_11@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.201:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3083| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.574:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3083| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12530) (ExhaleHeap@@5 T@PolymorphicMapType_12530) (Mask@@17 T@PolymorphicMapType_12551) (o_31@@0 T@Ref) (f_36@@9 T@Field_12590_34814) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_12590_40519 Mask@@17 o_31@@0 f_36@@9) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@8) o_31@@0 f_36@@9) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@5) o_31@@0 f_36@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@5) o_31@@0 f_36@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12530) (ExhaleHeap@@6 T@PolymorphicMapType_12530) (Mask@@18 T@PolymorphicMapType_12551) (o_31@@1 T@Ref) (f_36@@10 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_12590_34745 Mask@@18 o_31@@1 f_36@@10) (= (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@9) o_31@@1 f_36@@10) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@6) o_31@@1 f_36@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@6) o_31@@1 f_36@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12530) (ExhaleHeap@@7 T@PolymorphicMapType_12530) (Mask@@19 T@PolymorphicMapType_12551) (o_31@@2 T@Ref) (f_36@@11 T@Field_18626_3205) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_12590_3205 Mask@@19 o_31@@2 f_36@@11) (= (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@10) o_31@@2 f_36@@11) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@7) o_31@@2 f_36@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@7) o_31@@2 f_36@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12530) (ExhaleHeap@@8 T@PolymorphicMapType_12530) (Mask@@20 T@PolymorphicMapType_12551) (o_31@@3 T@Ref) (f_36@@12 T@Field_12603_12604) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_12590_12604 Mask@@20 o_31@@3 f_36@@12) (= (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@11) o_31@@3 f_36@@12) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@8) o_31@@3 f_36@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@8) o_31@@3 f_36@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12530) (ExhaleHeap@@9 T@PolymorphicMapType_12530) (Mask@@21 T@PolymorphicMapType_12551) (o_31@@4 T@Ref) (f_36@@13 T@Field_12590_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_12590_53 Mask@@21 o_31@@4 f_36@@13) (= (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@12) o_31@@4 f_36@@13) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@9) o_31@@4 f_36@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@9) o_31@@4 f_36@@13))
)))
(assert (forall ((s0@@1 T@Seq_19270) (s1@@1 T@Seq_19270) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8471|)) (not (= s1@@1 |Seq#Empty_8471|))) (= (|Seq#Length_8471| (|Seq#Append_19270| s0@@1 s1@@1)) (+ (|Seq#Length_8471| s0@@1) (|Seq#Length_8471| s1@@1))))
 :qid |stdinbpl.251:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8471| (|Seq#Append_19270| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3083) (s1@@2 T@Seq_3083) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3083|)) (not (= s1@@2 |Seq#Empty_3083|))) (= (|Seq#Length_3083| (|Seq#Append_3083| s0@@2 s1@@2)) (+ (|Seq#Length_3083| s0@@2) (|Seq#Length_3083| s1@@2))))
 :qid |stdinbpl.251:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3083| (|Seq#Append_3083| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12590_34814) ) (! (= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12590_34681) ) (! (= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12603_12604) ) (! (= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12590_53) ) (! (= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18626_3205) ) (! (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_19270) (t@@1 T@Seq_19270) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8471| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8471| s@@15)) (|Seq#Length_8471| s@@15)) n@@15) (= (|Seq#Drop_8471| (|Seq#Append_19270| s@@15 t@@1) n@@15) (|Seq#Drop_8471| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8471| s@@15))))))
 :qid |stdinbpl.408:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8471| (|Seq#Append_19270| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3083) (t@@2 T@Seq_3083) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3083| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3083| s@@16)) (|Seq#Length_3083| s@@16)) n@@16) (= (|Seq#Drop_3083| (|Seq#Append_3083| s@@16 t@@2) n@@16) (|Seq#Drop_3083| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3083| s@@16))))))
 :qid |stdinbpl.408:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3083| (|Seq#Append_3083| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12551) (SummandMask1 T@PolymorphicMapType_12551) (SummandMask2 T@PolymorphicMapType_12551) (o_2@@19 T@Ref) (f_4@@19 T@Field_12590_34814) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12551) (SummandMask1@@0 T@PolymorphicMapType_12551) (SummandMask2@@0 T@PolymorphicMapType_12551) (o_2@@20 T@Ref) (f_4@@20 T@Field_12590_34681) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12551) (SummandMask1@@1 T@PolymorphicMapType_12551) (SummandMask2@@1 T@PolymorphicMapType_12551) (o_2@@21 T@Ref) (f_4@@21 T@Field_12603_12604) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12551) (SummandMask1@@2 T@PolymorphicMapType_12551) (SummandMask2@@2 T@PolymorphicMapType_12551) (o_2@@22 T@Ref) (f_4@@22 T@Field_12590_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12551) (SummandMask1@@3 T@PolymorphicMapType_12551) (SummandMask2@@3 T@PolymorphicMapType_12551) (o_2@@23 T@Ref) (f_4@@23 T@Field_18626_3205) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.573:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_19270) (b T@Seq_19270) ) (!  (=> (|Seq#Equal_19270| a b) (= a b))
 :qid |stdinbpl.546:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19270| a b))
)))
(assert (forall ((a@@0 T@Seq_3083) (b@@0 T@Seq_3083) ) (!  (=> (|Seq#Equal_3083| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.546:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3083| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_19270) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8471| s@@17))) (|Seq#ContainsTrigger_8471| s@@17 (|Seq#Index_8471| s@@17 i@@5)))
 :qid |stdinbpl.439:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8471| s@@17 i@@5))
)))
(assert (forall ((s@@18 T@Seq_3083) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3083| s@@18))) (|Seq#ContainsTrigger_3083| s@@18 (|Seq#Index_3083| s@@18 i@@6)))
 :qid |stdinbpl.439:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3083| s@@18 i@@6))
)))
(assert (forall ((s0@@3 T@Seq_19270) (s1@@3 T@Seq_19270) ) (!  (and (=> (= s0@@3 |Seq#Empty_8471|) (= (|Seq#Append_19270| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8471|) (= (|Seq#Append_19270| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.257:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_19270| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3083) (s1@@4 T@Seq_3083) ) (!  (and (=> (= s0@@4 |Seq#Empty_3083|) (= (|Seq#Append_3083| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3083|) (= (|Seq#Append_3083| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.257:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3083| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8471| (|Seq#Singleton_8471| t@@3) 0) t@@3)
 :qid |stdinbpl.261:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8471| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3083| (|Seq#Singleton_3083| t@@4) 0) t@@4)
 :qid |stdinbpl.261:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3083| t@@4))
)))
(assert (forall ((s@@19 T@Seq_19270) ) (! (<= 0 (|Seq#Length_8471| s@@19))
 :qid |stdinbpl.240:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8471| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3083) ) (! (<= 0 (|Seq#Length_3083| s@@20))
 :qid |stdinbpl.240:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3083| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_19270) (s1@@5 T@Seq_19270) ) (!  (=> (|Seq#Equal_19270| s0@@5 s1@@5) (and (= (|Seq#Length_8471| s0@@5) (|Seq#Length_8471| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8471| s0@@5))) (= (|Seq#Index_8471| s0@@5 j@@6) (|Seq#Index_8471| s1@@5 j@@6)))
 :qid |stdinbpl.536:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8471| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8471| s1@@5 j@@6))
))))
 :qid |stdinbpl.533:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19270| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3083) (s1@@6 T@Seq_3083) ) (!  (=> (|Seq#Equal_3083| s0@@6 s1@@6) (and (= (|Seq#Length_3083| s0@@6) (|Seq#Length_3083| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3083| s0@@6))) (= (|Seq#Index_3083| s0@@6 j@@7) (|Seq#Index_3083| s1@@6 j@@7)))
 :qid |stdinbpl.536:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3083| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3083| s1@@6 j@@7))
))))
 :qid |stdinbpl.533:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3083| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8471| (|Seq#Singleton_8471| t@@5)) 1)
 :qid |stdinbpl.248:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8471| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3083| (|Seq#Singleton_3083| t@@6)) 1)
 :qid |stdinbpl.248:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3083| t@@6))
)))
(assert (forall ((s@@21 T@Seq_19270) (t@@7 T@Seq_19270) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8471| s@@21))) (= (|Seq#Take_8471| (|Seq#Append_19270| s@@21 t@@7) n@@17) (|Seq#Take_8471| s@@21 n@@17)))
 :qid |stdinbpl.390:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8471| (|Seq#Append_19270| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3083) (t@@8 T@Seq_3083) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3083| s@@22))) (= (|Seq#Take_3083| (|Seq#Append_3083| s@@22 t@@8) n@@18) (|Seq#Take_3083| s@@22 n@@18)))
 :qid |stdinbpl.390:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3083| (|Seq#Append_3083| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_19270) (i@@7 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_8471| s@@23))) (= (|Seq#Length_8471| (|Seq#Update_8471| s@@23 i@@7 v@@2)) (|Seq#Length_8471| s@@23)))
 :qid |stdinbpl.289:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8471| (|Seq#Update_8471| s@@23 i@@7 v@@2)))
 :pattern ( (|Seq#Length_8471| s@@23) (|Seq#Update_8471| s@@23 i@@7 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3083) (i@@8 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3083| s@@24))) (= (|Seq#Length_3083| (|Seq#Update_3083| s@@24 i@@8 v@@3)) (|Seq#Length_3083| s@@24)))
 :qid |stdinbpl.289:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3083| (|Seq#Update_3083| s@@24 i@@8 v@@3)))
 :pattern ( (|Seq#Length_3083| s@@24) (|Seq#Update_3083| s@@24 i@@8 v@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12530) (o_30 T@Ref) (f_37 T@Field_12590_34681) (v@@4 T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@13) (store (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@13) o_30 f_37 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@13) (store (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@13) o_30 f_37 v@@4)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12530) (o_30@@0 T@Ref) (f_37@@0 T@Field_12590_34814) (v@@5 T@PolymorphicMapType_13079) ) (! (succHeap Heap@@14 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@14) (store (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@14) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@14) (store (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@14) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12530) (o_30@@1 T@Ref) (f_37@@1 T@Field_18626_3205) (v@@6 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@15) (store (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@15) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@15) (store (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@15) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12530) (o_30@@2 T@Ref) (f_37@@2 T@Field_12603_12604) (v@@7 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@16) (store (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@16) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@16) (store (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@16) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12530) (o_30@@3 T@Ref) (f_37@@3 T@Field_12590_53) (v@@8 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_12530 (store (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@17) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (store (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@17) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_19270) (t@@9 T@Seq_19270) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8471| s@@25))) (= (|Seq#Drop_8471| (|Seq#Append_19270| s@@25 t@@9) n@@19) (|Seq#Append_19270| (|Seq#Drop_8471| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.404:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8471| (|Seq#Append_19270| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3083) (t@@10 T@Seq_3083) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3083| s@@26))) (= (|Seq#Drop_3083| (|Seq#Append_3083| s@@26 t@@10) n@@20) (|Seq#Append_3083| (|Seq#Drop_3083| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.404:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3083| (|Seq#Append_3083| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_19270) (n@@21 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@9)) (< i@@9 (|Seq#Length_8471| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@21) n@@21) i@@9) (= (|Seq#Index_8471| (|Seq#Drop_8471| s@@27 n@@21) (|Seq#Sub| i@@9 n@@21)) (|Seq#Index_8471| s@@27 i@@9))))
 :qid |stdinbpl.340:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8471| s@@27 n@@21) (|Seq#Index_8471| s@@27 i@@9))
)))
(assert (forall ((s@@28 T@Seq_3083) (n@@22 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@10)) (< i@@10 (|Seq#Length_3083| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@22) n@@22) i@@10) (= (|Seq#Index_3083| (|Seq#Drop_3083| s@@28 n@@22) (|Seq#Sub| i@@10 n@@22)) (|Seq#Index_3083| s@@28 i@@10))))
 :qid |stdinbpl.340:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3083| s@@28 n@@22) (|Seq#Index_3083| s@@28 i@@10))
)))
(assert (forall ((s0@@7 T@Seq_19270) (s1@@7 T@Seq_19270) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8471|)) (not (= s1@@7 |Seq#Empty_8471|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8471| s0@@7))) (= (|Seq#Index_8471| (|Seq#Append_19270| s0@@7 s1@@7) n@@23) (|Seq#Index_8471| s0@@7 n@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8471| (|Seq#Append_19270| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8471| s0@@7 n@@23) (|Seq#Append_19270| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3083) (s1@@8 T@Seq_3083) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3083|)) (not (= s1@@8 |Seq#Empty_3083|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3083| s0@@8))) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@8 s1@@8) n@@24) (|Seq#Index_3083| s0@@8 n@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3083| (|Seq#Append_3083| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3083| s0@@8 n@@24) (|Seq#Append_3083| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_19270) (s1@@9 T@Seq_19270) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8471|)) (not (= s1@@9 |Seq#Empty_8471|))) (<= 0 m)) (< m (|Seq#Length_8471| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8471| s0@@9)) (|Seq#Length_8471| s0@@9)) m) (= (|Seq#Index_8471| (|Seq#Append_19270| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8471| s0@@9))) (|Seq#Index_8471| s1@@9 m))))
 :qid |stdinbpl.285:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8471| s1@@9 m) (|Seq#Append_19270| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3083) (s1@@10 T@Seq_3083) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3083|)) (not (= s1@@10 |Seq#Empty_3083|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3083| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3083| s0@@10)) (|Seq#Length_3083| s0@@10)) m@@0) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3083| s0@@10))) (|Seq#Index_3083| s1@@10 m@@0))))
 :qid |stdinbpl.285:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3083| s1@@10 m@@0) (|Seq#Append_3083| s0@@10 s1@@10))
)))
(assert (forall ((o_30@@4 T@Ref) (f_35 T@Field_12603_12604) (Heap@@18 T@PolymorphicMapType_12530) ) (!  (=> (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@18) o_30@@4 $allocated) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@18) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@18) o_30@@4 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@18) o_30@@4 f_35))
)))
(assert (forall ((s@@29 T@Seq_19270) (x@@3 T@Ref) (i@@11 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length_8471| s@@29))) (= (|Seq#Index_8471| s@@29 i@@11) x@@3)) (|Seq#Contains_19270| s@@29 x@@3))
 :qid |stdinbpl.437:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19270| s@@29 x@@3) (|Seq#Index_8471| s@@29 i@@11))
)))
(assert (forall ((s@@30 T@Seq_3083) (x@@4 Int) (i@@12 Int) ) (!  (=> (and (and (<= 0 i@@12) (< i@@12 (|Seq#Length_3083| s@@30))) (= (|Seq#Index_3083| s@@30 i@@12) x@@4)) (|Seq#Contains_3083| s@@30 x@@4))
 :qid |stdinbpl.437:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3083| s@@30 x@@4) (|Seq#Index_3083| s@@30 i@@12))
)))
(assert (forall ((s0@@11 T@Seq_19270) (s1@@11 T@Seq_19270) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_19270| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19270| s0@@11 s1@@11))) (not (= (|Seq#Length_8471| s0@@11) (|Seq#Length_8471| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19270| s0@@11 s1@@11))) (= (|Seq#Length_8471| s0@@11) (|Seq#Length_8471| s1@@11))) (= (|Seq#SkolemDiff_19270| s0@@11 s1@@11) (|Seq#SkolemDiff_19270| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_19270| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_19270| s0@@11 s1@@11) (|Seq#Length_8471| s0@@11))) (not (= (|Seq#Index_8471| s0@@11 (|Seq#SkolemDiff_19270| s0@@11 s1@@11)) (|Seq#Index_8471| s1@@11 (|Seq#SkolemDiff_19270| s0@@11 s1@@11))))))
 :qid |stdinbpl.541:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19270| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3083) (s1@@12 T@Seq_3083) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3083| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3083| s0@@12 s1@@12))) (not (= (|Seq#Length_3083| s0@@12) (|Seq#Length_3083| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3083| s0@@12 s1@@12))) (= (|Seq#Length_3083| s0@@12) (|Seq#Length_3083| s1@@12))) (= (|Seq#SkolemDiff_3083| s0@@12 s1@@12) (|Seq#SkolemDiff_3083| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3083| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3083| s0@@12 s1@@12) (|Seq#Length_3083| s0@@12))) (not (= (|Seq#Index_3083| s0@@12 (|Seq#SkolemDiff_3083| s0@@12 s1@@12)) (|Seq#Index_3083| s1@@12 (|Seq#SkolemDiff_3083| s0@@12 s1@@12))))))
 :qid |stdinbpl.541:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3083| s0@@12 s1@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12530) (Mask@@22 T@PolymorphicMapType_12551) (i@@13 Int) (b_24@@1 Bool) ) (!  (=> (and (state Heap@@19 Mask@@22) (or (< AssumeFunctionsAbove 0) (|fun01#trigger| EmptyFrame i@@13 b_24@@1))) (= (|fun01'| Heap@@19 i@@13 b_24@@1) b_24@@1))
 :qid |stdinbpl.614:15|
 :skolemid |61|
 :pattern ( (state Heap@@19 Mask@@22) (|fun01'| Heap@@19 i@@13 b_24@@1))
)))
(assert (forall ((p@@1 T@Field_12590_34681) (v_1@@0 T@FrameType) (q T@Field_12590_34681) (w@@0 T@FrameType) (r T@Field_12590_34681) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12590_12590 p@@1 v_1@@0 q w@@0) (InsidePredicate_12590_12590 q w@@0 r u)) (InsidePredicate_12590_12590 p@@1 v_1@@0 r u))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12590_12590 p@@1 v_1@@0 q w@@0) (InsidePredicate_12590_12590 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_19270) ) (!  (=> (= (|Seq#Length_8471| s@@31) 0) (= s@@31 |Seq#Empty_8471|))
 :qid |stdinbpl.244:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8471| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3083) ) (!  (=> (= (|Seq#Length_3083| s@@32) 0) (= s@@32 |Seq#Empty_3083|))
 :qid |stdinbpl.244:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3083| s@@32))
)))
(assert (forall ((s@@33 T@Seq_19270) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8471| s@@33 n@@25) |Seq#Empty_8471|))
 :qid |stdinbpl.420:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8471| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3083) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3083| s@@34 n@@26) |Seq#Empty_3083|))
 :qid |stdinbpl.420:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3083| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12530) (i@@14 Int) (b_24@@2 Bool) ) (!  (and (= (fun01 Heap@@20 i@@14 b_24@@2) (|fun01'| Heap@@20 i@@14 b_24@@2)) (dummyFunction_3435 (|fun01#triggerStateless| i@@14 b_24@@2)))
 :qid |stdinbpl.597:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@20 i@@14 b_24@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun n@@27 () Int)
(declare-fun i_10 () Int)
(declare-fun xs () T@Seq_19270)
(declare-fun PostHeap@0 () T@PolymorphicMapType_12530)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_12551)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_12551)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_12530)
(declare-fun i_9 () Int)
(declare-fun i1_25 () Int)
(declare-fun i2_14 () Int)
(set-info :boogie-vc-id test03)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon12_correct true))
(let ((anon21_Else_correct  (=> (and (not (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_10)) (= (ControlFlow 0 23) 19)) anon12_correct)))
(let ((anon21_Then_correct  (=> (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_10) (and (=> (= (ControlFlow 0 20) (- 0 22)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 20) (- 0 21)) (< i_10 (|Seq#Length_8471| xs))) (=> (< i_10 (|Seq#Length_8471| xs)) (=> (= (ControlFlow 0 20) 19) anon12_correct))))))))
(let ((anon20_Else_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_3)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8471| xs i_3) (|Seq#Index_8471| xs i_3_1))))
 :qid |stdinbpl.1068:15|
 :skolemid |89|
)))))
(let ((anon19_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 24) 18) anon20_Else_correct) (=> (= (ControlFlow 0 24) 20) anon21_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon21_Else_correct)))))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8471| xs i_4_1) (|Seq#Index_8471| xs i_4_2))))
 :qid |stdinbpl.1117:17|
 :skolemid |95|
 :pattern ( (neverTriggered6 i_4_1) (neverTriggered6 i_4_2))
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1@@0)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8471| xs i_4_1@@0) (|Seq#Index_8471| xs i_4_2@@0))))
 :qid |stdinbpl.1117:17|
 :skolemid |95|
 :pattern ( (neverTriggered6 i_4_1@@0) (neverTriggered6 i_4_2@@0))
)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((i_4_1@@1 Int) ) (!  (=> (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1@@1) (>= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) (|Seq#Index_8471| xs i_4_1@@1) f_7) FullPerm))
 :qid |stdinbpl.1124:17|
 :skolemid |96|
 :pattern ( (|Seq#Index_8471| xs i_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3083| (|Seq#Range| 0 n@@27) i_4_1@@1))
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1@@1))
 :pattern ( (|Seq#Index_8471| xs i_4_1@@1))
))) (=> (forall ((i_4_1@@2 Int) ) (!  (=> (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1@@2) (>= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) (|Seq#Index_8471| xs i_4_1@@2) f_7) FullPerm))
 :qid |stdinbpl.1124:17|
 :skolemid |96|
 :pattern ( (|Seq#Index_8471| xs i_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3083| (|Seq#Range| 0 n@@27) i_4_1@@2))
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1@@2))
 :pattern ( (|Seq#Index_8471| xs i_4_1@@2))
)) (=> (forall ((i_4_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1@@3) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_8471| xs i_4_1@@3)) (= (invRecv6 (|Seq#Index_8471| xs i_4_1@@3)) i_4_1@@3)))
 :qid |stdinbpl.1130:22|
 :skolemid |97|
 :pattern ( (|Seq#Index_8471| xs i_4_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3083| (|Seq#Range| 0 n@@27) i_4_1@@3))
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_4_1@@3))
 :pattern ( (|Seq#Index_8471| xs i_4_1@@3))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) (invRecv6 o_4)) (and (< NoPerm FullPerm) (qpRange6 o_4))) (= (|Seq#Index_8471| xs (invRecv6 o_4)) o_4))
 :qid |stdinbpl.1134:22|
 :skolemid |98|
 :pattern ( (invRecv6 o_4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) (invRecv6 o_4@@0)) (and (< NoPerm FullPerm) (qpRange6 o_4@@0))) (and (= (|Seq#Index_8471| xs (invRecv6 o_4@@0)) o_4@@0) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@1) o_4@@0 f_7) (- (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@0 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) (invRecv6 o_4@@0)) (and (< NoPerm FullPerm) (qpRange6 o_4@@0)))) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@1) o_4@@0 f_7) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@0 f_7))))
 :qid |stdinbpl.1140:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@1) o_4@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_12590_53) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.1146:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_12603_12604) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1146:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_18626_3205) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1146:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_12590_34681) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1146:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| QPMask@1) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_12590_34814) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| QPMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| QPMask@1) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1146:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| QPMask@1) o_4@@5 f_5@@3))
))) (= (ControlFlow 0 14) (- 0 13))) (> n@@27 0))))))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8471| xs i_1) (|Seq#Index_8471| xs i_1_1))))
 :qid |stdinbpl.1011:15|
 :skolemid |83|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1@@0)) (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8471| xs i_1@@0) (|Seq#Index_8471| xs i_1_1@@0))))
 :qid |stdinbpl.1011:15|
 :skolemid |83|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1@@1) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_8471| xs i_1@@1)) (= (invRecv4 (|Seq#Index_8471| xs i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1017:22|
 :skolemid |84|
 :pattern ( (|Seq#Index_8471| xs i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3083| (|Seq#Range| 0 n@@27) i_1@@1))
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1@@1))
 :pattern ( (|Seq#Index_8471| xs i_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) (invRecv4 o_4@@6)) (< NoPerm FullPerm)) (qpRange4 o_4@@6)) (= (|Seq#Index_8471| xs (invRecv4 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1021:22|
 :skolemid |85|
 :pattern ( (invRecv4 o_4@@6))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1@@2) (not (= (|Seq#Index_8471| xs i_1@@2) null)))
 :qid |stdinbpl.1027:22|
 :skolemid |86|
 :pattern ( (|Seq#Index_8471| xs i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3083| (|Seq#Range| 0 n@@27) i_1@@2))
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_1@@2))
 :pattern ( (|Seq#Index_8471| xs i_1@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) (invRecv4 o_4@@7)) (< NoPerm FullPerm)) (qpRange4 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8471| xs (invRecv4 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@7 f_7) (+ (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_4@@7 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) (invRecv4 o_4@@7)) (< NoPerm FullPerm)) (qpRange4 o_4@@7))) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@7 f_7) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_4@@7 f_7))))
 :qid |stdinbpl.1033:22|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@7 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_12590_53) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1037:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| QPMask@0) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_12603_12604) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1037:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_18626_3205) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1037:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| QPMask@0) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_12590_34681) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| QPMask@0) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1037:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| QPMask@0) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_12590_34814) ) (!  (=> true (= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| QPMask@0) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1037:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| QPMask@0) o_4@@12 f_5@@8))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 25) 24) anon19_Then_correct) (=> (= (ControlFlow 0 25) 14) anon19_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon18_Else_correct  (=> (and (not (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_9)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon18_Then_correct  (=> (|Seq#Contains_3083| (|Seq#Range| 0 n@@27) i_9) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_9 (|Seq#Length_8471| xs))) (=> (< i_9 (|Seq#Length_8471| xs)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon15_Else_correct  (=> (and (forall ((i1_1_1 Int) (i2_1_1 Int) ) (!  (=> (and (<= 0 i1_1_1) (and (< i1_1_1 (|Seq#Length_8471| xs)) (and (<= 0 i2_1_1) (and (< i2_1_1 (|Seq#Length_8471| xs)) (not (= i1_1_1 i2_1_1)))))) (not (= (|Seq#Index_8471| xs i1_1_1) (|Seq#Index_8471| xs i2_1_1))))
 :qid |stdinbpl.993:20|
 :skolemid |82|
 :pattern ( (|Seq#Index_8471| xs i1_1_1) (|Seq#Index_8471| xs i2_1_1))
)) (state Heap@@21 ZeroMask)) (and (and (=> (= (ControlFlow 0 27) 25) anon17_Else_correct) (=> (= (ControlFlow 0 27) 9) anon18_Then_correct)) (=> (= (ControlFlow 0 27) 12) anon18_Else_correct)))))
(let ((anon3_correct true))
(let ((anon16_Else_correct  (=> (and (not (and (<= 0 i1_25) (and (< i1_25 (|Seq#Length_8471| xs)) (and (<= 0 i2_14) (and (< i2_14 (|Seq#Length_8471| xs)) (not (= i1_25 i2_14))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon16_Then_correct  (=> (and (<= 0 i1_25) (and (< i1_25 (|Seq#Length_8471| xs)) (and (<= 0 i2_14) (and (< i2_14 (|Seq#Length_8471| xs)) (not (= i1_25 i2_14)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_25 0)) (=> (>= i1_25 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_25 (|Seq#Length_8471| xs))) (=> (< i1_25 (|Seq#Length_8471| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_14 0)) (=> (>= i2_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_14 (|Seq#Length_8471| xs))) (=> (< i2_14 (|Seq#Length_8471| xs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (= (|Seq#Length_8471| xs) n@@27) (state Heap@@21 ZeroMask))) (and (and (=> (= (ControlFlow 0 28) 27) anon15_Else_correct) (=> (= (ControlFlow 0 28) 2) anon16_Then_correct)) (=> (= (ControlFlow 0 28) 7) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 29) 28) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_12590_53 0)
(declare-sort T@Field_12603_12604 0)
(declare-sort T@Field_18626_3205 0)
(declare-sort T@Field_12590_34814 0)
(declare-sort T@Field_12590_34681 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12551 0)) (((PolymorphicMapType_12551 (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| (Array T@Ref T@Field_18626_3205 Real)) (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| (Array T@Ref T@Field_12590_53 Real)) (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| (Array T@Ref T@Field_12603_12604 Real)) (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| (Array T@Ref T@Field_12590_34681 Real)) (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| (Array T@Ref T@Field_12590_34814 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13079 0)) (((PolymorphicMapType_13079 (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| (Array T@Ref T@Field_12590_53 Bool)) (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| (Array T@Ref T@Field_12603_12604 Bool)) (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| (Array T@Ref T@Field_18626_3205 Bool)) (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| (Array T@Ref T@Field_12590_34681 Bool)) (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| (Array T@Ref T@Field_12590_34814 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12530 0)) (((PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| (Array T@Ref T@Field_12590_53 Bool)) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| (Array T@Ref T@Field_12603_12604 T@Ref)) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| (Array T@Ref T@Field_18626_3205 Int)) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| (Array T@Ref T@Field_12590_34814 T@PolymorphicMapType_13079)) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| (Array T@Ref T@Field_12590_34681 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12590_53)
(declare-fun f_7 () T@Field_18626_3205)
(declare-sort T@Seq_19270 0)
(declare-fun |Seq#Length_8471| (T@Seq_19270) Int)
(declare-fun |Seq#Drop_8471| (T@Seq_19270 Int) T@Seq_19270)
(declare-sort T@Seq_3083 0)
(declare-fun |Seq#Length_3083| (T@Seq_3083) Int)
(declare-fun |Seq#Drop_3083| (T@Seq_3083 Int) T@Seq_3083)
(declare-fun state (T@PolymorphicMapType_12530 T@PolymorphicMapType_12551) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_12530 Int Bool) Bool)
(declare-fun |fun01#frame| (T@FrameType Int Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_12530 T@PolymorphicMapType_12530) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12530 T@PolymorphicMapType_12530) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12551) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13079)
(declare-fun dummyFunction_3435 (Bool) Bool)
(declare-fun |fun01#triggerStateless| (Int Bool) Bool)
(declare-fun |Seq#Index_8471| (T@Seq_19270 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3083| (T@Seq_3083 Int) Int)
(declare-fun |Seq#Empty_8471| () T@Seq_19270)
(declare-fun |Seq#Empty_3083| () T@Seq_3083)
(declare-fun |Seq#Update_8471| (T@Seq_19270 Int T@Ref) T@Seq_19270)
(declare-fun |Seq#Update_3083| (T@Seq_3083 Int Int) T@Seq_3083)
(declare-fun |Seq#Take_8471| (T@Seq_19270 Int) T@Seq_19270)
(declare-fun |Seq#Take_3083| (T@Seq_3083 Int) T@Seq_3083)
(declare-fun |Seq#Contains_3083| (T@Seq_3083 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3083)
(declare-fun |Seq#Contains_19270| (T@Seq_19270 T@Ref) Bool)
(declare-fun |Seq#Skolem_19270| (T@Seq_19270 T@Ref) Int)
(declare-fun |Seq#Skolem_3083| (T@Seq_3083 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12530 T@PolymorphicMapType_12530 T@PolymorphicMapType_12551) Bool)
(declare-fun IsPredicateField_12590_34772 (T@Field_12590_34681) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12590 (T@Field_12590_34681) T@Field_12590_34814)
(declare-fun HasDirectPerm_12590_34745 (T@PolymorphicMapType_12551 T@Ref T@Field_12590_34681) Bool)
(declare-fun IsWandField_12590_36519 (T@Field_12590_34681) Bool)
(declare-fun WandMaskField_12590 (T@Field_12590_34681) T@Field_12590_34814)
(declare-fun |Seq#Singleton_8471| (T@Ref) T@Seq_19270)
(declare-fun |Seq#Singleton_3083| (Int) T@Seq_3083)
(declare-fun |Seq#Append_19270| (T@Seq_19270 T@Seq_19270) T@Seq_19270)
(declare-fun |Seq#Append_3083| (T@Seq_3083 T@Seq_3083) T@Seq_3083)
(declare-fun dummyHeap () T@PolymorphicMapType_12530)
(declare-fun ZeroMask () T@PolymorphicMapType_12551)
(declare-fun InsidePredicate_12590_12590 (T@Field_12590_34681 T@FrameType T@Field_12590_34681 T@FrameType) Bool)
(declare-fun IsPredicateField_8457_3205 (T@Field_18626_3205) Bool)
(declare-fun IsWandField_8457_3205 (T@Field_18626_3205) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8457_40065 (T@Field_12590_34814) Bool)
(declare-fun IsWandField_8457_40081 (T@Field_12590_34814) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8457_12604 (T@Field_12603_12604) Bool)
(declare-fun IsWandField_8457_12604 (T@Field_12603_12604) Bool)
(declare-fun IsPredicateField_8457_53 (T@Field_12590_53) Bool)
(declare-fun IsWandField_8457_53 (T@Field_12590_53) Bool)
(declare-fun HasDirectPerm_12590_40519 (T@PolymorphicMapType_12551 T@Ref T@Field_12590_34814) Bool)
(declare-fun HasDirectPerm_12590_3205 (T@PolymorphicMapType_12551 T@Ref T@Field_18626_3205) Bool)
(declare-fun HasDirectPerm_12590_12604 (T@PolymorphicMapType_12551 T@Ref T@Field_12603_12604) Bool)
(declare-fun HasDirectPerm_12590_53 (T@PolymorphicMapType_12551 T@Ref T@Field_12590_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12551 T@PolymorphicMapType_12551 T@PolymorphicMapType_12551) Bool)
(declare-fun |Seq#Equal_19270| (T@Seq_19270 T@Seq_19270) Bool)
(declare-fun |Seq#Equal_3083| (T@Seq_3083 T@Seq_3083) Bool)
(declare-fun |Seq#ContainsTrigger_8471| (T@Seq_19270 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3083| (T@Seq_3083 Int) Bool)
(declare-fun |Seq#SkolemDiff_19270| (T@Seq_19270 T@Seq_19270) Int)
(declare-fun |Seq#SkolemDiff_3083| (T@Seq_3083 T@Seq_3083) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun01#trigger| (T@FrameType Int Bool) Bool)
(declare-fun fun01 (T@PolymorphicMapType_12530 Int Bool) Bool)
(assert (forall ((s T@Seq_19270) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8471| s)) (= (|Seq#Length_8471| (|Seq#Drop_8471| s n)) (- (|Seq#Length_8471| s) n))) (=> (< (|Seq#Length_8471| s) n) (= (|Seq#Length_8471| (|Seq#Drop_8471| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8471| (|Seq#Drop_8471| s n)) (|Seq#Length_8471| s))))
 :qid |stdinbpl.315:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8471| (|Seq#Drop_8471| s n)))
 :pattern ( (|Seq#Length_8471| s) (|Seq#Drop_8471| s n))
)))
(assert (forall ((s@@0 T@Seq_3083) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3083| s@@0)) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) (- (|Seq#Length_3083| s@@0) n@@0))) (=> (< (|Seq#Length_3083| s@@0) n@@0) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) (|Seq#Length_3083| s@@0))))
 :qid |stdinbpl.315:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3083| s@@0) (|Seq#Drop_3083| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_12530) (Mask T@PolymorphicMapType_12551) (i Int) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|fun01'| Heap i b_24) (|fun01#frame| EmptyFrame i b_24)))
 :qid |stdinbpl.608:15|
 :skolemid |60|
 :pattern ( (state Heap Mask) (|fun01'| Heap i b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12530) (Heap1 T@PolymorphicMapType_12530) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12530) (Mask@@0 T@PolymorphicMapType_12551) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12530) (Heap1@@0 T@PolymorphicMapType_12530) (Heap2 T@PolymorphicMapType_12530) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12590_34814) ) (!  (not (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12590_34681) ) (!  (not (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18626_3205) ) (!  (not (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12603_12604) ) (!  (not (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12590_53) ) (!  (not (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12530) (i@@0 Int) (b_24@@0 Bool) ) (! (dummyFunction_3435 (|fun01#triggerStateless| i@@0 b_24@@0))
 :qid |stdinbpl.601:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@1 i@@0 b_24@@0))
)))
(assert (forall ((s@@1 T@Seq_19270) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8471| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8471| (|Seq#Drop_8471| s@@1 n@@1) j) (|Seq#Index_8471| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.336:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8471| (|Seq#Drop_8471| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3083) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3083| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3083| (|Seq#Drop_3083| s@@2 n@@2) j@@0) (|Seq#Index_3083| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.336:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3083| (|Seq#Drop_3083| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8471| |Seq#Empty_8471|) 0))
(assert (= (|Seq#Length_3083| |Seq#Empty_3083|) 0))
(assert (forall ((s@@3 T@Seq_19270) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8471| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_8471| (|Seq#Update_8471| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_8471| (|Seq#Update_8471| s@@3 i@@1 v) n@@3) (|Seq#Index_8471| s@@3 n@@3)))))
 :qid |stdinbpl.291:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8471| (|Seq#Update_8471| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_8471| s@@3 n@@3) (|Seq#Update_8471| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3083) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3083| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3083| s@@4 n@@4)))))
 :qid |stdinbpl.291:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3083| s@@4 n@@4) (|Seq#Update_3083| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_19270) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8471| s@@5)) (= (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8471| s@@5) n@@5) (= (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)) (|Seq#Length_8471| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)) 0)))
 :qid |stdinbpl.302:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8471| (|Seq#Take_8471| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8471| s@@5 n@@5) (|Seq#Length_8471| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3083) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3083| s@@6)) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3083| s@@6) n@@6) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) (|Seq#Length_3083| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) 0)))
 :qid |stdinbpl.302:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3083| s@@6 n@@6) (|Seq#Length_3083| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3083| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.576:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_19270) (x T@Ref) ) (!  (=> (|Seq#Contains_19270| s@@7 x) (and (and (<= 0 (|Seq#Skolem_19270| s@@7 x)) (< (|Seq#Skolem_19270| s@@7 x) (|Seq#Length_8471| s@@7))) (= (|Seq#Index_8471| s@@7 (|Seq#Skolem_19270| s@@7 x)) x)))
 :qid |stdinbpl.434:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19270| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3083) (x@@0 Int) ) (!  (=> (|Seq#Contains_3083| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3083| s@@8 x@@0)) (< (|Seq#Skolem_3083| s@@8 x@@0) (|Seq#Length_3083| s@@8))) (= (|Seq#Index_3083| s@@8 (|Seq#Skolem_3083| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.434:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3083| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_19270) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8471| s@@9 n@@7) s@@9))
 :qid |stdinbpl.418:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8471| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3083) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3083| s@@10 n@@8) s@@10))
 :qid |stdinbpl.418:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3083| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.271:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.269:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12530) (ExhaleHeap T@PolymorphicMapType_12530) (Mask@@1 T@PolymorphicMapType_12551) (pm_f_11 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_12590_34745 Mask@@1 null pm_f_11) (IsPredicateField_12590_34772 pm_f_11)) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@2) null (PredicateMaskField_12590 pm_f_11)) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap) null (PredicateMaskField_12590 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_12590_34772 pm_f_11) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap) null (PredicateMaskField_12590 pm_f_11)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12530) (ExhaleHeap@@0 T@PolymorphicMapType_12530) (Mask@@2 T@PolymorphicMapType_12551) (pm_f_11@@0 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_12590_34745 Mask@@2 null pm_f_11@@0) (IsWandField_12590_36519 pm_f_11@@0)) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@3) null (WandMaskField_12590 pm_f_11@@0)) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@0) null (WandMaskField_12590 pm_f_11@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_12590_36519 pm_f_11@@0) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@0) null (WandMaskField_12590 pm_f_11@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_19270| (|Seq#Singleton_8471| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.559:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19270| (|Seq#Singleton_8471| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3083| (|Seq#Singleton_3083| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.559:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3083| (|Seq#Singleton_3083| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_19270) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8471| s@@11))) (= (|Seq#Index_8471| (|Seq#Take_8471| s@@11 n@@9) j@@3) (|Seq#Index_8471| s@@11 j@@3)))
 :qid |stdinbpl.310:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8471| (|Seq#Take_8471| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8471| s@@11 j@@3) (|Seq#Take_8471| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3083) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3083| s@@12))) (= (|Seq#Index_3083| (|Seq#Take_3083| s@@12 n@@10) j@@4) (|Seq#Index_3083| s@@12 j@@4)))
 :qid |stdinbpl.310:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3083| (|Seq#Take_3083| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3083| s@@12 j@@4) (|Seq#Take_3083| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_19270) (t T@Seq_19270) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8471| s@@13))) (< n@@11 (|Seq#Length_8471| (|Seq#Append_19270| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8471| s@@13)) (|Seq#Length_8471| s@@13)) n@@11) (= (|Seq#Take_8471| (|Seq#Append_19270| s@@13 t) n@@11) (|Seq#Append_19270| s@@13 (|Seq#Take_8471| t (|Seq#Sub| n@@11 (|Seq#Length_8471| s@@13)))))))
 :qid |stdinbpl.395:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8471| (|Seq#Append_19270| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3083) (t@@0 T@Seq_3083) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3083| s@@14))) (< n@@12 (|Seq#Length_3083| (|Seq#Append_3083| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3083| s@@14)) (|Seq#Length_3083| s@@14)) n@@12) (= (|Seq#Take_3083| (|Seq#Append_3083| s@@14 t@@0) n@@12) (|Seq#Append_3083| s@@14 (|Seq#Take_3083| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3083| s@@14)))))))
 :qid |stdinbpl.395:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3083| (|Seq#Append_3083| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12530) (ExhaleHeap@@1 T@PolymorphicMapType_12530) (Mask@@3 T@PolymorphicMapType_12551) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@4) o_31 $allocated) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@1) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@1) o_31 $allocated))
)))
(assert (forall ((p T@Field_12590_34681) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12590_12590 p v_1 p w))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12590_12590 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_19270) (s1 T@Seq_19270) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8471|)) (not (= s1 |Seq#Empty_8471|))) (<= (|Seq#Length_8471| s0) n@@13)) (< n@@13 (|Seq#Length_8471| (|Seq#Append_19270| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8471| s0)) (|Seq#Length_8471| s0)) n@@13) (= (|Seq#Index_8471| (|Seq#Append_19270| s0 s1) n@@13) (|Seq#Index_8471| s1 (|Seq#Sub| n@@13 (|Seq#Length_8471| s0))))))
 :qid |stdinbpl.282:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8471| (|Seq#Append_19270| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3083) (s1@@0 T@Seq_3083) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3083|)) (not (= s1@@0 |Seq#Empty_3083|))) (<= (|Seq#Length_3083| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3083| (|Seq#Append_3083| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3083| s0@@0)) (|Seq#Length_3083| s0@@0)) n@@14) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@0 s1@@0) n@@14) (|Seq#Index_3083| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3083| s0@@0))))))
 :qid |stdinbpl.282:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3083| (|Seq#Append_3083| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8457_3205 f_7)))
(assert  (not (IsWandField_8457_3205 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12530) (ExhaleHeap@@2 T@PolymorphicMapType_12530) (Mask@@4 T@PolymorphicMapType_12551) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12551) (o_2@@4 T@Ref) (f_4@@4 T@Field_12590_34814) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_8457_40065 f_4@@4))) (not (IsWandField_8457_40081 f_4@@4))) (<= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12551) (o_2@@5 T@Ref) (f_4@@5 T@Field_12590_34681) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12590_34772 f_4@@5))) (not (IsWandField_12590_36519 f_4@@5))) (<= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12551) (o_2@@6 T@Ref) (f_4@@6 T@Field_12603_12604) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8457_12604 f_4@@6))) (not (IsWandField_8457_12604 f_4@@6))) (<= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12551) (o_2@@7 T@Ref) (f_4@@7 T@Field_12590_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8457_53 f_4@@7))) (not (IsWandField_8457_53 f_4@@7))) (<= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12551) (o_2@@8 T@Ref) (f_4@@8 T@Field_18626_3205) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8457_3205 f_4@@8))) (not (IsWandField_8457_3205 f_4@@8))) (<= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12551) (o_2@@9 T@Ref) (f_4@@9 T@Field_12590_34814) ) (! (= (HasDirectPerm_12590_40519 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_40519 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12551) (o_2@@10 T@Ref) (f_4@@10 T@Field_12590_34681) ) (! (= (HasDirectPerm_12590_34745 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_34745 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12551) (o_2@@11 T@Ref) (f_4@@11 T@Field_18626_3205) ) (! (= (HasDirectPerm_12590_3205 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_3205 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12551) (o_2@@12 T@Ref) (f_4@@12 T@Field_12603_12604) ) (! (= (HasDirectPerm_12590_12604 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_12604 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12551) (o_2@@13 T@Ref) (f_4@@13 T@Field_12590_53) ) (! (= (HasDirectPerm_12590_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12590_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12530) (ExhaleHeap@@3 T@PolymorphicMapType_12530) (Mask@@15 T@PolymorphicMapType_12551) (pm_f_11@@1 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_12590_34745 Mask@@15 null pm_f_11@@1) (IsPredicateField_12590_34772 pm_f_11@@1)) (and (and (and (and (forall ((o2_11 T@Ref) (f_36 T@Field_12590_53) ) (!  (=> (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11 f_36) (= (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@6) o2_11 f_36) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11 f_36))
)) (forall ((o2_11@@0 T@Ref) (f_36@@0 T@Field_12603_12604) ) (!  (=> (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@0 f_36@@0) (= (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@6) o2_11@@0 f_36@@0) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@0 f_36@@0))
))) (forall ((o2_11@@1 T@Ref) (f_36@@1 T@Field_18626_3205) ) (!  (=> (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@1 f_36@@1) (= (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@6) o2_11@@1 f_36@@1) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@1 f_36@@1))
))) (forall ((o2_11@@2 T@Ref) (f_36@@2 T@Field_12590_34681) ) (!  (=> (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@2 f_36@@2) (= (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@6) o2_11@@2 f_36@@2) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@2 f_36@@2))
))) (forall ((o2_11@@3 T@Ref) (f_36@@3 T@Field_12590_34814) ) (!  (=> (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) null (PredicateMaskField_12590 pm_f_11@@1))) o2_11@@3 f_36@@3) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@6) o2_11@@3 f_36@@3) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@3 f_36@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@3) o2_11@@3 f_36@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_12590_34772 pm_f_11@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12530) (ExhaleHeap@@4 T@PolymorphicMapType_12530) (Mask@@16 T@PolymorphicMapType_12551) (pm_f_11@@2 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_12590_34745 Mask@@16 null pm_f_11@@2) (IsWandField_12590_36519 pm_f_11@@2)) (and (and (and (and (forall ((o2_11@@4 T@Ref) (f_36@@4 T@Field_12590_53) ) (!  (=> (select (|PolymorphicMapType_13079_12590_53#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@4 f_36@@4) (= (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@7) o2_11@@4 f_36@@4) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@4 f_36@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@4 f_36@@4))
)) (forall ((o2_11@@5 T@Ref) (f_36@@5 T@Field_12603_12604) ) (!  (=> (select (|PolymorphicMapType_13079_12590_12604#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@5 f_36@@5) (= (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@7) o2_11@@5 f_36@@5) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@5 f_36@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@5 f_36@@5))
))) (forall ((o2_11@@6 T@Ref) (f_36@@6 T@Field_18626_3205) ) (!  (=> (select (|PolymorphicMapType_13079_12590_3205#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@6 f_36@@6) (= (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@7) o2_11@@6 f_36@@6) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@6 f_36@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@6 f_36@@6))
))) (forall ((o2_11@@7 T@Ref) (f_36@@7 T@Field_12590_34681) ) (!  (=> (select (|PolymorphicMapType_13079_12590_34681#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@7 f_36@@7) (= (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@7) o2_11@@7 f_36@@7) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@7 f_36@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@7 f_36@@7))
))) (forall ((o2_11@@8 T@Ref) (f_36@@8 T@Field_12590_34814) ) (!  (=> (select (|PolymorphicMapType_13079_12590_35992#PolymorphicMapType_13079| (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) null (WandMaskField_12590 pm_f_11@@2))) o2_11@@8 f_36@@8) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@7) o2_11@@8 f_36@@8) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@8 f_36@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@4) o2_11@@8 f_36@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_12590_36519 pm_f_11@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.201:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3083| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.574:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3083| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12530) (ExhaleHeap@@5 T@PolymorphicMapType_12530) (Mask@@17 T@PolymorphicMapType_12551) (o_31@@0 T@Ref) (f_36@@9 T@Field_12590_34814) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_12590_40519 Mask@@17 o_31@@0 f_36@@9) (= (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@8) o_31@@0 f_36@@9) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@5) o_31@@0 f_36@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| ExhaleHeap@@5) o_31@@0 f_36@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12530) (ExhaleHeap@@6 T@PolymorphicMapType_12530) (Mask@@18 T@PolymorphicMapType_12551) (o_31@@1 T@Ref) (f_36@@10 T@Field_12590_34681) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_12590_34745 Mask@@18 o_31@@1 f_36@@10) (= (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@9) o_31@@1 f_36@@10) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@6) o_31@@1 f_36@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| ExhaleHeap@@6) o_31@@1 f_36@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12530) (ExhaleHeap@@7 T@PolymorphicMapType_12530) (Mask@@19 T@PolymorphicMapType_12551) (o_31@@2 T@Ref) (f_36@@11 T@Field_18626_3205) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_12590_3205 Mask@@19 o_31@@2 f_36@@11) (= (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@10) o_31@@2 f_36@@11) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@7) o_31@@2 f_36@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| ExhaleHeap@@7) o_31@@2 f_36@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12530) (ExhaleHeap@@8 T@PolymorphicMapType_12530) (Mask@@20 T@PolymorphicMapType_12551) (o_31@@3 T@Ref) (f_36@@12 T@Field_12603_12604) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_12590_12604 Mask@@20 o_31@@3 f_36@@12) (= (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@11) o_31@@3 f_36@@12) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@8) o_31@@3 f_36@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| ExhaleHeap@@8) o_31@@3 f_36@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12530) (ExhaleHeap@@9 T@PolymorphicMapType_12530) (Mask@@21 T@PolymorphicMapType_12551) (o_31@@4 T@Ref) (f_36@@13 T@Field_12590_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_12590_53 Mask@@21 o_31@@4 f_36@@13) (= (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@12) o_31@@4 f_36@@13) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@9) o_31@@4 f_36@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| ExhaleHeap@@9) o_31@@4 f_36@@13))
)))
(assert (forall ((s0@@1 T@Seq_19270) (s1@@1 T@Seq_19270) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8471|)) (not (= s1@@1 |Seq#Empty_8471|))) (= (|Seq#Length_8471| (|Seq#Append_19270| s0@@1 s1@@1)) (+ (|Seq#Length_8471| s0@@1) (|Seq#Length_8471| s1@@1))))
 :qid |stdinbpl.251:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8471| (|Seq#Append_19270| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3083) (s1@@2 T@Seq_3083) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3083|)) (not (= s1@@2 |Seq#Empty_3083|))) (= (|Seq#Length_3083| (|Seq#Append_3083| s0@@2 s1@@2)) (+ (|Seq#Length_3083| s0@@2) (|Seq#Length_3083| s1@@2))))
 :qid |stdinbpl.251:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3083| (|Seq#Append_3083| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12590_34814) ) (! (= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12590_34681) ) (! (= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12603_12604) ) (! (= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12590_53) ) (! (= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18626_3205) ) (! (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_19270) (t@@1 T@Seq_19270) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8471| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8471| s@@15)) (|Seq#Length_8471| s@@15)) n@@15) (= (|Seq#Drop_8471| (|Seq#Append_19270| s@@15 t@@1) n@@15) (|Seq#Drop_8471| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8471| s@@15))))))
 :qid |stdinbpl.408:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8471| (|Seq#Append_19270| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3083) (t@@2 T@Seq_3083) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3083| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3083| s@@16)) (|Seq#Length_3083| s@@16)) n@@16) (= (|Seq#Drop_3083| (|Seq#Append_3083| s@@16 t@@2) n@@16) (|Seq#Drop_3083| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3083| s@@16))))))
 :qid |stdinbpl.408:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3083| (|Seq#Append_3083| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12551) (SummandMask1 T@PolymorphicMapType_12551) (SummandMask2 T@PolymorphicMapType_12551) (o_2@@19 T@Ref) (f_4@@19 T@Field_12590_34814) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12551_8457_38936#PolymorphicMapType_12551| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12551) (SummandMask1@@0 T@PolymorphicMapType_12551) (SummandMask2@@0 T@PolymorphicMapType_12551) (o_2@@20 T@Ref) (f_4@@20 T@Field_12590_34681) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12551_8457_34681#PolymorphicMapType_12551| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12551) (SummandMask1@@1 T@PolymorphicMapType_12551) (SummandMask2@@1 T@PolymorphicMapType_12551) (o_2@@21 T@Ref) (f_4@@21 T@Field_12603_12604) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12551_8457_12604#PolymorphicMapType_12551| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12551) (SummandMask1@@2 T@PolymorphicMapType_12551) (SummandMask2@@2 T@PolymorphicMapType_12551) (o_2@@22 T@Ref) (f_4@@22 T@Field_12590_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12551_8457_53#PolymorphicMapType_12551| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12551) (SummandMask1@@3 T@PolymorphicMapType_12551) (SummandMask2@@3 T@PolymorphicMapType_12551) (o_2@@23 T@Ref) (f_4@@23 T@Field_18626_3205) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12551_8457_3205#PolymorphicMapType_12551| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.573:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_19270) (b T@Seq_19270) ) (!  (=> (|Seq#Equal_19270| a b) (= a b))
 :qid |stdinbpl.546:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19270| a b))
)))
(assert (forall ((a@@0 T@Seq_3083) (b@@0 T@Seq_3083) ) (!  (=> (|Seq#Equal_3083| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.546:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3083| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_19270) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8471| s@@17))) (|Seq#ContainsTrigger_8471| s@@17 (|Seq#Index_8471| s@@17 i@@5)))
 :qid |stdinbpl.439:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8471| s@@17 i@@5))
)))
(assert (forall ((s@@18 T@Seq_3083) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3083| s@@18))) (|Seq#ContainsTrigger_3083| s@@18 (|Seq#Index_3083| s@@18 i@@6)))
 :qid |stdinbpl.439:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3083| s@@18 i@@6))
)))
(assert (forall ((s0@@3 T@Seq_19270) (s1@@3 T@Seq_19270) ) (!  (and (=> (= s0@@3 |Seq#Empty_8471|) (= (|Seq#Append_19270| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8471|) (= (|Seq#Append_19270| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.257:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_19270| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3083) (s1@@4 T@Seq_3083) ) (!  (and (=> (= s0@@4 |Seq#Empty_3083|) (= (|Seq#Append_3083| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3083|) (= (|Seq#Append_3083| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.257:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3083| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8471| (|Seq#Singleton_8471| t@@3) 0) t@@3)
 :qid |stdinbpl.261:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8471| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3083| (|Seq#Singleton_3083| t@@4) 0) t@@4)
 :qid |stdinbpl.261:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3083| t@@4))
)))
(assert (forall ((s@@19 T@Seq_19270) ) (! (<= 0 (|Seq#Length_8471| s@@19))
 :qid |stdinbpl.240:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8471| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3083) ) (! (<= 0 (|Seq#Length_3083| s@@20))
 :qid |stdinbpl.240:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3083| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_19270) (s1@@5 T@Seq_19270) ) (!  (=> (|Seq#Equal_19270| s0@@5 s1@@5) (and (= (|Seq#Length_8471| s0@@5) (|Seq#Length_8471| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8471| s0@@5))) (= (|Seq#Index_8471| s0@@5 j@@6) (|Seq#Index_8471| s1@@5 j@@6)))
 :qid |stdinbpl.536:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8471| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8471| s1@@5 j@@6))
))))
 :qid |stdinbpl.533:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19270| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3083) (s1@@6 T@Seq_3083) ) (!  (=> (|Seq#Equal_3083| s0@@6 s1@@6) (and (= (|Seq#Length_3083| s0@@6) (|Seq#Length_3083| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3083| s0@@6))) (= (|Seq#Index_3083| s0@@6 j@@7) (|Seq#Index_3083| s1@@6 j@@7)))
 :qid |stdinbpl.536:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3083| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3083| s1@@6 j@@7))
))))
 :qid |stdinbpl.533:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3083| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8471| (|Seq#Singleton_8471| t@@5)) 1)
 :qid |stdinbpl.248:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8471| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3083| (|Seq#Singleton_3083| t@@6)) 1)
 :qid |stdinbpl.248:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3083| t@@6))
)))
(assert (forall ((s@@21 T@Seq_19270) (t@@7 T@Seq_19270) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8471| s@@21))) (= (|Seq#Take_8471| (|Seq#Append_19270| s@@21 t@@7) n@@17) (|Seq#Take_8471| s@@21 n@@17)))
 :qid |stdinbpl.390:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8471| (|Seq#Append_19270| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3083) (t@@8 T@Seq_3083) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3083| s@@22))) (= (|Seq#Take_3083| (|Seq#Append_3083| s@@22 t@@8) n@@18) (|Seq#Take_3083| s@@22 n@@18)))
 :qid |stdinbpl.390:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3083| (|Seq#Append_3083| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_19270) (i@@7 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_8471| s@@23))) (= (|Seq#Length_8471| (|Seq#Update_8471| s@@23 i@@7 v@@2)) (|Seq#Length_8471| s@@23)))
 :qid |stdinbpl.289:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8471| (|Seq#Update_8471| s@@23 i@@7 v@@2)))
 :pattern ( (|Seq#Length_8471| s@@23) (|Seq#Update_8471| s@@23 i@@7 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3083) (i@@8 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3083| s@@24))) (= (|Seq#Length_3083| (|Seq#Update_3083| s@@24 i@@8 v@@3)) (|Seq#Length_3083| s@@24)))
 :qid |stdinbpl.289:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3083| (|Seq#Update_3083| s@@24 i@@8 v@@3)))
 :pattern ( (|Seq#Length_3083| s@@24) (|Seq#Update_3083| s@@24 i@@8 v@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12530) (o_30 T@Ref) (f_37 T@Field_12590_34681) (v@@4 T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@13) (store (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@13) o_30 f_37 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@13) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@13) (store (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@13) o_30 f_37 v@@4)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12530) (o_30@@0 T@Ref) (f_37@@0 T@Field_12590_34814) (v@@5 T@PolymorphicMapType_13079) ) (! (succHeap Heap@@14 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@14) (store (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@14) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@14) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@14) (store (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@14) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12530) (o_30@@1 T@Ref) (f_37@@1 T@Field_18626_3205) (v@@6 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@15) (store (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@15) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@15) (store (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@15) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@15) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12530) (o_30@@2 T@Ref) (f_37@@2 T@Field_12603_12604) (v@@7 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@16) (store (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@16) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@16) (store (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@16) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@16) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12530) (o_30@@3 T@Ref) (f_37@@3 T@Field_12590_53) (v@@8 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_12530 (store (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@17) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12530 (store (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@17) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_3205#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34858#PolymorphicMapType_12530| Heap@@17) (|PolymorphicMapType_12530_12590_34681#PolymorphicMapType_12530| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_19270) (t@@9 T@Seq_19270) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8471| s@@25))) (= (|Seq#Drop_8471| (|Seq#Append_19270| s@@25 t@@9) n@@19) (|Seq#Append_19270| (|Seq#Drop_8471| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.404:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8471| (|Seq#Append_19270| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3083) (t@@10 T@Seq_3083) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3083| s@@26))) (= (|Seq#Drop_3083| (|Seq#Append_3083| s@@26 t@@10) n@@20) (|Seq#Append_3083| (|Seq#Drop_3083| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.404:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3083| (|Seq#Append_3083| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_19270) (n@@21 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@9)) (< i@@9 (|Seq#Length_8471| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@21) n@@21) i@@9) (= (|Seq#Index_8471| (|Seq#Drop_8471| s@@27 n@@21) (|Seq#Sub| i@@9 n@@21)) (|Seq#Index_8471| s@@27 i@@9))))
 :qid |stdinbpl.340:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8471| s@@27 n@@21) (|Seq#Index_8471| s@@27 i@@9))
)))
(assert (forall ((s@@28 T@Seq_3083) (n@@22 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@10)) (< i@@10 (|Seq#Length_3083| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@22) n@@22) i@@10) (= (|Seq#Index_3083| (|Seq#Drop_3083| s@@28 n@@22) (|Seq#Sub| i@@10 n@@22)) (|Seq#Index_3083| s@@28 i@@10))))
 :qid |stdinbpl.340:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3083| s@@28 n@@22) (|Seq#Index_3083| s@@28 i@@10))
)))
(assert (forall ((s0@@7 T@Seq_19270) (s1@@7 T@Seq_19270) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8471|)) (not (= s1@@7 |Seq#Empty_8471|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8471| s0@@7))) (= (|Seq#Index_8471| (|Seq#Append_19270| s0@@7 s1@@7) n@@23) (|Seq#Index_8471| s0@@7 n@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8471| (|Seq#Append_19270| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8471| s0@@7 n@@23) (|Seq#Append_19270| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3083) (s1@@8 T@Seq_3083) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3083|)) (not (= s1@@8 |Seq#Empty_3083|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3083| s0@@8))) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@8 s1@@8) n@@24) (|Seq#Index_3083| s0@@8 n@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3083| (|Seq#Append_3083| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3083| s0@@8 n@@24) (|Seq#Append_3083| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_19270) (s1@@9 T@Seq_19270) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8471|)) (not (= s1@@9 |Seq#Empty_8471|))) (<= 0 m)) (< m (|Seq#Length_8471| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8471| s0@@9)) (|Seq#Length_8471| s0@@9)) m) (= (|Seq#Index_8471| (|Seq#Append_19270| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8471| s0@@9))) (|Seq#Index_8471| s1@@9 m))))
 :qid |stdinbpl.285:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8471| s1@@9 m) (|Seq#Append_19270| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3083) (s1@@10 T@Seq_3083) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3083|)) (not (= s1@@10 |Seq#Empty_3083|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3083| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3083| s0@@10)) (|Seq#Length_3083| s0@@10)) m@@0) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3083| s0@@10))) (|Seq#Index_3083| s1@@10 m@@0))))
 :qid |stdinbpl.285:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3083| s1@@10 m@@0) (|Seq#Append_3083| s0@@10 s1@@10))
)))
(assert (forall ((o_30@@4 T@Ref) (f_35 T@Field_12603_12604) (Heap@@18 T@PolymorphicMapType_12530) ) (!  (=> (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@18) o_30@@4 $allocated) (select (|PolymorphicMapType_12530_8251_53#PolymorphicMapType_12530| Heap@@18) (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@18) o_30@@4 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12530_8254_8255#PolymorphicMapType_12530| Heap@@18) o_30@@4 f_35))
)))
(assert (forall ((s@@29 T@Seq_19270) (x@@3 T@Ref) (i@@11 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length_8471| s@@29))) (= (|Seq#Index_8471| s@@29 i@@11) x@@3)) (|Seq#Contains_19270| s@@29 x@@3))
 :qid |stdinbpl.437:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19270| s@@29 x@@3) (|Seq#Index_8471| s@@29 i@@11))
)))
(assert (forall ((s@@30 T@Seq_3083) (x@@4 Int) (i@@12 Int) ) (!  (=> (and (and (<= 0 i@@12) (< i@@12 (|Seq#Length_3083| s@@30))) (= (|Seq#Index_3083| s@@30 i@@12) x@@4)) (|Seq#Contains_3083| s@@30 x@@4))
 :qid |stdinbpl.437:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3083| s@@30 x@@4) (|Seq#Index_3083| s@@30 i@@12))
)))
(assert (forall ((s0@@11 T@Seq_19270) (s1@@11 T@Seq_19270) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_19270| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19270| s0@@11 s1@@11))) (not (= (|Seq#Length_8471| s0@@11) (|Seq#Length_8471| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19270| s0@@11 s1@@11))) (= (|Seq#Length_8471| s0@@11) (|Seq#Length_8471| s1@@11))) (= (|Seq#SkolemDiff_19270| s0@@11 s1@@11) (|Seq#SkolemDiff_19270| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_19270| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_19270| s0@@11 s1@@11) (|Seq#Length_8471| s0@@11))) (not (= (|Seq#Index_8471| s0@@11 (|Seq#SkolemDiff_19270| s0@@11 s1@@11)) (|Seq#Index_8471| s1@@11 (|Seq#SkolemDiff_19270| s0@@11 s1@@11))))))
 :qid |stdinbpl.541:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19270| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3083) (s1@@12 T@Seq_3083) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3083| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3083| s0@@12 s1@@12))) (not (= (|Seq#Length_3083| s0@@12) (|Seq#Length_3083| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3083| s0@@12 s1@@12))) (= (|Seq#Length_3083| s0@@12) (|Seq#Length_3083| s1@@12))) (= (|Seq#SkolemDiff_3083| s0@@12 s1@@12) (|Seq#SkolemDiff_3083| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3083| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3083| s0@@12 s1@@12) (|Seq#Length_3083| s0@@12))) (not (= (|Seq#Index_3083| s0@@12 (|Seq#SkolemDiff_3083| s0@@12 s1@@12)) (|Seq#Index_3083| s1@@12 (|Seq#SkolemDiff_3083| s0@@12 s1@@12))))))
 :qid |stdinbpl.541:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3083| s0@@12 s1@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12530) (Mask@@22 T@PolymorphicMapType_12551) (i@@13 Int) (b_24@@1 Bool) ) (!  (=> (and (state Heap@@19 Mask@@22) (or (< AssumeFunctionsAbove 0) (|fun01#trigger| EmptyFrame i@@13 b_24@@1))) (= (|fun01'| Heap@@19 i@@13 b_24@@1) b_24@@1))
 :qid |stdinbpl.614:15|
 :skolemid |61|
 :pattern ( (state Heap@@19 Mask@@22) (|fun01'| Heap@@19 i@@13 b_24@@1))
)))
(assert (forall ((p@@1 T@Field_12590_34681) (v_1@@0 T@FrameType) (q T@Field_12590_34681) (w@@0 T@FrameType) (r T@Field_12590_34681) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12590_12590 p@@1 v_1@@0 q w@@0) (InsidePredicate_12590_12590 q w@@0 r u)) (InsidePredicate_12590_12590 p@@1 v_1@@0 r u))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12590_12590 p@@1 v_1@@0 q w@@0) (InsidePredicate_12590_12590 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_19270) ) (!  (=> (= (|Seq#Length_8471| s@@31) 0) (= s@@31 |Seq#Empty_8471|))
 :qid |stdinbpl.244:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8471| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3083) ) (!  (=> (= (|Seq#Length_3083| s@@32) 0) (= s@@32 |Seq#Empty_3083|))
 :qid |stdinbpl.244:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3083| s@@32))
)))
(assert (forall ((s@@33 T@Seq_19270) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8471| s@@33 n@@25) |Seq#Empty_8471|))
 :qid |stdinbpl.420:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8471| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3083) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3083| s@@34 n@@26) |Seq#Empty_3083|))
 :qid |stdinbpl.420:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3083| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12530) (i@@14 Int) (b_24@@2 Bool) ) (!  (and (= (fun01 Heap@@20 i@@14 b_24@@2) (|fun01'| Heap@@20 i@@14 b_24@@2)) (dummyFunction_3435 (|fun01#triggerStateless| i@@14 b_24@@2)))
 :qid |stdinbpl.597:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@20 i@@14 b_24@@2))
)))
; Invalid

