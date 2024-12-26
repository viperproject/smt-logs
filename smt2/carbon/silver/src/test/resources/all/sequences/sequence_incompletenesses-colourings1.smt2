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
(declare-sort T@Field_40737_53 0)
(declare-sort T@Field_40750_40751 0)
(declare-sort T@Field_47042_47048 0)
(declare-sort T@Seq_47046 0)
(declare-sort T@Field_26276_132082 0)
(declare-sort T@Field_26276_131949 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_40698 0)) (((PolymorphicMapType_40698 (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| (Array T@Ref T@Field_47042_47048 Real)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| (Array T@Ref T@Field_40737_53 Real)) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| (Array T@Ref T@Field_40750_40751 Real)) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| (Array T@Ref T@Field_26276_131949 Real)) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| (Array T@Ref T@Field_26276_132082 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41226 0)) (((PolymorphicMapType_41226 (|PolymorphicMapType_41226_40737_53#PolymorphicMapType_41226| (Array T@Ref T@Field_40737_53 Bool)) (|PolymorphicMapType_41226_40737_40751#PolymorphicMapType_41226| (Array T@Ref T@Field_40750_40751 Bool)) (|PolymorphicMapType_41226_40737_47048#PolymorphicMapType_41226| (Array T@Ref T@Field_47042_47048 Bool)) (|PolymorphicMapType_41226_40737_131949#PolymorphicMapType_41226| (Array T@Ref T@Field_26276_131949 Bool)) (|PolymorphicMapType_41226_40737_133266#PolymorphicMapType_41226| (Array T@Ref T@Field_26276_132082 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40677 0)) (((PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| (Array T@Ref T@Field_40737_53 Bool)) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| (Array T@Ref T@Field_40750_40751 T@Ref)) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| (Array T@Ref T@Field_47042_47048 T@Seq_47046)) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| (Array T@Ref T@Field_26276_132082 T@PolymorphicMapType_41226)) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| (Array T@Ref T@Field_26276_131949 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_40737_53)
(declare-fun val () T@Field_47042_47048)
(declare-fun |Seq#Length_50705| (T@Seq_47046) Int)
(declare-fun |Seq#Drop_50705| (T@Seq_47046 Int) T@Seq_47046)
(declare-sort T@Seq_3323 0)
(declare-fun |Seq#Length_3323| (T@Seq_3323) Int)
(declare-fun |Seq#Drop_3747| (T@Seq_3323 Int) T@Seq_3323)
(declare-fun succHeap (T@PolymorphicMapType_40677 T@PolymorphicMapType_40677) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_40677 T@PolymorphicMapType_40677) Bool)
(declare-fun state (T@PolymorphicMapType_40677 T@PolymorphicMapType_40698) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_40698) Bool)
(declare-fun |valid'| (T@PolymorphicMapType_40677 T@Seq_3323 Int Bool) Bool)
(declare-fun dummyFunction_3979 (Bool) Bool)
(declare-fun |valid#triggerStateless| (T@Seq_3323 Int Bool) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_41226)
(declare-fun |Seq#Index_50904| (T@Seq_47046 Int) T@Seq_3323)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3323| (T@Seq_3323 Int) Int)
(declare-fun valid_1 (T@PolymorphicMapType_40677 T@Seq_3323 Int Bool) Bool)
(declare-fun |Seq#Empty_64191| () T@Seq_47046)
(declare-fun |Seq#Empty_4792| () T@Seq_3323)
(declare-fun |Seq#Update_50705| (T@Seq_47046 Int T@Seq_3323) T@Seq_47046)
(declare-fun |Seq#Update_3323| (T@Seq_3323 Int Int) T@Seq_3323)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Take_50705| (T@Seq_47046 Int) T@Seq_47046)
(declare-fun |Seq#Take_5311| (T@Seq_3323 Int) T@Seq_3323)
(declare-fun |Seq#Contains_3323| (T@Seq_3323 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3323)
(declare-fun |Seq#Contains_47046| (T@Seq_47046 T@Seq_3323) Bool)
(declare-fun |Seq#Skolem_47046| (T@Seq_47046 T@Seq_3323) Int)
(declare-fun |Seq#Skolem_3323| (T@Seq_3323 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_40677 T@PolymorphicMapType_40677 T@PolymorphicMapType_40698) Bool)
(declare-fun IsPredicateField_26276_132040 (T@Field_26276_131949) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26276 (T@Field_26276_131949) T@Field_26276_132082)
(declare-fun HasDirectPerm_26276_132013 (T@PolymorphicMapType_40698 T@Ref T@Field_26276_131949) Bool)
(declare-fun IsWandField_26276_133793 (T@Field_26276_131949) Bool)
(declare-fun WandMaskField_26276 (T@Field_26276_131949) T@Field_26276_132082)
(declare-fun |Seq#Singleton_50010| (T@Seq_3323) T@Seq_47046)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_3323)
(declare-fun |Seq#Append_56940| (T@Seq_47046 T@Seq_47046) T@Seq_47046)
(declare-fun |Seq#Append_3| (T@Seq_3323 T@Seq_3323) T@Seq_3323)
(declare-fun |valid#frame| (T@FrameType T@Seq_3323 Int Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_40677)
(declare-fun ZeroMask () T@PolymorphicMapType_40698)
(declare-fun InsidePredicate_40737_40737 (T@Field_26276_131949 T@FrameType T@Field_26276_131949 T@FrameType) Bool)
(declare-fun IsPredicateField_26276_47072 (T@Field_47042_47048) Bool)
(declare-fun IsWandField_26276_47100 (T@Field_47042_47048) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun slot (T@ArrayDomainType Int) T@Ref)
(declare-fun slotToArray (T@Ref) T@ArrayDomainType)
(declare-fun slotToIndex (T@Ref) Int)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_26276_137344 (T@Field_26276_132082) Bool)
(declare-fun IsWandField_26276_137360 (T@Field_26276_132082) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_26276_40751 (T@Field_40750_40751) Bool)
(declare-fun IsWandField_26276_40751 (T@Field_40750_40751) Bool)
(declare-fun IsPredicateField_26276_53 (T@Field_40737_53) Bool)
(declare-fun IsWandField_26276_53 (T@Field_40737_53) Bool)
(declare-fun HasDirectPerm_26276_137798 (T@PolymorphicMapType_40698 T@Ref T@Field_26276_132082) Bool)
(declare-fun HasDirectPerm_26276_40751 (T@PolymorphicMapType_40698 T@Ref T@Field_40750_40751) Bool)
(declare-fun HasDirectPerm_26276_53 (T@PolymorphicMapType_40698 T@Ref T@Field_40737_53) Bool)
(declare-fun HasDirectPerm_26276_50605 (T@PolymorphicMapType_40698 T@Ref T@Field_47042_47048) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_40698 T@PolymorphicMapType_40698 T@PolymorphicMapType_40698) Bool)
(declare-fun |Seq#Equal_47046| (T@Seq_47046 T@Seq_47046) Bool)
(declare-fun |Seq#Equal_3611| (T@Seq_3323 T@Seq_3323) Bool)
(declare-fun |Seq#ContainsTrigger_50705| (T@Seq_47046 T@Seq_3323) Bool)
(declare-fun |Seq#ContainsTrigger_25335| (T@Seq_3323 Int) Bool)
(declare-fun |Seq#SkolemDiff_47046| (T@Seq_47046 T@Seq_47046) Int)
(declare-fun |Seq#SkolemDiff_3323| (T@Seq_3323 T@Seq_3323) Int)
(assert (forall ((s T@Seq_47046) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_50705| s)) (= (|Seq#Length_50705| (|Seq#Drop_50705| s n)) (- (|Seq#Length_50705| s) n))) (=> (< (|Seq#Length_50705| s) n) (= (|Seq#Length_50705| (|Seq#Drop_50705| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_50705| (|Seq#Drop_50705| s n)) (|Seq#Length_50705| s))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_50705| (|Seq#Drop_50705| s n)))
 :pattern ( (|Seq#Length_50705| s) (|Seq#Drop_50705| s n))
)))
(assert (forall ((s@@0 T@Seq_3323) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3323| s@@0)) (= (|Seq#Length_3323| (|Seq#Drop_3747| s@@0 n@@0)) (- (|Seq#Length_3323| s@@0) n@@0))) (=> (< (|Seq#Length_3323| s@@0) n@@0) (= (|Seq#Length_3323| (|Seq#Drop_3747| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3323| (|Seq#Drop_3747| s@@0 n@@0)) (|Seq#Length_3323| s@@0))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3323| (|Seq#Drop_3747| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3323| s@@0) (|Seq#Drop_3747| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_40677) (Heap1 T@PolymorphicMapType_40677) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_40677) (Mask T@PolymorphicMapType_40698) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_40677) (Heap1@@0 T@PolymorphicMapType_40677) (Heap2 T@PolymorphicMapType_40677) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_40677) (s_2 T@Seq_3323) (lenTiles Int) (isStart Bool) ) (! (dummyFunction_3979 (|valid#triggerStateless| s_2 lenTiles isStart))
 :qid |stdinbpl.662:15|
 :skolemid |61|
 :pattern ( (|valid'| Heap@@0 s_2 lenTiles isStart))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_26276_132082) ) (!  (not (select (|PolymorphicMapType_41226_40737_133266#PolymorphicMapType_41226| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41226_40737_133266#PolymorphicMapType_41226| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26276_131949) ) (!  (not (select (|PolymorphicMapType_41226_40737_131949#PolymorphicMapType_41226| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41226_40737_131949#PolymorphicMapType_41226| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_47042_47048) ) (!  (not (select (|PolymorphicMapType_41226_40737_47048#PolymorphicMapType_41226| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41226_40737_47048#PolymorphicMapType_41226| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_40750_40751) ) (!  (not (select (|PolymorphicMapType_41226_40737_40751#PolymorphicMapType_41226| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41226_40737_40751#PolymorphicMapType_41226| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_40737_53) ) (!  (not (select (|PolymorphicMapType_41226_40737_53#PolymorphicMapType_41226| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41226_40737_53#PolymorphicMapType_41226| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_47046) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_50705| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_50904| (|Seq#Drop_50705| s@@1 n@@1) j) (|Seq#Index_50904| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_50904| (|Seq#Drop_50705| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3323) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3323| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3323| (|Seq#Drop_3747| s@@2 n@@2) j@@0) (|Seq#Index_3323| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3323| (|Seq#Drop_3747| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_40677) (s_2@@0 T@Seq_3323) (lenTiles@@0 Int) (isStart@@0 Bool) ) (!  (and (= (valid_1 Heap@@1 s_2@@0 lenTiles@@0 isStart@@0) (|valid'| Heap@@1 s_2@@0 lenTiles@@0 isStart@@0)) (dummyFunction_3979 (|valid#triggerStateless| s_2@@0 lenTiles@@0 isStart@@0)))
 :qid |stdinbpl.658:15|
 :skolemid |60|
 :pattern ( (valid_1 Heap@@1 s_2@@0 lenTiles@@0 isStart@@0))
)))
(assert (= (|Seq#Length_50705| |Seq#Empty_64191|) 0))
(assert (= (|Seq#Length_3323| |Seq#Empty_4792|) 0))
(assert (forall ((s@@3 T@Seq_47046) (i Int) (v T@Seq_3323) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_50705| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_50904| (|Seq#Update_50705| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_50904| (|Seq#Update_50705| s@@3 i v) n@@3) (|Seq#Index_50904| s@@3 n@@3)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_50904| (|Seq#Update_50705| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_50904| s@@3 n@@3) (|Seq#Update_50705| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3323) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3323| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3323| (|Seq#Update_3323| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3323| (|Seq#Update_3323| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3323| s@@4 n@@4)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3323| (|Seq#Update_3323| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3323| s@@4 n@@4) (|Seq#Update_3323| s@@4 i@@0 v@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_40677) (Mask@@0 T@PolymorphicMapType_40698) (s_2@@1 T@Seq_3323) (lenTiles@@1 Int) (isStart@@1 Bool) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (= (valid_1 Heap@@2 s_2@@1 lenTiles@@1 isStart@@1) (ite (= (|Seq#Length_3323| s_2@@1) 0) (= lenTiles@@1 0) (ite (= (|Seq#Length_3323| s_2@@1) 1)  (and (= lenTiles@@1 (|Seq#Index_3323| s_2@@1 0)) (ite isStart@@1  (or (= (|Seq#Index_3323| s_2@@1 0) 0) (>= (|Seq#Index_3323| s_2@@1 0) 3)) (>= (|Seq#Index_3323| s_2@@1 0) 3)))  (and (ite isStart@@1  (or (= (|Seq#Index_3323| s_2@@1 0) 0) (>= (|Seq#Index_3323| s_2@@1 0) 3)) (>= (|Seq#Index_3323| s_2@@1 0) 3)) (and (> (|Seq#Index_3323| s_2@@1 1) 0) (|valid'| Heap@@2 (|Seq#Drop_3747| s_2@@1 2) (- (- lenTiles@@1 (|Seq#Index_3323| s_2@@1 1)) (|Seq#Index_3323| s_2@@1 0)) false)))))))
 :qid |stdinbpl.668:15|
 :skolemid |62|
 :pattern ( (state Heap@@2 Mask@@0) (valid_1 Heap@@2 s_2@@1 lenTiles@@1 isStart@@1))
)))
(assert (forall ((s@@5 T@Seq_47046) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_50705| s@@5)) (= (|Seq#Length_50705| (|Seq#Take_50705| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_50705| s@@5) n@@5) (= (|Seq#Length_50705| (|Seq#Take_50705| s@@5 n@@5)) (|Seq#Length_50705| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_50705| (|Seq#Take_50705| s@@5 n@@5)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_50705| (|Seq#Take_50705| s@@5 n@@5)))
 :pattern ( (|Seq#Take_50705| s@@5 n@@5) (|Seq#Length_50705| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3323) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3323| s@@6)) (= (|Seq#Length_3323| (|Seq#Take_5311| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3323| s@@6) n@@6) (= (|Seq#Length_3323| (|Seq#Take_5311| s@@6 n@@6)) (|Seq#Length_3323| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3323| (|Seq#Take_5311| s@@6 n@@6)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3323| (|Seq#Take_5311| s@@6 n@@6)))
 :pattern ( (|Seq#Take_5311| s@@6 n@@6) (|Seq#Length_3323| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3323| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.606:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3323| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_47046) (x T@Seq_3323) ) (!  (=> (|Seq#Contains_47046| s@@7 x) (and (and (<= 0 (|Seq#Skolem_47046| s@@7 x)) (< (|Seq#Skolem_47046| s@@7 x) (|Seq#Length_50705| s@@7))) (= (|Seq#Index_50904| s@@7 (|Seq#Skolem_47046| s@@7 x)) x)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_47046| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3323) (x@@0 Int) ) (!  (=> (|Seq#Contains_3323| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3323| s@@8 x@@0)) (< (|Seq#Skolem_3323| s@@8 x@@0) (|Seq#Length_3323| s@@8))) (= (|Seq#Index_3323| s@@8 (|Seq#Skolem_3323| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3323| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_47046) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_50705| s@@9 n@@7) s@@9))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_50705| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3323) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3747| s@@10 n@@8) s@@10))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3747| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.301:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40677) (ExhaleHeap T@PolymorphicMapType_40677) (Mask@@1 T@PolymorphicMapType_40698) (pm_f_42 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_26276_132013 Mask@@1 null pm_f_42) (IsPredicateField_26276_132040 pm_f_42)) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@3) null (PredicateMaskField_26276 pm_f_42)) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap) null (PredicateMaskField_26276 pm_f_42)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_26276_132040 pm_f_42) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap) null (PredicateMaskField_26276 pm_f_42)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40677) (ExhaleHeap@@0 T@PolymorphicMapType_40677) (Mask@@2 T@PolymorphicMapType_40698) (pm_f_42@@0 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_26276_132013 Mask@@2 null pm_f_42@@0) (IsWandField_26276_133793 pm_f_42@@0)) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@4) null (WandMaskField_26276 pm_f_42@@0)) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@0) null (WandMaskField_26276 pm_f_42@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsWandField_26276_133793 pm_f_42@@0) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@0) null (WandMaskField_26276 pm_f_42@@0)))
)))
(assert (forall ((x@@1 T@Seq_3323) (y T@Seq_3323) ) (! (= (|Seq#Contains_47046| (|Seq#Singleton_50010| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_47046| (|Seq#Singleton_50010| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3323| (|Seq#Singleton_3| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3323| (|Seq#Singleton_3| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_47046) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_50705| s@@11))) (= (|Seq#Index_50904| (|Seq#Take_50705| s@@11 n@@9) j@@3) (|Seq#Index_50904| s@@11 j@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_50904| (|Seq#Take_50705| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_50904| s@@11 j@@3) (|Seq#Take_50705| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3323) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3323| s@@12))) (= (|Seq#Index_3323| (|Seq#Take_5311| s@@12 n@@10) j@@4) (|Seq#Index_3323| s@@12 j@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3323| (|Seq#Take_5311| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3323| s@@12 j@@4) (|Seq#Take_5311| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_47046) (t T@Seq_47046) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_50705| s@@13))) (< n@@11 (|Seq#Length_50705| (|Seq#Append_56940| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_50705| s@@13)) (|Seq#Length_50705| s@@13)) n@@11) (= (|Seq#Take_50705| (|Seq#Append_56940| s@@13 t) n@@11) (|Seq#Append_56940| s@@13 (|Seq#Take_50705| t (|Seq#Sub| n@@11 (|Seq#Length_50705| s@@13)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_50705| (|Seq#Append_56940| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3323) (t@@0 T@Seq_3323) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3323| s@@14))) (< n@@12 (|Seq#Length_3323| (|Seq#Append_3| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3323| s@@14)) (|Seq#Length_3323| s@@14)) n@@12) (= (|Seq#Take_5311| (|Seq#Append_3| s@@14 t@@0) n@@12) (|Seq#Append_3| s@@14 (|Seq#Take_5311| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3323| s@@14)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5311| (|Seq#Append_3| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_40677) (Mask@@3 T@PolymorphicMapType_40698) (s_2@@2 T@Seq_3323) (lenTiles@@2 Int) (isStart@@2 Bool) ) (!  (=> (state Heap@@5 Mask@@3) (= (|valid'| Heap@@5 s_2@@2 lenTiles@@2 isStart@@2) (|valid#frame| EmptyFrame s_2@@2 lenTiles@@2 isStart@@2)))
 :qid |stdinbpl.675:15|
 :skolemid |63|
 :pattern ( (state Heap@@5 Mask@@3) (|valid'| Heap@@5 s_2@@2 lenTiles@@2 isStart@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40677) (ExhaleHeap@@1 T@PolymorphicMapType_40677) (Mask@@4 T@PolymorphicMapType_40698) (o_76 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@6) o_76 $allocated) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@1) o_76 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@1) o_76 $allocated))
)))
(assert (forall ((p T@Field_26276_131949) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_40737_40737 p v_1 p w))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_40737_40737 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_47046) (s1 T@Seq_47046) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_64191|)) (not (= s1 |Seq#Empty_64191|))) (<= (|Seq#Length_50705| s0) n@@13)) (< n@@13 (|Seq#Length_50705| (|Seq#Append_56940| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_50705| s0)) (|Seq#Length_50705| s0)) n@@13) (= (|Seq#Index_50904| (|Seq#Append_56940| s0 s1) n@@13) (|Seq#Index_50904| s1 (|Seq#Sub| n@@13 (|Seq#Length_50705| s0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_50904| (|Seq#Append_56940| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3323) (s1@@0 T@Seq_3323) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_4792|)) (not (= s1@@0 |Seq#Empty_4792|))) (<= (|Seq#Length_3323| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3323| (|Seq#Append_3| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3323| s0@@0)) (|Seq#Length_3323| s0@@0)) n@@14) (= (|Seq#Index_3323| (|Seq#Append_3| s0@@0 s1@@0) n@@14) (|Seq#Index_3323| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3323| s0@@0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3323| (|Seq#Append_3| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_26276_47072 val)))
(assert  (not (IsWandField_26276_47100 val)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40677) (ExhaleHeap@@2 T@PolymorphicMapType_40677) (Mask@@5 T@PolymorphicMapType_40698) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((_a_1 T@ArrayDomainType) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (len_1 _a_1))) (and (= (slotToArray (slot _a_1 i@@3)) _a_1) (= (slotToIndex (slot _a_1 i@@3)) i@@3)))
 :qid |stdinbpl.632:15|
 :skolemid |58|
 :pattern ( (len_1 _a_1) (slot _a_1 i@@3))
 :pattern ( (len_1 _a_1) (slotToArray (slot _a_1 i@@3)))
 :pattern ( (len_1 _a_1) (slotToIndex (slot _a_1 i@@3)))
 :pattern ( (slotToArray (slot _a_1 i@@3)))
 :pattern ( (slotToIndex (slot _a_1 i@@3)))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_40698) (o_2@@4 T@Ref) (f_4@@4 T@Field_26276_132082) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_26276_137344 f_4@@4))) (not (IsWandField_26276_137360 f_4@@4))) (<= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_40698) (o_2@@5 T@Ref) (f_4@@5 T@Field_26276_131949) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_26276_132040 f_4@@5))) (not (IsWandField_26276_133793 f_4@@5))) (<= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_40698) (o_2@@6 T@Ref) (f_4@@6 T@Field_40750_40751) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_26276_40751 f_4@@6))) (not (IsWandField_26276_40751 f_4@@6))) (<= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_40698) (o_2@@7 T@Ref) (f_4@@7 T@Field_40737_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_26276_53 f_4@@7))) (not (IsWandField_26276_53 f_4@@7))) (<= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_40698) (o_2@@8 T@Ref) (f_4@@8 T@Field_47042_47048) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_26276_47072 f_4@@8))) (not (IsWandField_26276_47100 f_4@@8))) (<= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_40698) (o_2@@9 T@Ref) (f_4@@9 T@Field_26276_132082) ) (! (= (HasDirectPerm_26276_137798 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26276_137798 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_40698) (o_2@@10 T@Ref) (f_4@@10 T@Field_26276_131949) ) (! (= (HasDirectPerm_26276_132013 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26276_132013 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_40698) (o_2@@11 T@Ref) (f_4@@11 T@Field_40750_40751) ) (! (= (HasDirectPerm_26276_40751 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26276_40751 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_40698) (o_2@@12 T@Ref) (f_4@@12 T@Field_40737_53) ) (! (= (HasDirectPerm_26276_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26276_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_40698) (o_2@@13 T@Ref) (f_4@@13 T@Field_47042_47048) ) (! (= (HasDirectPerm_26276_50605 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26276_50605 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_40677) (ExhaleHeap@@3 T@PolymorphicMapType_40677) (Mask@@16 T@PolymorphicMapType_40698) (pm_f_42@@1 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_26276_132013 Mask@@16 null pm_f_42@@1) (IsPredicateField_26276_132040 pm_f_42@@1)) (and (and (and (and (forall ((o2_42 T@Ref) (f_53 T@Field_40737_53) ) (!  (=> (select (|PolymorphicMapType_41226_40737_53#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_42@@1))) o2_42 f_53) (= (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@8) o2_42 f_53) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42 f_53))
)) (forall ((o2_42@@0 T@Ref) (f_53@@0 T@Field_40750_40751) ) (!  (=> (select (|PolymorphicMapType_41226_40737_40751#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_42@@1))) o2_42@@0 f_53@@0) (= (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@8) o2_42@@0 f_53@@0) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@0 f_53@@0))
))) (forall ((o2_42@@1 T@Ref) (f_53@@1 T@Field_47042_47048) ) (!  (=> (select (|PolymorphicMapType_41226_40737_47048#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_42@@1))) o2_42@@1 f_53@@1) (= (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@8) o2_42@@1 f_53@@1) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@1 f_53@@1))
))) (forall ((o2_42@@2 T@Ref) (f_53@@2 T@Field_26276_131949) ) (!  (=> (select (|PolymorphicMapType_41226_40737_131949#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_42@@1))) o2_42@@2 f_53@@2) (= (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@8) o2_42@@2 f_53@@2) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@2 f_53@@2))
))) (forall ((o2_42@@3 T@Ref) (f_53@@3 T@Field_26276_132082) ) (!  (=> (select (|PolymorphicMapType_41226_40737_133266#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_42@@1))) o2_42@@3 f_53@@3) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) o2_42@@3 f_53@@3) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@3) o2_42@@3 f_53@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@16) (IsPredicateField_26276_132040 pm_f_42@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40677) (ExhaleHeap@@4 T@PolymorphicMapType_40677) (Mask@@17 T@PolymorphicMapType_40698) (pm_f_42@@2 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_26276_132013 Mask@@17 null pm_f_42@@2) (IsWandField_26276_133793 pm_f_42@@2)) (and (and (and (and (forall ((o2_42@@4 T@Ref) (f_53@@4 T@Field_40737_53) ) (!  (=> (select (|PolymorphicMapType_41226_40737_53#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_42@@2))) o2_42@@4 f_53@@4) (= (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@9) o2_42@@4 f_53@@4) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@4 f_53@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@4 f_53@@4))
)) (forall ((o2_42@@5 T@Ref) (f_53@@5 T@Field_40750_40751) ) (!  (=> (select (|PolymorphicMapType_41226_40737_40751#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_42@@2))) o2_42@@5 f_53@@5) (= (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@9) o2_42@@5 f_53@@5) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@5 f_53@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@5 f_53@@5))
))) (forall ((o2_42@@6 T@Ref) (f_53@@6 T@Field_47042_47048) ) (!  (=> (select (|PolymorphicMapType_41226_40737_47048#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_42@@2))) o2_42@@6 f_53@@6) (= (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@9) o2_42@@6 f_53@@6) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@6 f_53@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@6 f_53@@6))
))) (forall ((o2_42@@7 T@Ref) (f_53@@7 T@Field_26276_131949) ) (!  (=> (select (|PolymorphicMapType_41226_40737_131949#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_42@@2))) o2_42@@7 f_53@@7) (= (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@9) o2_42@@7 f_53@@7) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@7 f_53@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@7 f_53@@7))
))) (forall ((o2_42@@8 T@Ref) (f_53@@8 T@Field_26276_132082) ) (!  (=> (select (|PolymorphicMapType_41226_40737_133266#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_42@@2))) o2_42@@8 f_53@@8) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) o2_42@@8 f_53@@8) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@8 f_53@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@4) o2_42@@8 f_53@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@17) (IsWandField_26276_133793 pm_f_42@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.231:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3323| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.604:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3323| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_40677) (ExhaleHeap@@5 T@PolymorphicMapType_40677) (Mask@@18 T@PolymorphicMapType_40698) (o_76@@0 T@Ref) (f_53@@9 T@Field_26276_132082) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_26276_137798 Mask@@18 o_76@@0 f_53@@9) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@10) o_76@@0 f_53@@9) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@5) o_76@@0 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@5) o_76@@0 f_53@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40677) (ExhaleHeap@@6 T@PolymorphicMapType_40677) (Mask@@19 T@PolymorphicMapType_40698) (o_76@@1 T@Ref) (f_53@@10 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_26276_132013 Mask@@19 o_76@@1 f_53@@10) (= (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@11) o_76@@1 f_53@@10) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@6) o_76@@1 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@6) o_76@@1 f_53@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40677) (ExhaleHeap@@7 T@PolymorphicMapType_40677) (Mask@@20 T@PolymorphicMapType_40698) (o_76@@2 T@Ref) (f_53@@11 T@Field_40750_40751) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_26276_40751 Mask@@20 o_76@@2 f_53@@11) (= (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@12) o_76@@2 f_53@@11) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@7) o_76@@2 f_53@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@7) o_76@@2 f_53@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40677) (ExhaleHeap@@8 T@PolymorphicMapType_40677) (Mask@@21 T@PolymorphicMapType_40698) (o_76@@3 T@Ref) (f_53@@12 T@Field_40737_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_26276_53 Mask@@21 o_76@@3 f_53@@12) (= (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@13) o_76@@3 f_53@@12) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@8) o_76@@3 f_53@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@8) o_76@@3 f_53@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40677) (ExhaleHeap@@9 T@PolymorphicMapType_40677) (Mask@@22 T@PolymorphicMapType_40698) (o_76@@4 T@Ref) (f_53@@13 T@Field_47042_47048) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_26276_50605 Mask@@22 o_76@@4 f_53@@13) (= (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@14) o_76@@4 f_53@@13) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@9) o_76@@4 f_53@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@9) o_76@@4 f_53@@13))
)))
(assert (forall ((s0@@1 T@Seq_47046) (s1@@1 T@Seq_47046) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_64191|)) (not (= s1@@1 |Seq#Empty_64191|))) (= (|Seq#Length_50705| (|Seq#Append_56940| s0@@1 s1@@1)) (+ (|Seq#Length_50705| s0@@1) (|Seq#Length_50705| s1@@1))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_50705| (|Seq#Append_56940| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3323) (s1@@2 T@Seq_3323) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_4792|)) (not (= s1@@2 |Seq#Empty_4792|))) (= (|Seq#Length_3323| (|Seq#Append_3| s0@@2 s1@@2)) (+ (|Seq#Length_3323| s0@@2) (|Seq#Length_3323| s1@@2))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3323| (|Seq#Append_3| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_26276_132082) ) (! (= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_26276_131949) ) (! (= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_40750_40751) ) (! (= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_40737_53) ) (! (= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_47042_47048) ) (! (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_47046) (t@@1 T@Seq_47046) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_50705| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_50705| s@@15)) (|Seq#Length_50705| s@@15)) n@@15) (= (|Seq#Drop_50705| (|Seq#Append_56940| s@@15 t@@1) n@@15) (|Seq#Drop_50705| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_50705| s@@15))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_50705| (|Seq#Append_56940| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3323) (t@@2 T@Seq_3323) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3323| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3323| s@@16)) (|Seq#Length_3323| s@@16)) n@@16) (= (|Seq#Drop_3747| (|Seq#Append_3| s@@16 t@@2) n@@16) (|Seq#Drop_3747| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3323| s@@16))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3747| (|Seq#Append_3| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_40698) (SummandMask1 T@PolymorphicMapType_40698) (SummandMask2 T@PolymorphicMapType_40698) (o_2@@19 T@Ref) (f_4@@19 T@Field_26276_132082) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_40698) (SummandMask1@@0 T@PolymorphicMapType_40698) (SummandMask2@@0 T@PolymorphicMapType_40698) (o_2@@20 T@Ref) (f_4@@20 T@Field_26276_131949) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_40698) (SummandMask1@@1 T@PolymorphicMapType_40698) (SummandMask2@@1 T@PolymorphicMapType_40698) (o_2@@21 T@Ref) (f_4@@21 T@Field_40750_40751) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_40698) (SummandMask1@@2 T@PolymorphicMapType_40698) (SummandMask2@@2 T@PolymorphicMapType_40698) (o_2@@22 T@Ref) (f_4@@22 T@Field_40737_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_40698) (SummandMask1@@3 T@PolymorphicMapType_40698) (SummandMask2@@3 T@PolymorphicMapType_40698) (o_2@@23 T@Ref) (f_4@@23 T@Field_47042_47048) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3323| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3323| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.603:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3323| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_47046) (b T@Seq_47046) ) (!  (=> (|Seq#Equal_47046| a b) (= a b))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_47046| a b))
)))
(assert (forall ((a@@0 T@Seq_3323) (b@@0 T@Seq_3323) ) (!  (=> (|Seq#Equal_3611| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3611| a@@0 b@@0))
)))
(assert (forall ((_a_1@@0 T@ArrayDomainType) ) (! (>= (len_1 _a_1@@0) 0)
 :qid |stdinbpl.638:15|
 :skolemid |59|
 :pattern ( (len_1 _a_1@@0))
)))
(assert (forall ((s@@17 T@Seq_47046) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_50705| s@@17))) (|Seq#ContainsTrigger_50705| s@@17 (|Seq#Index_50904| s@@17 i@@4)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_50904| s@@17 i@@4))
)))
(assert (forall ((s@@18 T@Seq_3323) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_3323| s@@18))) (|Seq#ContainsTrigger_25335| s@@18 (|Seq#Index_3323| s@@18 i@@5)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3323| s@@18 i@@5))
)))
(assert (forall ((s0@@3 T@Seq_47046) (s1@@3 T@Seq_47046) ) (!  (and (=> (= s0@@3 |Seq#Empty_64191|) (= (|Seq#Append_56940| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_64191|) (= (|Seq#Append_56940| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_56940| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3323) (s1@@4 T@Seq_3323) ) (!  (and (=> (= s0@@4 |Seq#Empty_4792|) (= (|Seq#Append_3| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_4792|) (= (|Seq#Append_3| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Seq_3323) ) (! (= (|Seq#Index_50904| (|Seq#Singleton_50010| t@@3) 0) t@@3)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_50010| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3323| (|Seq#Singleton_3| t@@4) 0) t@@4)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@4))
)))
(assert (forall ((s@@19 T@Seq_47046) ) (! (<= 0 (|Seq#Length_50705| s@@19))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_50705| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3323) ) (! (<= 0 (|Seq#Length_3323| s@@20))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3323| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_47046) (s1@@5 T@Seq_47046) ) (!  (=> (|Seq#Equal_47046| s0@@5 s1@@5) (and (= (|Seq#Length_50705| s0@@5) (|Seq#Length_50705| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_50705| s0@@5))) (= (|Seq#Index_50904| s0@@5 j@@6) (|Seq#Index_50904| s1@@5 j@@6)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_50904| s0@@5 j@@6))
 :pattern ( (|Seq#Index_50904| s1@@5 j@@6))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_47046| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3323) (s1@@6 T@Seq_3323) ) (!  (=> (|Seq#Equal_3611| s0@@6 s1@@6) (and (= (|Seq#Length_3323| s0@@6) (|Seq#Length_3323| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3323| s0@@6))) (= (|Seq#Index_3323| s0@@6 j@@7) (|Seq#Index_3323| s1@@6 j@@7)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3323| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3323| s1@@6 j@@7))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3611| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Seq_3323) ) (! (= (|Seq#Length_50705| (|Seq#Singleton_50010| t@@5)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_50010| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3323| (|Seq#Singleton_3| t@@6)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@6))
)))
(assert (forall ((s@@21 T@Seq_47046) (t@@7 T@Seq_47046) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_50705| s@@21))) (= (|Seq#Take_50705| (|Seq#Append_56940| s@@21 t@@7) n@@17) (|Seq#Take_50705| s@@21 n@@17)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_50705| (|Seq#Append_56940| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3323) (t@@8 T@Seq_3323) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3323| s@@22))) (= (|Seq#Take_5311| (|Seq#Append_3| s@@22 t@@8) n@@18) (|Seq#Take_5311| s@@22 n@@18)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5311| (|Seq#Append_3| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_47046) (i@@6 Int) (v@@2 T@Seq_3323) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_50705| s@@23))) (= (|Seq#Length_50705| (|Seq#Update_50705| s@@23 i@@6 v@@2)) (|Seq#Length_50705| s@@23)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_50705| (|Seq#Update_50705| s@@23 i@@6 v@@2)))
 :pattern ( (|Seq#Length_50705| s@@23) (|Seq#Update_50705| s@@23 i@@6 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3323) (i@@7 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3323| s@@24))) (= (|Seq#Length_3323| (|Seq#Update_3323| s@@24 i@@7 v@@3)) (|Seq#Length_3323| s@@24)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3323| (|Seq#Update_3323| s@@24 i@@7 v@@3)))
 :pattern ( (|Seq#Length_3323| s@@24) (|Seq#Update_3323| s@@24 i@@7 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40677) (o_14 T@Ref) (f_14 T@Field_26276_131949) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@15) (store (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@15) o_14 f_14 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@15) (store (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@15) o_14 f_14 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40677) (o_14@@0 T@Ref) (f_14@@0 T@Field_26276_132082) (v@@5 T@PolymorphicMapType_41226) ) (! (succHeap Heap@@16 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@16) (store (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@16) o_14@@0 f_14@@0 v@@5) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@16) (store (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@16) o_14@@0 f_14@@0 v@@5) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40677) (o_14@@1 T@Ref) (f_14@@1 T@Field_47042_47048) (v@@6 T@Seq_47046) ) (! (succHeap Heap@@17 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@17) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@17) o_14@@1 f_14@@1 v@@6) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@17) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@17) o_14@@1 f_14@@1 v@@6) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40677) (o_14@@2 T@Ref) (f_14@@2 T@Field_40750_40751) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@18) (store (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@18) o_14@@2 f_14@@2 v@@7) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@18) (store (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@18) o_14@@2 f_14@@2 v@@7) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40677) (o_14@@3 T@Ref) (f_14@@3 T@Field_40737_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_40677 (store (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@19) o_14@@3 f_14@@3 v@@8) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (store (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@19) o_14@@3 f_14@@3 v@@8) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@19)))
)))
(assert (forall ((s@@25 T@Seq_47046) (t@@9 T@Seq_47046) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_50705| s@@25))) (= (|Seq#Drop_50705| (|Seq#Append_56940| s@@25 t@@9) n@@19) (|Seq#Append_56940| (|Seq#Drop_50705| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_50705| (|Seq#Append_56940| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3323) (t@@10 T@Seq_3323) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3323| s@@26))) (= (|Seq#Drop_3747| (|Seq#Append_3| s@@26 t@@10) n@@20) (|Seq#Append_3| (|Seq#Drop_3747| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3747| (|Seq#Append_3| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_47046) (n@@21 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@8)) (< i@@8 (|Seq#Length_50705| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@21) n@@21) i@@8) (= (|Seq#Index_50904| (|Seq#Drop_50705| s@@27 n@@21) (|Seq#Sub| i@@8 n@@21)) (|Seq#Index_50904| s@@27 i@@8))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_50705| s@@27 n@@21) (|Seq#Index_50904| s@@27 i@@8))
)))
(assert (forall ((s@@28 T@Seq_3323) (n@@22 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@9)) (< i@@9 (|Seq#Length_3323| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@22) n@@22) i@@9) (= (|Seq#Index_3323| (|Seq#Drop_3747| s@@28 n@@22) (|Seq#Sub| i@@9 n@@22)) (|Seq#Index_3323| s@@28 i@@9))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3747| s@@28 n@@22) (|Seq#Index_3323| s@@28 i@@9))
)))
(assert (forall ((s0@@7 T@Seq_47046) (s1@@7 T@Seq_47046) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_64191|)) (not (= s1@@7 |Seq#Empty_64191|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_50705| s0@@7))) (= (|Seq#Index_50904| (|Seq#Append_56940| s0@@7 s1@@7) n@@23) (|Seq#Index_50904| s0@@7 n@@23)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_50904| (|Seq#Append_56940| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_50904| s0@@7 n@@23) (|Seq#Append_56940| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3323) (s1@@8 T@Seq_3323) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_4792|)) (not (= s1@@8 |Seq#Empty_4792|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3323| s0@@8))) (= (|Seq#Index_3323| (|Seq#Append_3| s0@@8 s1@@8) n@@24) (|Seq#Index_3323| s0@@8 n@@24)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3323| (|Seq#Append_3| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3323| s0@@8 n@@24) (|Seq#Append_3| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_47046) (s1@@9 T@Seq_47046) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_64191|)) (not (= s1@@9 |Seq#Empty_64191|))) (<= 0 m)) (< m (|Seq#Length_50705| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_50705| s0@@9)) (|Seq#Length_50705| s0@@9)) m) (= (|Seq#Index_50904| (|Seq#Append_56940| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_50705| s0@@9))) (|Seq#Index_50904| s1@@9 m))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_50904| s1@@9 m) (|Seq#Append_56940| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3323) (s1@@10 T@Seq_3323) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_4792|)) (not (= s1@@10 |Seq#Empty_4792|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3323| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3323| s0@@10)) (|Seq#Length_3323| s0@@10)) m@@0) (= (|Seq#Index_3323| (|Seq#Append_3| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3323| s0@@10))) (|Seq#Index_3323| s1@@10 m@@0))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3323| s1@@10 m@@0) (|Seq#Append_3| s0@@10 s1@@10))
)))
(assert (forall ((o_14@@4 T@Ref) (f_19 T@Field_40750_40751) (Heap@@20 T@PolymorphicMapType_40677) ) (!  (=> (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@20) o_14@@4 $allocated) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@20) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@20) o_14@@4 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@20) o_14@@4 f_19))
)))
(assert (forall ((s@@29 T@Seq_47046) (x@@3 T@Seq_3323) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_50705| s@@29))) (= (|Seq#Index_50904| s@@29 i@@10) x@@3)) (|Seq#Contains_47046| s@@29 x@@3))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_47046| s@@29 x@@3) (|Seq#Index_50904| s@@29 i@@10))
)))
(assert (forall ((s@@30 T@Seq_3323) (x@@4 Int) (i@@11 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length_3323| s@@30))) (= (|Seq#Index_3323| s@@30 i@@11) x@@4)) (|Seq#Contains_3323| s@@30 x@@4))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3323| s@@30 x@@4) (|Seq#Index_3323| s@@30 i@@11))
)))
(assert (forall ((s0@@11 T@Seq_47046) (s1@@11 T@Seq_47046) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_47046| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_47046| s0@@11 s1@@11))) (not (= (|Seq#Length_50705| s0@@11) (|Seq#Length_50705| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_47046| s0@@11 s1@@11))) (= (|Seq#Length_50705| s0@@11) (|Seq#Length_50705| s1@@11))) (= (|Seq#SkolemDiff_47046| s0@@11 s1@@11) (|Seq#SkolemDiff_47046| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_47046| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_47046| s0@@11 s1@@11) (|Seq#Length_50705| s0@@11))) (not (= (|Seq#Index_50904| s0@@11 (|Seq#SkolemDiff_47046| s0@@11 s1@@11)) (|Seq#Index_50904| s1@@11 (|Seq#SkolemDiff_47046| s0@@11 s1@@11))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_47046| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3323) (s1@@12 T@Seq_3323) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3611| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3611| s0@@12 s1@@12))) (not (= (|Seq#Length_3323| s0@@12) (|Seq#Length_3323| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3611| s0@@12 s1@@12))) (= (|Seq#Length_3323| s0@@12) (|Seq#Length_3323| s1@@12))) (= (|Seq#SkolemDiff_3323| s0@@12 s1@@12) (|Seq#SkolemDiff_3323| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3323| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3323| s0@@12 s1@@12) (|Seq#Length_3323| s0@@12))) (not (= (|Seq#Index_3323| s0@@12 (|Seq#SkolemDiff_3323| s0@@12 s1@@12)) (|Seq#Index_3323| s1@@12 (|Seq#SkolemDiff_3323| s0@@12 s1@@12))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3611| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_26276_131949) (v_1@@0 T@FrameType) (q T@Field_26276_131949) (w@@0 T@FrameType) (r T@Field_26276_131949) (u T@FrameType) ) (!  (=> (and (InsidePredicate_40737_40737 p@@1 v_1@@0 q w@@0) (InsidePredicate_40737_40737 q w@@0 r u)) (InsidePredicate_40737_40737 p@@1 v_1@@0 r u))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40737_40737 p@@1 v_1@@0 q w@@0) (InsidePredicate_40737_40737 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_47046) ) (!  (=> (= (|Seq#Length_50705| s@@31) 0) (= s@@31 |Seq#Empty_64191|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_50705| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3323) ) (!  (=> (= (|Seq#Length_3323| s@@32) 0) (= s@@32 |Seq#Empty_4792|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3323| s@@32))
)))
(assert (forall ((s@@33 T@Seq_47046) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_50705| s@@33 n@@25) |Seq#Empty_64191|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_50705| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3323) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_5311| s@@34 n@@26) |Seq#Empty_4792|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5311| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun m_19 () Int)
(declare-fun n@0 () Int)
(declare-fun j_4 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_40677)
(declare-fun a_2 () T@ArrayDomainType)
(declare-fun QPMask@5 () T@PolymorphicMapType_40698)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_40698)
(declare-fun j_25 () Int)
(declare-fun i_6_1@0 () Int)
(declare-fun Mask@3 () T@PolymorphicMapType_40698)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_40677)
(declare-fun n1_6 () Int)
(declare-fun j_11 () Int)
(declare-fun perm@1 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_40698)
(declare-fun Mask@1 () T@PolymorphicMapType_40698)
(declare-fun j_26_2 () Int)
(declare-fun i_6_1@1 () Int)
(declare-fun Heap@5 () T@PolymorphicMapType_40677)
(declare-fun n1_5 () Int)
(declare-fun j_24_2 () Int)
(declare-fun Mask@9 () T@PolymorphicMapType_40698)
(declare-fun Mask@8 () T@PolymorphicMapType_40698)
(declare-fun Mask@5 () T@PolymorphicMapType_40698)
(declare-fun perm@4 () Real)
(declare-fun soln@2 () T@Seq_3323)
(declare-fun soln@0 () T@Seq_3323)
(declare-fun oldSoln@0 () T@Seq_3323)
(declare-fun soln@1 () T@Seq_3323)
(declare-fun perm@2 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_40698)
(declare-fun m_5_2 () Int)
(declare-fun n@1 () Int)
(declare-fun j_30_1 () Int)
(declare-fun perm@3 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_40698)
(declare-fun Mask@7 () T@PolymorphicMapType_40698)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_40698)
(declare-fun Heap@4 () T@PolymorphicMapType_40677)
(declare-fun j_16_2 () Int)
(declare-fun n1_1 () Int)
(declare-fun j_14_1 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_40698)
(declare-fun QPMask@2 () T@PolymorphicMapType_40698)
(declare-fun perm@0 () Real)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun Heap@3 () T@PolymorphicMapType_40677)
(declare-fun m_17 () Int)
(declare-fun j_9_1 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_40698)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun j_7_1 () Int)
(declare-fun j_3 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_40677)
(declare-fun j_4_1 () Int)
(declare-fun j_7 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_40677)
(declare-fun j_1 () Int)
(declare-fun j_2 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_40677)
(declare-fun Heap@0 () T@PolymorphicMapType_40677)
(set-info :boogie-vc-id colourings1)
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
 (=> (= (ControlFlow 0 0) 206) (let ((anon142_Then_correct true))
(let ((anon53_correct true))
(let ((anon141_Then_correct  (=> (and (<= 0 m_19) (and (< m_19 n@0) (and (<= 0 j_4) (< j_4 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_19) val)))))) (and (=> (= (ControlFlow 0 171) (- 0 174)) (HasDirectPerm_26276_50605 QPMask@5 (slot a_2 m_19) val)) (=> (HasDirectPerm_26276_50605 QPMask@5 (slot a_2 m_19) val) (and (=> (= (ControlFlow 0 171) (- 0 173)) (>= j_4 0)) (=> (>= j_4 0) (and (=> (= (ControlFlow 0 171) (- 0 172)) (< j_4 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_19) val)))) (=> (< j_4 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_19) val))) (and (=> (= (ControlFlow 0 171) 170) anon142_Then_correct) (=> (= (ControlFlow 0 171) 168) anon53_correct)))))))))))
(let ((anon141_Else_correct  (=> (and (not (and (<= 0 m_19) (and (< m_19 n@0) (and (<= 0 j_4) (< j_4 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_19) val))))))) (= (ControlFlow 0 169) 168)) anon53_correct)))
(let ((anon140_Else_correct  (=> (< j_4 0) (and (=> (= (ControlFlow 0 179) 171) anon141_Then_correct) (=> (= (ControlFlow 0 179) 169) anon141_Else_correct)))))
(let ((anon140_Then_correct  (=> (<= 0 j_4) (and (=> (= (ControlFlow 0 177) (- 0 178)) (HasDirectPerm_26276_50605 QPMask@5 (slot a_2 m_19) val)) (=> (HasDirectPerm_26276_50605 QPMask@5 (slot a_2 m_19) val) (and (=> (= (ControlFlow 0 177) 171) anon141_Then_correct) (=> (= (ControlFlow 0 177) 169) anon141_Else_correct)))))))
(let ((anon139_Then_correct  (=> (< m_19 n@0) (and (=> (= (ControlFlow 0 180) 177) anon140_Then_correct) (=> (= (ControlFlow 0 180) 179) anon140_Else_correct)))))
(let ((anon139_Else_correct  (=> (<= n@0 m_19) (and (=> (= (ControlFlow 0 176) 171) anon141_Then_correct) (=> (= (ControlFlow 0 176) 169) anon141_Else_correct)))))
(let ((anon138_Then_correct  (=> (<= 0 m_19) (and (=> (= (ControlFlow 0 181) 180) anon139_Then_correct) (=> (= (ControlFlow 0 181) 176) anon139_Else_correct)))))
(let ((anon138_Else_correct  (=> (< m_19 0) (and (=> (= (ControlFlow 0 175) 171) anon141_Then_correct) (=> (= (ControlFlow 0 175) 169) anon141_Else_correct)))))
(let ((anon137_Else_correct true))
(let ((anon136_Else_correct  (and (=> (= (ControlFlow 0 182) (- 0 183)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (<= 0 i_4_1) (< i_4_1 (len_1 a_2)))) (and (<= 0 i_4_2) (< i_4_2 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_4_1) (slot a_2 i_4_2))))
 :qid |stdinbpl.1276:19|
 :skolemid |87|
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (and (<= 0 i_4_1@@0) (< i_4_1@@0 (len_1 a_2)))) (and (<= 0 i_4_2@@0) (< i_4_2@@0 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_4_1@@0) (slot a_2 i_4_2@@0))))
 :qid |stdinbpl.1276:19|
 :skolemid |87|
)) (=> (and (and (forall ((i_4_1@@1 Int) ) (!  (=> (and (and (<= 0 i_4_1@@1) (< i_4_1@@1 (len_1 a_2))) (< NoPerm FullPerm)) (and (qpRange4 (slot a_2 i_4_1@@1)) (= (invRecv4 (slot a_2 i_4_1@@1)) i_4_1@@1)))
 :qid |stdinbpl.1282:26|
 :skolemid |88|
 :pattern ( (slot a_2 i_4_1@@1))
 :pattern ( (slot a_2 i_4_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv4 o_4)) (< (invRecv4 o_4) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange4 o_4)) (= (slot a_2 (invRecv4 o_4)) o_4))
 :qid |stdinbpl.1286:26|
 :skolemid |89|
 :pattern ( (invRecv4 o_4))
))) (and (forall ((i_4_1@@2 Int) ) (!  (=> (and (<= 0 i_4_1@@2) (< i_4_1@@2 (len_1 a_2))) (not (= (slot a_2 i_4_1@@2) null)))
 :qid |stdinbpl.1292:26|
 :skolemid |90|
 :pattern ( (slot a_2 i_4_1@@2))
 :pattern ( (slot a_2 i_4_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv4 o_4@@0)) (< (invRecv4 o_4@@0) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange4 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (slot a_2 (invRecv4 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@5) o_4@@0 val) (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv4 o_4@@0)) (< (invRecv4 o_4@@0) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange4 o_4@@0))) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@5) o_4@@0 val) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@0 val))))
 :qid |stdinbpl.1298:26|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@5) o_4@@0 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_40737_53) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@1) o_4@@1 f_5) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@5) o_4@@1 f_5)))
 :qid |stdinbpl.1302:33|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@5) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_40750_40751) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@5) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1302:33|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@5) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_47042_47048) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@5) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1302:33|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@5) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_26276_131949) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@5) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1302:33|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@5) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_26276_132082) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@5) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1302:33|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@5) o_4@@5 f_5@@3))
))) (state ExhaleHeap@0 QPMask@5)) (and (state ExhaleHeap@0 QPMask@5) (state ExhaleHeap@0 QPMask@5))) (and (and (=> (= (ControlFlow 0 182) 167) anon137_Else_correct) (=> (= (ControlFlow 0 182) 181) anon138_Then_correct)) (=> (= (ControlFlow 0 182) 175) anon138_Else_correct))))))))
(let ((anon136_Then_correct true))
(let ((anon135_Then_correct  (=> (<= 4 n@0) (=> (and (and (<= n@0 51) (state ExhaleHeap@0 QPMask@1)) (and (= (len_1 a_2) 51) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 184) 166) anon136_Then_correct) (=> (= (ControlFlow 0 184) 182) anon136_Else_correct))))))
(let ((anon158_Then_correct true))
(let ((anon81_correct true))
(let ((anon157_Then_correct  (=> (and (<= 0 j_25) (< j_25 i_6_1@0)) (and (=> (= (ControlFlow 0 139) (- 0 142)) (HasDirectPerm_26276_50605 Mask@3 (slot a_2 n@0) val)) (=> (HasDirectPerm_26276_50605 Mask@3 (slot a_2 n@0) val) (and (=> (= (ControlFlow 0 139) (- 0 141)) (>= j_25 0)) (=> (>= j_25 0) (and (=> (= (ControlFlow 0 139) (- 0 140)) (< j_25 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val)))) (=> (< j_25 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val))) (and (=> (= (ControlFlow 0 139) 138) anon158_Then_correct) (=> (= (ControlFlow 0 139) 136) anon81_correct)))))))))))
(let ((anon157_Else_correct  (=> (and (not (and (<= 0 j_25) (< j_25 i_6_1@0))) (= (ControlFlow 0 137) 136)) anon81_correct)))
(let ((anon156_Else_correct true))
(let ((anon151_Else_correct  (=> (forall ((j_19_1 Int) (n1_3 Int) ) (!  (=> (and (= n1_3 (- n@0 1)) (and (<= 0 j_19_1) (< j_19_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))))) (valid_1 ExhaleHeap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_3) val) j_19_1) (- n@0 1) true))
 :qid |stdinbpl.1522:32|
 :skolemid |103|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_3) val) j_19_1))
)) (=> (and (state ExhaleHeap@1 Mask@3) (state ExhaleHeap@1 Mask@3)) (and (and (=> (= (ControlFlow 0 143) 135) anon156_Else_correct) (=> (= (ControlFlow 0 143) 139) anon157_Then_correct)) (=> (= (ControlFlow 0 143) 137) anon157_Else_correct))))))
(let ((anon155_Then_correct true))
(let ((anon76_correct true))
(let ((anon154_Then_correct  (=> (and (= n1_6 (- n@0 1)) (and (<= 0 j_11) (< j_11 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))))) (and (=> (= (ControlFlow 0 126) (- 0 129)) (HasDirectPerm_26276_50605 Mask@3 (slot a_2 n1_6) val)) (=> (HasDirectPerm_26276_50605 Mask@3 (slot a_2 n1_6) val) (and (=> (= (ControlFlow 0 126) (- 0 128)) (>= j_11 0)) (=> (>= j_11 0) (and (=> (= (ControlFlow 0 126) (- 0 127)) (< j_11 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_6) val)))) (=> (< j_11 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_6) val))) (and (=> (= (ControlFlow 0 126) 125) anon155_Then_correct) (=> (= (ControlFlow 0 126) 123) anon76_correct)))))))))))
(let ((anon154_Else_correct  (=> (and (not (and (= n1_6 (- n@0 1)) (and (<= 0 j_11) (< j_11 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val)))))) (= (ControlFlow 0 124) 123)) anon76_correct)))
(let ((anon153_Else_correct  (=> (< j_11 0) (and (=> (= (ControlFlow 0 133) 126) anon154_Then_correct) (=> (= (ControlFlow 0 133) 124) anon154_Else_correct)))))
(let ((anon153_Then_correct  (=> (<= 0 j_11) (and (=> (= (ControlFlow 0 131) (- 0 132)) (HasDirectPerm_26276_50605 Mask@3 (slot a_2 (- n@0 1)) val)) (=> (HasDirectPerm_26276_50605 Mask@3 (slot a_2 (- n@0 1)) val) (and (=> (= (ControlFlow 0 131) 126) anon154_Then_correct) (=> (= (ControlFlow 0 131) 124) anon154_Else_correct)))))))
(let ((anon152_Then_correct  (=> (= n1_6 (- n@0 1)) (and (=> (= (ControlFlow 0 134) 131) anon153_Then_correct) (=> (= (ControlFlow 0 134) 133) anon153_Else_correct)))))
(let ((anon152_Else_correct  (=> (not (= n1_6 (- n@0 1))) (and (=> (= (ControlFlow 0 130) 126) anon154_Then_correct) (=> (= (ControlFlow 0 130) 124) anon154_Else_correct)))))
(let ((anon150_Then_correct  (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 144) (- 0 147)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (slot a_2 (- n@0 1)) null))) (=> (and (= Mask@2 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@1) (slot a_2 (- n@0 1)) val (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@1) (slot a_2 (- n@0 1)) val) perm@1)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@1) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@1) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@1) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@1))) (state ExhaleHeap@1 Mask@2)) (=> (and (and (state ExhaleHeap@1 Mask@2) (= (len_1 a_2) 51)) (and (state ExhaleHeap@1 Mask@2) (<= 0 i_6_1@0))) (and (=> (= (ControlFlow 0 144) (- 0 146)) (HasDirectPerm_26276_50605 Mask@2 (slot a_2 (- n@0 1)) val)) (=> (HasDirectPerm_26276_50605 Mask@2 (slot a_2 (- n@0 1)) val) (=> (and (<= i_6_1@0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))) (state ExhaleHeap@1 Mask@2)) (=> (and (and (not (= (slot a_2 n@0) null)) (= Mask@3 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@2) (slot a_2 n@0) val (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@2) (slot a_2 n@0) val) FullPerm)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@2) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@2) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@2) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@2)))) (and (state ExhaleHeap@1 Mask@3) (state ExhaleHeap@1 Mask@3))) (and (=> (= (ControlFlow 0 144) (- 0 145)) (HasDirectPerm_26276_50605 Mask@3 (slot a_2 n@0) val)) (=> (HasDirectPerm_26276_50605 Mask@3 (slot a_2 n@0) val) (=> (= (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val)) i_6_1@0) (=> (and (state ExhaleHeap@1 Mask@3) (state ExhaleHeap@1 Mask@3)) (and (and (=> (= (ControlFlow 0 144) 143) anon151_Else_correct) (=> (= (ControlFlow 0 144) 134) anon152_Then_correct)) (=> (= (ControlFlow 0 144) 130) anon152_Else_correct))))))))))))))))))
(let ((anon161_Then_correct true))
(let ((anon104_correct true))
(let ((anon169_Else_correct  (=> (and (not (and (<= 0 j_26_2) (< j_26_2 i_6_1@1))) (= (ControlFlow 0 87) 84)) anon104_correct)))
(let ((anon169_Then_correct  (=> (and (<= 0 j_26_2) (< j_26_2 i_6_1@1)) (and (=> (= (ControlFlow 0 85) (- 0 86)) (valid_1 Heap@5 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n@0) val) j_26_2) n@0 true)) (=> (valid_1 Heap@5 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n@0) val) j_26_2) n@0 true) (=> (= (ControlFlow 0 85) 84) anon104_correct))))))
(let ((anon168_Else_correct true))
(let ((anon166_Else_correct  (=> (forall ((j_25_1_1 Int) (n1_6_1 Int) ) (!  (=> (and (= n1_6_1 (- n@0 1)) (and (<= 0 j_25_1_1) (< j_25_1_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 (- n@0 1)) val))))) (valid_1 Heap@5 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n1_6_1) val) j_25_1_1) (- n@0 1) true))
 :qid |stdinbpl.1721:32|
 :skolemid |107|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n1_6_1) val) j_25_1_1))
)) (and (and (=> (= (ControlFlow 0 88) 83) anon168_Else_correct) (=> (= (ControlFlow 0 88) 85) anon169_Then_correct)) (=> (= (ControlFlow 0 88) 87) anon169_Else_correct)))))
(let ((anon100_correct true))
(let ((anon167_Else_correct  (=> (and (not (and (= n1_5 (- n@0 1)) (and (<= 0 j_24_2) (< j_24_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 (- n@0 1)) val)))))) (= (ControlFlow 0 82) 79)) anon100_correct)))
(let ((anon167_Then_correct  (=> (and (= n1_5 (- n@0 1)) (and (<= 0 j_24_2) (< j_24_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 (- n@0 1)) val))))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (valid_1 Heap@5 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n1_5) val) j_24_2) (- n@0 1) true)) (=> (valid_1 Heap@5 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n1_5) val) j_24_2) (- n@0 1) true) (=> (= (ControlFlow 0 80) 79) anon100_correct))))))
(let ((anon97_correct  (=> (= Mask@9 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@8) (slot a_2 n@0) val (- (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@8) (slot a_2 n@0) val) FullPerm)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@8) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@8) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@8) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@8))) (and (=> (= (ControlFlow 0 89) (- 0 90)) (= (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n@0) val)) i_6_1@1)) (=> (= (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 n@0) val)) i_6_1@1) (and (and (=> (= (ControlFlow 0 89) 88) anon166_Else_correct) (=> (= (ControlFlow 0 89) 80) anon167_Then_correct)) (=> (= (ControlFlow 0 89) 82) anon167_Else_correct)))))))
(let ((anon165_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 93) 89)) anon97_correct)))
(let ((anon165_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 91) (- 0 92)) (<= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@8) (slot a_2 n@0) val))) (=> (<= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@8) (slot a_2 n@0) val)) (=> (= (ControlFlow 0 91) 89) anon97_correct))))))
(let ((anon95_correct  (=> (= Mask@8 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@5) (slot a_2 (- n@0 1)) val (- (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@5) (slot a_2 (- n@0 1)) val) perm@4)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@5) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@5) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@5) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@5))) (and (=> (= (ControlFlow 0 94) (- 0 97)) (= (len_1 a_2) 51)) (=> (= (len_1 a_2) 51) (and (=> (= (ControlFlow 0 94) (- 0 96)) (<= 0 i_6_1@1)) (=> (<= 0 i_6_1@1) (and (=> (= (ControlFlow 0 94) (- 0 95)) (<= i_6_1@1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 (- n@0 1)) val)))) (=> (<= i_6_1@1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@5) (slot a_2 (- n@0 1)) val))) (and (=> (= (ControlFlow 0 94) 91) anon165_Then_correct) (=> (= (ControlFlow 0 94) 93) anon165_Else_correct)))))))))))
(let ((anon164_Else_correct  (=> (and (= perm@4 NoPerm) (= (ControlFlow 0 100) 94)) anon95_correct)))
(let ((anon164_Then_correct  (=> (not (= perm@4 NoPerm)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (<= perm@4 (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@5) (slot a_2 (- n@0 1)) val))) (=> (<= perm@4 (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@5) (slot a_2 (- n@0 1)) val)) (=> (= (ControlFlow 0 98) 94) anon95_correct))))))
(let ((anon93_correct  (=> (state ExhaleHeap@1 Mask@5) (and (=> (= (ControlFlow 0 101) (- 0 104)) (HasDirectPerm_26276_50605 Mask@5 (slot a_2 n@0) val)) (=> (HasDirectPerm_26276_50605 Mask@5 (slot a_2 n@0) val) (and (=> (= (ControlFlow 0 101) (- 0 103)) (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@5) (slot a_2 n@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@5) (slot a_2 n@0) val)) (=> (= Heap@5 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@1) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@1) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val (|Seq#Append_56940| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val) (|Seq#Singleton_50010| soln@2))) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@1) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@1))) (=> (and (and (state Heap@5 Mask@5) (= i_6_1@1 (+ i_6_1@0 1))) (and (state Heap@5 Mask@5) (= perm@4 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 101) (- 0 102)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (and (=> (= (ControlFlow 0 101) 98) anon164_Then_correct) (=> (= (ControlFlow 0 101) 100) anon164_Else_correct)))))))))))))
(let ((anon161_Else_correct  (and (=> (= (ControlFlow 0 112) (- 0 113)) (valid_1 ExhaleHeap@1 soln@0 n@0 true)) (=> (valid_1 ExhaleHeap@1 soln@0 n@0 true) (=> (state ExhaleHeap@1 Mask@5) (=> (and (= soln@2 soln@0) (= (ControlFlow 0 112) 101)) anon93_correct))))))
(let ((anon160_Then_correct  (=> (= (|Seq#Index_3323| oldSoln@0 0) 0) (and (=> (= (ControlFlow 0 114) (- 0 115)) (< 1 (|Seq#Length_3323| oldSoln@0))) (=> (< 1 (|Seq#Length_3323| oldSoln@0)) (=> (and (= soln@0 (|Seq#Append_3| (|Seq#Take_5311| oldSoln@0 1) (|Seq#Append_3| (|Seq#Singleton_3| (+ (|Seq#Index_3323| oldSoln@0 1) 1)) (|Seq#Drop_3747| oldSoln@0 2)))) (state ExhaleHeap@1 Mask@5)) (and (=> (= (ControlFlow 0 114) 111) anon161_Then_correct) (=> (= (ControlFlow 0 114) 112) anon161_Else_correct))))))))
(let ((anon163_Else_correct  (and (=> (= (ControlFlow 0 105) (- 0 106)) (valid_1 ExhaleHeap@1 soln@1 n@0 true)) (=> (valid_1 ExhaleHeap@1 soln@1 n@0 true) (=> (state ExhaleHeap@1 Mask@5) (=> (and (= soln@2 soln@1) (= (ControlFlow 0 105) 101)) anon93_correct))))))
(let ((anon163_Then_correct true))
(let ((anon162_Else_correct  (and (=> (= (ControlFlow 0 107) (- 0 108)) (valid_1 ExhaleHeap@1 oldSoln@0 (- n@0 1) false)) (=> (valid_1 ExhaleHeap@1 oldSoln@0 (- n@0 1) false) (=> (state ExhaleHeap@1 Mask@5) (and (=> (= (ControlFlow 0 107) 78) anon163_Then_correct) (=> (= (ControlFlow 0 107) 105) anon163_Else_correct)))))))
(let ((anon162_Then_correct true))
(let ((anon160_Else_correct  (=> (not (= (|Seq#Index_3323| oldSoln@0 0) 0)) (=> (and (= soln@1 (|Seq#Append_3| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1)) oldSoln@0)) (state ExhaleHeap@1 Mask@5)) (and (=> (= (ControlFlow 0 109) (- 0 110)) (|Seq#Equal_3611| (|Seq#Drop_3747| soln@1 2) oldSoln@0)) (=> (|Seq#Equal_3611| (|Seq#Drop_3747| soln@1 2) oldSoln@0) (=> (state ExhaleHeap@1 Mask@5) (and (=> (= (ControlFlow 0 109) 77) anon162_Then_correct) (=> (= (ControlFlow 0 109) 107) anon162_Else_correct)))))))))
(let ((anon159_Then_correct  (=> (and (state ExhaleHeap@1 ZeroMask) (= perm@2 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 116) (- 0 122)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= (slot a_2 (- n@0 1)) null))) (=> (and (= Mask@4 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) (slot a_2 (- n@0 1)) val (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) (slot a_2 (- n@0 1)) val) perm@2)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ZeroMask) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ZeroMask) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ZeroMask) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ZeroMask))) (state ExhaleHeap@1 Mask@4)) (=> (and (and (= (len_1 a_2) 51) (<= 0 i_6_1@0)) (and (<= i_6_1@0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))) (not (= (slot a_2 n@0) null)))) (=> (and (and (and (= Mask@5 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@4) (slot a_2 n@0) val (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@4) (slot a_2 n@0) val) FullPerm)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@4) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@4) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@4) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@4))) (state ExhaleHeap@1 Mask@5)) (and (= (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val)) i_6_1@0) (state ExhaleHeap@1 Mask@5))) (and (and (forall ((j_22_2 Int) (n1_4 Int) ) (!  (=> (and (= n1_4 (- n@0 1)) (and (<= 0 j_22_2) (< j_22_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))))) (valid_1 ExhaleHeap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_4) val) j_22_2) (- n@0 1) true))
 :qid |stdinbpl.1576:32|
 :skolemid |105|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_4) val) j_22_2))
)) (state ExhaleHeap@1 Mask@5)) (and (forall ((j_23_1 Int) ) (!  (=> (and (<= 0 j_23_1) (< j_23_1 i_6_1@0)) (valid_1 ExhaleHeap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val) j_23_1) n@0 true))
 :qid |stdinbpl.1581:32|
 :skolemid |106|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val) j_23_1))
)) (state ExhaleHeap@1 Mask@5)))) (and (=> (= (ControlFlow 0 116) (- 0 121)) (HasDirectPerm_26276_50605 Mask@5 (slot a_2 (- n@0 1)) val)) (=> (HasDirectPerm_26276_50605 Mask@5 (slot a_2 (- n@0 1)) val) (=> (and (< i_6_1@0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))) (state ExhaleHeap@1 Mask@5)) (and (=> (= (ControlFlow 0 116) (- 0 120)) (HasDirectPerm_26276_50605 Mask@5 (slot a_2 (- n@0 1)) val)) (=> (HasDirectPerm_26276_50605 Mask@5 (slot a_2 (- n@0 1)) val) (and (=> (= (ControlFlow 0 116) (- 0 119)) (>= i_6_1@0 0)) (=> (>= i_6_1@0 0) (and (=> (= (ControlFlow 0 116) (- 0 118)) (< i_6_1@0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val)))) (=> (< i_6_1@0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))) (=> (and (= oldSoln@0 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val) i_6_1@0)) (state ExhaleHeap@1 Mask@5)) (and (=> (= (ControlFlow 0 116) (- 0 117)) (< 0 (|Seq#Length_3323| oldSoln@0))) (=> (< 0 (|Seq#Length_3323| oldSoln@0)) (and (=> (= (ControlFlow 0 116) 114) anon160_Then_correct) (=> (= (ControlFlow 0 116) 109) anon160_Else_correct)))))))))))))))))))))))
(let ((anon109_correct true))
(let ((anon171_Else_correct  (=> (and (not (and (<= 0 m_5_2) (and (< m_5_2 n@1) (and (<= 0 j_30_1) (< j_30_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 m_5_2) val))))))) (= (ControlFlow 0 69) 66)) anon109_correct)))
(let ((anon171_Then_correct  (=> (and (<= 0 m_5_2) (and (< m_5_2 n@1) (and (<= 0 j_30_1) (< j_30_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 m_5_2) val)))))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (valid_1 ExhaleHeap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 m_5_2) val) j_30_1) m_5_2 true)) (=> (valid_1 ExhaleHeap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 m_5_2) val) j_30_1) m_5_2 true) (=> (= (ControlFlow 0 67) 66) anon109_correct))))))
(let ((anon170_Else_correct true))
(let ((anon159_Else_correct  (=> (not (< i_6_1@0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val)))) (=> (and (state ExhaleHeap@1 Mask@1) (= perm@3 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 70) (- 0 76)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (=> (> perm@3 NoPerm) (not (= (slot a_2 (- n@0 1)) null))) (= Mask@6 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@1) (slot a_2 (- n@0 1)) val (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@1) (slot a_2 (- n@0 1)) val) perm@3)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@1) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@1) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@1) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@1)))) (=> (and (and (and (and (state ExhaleHeap@1 Mask@6) (= (len_1 a_2) 51)) (and (<= 0 i_6_1@0) (<= i_6_1@0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))))) (and (and (not (= (slot a_2 n@0) null)) (= Mask@7 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@6) (slot a_2 n@0) val (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@6) (slot a_2 n@0) val) FullPerm)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@6) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@6) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@6) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@6)))) (and (state ExhaleHeap@1 Mask@7) (= (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val)) i_6_1@0)))) (and (and (and (state ExhaleHeap@1 Mask@7) (forall ((j_28_2 Int) (n1_7 Int) ) (!  (=> (and (= n1_7 (- n@0 1)) (and (<= 0 j_28_2) (< j_28_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 (- n@0 1)) val))))) (valid_1 ExhaleHeap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_7) val) j_28_2) (- n@0 1) true))
 :qid |stdinbpl.1762:30|
 :skolemid |109|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n1_7) val) j_28_2))
))) (and (state ExhaleHeap@1 Mask@7) (forall ((j_29_1 Int) ) (!  (=> (and (<= 0 j_29_1) (< j_29_1 i_6_1@0)) (valid_1 ExhaleHeap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val) j_29_1) n@0 true))
 :qid |stdinbpl.1767:30|
 :skolemid |110|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@1) (slot a_2 n@0) val) j_29_1))
)))) (and (and (state ExhaleHeap@1 Mask@7) (state ExhaleHeap@1 Mask@7)) (and (= n@1 (+ n@0 1)) (state ExhaleHeap@1 Mask@7))))) (and (=> (= (ControlFlow 0 70) (- 0 75)) (<= 4 n@1)) (=> (<= 4 n@1) (and (=> (= (ControlFlow 0 70) (- 0 74)) (<= n@1 51)) (=> (<= n@1 51) (and (=> (= (ControlFlow 0 70) (- 0 73)) (= (len_1 a_2) 51)) (=> (= (len_1 a_2) 51) (and (=> (= (ControlFlow 0 70) (- 0 72)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 (len_1 a_2)))) (and (<= 0 i_7_2) (< i_7_2 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_7_1) (slot a_2 i_7_2))))
 :qid |stdinbpl.1793:21|
 :skolemid |111|
 :pattern ( (neverTriggered6 i_7_1) (neverTriggered6 i_7_2))
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 (len_1 a_2)))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_7_1@@0) (slot a_2 i_7_2@@0))))
 :qid |stdinbpl.1793:21|
 :skolemid |111|
 :pattern ( (neverTriggered6 i_7_1@@0) (neverTriggered6 i_7_2@@0))
)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (forall ((i_7_1@@1 Int) ) (!  (=> (and (<= 0 i_7_1@@1) (< i_7_1@@1 (len_1 a_2))) (>= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@7) (slot a_2 i_7_1@@1) val) FullPerm))
 :qid |stdinbpl.1800:21|
 :skolemid |112|
 :pattern ( (slot a_2 i_7_1@@1))
 :pattern ( (slot a_2 i_7_1@@1))
))) (=> (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 (len_1 a_2))) (>= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@7) (slot a_2 i_7_1@@2) val) FullPerm))
 :qid |stdinbpl.1800:21|
 :skolemid |112|
 :pattern ( (slot a_2 i_7_1@@2))
 :pattern ( (slot a_2 i_7_1@@2))
)) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (and (and (<= 0 i_7_1@@3) (< i_7_1@@3 (len_1 a_2))) (< NoPerm FullPerm)) (and (qpRange6 (slot a_2 i_7_1@@3)) (= (invRecv6 (slot a_2 i_7_1@@3)) i_7_1@@3)))
 :qid |stdinbpl.1806:26|
 :skolemid |113|
 :pattern ( (slot a_2 i_7_1@@3))
 :pattern ( (slot a_2 i_7_1@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv6 o_4@@6)) (< (invRecv6 o_4@@6) (len_1 a_2))) (and (< NoPerm FullPerm) (qpRange6 o_4@@6))) (= (slot a_2 (invRecv6 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1810:26|
 :skolemid |114|
 :pattern ( (invRecv6 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv6 o_4@@7)) (< (invRecv6 o_4@@7) (len_1 a_2))) (and (< NoPerm FullPerm) (qpRange6 o_4@@7))) (and (= (slot a_2 (invRecv6 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@4) o_4@@7 val) (- (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@7) o_4@@7 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv6 o_4@@7)) (< (invRecv6 o_4@@7) (len_1 a_2))) (and (< NoPerm FullPerm) (qpRange6 o_4@@7)))) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@4) o_4@@7 val) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@7) o_4@@7 val))))
 :qid |stdinbpl.1816:26|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@4) o_4@@7 val))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_40737_53) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@7) o_4@@8 f_5@@4) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@4) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1822:33|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@4) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_40750_40751) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@7) o_4@@9 f_5@@5) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@4) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1822:33|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@4) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_47042_47048) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@7) o_4@@10 f_5@@6) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@4) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1822:33|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@4) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_26276_131949) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@7) o_4@@11 f_5@@7) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@4) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1822:33|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@4) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_26276_132082) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@7) o_4@@12 f_5@@8) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@4) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1822:33|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@4) o_4@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 70) 65) anon170_Else_correct) (=> (= (ControlFlow 0 70) 67) anon171_Then_correct)) (=> (= (ControlFlow 0 70) 69) anon171_Else_correct)))))))))))))))))))))))
(let ((anon148_Else_correct  (=> (and (forall ((j_17_1_1 Int) ) (!  (=> (and (<= 0 j_17_1_1) (< j_17_1_1 0)) (valid_1 Heap@4 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n@0) val) j_17_1_1) n@0 true))
 :qid |stdinbpl.1457:32|
 :skolemid |102|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n@0) val) j_17_1_1))
)) (IdenticalOnKnownLocations Heap@4 ExhaleHeap@1 Mask@1)) (and (and (=> (= (ControlFlow 0 148) 144) anon150_Then_correct) (=> (= (ControlFlow 0 148) 116) anon159_Then_correct)) (=> (= (ControlFlow 0 148) 70) anon159_Else_correct)))))
(let ((anon67_correct true))
(let ((anon149_Else_correct  (=> (and (not (and (<= 0 j_16_2) (< j_16_2 0))) (= (ControlFlow 0 64) 61)) anon67_correct)))
(let ((anon149_Then_correct  (=> (and (<= 0 j_16_2) (< j_16_2 0)) (and (=> (= (ControlFlow 0 62) (- 0 63)) (valid_1 Heap@4 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n@0) val) j_16_2) n@0 true)) (=> (valid_1 Heap@4 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n@0) val) j_16_2) n@0 true) (=> (= (ControlFlow 0 62) 61) anon67_correct))))))
(let ((anon146_Else_correct  (=> (forall ((j_15_1_1 Int) (n1_1_1 Int) ) (!  (=> (and (= n1_1_1 (- n@0 1)) (and (<= 0 j_15_1_1) (< j_15_1_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 (- n@0 1)) val))))) (valid_1 Heap@4 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n1_1_1) val) j_15_1_1) (- n@0 1) true))
 :qid |stdinbpl.1446:32|
 :skolemid |101|
 :pattern ( (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n1_1_1) val) j_15_1_1))
)) (and (and (=> (= (ControlFlow 0 149) 148) anon148_Else_correct) (=> (= (ControlFlow 0 149) 62) anon149_Then_correct)) (=> (= (ControlFlow 0 149) 64) anon149_Else_correct)))))
(let ((anon63_correct true))
(let ((anon147_Else_correct  (=> (and (not (and (= n1_1 (- n@0 1)) (and (<= 0 j_14_1) (< j_14_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 (- n@0 1)) val)))))) (= (ControlFlow 0 60) 57)) anon63_correct)))
(let ((anon147_Then_correct  (=> (and (= n1_1 (- n@0 1)) (and (<= 0 j_14_1) (< j_14_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 (- n@0 1)) val))))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (valid_1 Heap@4 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n1_1) val) j_14_1) (- n@0 1) true)) (=> (valid_1 Heap@4 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n1_1) val) j_14_1) (- n@0 1) true) (=> (= (ControlFlow 0 58) 57) anon63_correct))))))
(let ((anon60_correct  (=> (= Mask@1 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@0) (slot a_2 n@0) val (- (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@0) (slot a_2 n@0) val) FullPerm)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| Mask@0) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| Mask@0) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| Mask@0) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| Mask@0))) (and (=> (= (ControlFlow 0 150) (- 0 151)) (= (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n@0) val)) 0)) (=> (= (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 n@0) val)) 0) (and (and (=> (= (ControlFlow 0 150) 149) anon146_Else_correct) (=> (= (ControlFlow 0 150) 58) anon147_Then_correct)) (=> (= (ControlFlow 0 150) 60) anon147_Else_correct)))))))
(let ((anon145_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 154) 150)) anon60_correct)))
(let ((anon145_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 152) (- 0 153)) (<= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@0) (slot a_2 n@0) val))) (=> (<= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| Mask@0) (slot a_2 n@0) val)) (=> (= (ControlFlow 0 152) 150) anon60_correct))))))
(let ((anon58_correct  (=> (= Mask@0 (PolymorphicMapType_40698 (store (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) (slot a_2 (- n@0 1)) val (- (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) (slot a_2 (- n@0 1)) val) perm@0)) (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@2) (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@2) (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@2) (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@2))) (and (=> (= (ControlFlow 0 155) (- 0 158)) (= (len_1 a_2) 51)) (=> (= (len_1 a_2) 51) (and (=> (= (ControlFlow 0 155) (- 0 157)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 155) (- 0 156)) (<= 0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 (- n@0 1)) val)))) (=> (<= 0 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@4) (slot a_2 (- n@0 1)) val))) (and (=> (= (ControlFlow 0 155) 152) anon145_Then_correct) (=> (= (ControlFlow 0 155) 154) anon145_Else_correct)))))))))))
(let ((anon144_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 161) 155)) anon58_correct)))
(let ((anon144_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 159) (- 0 160)) (<= perm@0 (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) (slot a_2 (- n@0 1)) val))) (=> (<= perm@0 (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) (slot a_2 (- n@0 1)) val)) (=> (= (ControlFlow 0 159) 155) anon58_correct))))))
(let ((anon143_Then_correct  (=> (and (and (state ExhaleHeap@0 ZeroMask) (<= 4 n@0)) (and (<= n@0 51) (= (len_1 a_2) 51))) (and (=> (= (ControlFlow 0 162) (- 0 165)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (and (<= 0 i_5) (< i_5 (len_1 a_2)))) (and (<= 0 i_5_1) (< i_5_1 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_5) (slot a_2 i_5_1))))
 :qid |stdinbpl.1356:19|
 :skolemid |94|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (and (<= 0 i_5@@0) (< i_5@@0 (len_1 a_2)))) (and (<= 0 i_5_1@@0) (< i_5_1@@0 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_5@@0) (slot a_2 i_5_1@@0))))
 :qid |stdinbpl.1356:19|
 :skolemid |94|
)) (=> (and (and (forall ((i_5@@1 Int) ) (!  (=> (and (and (<= 0 i_5@@1) (< i_5@@1 (len_1 a_2))) (< NoPerm FullPerm)) (and (qpRange5 (slot a_2 i_5@@1)) (= (invRecv5 (slot a_2 i_5@@1)) i_5@@1)))
 :qid |stdinbpl.1362:26|
 :skolemid |95|
 :pattern ( (slot a_2 i_5@@1))
 :pattern ( (slot a_2 i_5@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@13)) (< (invRecv5 o_4@@13) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange5 o_4@@13)) (= (slot a_2 (invRecv5 o_4@@13)) o_4@@13))
 :qid |stdinbpl.1366:26|
 :skolemid |96|
 :pattern ( (invRecv5 o_4@@13))
))) (and (forall ((i_5@@2 Int) ) (!  (=> (and (<= 0 i_5@@2) (< i_5@@2 (len_1 a_2))) (not (= (slot a_2 i_5@@2) null)))
 :qid |stdinbpl.1372:26|
 :skolemid |97|
 :pattern ( (slot a_2 i_5@@2))
 :pattern ( (slot a_2 i_5@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@14)) (< (invRecv5 o_4@@14) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange5 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (slot a_2 (invRecv5 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) o_4@@14 val) (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@14)) (< (invRecv5 o_4@@14) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange5 o_4@@14))) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) o_4@@14 val) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@14 val))))
 :qid |stdinbpl.1378:26|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) o_4@@14 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_40737_53) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@2) o_4@@15 f_5@@9)))
 :qid |stdinbpl.1382:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@2) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_40750_40751) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@2) o_4@@16 f_5@@10)))
 :qid |stdinbpl.1382:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@2) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_47042_47048) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1382:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_26276_131949) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@2) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1382:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@2) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_26276_132082) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@2) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1382:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@2) o_4@@19 f_5@@13))
))) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))) (and (and (forall ((m_4_1 Int) (j_13_2 Int) ) (!  (=> (and (<= 0 m_4_1) (and (< m_4_1 n@0) (and (<= 0 j_13_2) (< j_13_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_4_1) val)))))) (valid_1 ExhaleHeap@0 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_4_1) val) j_13_2) m_4_1 true))
 :qid |stdinbpl.1389:24|
 :skolemid |100|
 :pattern ( (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_4_1) val)) (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_4_1) val) j_13_2))
 :pattern ( (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_4_1) val)) (|valid#frame| EmptyFrame (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_4_1) val) j_13_2) m_4_1 true))
 :pattern ( (|valid#frame| EmptyFrame (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 m_4_1) val) j_13_2) m_4_1 true))
)) (state ExhaleHeap@0 QPMask@2)) (and (<= n@0 50) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 162) (- 0 164)) (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) (slot a_2 n@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@2) (slot a_2 n@0) val)) (=> (and (and (= Heap@4 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@0) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@0) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@0) (slot a_2 n@0) val |Seq#Empty_64191|) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@0) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@0))) (state Heap@4 QPMask@2)) (and (state Heap@4 QPMask@2) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 162) (- 0 163)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 162) 159) anon144_Then_correct) (=> (= (ControlFlow 0 162) 161) anon144_Else_correct))))))))))))))
(let ((anon143_Else_correct  (=> (and (not (<= n@0 50)) (state ExhaleHeap@0 QPMask@1)) (=> (and (and (<= 4 n@0) (<= n@0 51)) (and (= (len_1 a_2) 51) (= (ControlFlow 0 56) (- 0 55)))) (forall ((i_8_2 Int) (i_8_3 Int) ) (!  (=> (and (and (and (and (not (= i_8_2 i_8_3)) (and (<= 0 i_8_2) (< i_8_2 (len_1 a_2)))) (and (<= 0 i_8_3) (< i_8_3 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_8_2) (slot a_2 i_8_3))))
 :qid |stdinbpl.1854:17|
 :skolemid |118|
))))))
(let ((anon133_Else_correct  (=> (and (forall ((m_1_1_1 Int) (j_10_1 Int) ) (!  (=> (and (<= 0 m_1_1_1) (and (< m_1_1_1 4) (and (<= 0 j_10_1) (< j_10_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_1_1_1) val)))))) (valid_1 Heap@3 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_1_1_1) val) j_10_1) m_1_1_1 true))
 :qid |stdinbpl.1250:24|
 :skolemid |86|
 :pattern ( (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_1_1_1) val)) (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_1_1_1) val) j_10_1))
 :pattern ( (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_1_1_1) val)) (|valid#frame| EmptyFrame (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_1_1_1) val) j_10_1) m_1_1_1 true))
 :pattern ( (|valid#frame| EmptyFrame (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_1_1_1) val) j_10_1) m_1_1_1 true))
)) (IdenticalOnKnownLocations Heap@3 ExhaleHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 185) 184) anon135_Then_correct) (=> (= (ControlFlow 0 185) 162) anon143_Then_correct)) (=> (= (ControlFlow 0 185) 56) anon143_Else_correct)))))
(let ((anon41_correct true))
(let ((anon134_Else_correct  (=> (and (not (and (<= 0 m_17) (and (< m_17 4) (and (<= 0 j_9_1) (< j_9_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_17) val))))))) (= (ControlFlow 0 54) 51)) anon41_correct)))
(let ((anon134_Then_correct  (=> (and (<= 0 m_17) (and (< m_17 4) (and (<= 0 j_9_1) (< j_9_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_17) val)))))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (valid_1 Heap@3 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_17) val) j_9_1) m_17 true)) (=> (valid_1 Heap@3 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 m_17) val) j_9_1) m_17 true) (=> (= (ControlFlow 0 52) 51) anon41_correct))))))
(let ((anon131_Else_correct  (=> (forall ((j_8_1_1 Int) ) (!  (=> (and (<= 0 j_8_1_1) (< j_8_1_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val)))) (valid_1 Heap@3 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val) j_8_1_1) 3 true))
 :qid |stdinbpl.1179:20|
 :skolemid |79|
 :pattern ( (|valid#frame| EmptyFrame (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val) j_8_1_1) 3 true))
)) (=> (and (state Heap@3 QPMask@0) (state Heap@3 QPMask@0)) (and (=> (= (ControlFlow 0 186) (- 0 191)) (<= 4 4)) (=> (<= 4 4) (and (=> (= (ControlFlow 0 186) (- 0 190)) (<= 4 51)) (=> (<= 4 51) (and (=> (= (ControlFlow 0 186) (- 0 189)) (= (len_1 a_2) 51)) (=> (= (len_1 a_2) 51) (and (=> (= (ControlFlow 0 186) (- 0 188)) (forall ((i_2_1 Int) (i_2_2 Int) ) (!  (=> (and (and (and (and (not (= i_2_1 i_2_2)) (and (<= 0 i_2_1) (< i_2_1 (len_1 a_2)))) (and (<= 0 i_2_2) (< i_2_2 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_2_1) (slot a_2 i_2_2))))
 :qid |stdinbpl.1209:21|
 :skolemid |80|
 :pattern ( (neverTriggered3 i_2_1) (neverTriggered3 i_2_2))
))) (=> (forall ((i_2_1@@0 Int) (i_2_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_2_1@@0 i_2_2@@0)) (and (<= 0 i_2_1@@0) (< i_2_1@@0 (len_1 a_2)))) (and (<= 0 i_2_2@@0) (< i_2_2@@0 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_2_1@@0) (slot a_2 i_2_2@@0))))
 :qid |stdinbpl.1209:21|
 :skolemid |80|
 :pattern ( (neverTriggered3 i_2_1@@0) (neverTriggered3 i_2_2@@0))
)) (and (=> (= (ControlFlow 0 186) (- 0 187)) (forall ((i_2_1@@1 Int) ) (!  (=> (and (<= 0 i_2_1@@1) (< i_2_1@@1 (len_1 a_2))) (>= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 i_2_1@@1) val) FullPerm))
 :qid |stdinbpl.1216:21|
 :skolemid |81|
 :pattern ( (slot a_2 i_2_1@@1))
 :pattern ( (slot a_2 i_2_1@@1))
))) (=> (forall ((i_2_1@@2 Int) ) (!  (=> (and (<= 0 i_2_1@@2) (< i_2_1@@2 (len_1 a_2))) (>= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 i_2_1@@2) val) FullPerm))
 :qid |stdinbpl.1216:21|
 :skolemid |81|
 :pattern ( (slot a_2 i_2_1@@2))
 :pattern ( (slot a_2 i_2_1@@2))
)) (=> (forall ((i_2_1@@3 Int) ) (!  (=> (and (and (<= 0 i_2_1@@3) (< i_2_1@@3 (len_1 a_2))) (< NoPerm FullPerm)) (and (qpRange3 (slot a_2 i_2_1@@3)) (= (invRecv3 (slot a_2 i_2_1@@3)) i_2_1@@3)))
 :qid |stdinbpl.1222:26|
 :skolemid |82|
 :pattern ( (slot a_2 i_2_1@@3))
 :pattern ( (slot a_2 i_2_1@@3))
)) (=> (and (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_4@@20)) (< (invRecv3 o_4@@20) (len_1 a_2))) (and (< NoPerm FullPerm) (qpRange3 o_4@@20))) (= (slot a_2 (invRecv3 o_4@@20)) o_4@@20))
 :qid |stdinbpl.1226:26|
 :skolemid |83|
 :pattern ( (invRecv3 o_4@@20))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_4@@21)) (< (invRecv3 o_4@@21) (len_1 a_2))) (and (< NoPerm FullPerm) (qpRange3 o_4@@21))) (and (= (slot a_2 (invRecv3 o_4@@21)) o_4@@21) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@21 val) (- (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@21 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_4@@21)) (< (invRecv3 o_4@@21) (len_1 a_2))) (and (< NoPerm FullPerm) (qpRange3 o_4@@21)))) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@21 val) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@21 val))))
 :qid |stdinbpl.1232:26|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@21 val))
))) (=> (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_40737_53) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@0) o_4@@22 f_5@@14) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@1) o_4@@22 f_5@@14)))
 :qid |stdinbpl.1238:33|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@1) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_40750_40751) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@0) o_4@@23 f_5@@15) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@1) o_4@@23 f_5@@15)))
 :qid |stdinbpl.1238:33|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@1) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_47042_47048) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@24 f_5@@16) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@24 f_5@@16)))
 :qid |stdinbpl.1238:33|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@1) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_26276_131949) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@0) o_4@@25 f_5@@17) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@1) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1238:33|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@1) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_26276_132082) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@0) o_4@@26 f_5@@18) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@1) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1238:33|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@1) o_4@@26 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 186) 185) anon133_Else_correct) (=> (= (ControlFlow 0 186) 52) anon134_Then_correct)) (=> (= (ControlFlow 0 186) 54) anon134_Else_correct)))))))))))))))))))
(let ((anon37_correct true))
(let ((anon132_Else_correct  (=> (and (not (and (<= 0 j_7_1) (< j_7_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val))))) (= (ControlFlow 0 50) 47)) anon37_correct)))
(let ((anon132_Then_correct  (=> (and (<= 0 j_7_1) (< j_7_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val)))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (valid_1 Heap@3 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val) j_7_1) 3 true)) (=> (valid_1 Heap@3 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val) j_7_1) 3 true) (=> (= (ControlFlow 0 48) 47) anon37_correct))))))
(let ((anon130_Then_correct true))
(let ((anon33_correct true))
(let ((anon129_Then_correct  (=> (and (<= 0 j_3) (< j_3 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val)))) (and (=> (= (ControlFlow 0 40) (- 0 43)) (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 3) val)) (=> (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 3) val) (and (=> (= (ControlFlow 0 40) (- 0 42)) (>= j_3 0)) (=> (>= j_3 0) (and (=> (= (ControlFlow 0 40) (- 0 41)) (< j_3 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val)))) (=> (< j_3 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val))) (and (=> (= (ControlFlow 0 40) 39) anon130_Then_correct) (=> (= (ControlFlow 0 40) 37) anon33_correct)))))))))))
(let ((anon129_Else_correct  (=> (and (not (and (<= 0 j_3) (< j_3 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@3) (slot a_2 3) val))))) (= (ControlFlow 0 38) 37)) anon33_correct)))
(let ((anon128_Else_correct  (=> (< j_3 0) (and (=> (= (ControlFlow 0 46) 40) anon129_Then_correct) (=> (= (ControlFlow 0 46) 38) anon129_Else_correct)))))
(let ((anon128_Then_correct  (=> (<= 0 j_3) (and (=> (= (ControlFlow 0 44) (- 0 45)) (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 3) val)) (=> (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 3) val) (and (=> (= (ControlFlow 0 44) 40) anon129_Then_correct) (=> (= (ControlFlow 0 44) 38) anon129_Else_correct)))))))
(let ((anon125_Else_correct  (=> (and (forall ((j_5_1_1 Int) ) (!  (=> (and (<= 0 j_5_1_1) (< j_5_1_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val)))) (valid_1 Heap@2 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val) j_5_1_1) 2 true))
 :qid |stdinbpl.1127:20|
 :skolemid |78|
 :pattern ( (|valid#frame| EmptyFrame (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val) j_5_1_1) 2 true))
)) (state Heap@2 QPMask@0)) (and (=> (= (ControlFlow 0 192) (- 0 194)) (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 3) val))) (=> (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 3) val)) (=> (and (= Heap@3 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@2) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@2) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 3) val (|Seq#Append_56940| (|Seq#Singleton_50010| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 3))) (|Seq#Singleton_50010| (|Seq#Singleton_3| 3)))) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@2) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@2))) (state Heap@3 QPMask@0)) (and (=> (= (ControlFlow 0 192) (- 0 193)) (|Seq#Equal_3611| (|Seq#Drop_3747| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 3)) 2) |Seq#Empty_4792|)) (=> (|Seq#Equal_3611| (|Seq#Drop_3747| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 3)) 2) |Seq#Empty_4792|) (=> (state Heap@3 QPMask@0) (and (and (and (and (=> (= (ControlFlow 0 192) 186) anon131_Else_correct) (=> (= (ControlFlow 0 192) 48) anon132_Then_correct)) (=> (= (ControlFlow 0 192) 50) anon132_Else_correct)) (=> (= (ControlFlow 0 192) 44) anon128_Then_correct)) (=> (= (ControlFlow 0 192) 46) anon128_Else_correct)))))))))))
(let ((anon26_correct true))
(let ((anon126_Else_correct  (=> (and (not (and (<= 0 j_4_1) (< j_4_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val))))) (= (ControlFlow 0 36) 33)) anon26_correct)))
(let ((anon126_Then_correct  (=> (and (<= 0 j_4_1) (< j_4_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (valid_1 Heap@2 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val) j_4_1) 2 true)) (=> (valid_1 Heap@2 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val) j_4_1) 2 true) (=> (= (ControlFlow 0 34) 33) anon26_correct))))))
(let ((anon124_Then_correct true))
(let ((anon22_correct true))
(let ((anon123_Then_correct  (=> (and (<= 0 j_7) (< j_7 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val)))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 2) val)) (=> (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 2) val) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< j_7 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val)))) (=> (< j_7 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val))) (and (=> (= (ControlFlow 0 26) 25) anon124_Then_correct) (=> (= (ControlFlow 0 26) 23) anon22_correct)))))))))))
(let ((anon123_Else_correct  (=> (and (not (and (<= 0 j_7) (< j_7 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@2) (slot a_2 2) val))))) (= (ControlFlow 0 24) 23)) anon22_correct)))
(let ((anon122_Else_correct  (=> (< j_7 0) (and (=> (= (ControlFlow 0 32) 26) anon123_Then_correct) (=> (= (ControlFlow 0 32) 24) anon123_Else_correct)))))
(let ((anon122_Then_correct  (=> (<= 0 j_7) (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 2) val)) (=> (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 2) val) (and (=> (= (ControlFlow 0 30) 26) anon123_Then_correct) (=> (= (ControlFlow 0 30) 24) anon123_Else_correct)))))))
(let ((anon119_Else_correct  (=> (and (forall ((j_2_1_1 Int) ) (!  (=> (and (<= 0 j_2_1_1) (< j_2_1_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val)))) (and (|Seq#Equal_3611| (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_2_1_1) (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1))) (valid_1 Heap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_2_1_1) 1 true)))
 :qid |stdinbpl.1075:20|
 :skolemid |77|
 :pattern ( (|valid#frame| EmptyFrame (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_2_1_1) 1 true))
)) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 195) (- 0 197)) (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 2) val))) (=> (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 2) val)) (=> (and (= Heap@2 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@1) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@1) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 2) val (|Seq#Singleton_50010| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 2)))) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@1) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@1))) (state Heap@2 QPMask@0)) (and (=> (= (ControlFlow 0 195) (- 0 196)) (|Seq#Equal_3611| (|Seq#Drop_3747| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 2)) 2) |Seq#Empty_4792|)) (=> (|Seq#Equal_3611| (|Seq#Drop_3747| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 2)) 2) |Seq#Empty_4792|) (=> (state Heap@2 QPMask@0) (and (and (and (and (=> (= (ControlFlow 0 195) 192) anon125_Else_correct) (=> (= (ControlFlow 0 195) 34) anon126_Then_correct)) (=> (= (ControlFlow 0 195) 36) anon126_Else_correct)) (=> (= (ControlFlow 0 195) 30) anon122_Then_correct)) (=> (= (ControlFlow 0 195) 32) anon122_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon120_Else_correct  (=> (and (not (and (<= 0 j_1) (< j_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val))))) (= (ControlFlow 0 22) 18)) anon15_correct)))
(let ((anon120_Then_correct  (=> (and (<= 0 j_1) (< j_1 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val)))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (|Seq#Equal_3611| (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_1) (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1)))) (=> (|Seq#Equal_3611| (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_1) (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (valid_1 Heap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_1) 1 true)) (=> (valid_1 Heap@1 (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_1) 1 true) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))))
(let ((anon118_Then_correct true))
(let ((anon11_correct true))
(let ((anon117_Then_correct  (=> (|Seq#Equal_3611| (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_2) (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 1) val)) (=> (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 1) val) (and (=> (= (ControlFlow 0 7) (- 0 9)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< j_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val)))) (=> (< j_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val))) (and (=> (= (ControlFlow 0 7) 6) anon118_Then_correct) (=> (= (ControlFlow 0 7) 3) anon11_correct)))))))))))
(let ((anon117_Else_correct  (=> (and (not (|Seq#Equal_3611| (|Seq#Index_50904| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val) j_2) (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1)))) (= (ControlFlow 0 5) 3)) anon11_correct)))
(let ((anon116_Then_correct  (=> (and (<= 0 j_2) (< j_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val)))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 1) val)) (=> (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 1) val) (and (=> (= (ControlFlow 0 11) (- 0 13)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< j_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val)))) (=> (< j_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val))) (and (=> (= (ControlFlow 0 11) 7) anon117_Then_correct) (=> (= (ControlFlow 0 11) 5) anon117_Else_correct)))))))))))
(let ((anon116_Else_correct  (=> (and (not (and (<= 0 j_2) (< j_2 (|Seq#Length_50705| (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@1) (slot a_2 1) val))))) (= (ControlFlow 0 4) 3)) anon11_correct)))
(let ((anon115_Else_correct  (=> (< j_2 0) (and (=> (= (ControlFlow 0 17) 11) anon116_Then_correct) (=> (= (ControlFlow 0 17) 4) anon116_Else_correct)))))
(let ((anon115_Then_correct  (=> (<= 0 j_2) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 1) val)) (=> (HasDirectPerm_26276_50605 QPMask@0 (slot a_2 1) val) (and (=> (= (ControlFlow 0 15) 11) anon116_Then_correct) (=> (= (ControlFlow 0 15) 4) anon116_Else_correct)))))))
(let ((anon113_Else_correct  (and (=> (= (ControlFlow 0 198) (- 0 200)) (valid_1 Heap@1 |Seq#Empty_4792| 0 false)) (=> (valid_1 Heap@1 |Seq#Empty_4792| 0 false) (=> (state Heap@1 QPMask@0) (and (=> (= (ControlFlow 0 198) (- 0 199)) (|Seq#Equal_3611| (|Seq#Drop_3747| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1)) 2) |Seq#Empty_4792|)) (=> (|Seq#Equal_3611| (|Seq#Drop_3747| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1)) 2) |Seq#Empty_4792|) (=> (state Heap@1 QPMask@0) (and (and (and (and (=> (= (ControlFlow 0 198) 195) anon119_Else_correct) (=> (= (ControlFlow 0 198) 19) anon120_Then_correct)) (=> (= (ControlFlow 0 198) 22) anon120_Else_correct)) (=> (= (ControlFlow 0 198) 15) anon115_Then_correct)) (=> (= (ControlFlow 0 198) 17) anon115_Else_correct))))))))))
(let ((anon113_Then_correct true))
(let ((anon112_Else_correct  (and (=> (= (ControlFlow 0 201) (- 0 204)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (len_1 a_2)))) (and (<= 0 i_1_1) (< i_1_1 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_1) (slot a_2 i_1_1))))
 :qid |stdinbpl.959:15|
 :skolemid |71|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (len_1 a_2)))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (len_1 a_2)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (slot a_2 i_1@@0) (slot a_2 i_1_1@@0))))
 :qid |stdinbpl.959:15|
 :skolemid |71|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 (len_1 a_2))) (< NoPerm FullPerm)) (and (qpRange2 (slot a_2 i_1@@1)) (= (invRecv2 (slot a_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.965:22|
 :skolemid |72|
 :pattern ( (slot a_2 i_1@@1))
 :pattern ( (slot a_2 i_1@@1))
)) (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4@@27)) (< (invRecv2 o_4@@27) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange2 o_4@@27)) (= (slot a_2 (invRecv2 o_4@@27)) o_4@@27))
 :qid |stdinbpl.969:22|
 :skolemid |73|
 :pattern ( (invRecv2 o_4@@27))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 (len_1 a_2))) (not (= (slot a_2 i_1@@2) null)))
 :qid |stdinbpl.975:22|
 :skolemid |74|
 :pattern ( (slot a_2 i_1@@2))
 :pattern ( (slot a_2 i_1@@2))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@28)) (< (invRecv2 o_4@@28) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange2 o_4@@28)) (and (=> (< NoPerm FullPerm) (= (slot a_2 (invRecv2 o_4@@28)) o_4@@28)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@28 val) (+ (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@28 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@28)) (< (invRecv2 o_4@@28) (len_1 a_2))) (< NoPerm FullPerm)) (qpRange2 o_4@@28))) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@28 val) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@28 val))))
 :qid |stdinbpl.981:22|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@28 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_40737_53) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ZeroMask) o_4@@29 f_5@@19) (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@0) o_4@@29 f_5@@19)))
 :qid |stdinbpl.985:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| ZeroMask) o_4@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_40698_26276_53#PolymorphicMapType_40698| QPMask@0) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_40750_40751) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ZeroMask) o_4@@30 f_5@@20) (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@0) o_4@@30 f_5@@20)))
 :qid |stdinbpl.985:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| ZeroMask) o_4@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_40698_26276_40751#PolymorphicMapType_40698| QPMask@0) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_47042_47048) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@31 f_5@@21) (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@31 f_5@@21)))
 :qid |stdinbpl.985:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| ZeroMask) o_4@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_26276_131949) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ZeroMask) o_4@@32 f_5@@22) (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@0) o_4@@32 f_5@@22)))
 :qid |stdinbpl.985:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| ZeroMask) o_4@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_40698_26276_131949#PolymorphicMapType_40698| QPMask@0) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_26276_132082) ) (!  (=> true (= (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ZeroMask) o_4@@33 f_5@@23) (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@0) o_4@@33 f_5@@23)))
 :qid |stdinbpl.985:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| ZeroMask) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_40698_26276_136215#PolymorphicMapType_40698| QPMask@0) o_4@@33 f_5@@23))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 201) (- 0 203)) (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 0) val))) (=> (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 0) val)) (=> (and (= Heap@0 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@21) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@21) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@21) (slot a_2 0) val (|Seq#Singleton_50010| |Seq#Empty_4792|)) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@21) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@21))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 201) (- 0 202)) (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 1) val))) (=> (= FullPerm (select (|PolymorphicMapType_40698_26276_49306#PolymorphicMapType_40698| QPMask@0) (slot a_2 1) val)) (=> (and (= Heap@1 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@0) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@0) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@0) (slot a_2 1) val (|Seq#Singleton_50010| (|Seq#Append_3| (|Seq#Singleton_3| 0) (|Seq#Singleton_3| 1)))) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@0) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@0))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 201) 2) anon113_Then_correct) (=> (= (ControlFlow 0 201) 198) anon113_Else_correct))))))))))))))
(let ((anon112_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (= (len_1 a_2) 51) (state Heap@@21 ZeroMask))) (and (=> (= (ControlFlow 0 205) 1) anon112_Then_correct) (=> (= (ControlFlow 0 205) 201) anon112_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 206) 205) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
