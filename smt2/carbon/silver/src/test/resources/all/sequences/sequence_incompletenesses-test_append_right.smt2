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
(declare-fun len (T@ArrayDomainType) Int)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_40677) (s_1 T@Seq_3323) (lenTiles Int) (isStart Bool) ) (! (dummyFunction_3979 (|valid#triggerStateless| s_1 lenTiles isStart))
 :qid |stdinbpl.662:15|
 :skolemid |61|
 :pattern ( (|valid'| Heap@@0 s_1 lenTiles isStart))
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_40677) (s_1@@0 T@Seq_3323) (lenTiles@@0 Int) (isStart@@0 Bool) ) (!  (and (= (valid_1 Heap@@1 s_1@@0 lenTiles@@0 isStart@@0) (|valid'| Heap@@1 s_1@@0 lenTiles@@0 isStart@@0)) (dummyFunction_3979 (|valid#triggerStateless| s_1@@0 lenTiles@@0 isStart@@0)))
 :qid |stdinbpl.658:15|
 :skolemid |60|
 :pattern ( (valid_1 Heap@@1 s_1@@0 lenTiles@@0 isStart@@0))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_40677) (Mask@@0 T@PolymorphicMapType_40698) (s_1@@1 T@Seq_3323) (lenTiles@@1 Int) (isStart@@1 Bool) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (= (valid_1 Heap@@2 s_1@@1 lenTiles@@1 isStart@@1) (ite (= (|Seq#Length_3323| s_1@@1) 0) (= lenTiles@@1 0) (ite (= (|Seq#Length_3323| s_1@@1) 1)  (and (= lenTiles@@1 (|Seq#Index_3323| s_1@@1 0)) (ite isStart@@1  (or (= (|Seq#Index_3323| s_1@@1 0) 0) (>= (|Seq#Index_3323| s_1@@1 0) 3)) (>= (|Seq#Index_3323| s_1@@1 0) 3)))  (and (ite isStart@@1  (or (= (|Seq#Index_3323| s_1@@1 0) 0) (>= (|Seq#Index_3323| s_1@@1 0) 3)) (>= (|Seq#Index_3323| s_1@@1 0) 3)) (and (> (|Seq#Index_3323| s_1@@1 1) 0) (|valid'| Heap@@2 (|Seq#Drop_3747| s_1@@1 2) (- (- lenTiles@@1 (|Seq#Index_3323| s_1@@1 1)) (|Seq#Index_3323| s_1@@1 0)) false)))))))
 :qid |stdinbpl.668:15|
 :skolemid |62|
 :pattern ( (state Heap@@2 Mask@@0) (valid_1 Heap@@2 s_1@@1 lenTiles@@1 isStart@@1))
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
(assert (forall ((Heap@@3 T@PolymorphicMapType_40677) (ExhaleHeap T@PolymorphicMapType_40677) (Mask@@1 T@PolymorphicMapType_40698) (pm_f_7 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_26276_132013 Mask@@1 null pm_f_7) (IsPredicateField_26276_132040 pm_f_7)) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@3) null (PredicateMaskField_26276 pm_f_7)) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap) null (PredicateMaskField_26276 pm_f_7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_26276_132040 pm_f_7) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap) null (PredicateMaskField_26276 pm_f_7)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40677) (ExhaleHeap@@0 T@PolymorphicMapType_40677) (Mask@@2 T@PolymorphicMapType_40698) (pm_f_7@@0 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_26276_132013 Mask@@2 null pm_f_7@@0) (IsWandField_26276_133793 pm_f_7@@0)) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@4) null (WandMaskField_26276 pm_f_7@@0)) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@0) null (WandMaskField_26276 pm_f_7@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsWandField_26276_133793 pm_f_7@@0) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@0) null (WandMaskField_26276 pm_f_7@@0)))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_40677) (Mask@@3 T@PolymorphicMapType_40698) (s_1@@2 T@Seq_3323) (lenTiles@@2 Int) (isStart@@2 Bool) ) (!  (=> (state Heap@@5 Mask@@3) (= (|valid'| Heap@@5 s_1@@2 lenTiles@@2 isStart@@2) (|valid#frame| EmptyFrame s_1@@2 lenTiles@@2 isStart@@2)))
 :qid |stdinbpl.675:15|
 :skolemid |63|
 :pattern ( (state Heap@@5 Mask@@3) (|valid'| Heap@@5 s_1@@2 lenTiles@@2 isStart@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40677) (ExhaleHeap@@1 T@PolymorphicMapType_40677) (Mask@@4 T@PolymorphicMapType_40698) (o_19 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@6) o_19 $allocated) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@1) o_19 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@1) o_19 $allocated))
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
(assert (forall ((_a_1 T@ArrayDomainType) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (len _a_1))) (and (= (slotToArray (slot _a_1 i@@3)) _a_1) (= (slotToIndex (slot _a_1 i@@3)) i@@3)))
 :qid |stdinbpl.632:15|
 :skolemid |58|
 :pattern ( (len _a_1) (slot _a_1 i@@3))
 :pattern ( (len _a_1) (slotToArray (slot _a_1 i@@3)))
 :pattern ( (len _a_1) (slotToIndex (slot _a_1 i@@3)))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_40677) (ExhaleHeap@@3 T@PolymorphicMapType_40677) (Mask@@16 T@PolymorphicMapType_40698) (pm_f_7@@1 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_26276_132013 Mask@@16 null pm_f_7@@1) (IsPredicateField_26276_132040 pm_f_7@@1)) (and (and (and (and (forall ((o2_7 T@Ref) (f_27 T@Field_40737_53) ) (!  (=> (select (|PolymorphicMapType_41226_40737_53#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_7@@1))) o2_7 f_27) (= (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@8) o2_7 f_27) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7 f_27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7 f_27))
)) (forall ((o2_7@@0 T@Ref) (f_27@@0 T@Field_40750_40751) ) (!  (=> (select (|PolymorphicMapType_41226_40737_40751#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_7@@1))) o2_7@@0 f_27@@0) (= (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@8) o2_7@@0 f_27@@0) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@0 f_27@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@0 f_27@@0))
))) (forall ((o2_7@@1 T@Ref) (f_27@@1 T@Field_47042_47048) ) (!  (=> (select (|PolymorphicMapType_41226_40737_47048#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_7@@1))) o2_7@@1 f_27@@1) (= (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@8) o2_7@@1 f_27@@1) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@1 f_27@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@1 f_27@@1))
))) (forall ((o2_7@@2 T@Ref) (f_27@@2 T@Field_26276_131949) ) (!  (=> (select (|PolymorphicMapType_41226_40737_131949#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_7@@1))) o2_7@@2 f_27@@2) (= (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@8) o2_7@@2 f_27@@2) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@2 f_27@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@2 f_27@@2))
))) (forall ((o2_7@@3 T@Ref) (f_27@@3 T@Field_26276_132082) ) (!  (=> (select (|PolymorphicMapType_41226_40737_133266#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) null (PredicateMaskField_26276 pm_f_7@@1))) o2_7@@3 f_27@@3) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@8) o2_7@@3 f_27@@3) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@3 f_27@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@3) o2_7@@3 f_27@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@16) (IsPredicateField_26276_132040 pm_f_7@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40677) (ExhaleHeap@@4 T@PolymorphicMapType_40677) (Mask@@17 T@PolymorphicMapType_40698) (pm_f_7@@2 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_26276_132013 Mask@@17 null pm_f_7@@2) (IsWandField_26276_133793 pm_f_7@@2)) (and (and (and (and (forall ((o2_7@@4 T@Ref) (f_27@@4 T@Field_40737_53) ) (!  (=> (select (|PolymorphicMapType_41226_40737_53#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_7@@2))) o2_7@@4 f_27@@4) (= (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@9) o2_7@@4 f_27@@4) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@4 f_27@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@4 f_27@@4))
)) (forall ((o2_7@@5 T@Ref) (f_27@@5 T@Field_40750_40751) ) (!  (=> (select (|PolymorphicMapType_41226_40737_40751#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_7@@2))) o2_7@@5 f_27@@5) (= (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@9) o2_7@@5 f_27@@5) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@5 f_27@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@5 f_27@@5))
))) (forall ((o2_7@@6 T@Ref) (f_27@@6 T@Field_47042_47048) ) (!  (=> (select (|PolymorphicMapType_41226_40737_47048#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_7@@2))) o2_7@@6 f_27@@6) (= (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@9) o2_7@@6 f_27@@6) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@6 f_27@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@6 f_27@@6))
))) (forall ((o2_7@@7 T@Ref) (f_27@@7 T@Field_26276_131949) ) (!  (=> (select (|PolymorphicMapType_41226_40737_131949#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_7@@2))) o2_7@@7 f_27@@7) (= (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@9) o2_7@@7 f_27@@7) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@7 f_27@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@7 f_27@@7))
))) (forall ((o2_7@@8 T@Ref) (f_27@@8 T@Field_26276_132082) ) (!  (=> (select (|PolymorphicMapType_41226_40737_133266#PolymorphicMapType_41226| (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) null (WandMaskField_26276 pm_f_7@@2))) o2_7@@8 f_27@@8) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@9) o2_7@@8 f_27@@8) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@8 f_27@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@4) o2_7@@8 f_27@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@17) (IsWandField_26276_133793 pm_f_7@@2))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_40677) (ExhaleHeap@@5 T@PolymorphicMapType_40677) (Mask@@18 T@PolymorphicMapType_40698) (o_19@@0 T@Ref) (f_27@@9 T@Field_26276_132082) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_26276_137798 Mask@@18 o_19@@0 f_27@@9) (= (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@10) o_19@@0 f_27@@9) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@5) o_19@@0 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| ExhaleHeap@@5) o_19@@0 f_27@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40677) (ExhaleHeap@@6 T@PolymorphicMapType_40677) (Mask@@19 T@PolymorphicMapType_40698) (o_19@@1 T@Ref) (f_27@@10 T@Field_26276_131949) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_26276_132013 Mask@@19 o_19@@1 f_27@@10) (= (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@11) o_19@@1 f_27@@10) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@6) o_19@@1 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| ExhaleHeap@@6) o_19@@1 f_27@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40677) (ExhaleHeap@@7 T@PolymorphicMapType_40677) (Mask@@20 T@PolymorphicMapType_40698) (o_19@@2 T@Ref) (f_27@@11 T@Field_40750_40751) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_26276_40751 Mask@@20 o_19@@2 f_27@@11) (= (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@12) o_19@@2 f_27@@11) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@7) o_19@@2 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| ExhaleHeap@@7) o_19@@2 f_27@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40677) (ExhaleHeap@@8 T@PolymorphicMapType_40677) (Mask@@21 T@PolymorphicMapType_40698) (o_19@@3 T@Ref) (f_27@@12 T@Field_40737_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_26276_53 Mask@@21 o_19@@3 f_27@@12) (= (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@13) o_19@@3 f_27@@12) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@8) o_19@@3 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| ExhaleHeap@@8) o_19@@3 f_27@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40677) (ExhaleHeap@@9 T@PolymorphicMapType_40677) (Mask@@22 T@PolymorphicMapType_40698) (o_19@@4 T@Ref) (f_27@@13 T@Field_47042_47048) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_26276_50605 Mask@@22 o_19@@4 f_27@@13) (= (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@14) o_19@@4 f_27@@13) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@9) o_19@@4 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| ExhaleHeap@@9) o_19@@4 f_27@@13))
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
(assert (forall ((_a_1@@0 T@ArrayDomainType) ) (! (>= (len _a_1@@0) 0)
 :qid |stdinbpl.638:15|
 :skolemid |59|
 :pattern ( (len _a_1@@0))
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
(assert (forall ((Heap@@15 T@PolymorphicMapType_40677) (o_18 T@Ref) (f_28 T@Field_26276_131949) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@15) (store (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@15) o_18 f_28 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@15) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@15) (store (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@15) o_18 f_28 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40677) (o_18@@0 T@Ref) (f_28@@0 T@Field_26276_132082) (v@@5 T@PolymorphicMapType_41226) ) (! (succHeap Heap@@16 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@16) (store (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@16) o_18@@0 f_28@@0 v@@5) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@16) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@16) (store (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@16) o_18@@0 f_28@@0 v@@5) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40677) (o_18@@1 T@Ref) (f_28@@1 T@Field_47042_47048) (v@@6 T@Seq_47046) ) (! (succHeap Heap@@17 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@17) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@17) o_18@@1 f_28@@1 v@@6) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@17) (store (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@17) o_18@@1 f_28@@1 v@@6) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@17) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40677) (o_18@@2 T@Ref) (f_28@@2 T@Field_40750_40751) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@18) (store (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@18) o_18@@2 f_28@@2 v@@7) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@18) (store (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@18) o_18@@2 f_28@@2 v@@7) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@18) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40677) (o_18@@3 T@Ref) (f_28@@3 T@Field_40737_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_40677 (store (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@19) o_18@@3 f_28@@3 v@@8) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40677 (store (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@19) o_18@@3 f_28@@3 v@@8) (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_50029#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_26276_132126#PolymorphicMapType_40677| Heap@@19) (|PolymorphicMapType_40677_40737_131949#PolymorphicMapType_40677| Heap@@19)))
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
(assert (forall ((o_18@@4 T@Ref) (f_26 T@Field_40750_40751) (Heap@@20 T@PolymorphicMapType_40677) ) (!  (=> (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@20) o_18@@4 $allocated) (select (|PolymorphicMapType_40677_26032_53#PolymorphicMapType_40677| Heap@@20) (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@20) o_18@@4 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40677_26035_26036#PolymorphicMapType_40677| Heap@@20) o_18@@4 f_26))
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
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun t_2 () T@Seq_3323)
(declare-fun i_1 () Int)
(declare-fun ss@0 () T@Seq_3323)
(declare-fun s_1@@3 () T@Seq_3323)
(declare-fun Heap@@21 () T@PolymorphicMapType_40677)
(set-info :boogie-vc-id test_append_right)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (not (|Seq#Contains_3323| t_2 i_1)) (= (ControlFlow 0 6) 3)) anon5_correct)))
(let ((anon9_Then_correct  (=> (|Seq#Contains_3323| t_2 i_1) (and (=> (= (ControlFlow 0 4) (- 0 5)) (|Seq#Contains_3323| (|Seq#Drop_3747| ss@0 (|Seq#Length_3323| s_1@@3)) i_1)) (=> (|Seq#Contains_3323| (|Seq#Drop_3747| ss@0 (|Seq#Length_3323| s_1@@3)) i_1) (=> (= (ControlFlow 0 4) 3) anon5_correct))))))
(let ((anon8_Else_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (= ss@0 (|Seq#Append_3| s_1@@3 t_2)) (state Heap@@21 ZeroMask))) (and (and (and (=> (= (ControlFlow 0 7) 1) anon7_Then_correct) (=> (= (ControlFlow 0 7) 2) anon8_Else_correct)) (=> (= (ControlFlow 0 7) 4) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
