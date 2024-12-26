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
(declare-sort T@Field_10829_53 0)
(declare-sort T@Field_10842_10843 0)
(declare-sort T@Field_16847_2989 0)
(declare-sort T@Field_17420_17421 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_20299_20304 0)
(declare-sort T@Field_6168_6209 0)
(declare-sort T@Field_6168_20304 0)
(declare-sort T@Field_6208_6169 0)
(declare-sort T@Field_6208_2989 0)
(declare-sort T@Field_6208_53 0)
(declare-datatypes ((T@PolymorphicMapType_10790 0)) (((PolymorphicMapType_10790 (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| (Array T@Ref T@Field_17420_17421 Real)) (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| (Array T@Ref T@Field_16847_2989 Real)) (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| (Array T@Ref T@Field_10842_10843 Real)) (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| (Array T@Ref T@Field_6208_2989 Real)) (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| (Array T@Ref T@Field_6208_6169 Real)) (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| (Array T@Ref T@Field_6208_53 Real)) (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| (Array T@Ref T@Field_20299_20304 Real)) (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| (Array T@Ref T@Field_6168_6209 Real)) (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| (Array T@Ref T@Field_10829_53 Real)) (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| (Array T@Ref T@Field_6168_20304 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11318 0)) (((PolymorphicMapType_11318 (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (Array T@Ref T@Field_16847_2989 Bool)) (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (Array T@Ref T@Field_10842_10843 Bool)) (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (Array T@Ref T@Field_10829_53 Bool)) (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (Array T@Ref T@Field_6168_6209 Bool)) (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (Array T@Ref T@Field_6168_20304 Bool)) (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (Array T@Ref T@Field_6208_2989 Bool)) (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (Array T@Ref T@Field_6208_6169 Bool)) (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (Array T@Ref T@Field_6208_53 Bool)) (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (Array T@Ref T@Field_17420_17421 Bool)) (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (Array T@Ref T@Field_20299_20304 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10769 0)) (((PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| (Array T@Ref T@Field_10829_53 Bool)) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| (Array T@Ref T@Field_10842_10843 T@Ref)) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| (Array T@Ref T@Field_16847_2989 Int)) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| (Array T@Ref T@Field_17420_17421 T@FrameType)) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| (Array T@Ref T@Field_20299_20304 T@PolymorphicMapType_11318)) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| (Array T@Ref T@Field_6168_6209 T@FrameType)) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| (Array T@Ref T@Field_6168_20304 T@PolymorphicMapType_11318)) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| (Array T@Ref T@Field_6208_6169 T@Ref)) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| (Array T@Ref T@Field_6208_2989 Int)) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| (Array T@Ref T@Field_6208_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10829_53)
(declare-fun node__val () T@Field_16847_2989)
(declare-fun node__next () T@Field_10842_10843)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_5436| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_10769 T@PolymorphicMapType_10769) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10769 T@PolymorphicMapType_10769) Bool)
(declare-fun state (T@PolymorphicMapType_10769 T@PolymorphicMapType_10790) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10790) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11318)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun node__state (T@Ref) T@Field_17420_17421)
(declare-fun IsPredicateField_6208_6209 (T@Field_17420_17421) Bool)
(declare-fun |node__contents'| (T@PolymorphicMapType_10769 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_17022 (T@Seq_2867) Bool)
(declare-fun |node__contents#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |node__state#trigger_6208| (T@PolymorphicMapType_10769 T@Field_17420_17421) Bool)
(declare-fun |node__state#everUsed_6208| (T@Field_17420_17421) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun node__contents (T@PolymorphicMapType_10769 T@Ref) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10769 T@PolymorphicMapType_10769 T@PolymorphicMapType_10790) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6208 (T@Field_17420_17421) T@Field_20299_20304)
(declare-fun HasDirectPerm_6208_6209 (T@PolymorphicMapType_10790 T@Ref T@Field_17420_17421) Bool)
(declare-fun IsPredicateField_6168_34331 (T@Field_6168_6209) Bool)
(declare-fun PredicateMaskField_6168 (T@Field_6168_6209) T@Field_6168_20304)
(declare-fun HasDirectPerm_6168_6209 (T@PolymorphicMapType_10790 T@Ref T@Field_6168_6209) Bool)
(declare-fun IsWandField_6208_38001 (T@Field_17420_17421) Bool)
(declare-fun WandMaskField_6208 (T@Field_17420_17421) T@Field_20299_20304)
(declare-fun IsWandField_6168_37644 (T@Field_6168_6209) Bool)
(declare-fun WandMaskField_6168 (T@Field_6168_6209) T@Field_6168_20304)
(declare-fun |Seq#Singleton_2989| (Int) T@Seq_2867)
(declare-fun |node__state#sm| (T@Ref) T@Field_20299_20304)
(declare-fun |Seq#Append_2989| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_10769)
(declare-fun ZeroMask () T@PolymorphicMapType_10790)
(declare-fun InsidePredicate_10829_10829 (T@Field_6168_6209 T@FrameType T@Field_6168_6209 T@FrameType) Bool)
(declare-fun InsidePredicate_6208_6208 (T@Field_17420_17421 T@FrameType T@Field_17420_17421 T@FrameType) Bool)
(declare-fun IsPredicateField_6166_2989 (T@Field_16847_2989) Bool)
(declare-fun IsWandField_6166_2989 (T@Field_16847_2989) Bool)
(declare-fun IsPredicateField_6168_6169 (T@Field_10842_10843) Bool)
(declare-fun IsWandField_6168_6169 (T@Field_10842_10843) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6166_44904 (T@Field_6168_20304) Bool)
(declare-fun IsWandField_6166_44920 (T@Field_6168_20304) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6166_53 (T@Field_10829_53) Bool)
(declare-fun IsWandField_6166_53 (T@Field_10829_53) Bool)
(declare-fun IsPredicateField_6208_44101 (T@Field_20299_20304) Bool)
(declare-fun IsWandField_6208_44117 (T@Field_20299_20304) Bool)
(declare-fun IsPredicateField_6208_53 (T@Field_6208_53) Bool)
(declare-fun IsWandField_6208_53 (T@Field_6208_53) Bool)
(declare-fun IsPredicateField_6208_6169 (T@Field_6208_6169) Bool)
(declare-fun IsWandField_6208_6169 (T@Field_6208_6169) Bool)
(declare-fun IsPredicateField_6208_2989 (T@Field_6208_2989) Bool)
(declare-fun IsWandField_6208_2989 (T@Field_6208_2989) Bool)
(declare-fun HasDirectPerm_6208_34086 (T@PolymorphicMapType_10790 T@Ref T@Field_20299_20304) Bool)
(declare-fun HasDirectPerm_6208_53 (T@PolymorphicMapType_10790 T@Ref T@Field_6208_53) Bool)
(declare-fun HasDirectPerm_6208_2989 (T@PolymorphicMapType_10790 T@Ref T@Field_6208_2989) Bool)
(declare-fun HasDirectPerm_6208_6169 (T@PolymorphicMapType_10790 T@Ref T@Field_6208_6169) Bool)
(declare-fun HasDirectPerm_6168_32945 (T@PolymorphicMapType_10790 T@Ref T@Field_6168_20304) Bool)
(declare-fun HasDirectPerm_6168_53 (T@PolymorphicMapType_10790 T@Ref T@Field_10829_53) Bool)
(declare-fun HasDirectPerm_6166_2989 (T@PolymorphicMapType_10790 T@Ref T@Field_16847_2989) Bool)
(declare-fun HasDirectPerm_6168_6169 (T@PolymorphicMapType_10790 T@Ref T@Field_10842_10843) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10790 T@PolymorphicMapType_10790 T@PolymorphicMapType_10790) Bool)
(declare-fun |Seq#Equal_3026| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |node__contents#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_6208_6209 (T@Field_17420_17421) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_10829_6208 (T@Field_6168_6209 T@FrameType T@Field_17420_17421 T@FrameType) Bool)
(declare-fun InsidePredicate_6208_10829 (T@Field_17420_17421 T@FrameType T@Field_6168_6209 T@FrameType) Bool)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_5436| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_5436| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_5436| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_5436| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_5436| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10769) (Heap1 T@PolymorphicMapType_10769) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10769) (Mask T@PolymorphicMapType_10790) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10769) (Heap1@@0 T@PolymorphicMapType_10769) (Heap2 T@PolymorphicMapType_10769) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20299_20304) ) (!  (not (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17420_17421) ) (!  (not (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6208_53) ) (!  (not (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6208_6169) ) (!  (not (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6208_2989) ) (!  (not (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6168_20304) ) (!  (not (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6168_6209) ) (!  (not (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10829_53) ) (!  (not (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10842_10843) ) (!  (not (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16847_2989) ) (!  (not (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_5436| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_5436| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((diz T@Ref) ) (! (IsPredicateField_6208_6209 (node__state diz))
 :qid |stdinbpl.704:15|
 :skolemid |64|
 :pattern ( (node__state diz))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10769) (diz@@0 T@Ref) ) (! (dummyFunction_17022 (|node__contents#triggerStateless| diz@@0))
 :qid |stdinbpl.565:15|
 :skolemid |59|
 :pattern ( (|node__contents'| Heap@@0 diz@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10769) (diz@@1 T@Ref) ) (! (|node__state#everUsed_6208| (node__state diz@@1))
 :qid |stdinbpl.723:15|
 :skolemid |68|
 :pattern ( (|node__state#trigger_6208| Heap@@1 (node__state diz@@1)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10769) (diz@@2 T@Ref) ) (!  (and (= (node__contents Heap@@2 diz@@2) (|node__contents'| Heap@@2 diz@@2)) (dummyFunction_17022 (|node__contents#triggerStateless| diz@@2)))
 :qid |stdinbpl.561:15|
 :skolemid |58|
 :pattern ( (node__contents Heap@@2 diz@@2))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_5436| s@@4 n@@3) s@@4))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5436| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10769) (ExhaleHeap T@PolymorphicMapType_10769) (Mask@@0 T@PolymorphicMapType_10790) (pm_f_13 T@Field_17420_17421) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6208_6209 Mask@@0 null pm_f_13) (IsPredicateField_6208_6209 pm_f_13)) (= (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@3) null (PredicateMaskField_6208 pm_f_13)) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap) null (PredicateMaskField_6208 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_6208_6209 pm_f_13) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap) null (PredicateMaskField_6208 pm_f_13)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10769) (ExhaleHeap@@0 T@PolymorphicMapType_10769) (Mask@@1 T@PolymorphicMapType_10790) (pm_f_13@@0 T@Field_6168_6209) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6168_6209 Mask@@1 null pm_f_13@@0) (IsPredicateField_6168_34331 pm_f_13@@0)) (= (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@4) null (PredicateMaskField_6168 pm_f_13@@0)) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@0) null (PredicateMaskField_6168 pm_f_13@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6168_34331 pm_f_13@@0) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@0) null (PredicateMaskField_6168 pm_f_13@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10769) (ExhaleHeap@@1 T@PolymorphicMapType_10769) (Mask@@2 T@PolymorphicMapType_10790) (pm_f_13@@1 T@Field_17420_17421) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6208_6209 Mask@@2 null pm_f_13@@1) (IsWandField_6208_38001 pm_f_13@@1)) (= (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@5) null (WandMaskField_6208 pm_f_13@@1)) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@1) null (WandMaskField_6208 pm_f_13@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_6208_38001 pm_f_13@@1) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@1) null (WandMaskField_6208 pm_f_13@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10769) (ExhaleHeap@@2 T@PolymorphicMapType_10769) (Mask@@3 T@PolymorphicMapType_10790) (pm_f_13@@2 T@Field_6168_6209) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6168_6209 Mask@@3 null pm_f_13@@2) (IsWandField_6168_37644 pm_f_13@@2)) (= (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@6) null (WandMaskField_6168 pm_f_13@@2)) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@2) null (WandMaskField_6168 pm_f_13@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_6168_37644 pm_f_13@@2) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@2) null (WandMaskField_6168 pm_f_13@@2)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((diz@@3 T@Ref) (diz2 T@Ref) ) (!  (=> (= (node__state diz@@3) (node__state diz2)) (= diz@@3 diz2))
 :qid |stdinbpl.714:15|
 :skolemid |66|
 :pattern ( (node__state diz@@3) (node__state diz2))
)))
(assert (forall ((diz@@4 T@Ref) (diz2@@0 T@Ref) ) (!  (=> (= (|node__state#sm| diz@@4) (|node__state#sm| diz2@@0)) (= diz@@4 diz2@@0))
 :qid |stdinbpl.718:15|
 :skolemid |67|
 :pattern ( (|node__state#sm| diz@@4) (|node__state#sm| diz2@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_2989| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_2989| s@@6 t) n@@5) (|Seq#Append_2989| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2989| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10769) (ExhaleHeap@@3 T@PolymorphicMapType_10769) (Mask@@4 T@PolymorphicMapType_10790) (pm_f_13@@3 T@Field_17420_17421) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6208_6209 Mask@@4 null pm_f_13@@3) (IsPredicateField_6208_6209 pm_f_13@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_16847_2989) ) (!  (=> (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13 f_30) (= (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@7) o2_13 f_30) (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_10842_10843) ) (!  (=> (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@7) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_10829_53) ) (!  (=> (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@7) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_6168_6209) ) (!  (=> (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@7) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_6168_20304) ) (!  (=> (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@7) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_6208_2989) ) (!  (=> (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@7) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_6208_6169) ) (!  (=> (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@7) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_6208_53) ) (!  (=> (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@7) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_17420_17421) ) (!  (=> (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@7) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_20299_20304) ) (!  (=> (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) null (PredicateMaskField_6208 pm_f_13@@3))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@7) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@3) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6208_6209 pm_f_13@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10769) (ExhaleHeap@@4 T@PolymorphicMapType_10769) (Mask@@5 T@PolymorphicMapType_10790) (pm_f_13@@4 T@Field_6168_6209) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6168_6209 Mask@@5 null pm_f_13@@4) (IsPredicateField_6168_34331 pm_f_13@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_16847_2989) ) (!  (=> (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@8) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@9 f_30@@9))
)) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_10842_10843) ) (!  (=> (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@8) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_10829_53) ) (!  (=> (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@8) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_6168_6209) ) (!  (=> (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@8) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_6168_20304) ) (!  (=> (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_6208_2989) ) (!  (=> (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@8) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@14 f_30@@14))
))) (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_6208_6169) ) (!  (=> (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@8) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@15 f_30@@15))
))) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_6208_53) ) (!  (=> (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@8) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_17420_17421) ) (!  (=> (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@8) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_20299_20304) ) (!  (=> (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@8) null (PredicateMaskField_6168 pm_f_13@@4))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@8) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@4) o2_13@@18 f_30@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6168_34331 pm_f_13@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10769) (ExhaleHeap@@5 T@PolymorphicMapType_10769) (Mask@@6 T@PolymorphicMapType_10790) (pm_f_13@@5 T@Field_17420_17421) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6208_6209 Mask@@6 null pm_f_13@@5) (IsWandField_6208_38001 pm_f_13@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_16847_2989) ) (!  (=> (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@9) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@19 f_30@@19))
)) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_10842_10843) ) (!  (=> (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@9) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_10829_53) ) (!  (=> (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@9) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_6168_6209) ) (!  (=> (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@9) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@22 f_30@@22))
))) (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_6168_20304) ) (!  (=> (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@9) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@23 f_30@@23))
))) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_6208_2989) ) (!  (=> (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@9) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_6208_6169) ) (!  (=> (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@9) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_6208_53) ) (!  (=> (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@9) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_17420_17421) ) (!  (=> (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@9) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_20299_20304) ) (!  (=> (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) null (WandMaskField_6208 pm_f_13@@5))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@9) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@5) o2_13@@28 f_30@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_6208_38001 pm_f_13@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10769) (ExhaleHeap@@6 T@PolymorphicMapType_10769) (Mask@@7 T@PolymorphicMapType_10790) (pm_f_13@@6 T@Field_6168_6209) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6168_6209 Mask@@7 null pm_f_13@@6) (IsWandField_6168_37644 pm_f_13@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_16847_2989) ) (!  (=> (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@10) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@29 f_30@@29))
)) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_10842_10843) ) (!  (=> (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@10) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@30 f_30@@30))
))) (forall ((o2_13@@31 T@Ref) (f_30@@31 T@Field_10829_53) ) (!  (=> (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@31 f_30@@31) (= (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@10) o2_13@@31 f_30@@31) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@31 f_30@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@31 f_30@@31))
))) (forall ((o2_13@@32 T@Ref) (f_30@@32 T@Field_6168_6209) ) (!  (=> (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@32 f_30@@32) (= (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@10) o2_13@@32 f_30@@32) (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@32 f_30@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@32 f_30@@32))
))) (forall ((o2_13@@33 T@Ref) (f_30@@33 T@Field_6168_20304) ) (!  (=> (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@33 f_30@@33) (= (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) o2_13@@33 f_30@@33) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@33 f_30@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@33 f_30@@33))
))) (forall ((o2_13@@34 T@Ref) (f_30@@34 T@Field_6208_2989) ) (!  (=> (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@34 f_30@@34) (= (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@10) o2_13@@34 f_30@@34) (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@34 f_30@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@34 f_30@@34))
))) (forall ((o2_13@@35 T@Ref) (f_30@@35 T@Field_6208_6169) ) (!  (=> (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@35 f_30@@35) (= (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@10) o2_13@@35 f_30@@35) (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@35 f_30@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@35 f_30@@35))
))) (forall ((o2_13@@36 T@Ref) (f_30@@36 T@Field_6208_53) ) (!  (=> (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@36 f_30@@36) (= (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@10) o2_13@@36 f_30@@36) (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@36 f_30@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@36 f_30@@36))
))) (forall ((o2_13@@37 T@Ref) (f_30@@37 T@Field_17420_17421) ) (!  (=> (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@37 f_30@@37) (= (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@10) o2_13@@37 f_30@@37) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@37 f_30@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@37 f_30@@37))
))) (forall ((o2_13@@38 T@Ref) (f_30@@38 T@Field_20299_20304) ) (!  (=> (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@10) null (WandMaskField_6168 pm_f_13@@6))) o2_13@@38 f_30@@38) (= (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@10) o2_13@@38 f_30@@38) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@38 f_30@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@6) o2_13@@38 f_30@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_6168_37644 pm_f_13@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10769) (ExhaleHeap@@7 T@PolymorphicMapType_10769) (Mask@@8 T@PolymorphicMapType_10790) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@11) o_22 $allocated) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_6168_6209) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10829_10829 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10829_10829 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17420_17421) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6208_6208 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6208_6208 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2867|)) (not (= s1 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_2989| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_6166_2989 node__val)))
(assert  (not (IsWandField_6166_2989 node__val)))
(assert  (not (IsPredicateField_6168_6169 node__next)))
(assert  (not (IsWandField_6168_6169 node__next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10769) (ExhaleHeap@@8 T@PolymorphicMapType_10769) (Mask@@9 T@PolymorphicMapType_10790) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10790) (o_2@@9 T@Ref) (f_4@@9 T@Field_6168_20304) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6166_44904 f_4@@9))) (not (IsWandField_6166_44920 f_4@@9))) (<= (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10790) (o_2@@10 T@Ref) (f_4@@10 T@Field_10829_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6166_53 f_4@@10))) (not (IsWandField_6166_53 f_4@@10))) (<= (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10790) (o_2@@11 T@Ref) (f_4@@11 T@Field_10842_10843) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6168_6169 f_4@@11))) (not (IsWandField_6168_6169 f_4@@11))) (<= (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10790) (o_2@@12 T@Ref) (f_4@@12 T@Field_16847_2989) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6166_2989 f_4@@12))) (not (IsWandField_6166_2989 f_4@@12))) (<= (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10790) (o_2@@13 T@Ref) (f_4@@13 T@Field_6168_6209) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6168_34331 f_4@@13))) (not (IsWandField_6168_37644 f_4@@13))) (<= (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10790) (o_2@@14 T@Ref) (f_4@@14 T@Field_20299_20304) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6208_44101 f_4@@14))) (not (IsWandField_6208_44117 f_4@@14))) (<= (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10790) (o_2@@15 T@Ref) (f_4@@15 T@Field_6208_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6208_53 f_4@@15))) (not (IsWandField_6208_53 f_4@@15))) (<= (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10790) (o_2@@16 T@Ref) (f_4@@16 T@Field_6208_6169) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6208_6169 f_4@@16))) (not (IsWandField_6208_6169 f_4@@16))) (<= (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10790) (o_2@@17 T@Ref) (f_4@@17 T@Field_6208_2989) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6208_2989 f_4@@17))) (not (IsWandField_6208_2989 f_4@@17))) (<= (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10790) (o_2@@18 T@Ref) (f_4@@18 T@Field_17420_17421) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6208_6209 f_4@@18))) (not (IsWandField_6208_38001 f_4@@18))) (<= (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10790) (o_2@@19 T@Ref) (f_4@@19 T@Field_20299_20304) ) (! (= (HasDirectPerm_6208_34086 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6208_34086 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10790) (o_2@@20 T@Ref) (f_4@@20 T@Field_6208_53) ) (! (= (HasDirectPerm_6208_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6208_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10790) (o_2@@21 T@Ref) (f_4@@21 T@Field_17420_17421) ) (! (= (HasDirectPerm_6208_6209 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6208_6209 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10790) (o_2@@22 T@Ref) (f_4@@22 T@Field_6208_2989) ) (! (= (HasDirectPerm_6208_2989 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6208_2989 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10790) (o_2@@23 T@Ref) (f_4@@23 T@Field_6208_6169) ) (! (= (HasDirectPerm_6208_6169 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6208_6169 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10790) (o_2@@24 T@Ref) (f_4@@24 T@Field_6168_20304) ) (! (= (HasDirectPerm_6168_32945 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6168_32945 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10790) (o_2@@25 T@Ref) (f_4@@25 T@Field_10829_53) ) (! (= (HasDirectPerm_6168_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6168_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10790) (o_2@@26 T@Ref) (f_4@@26 T@Field_6168_6209) ) (! (= (HasDirectPerm_6168_6209 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6168_6209 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10790) (o_2@@27 T@Ref) (f_4@@27 T@Field_16847_2989) ) (! (= (HasDirectPerm_6166_2989 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6166_2989 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10790) (o_2@@28 T@Ref) (f_4@@28 T@Field_10842_10843) ) (! (= (HasDirectPerm_6168_6169 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6168_6169 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10769) (ExhaleHeap@@9 T@PolymorphicMapType_10769) (Mask@@30 T@PolymorphicMapType_10790) (o_22@@0 T@Ref) (f_30@@39 T@Field_20299_20304) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_6208_34086 Mask@@30 o_22@@0 f_30@@39) (= (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@13) o_22@@0 f_30@@39) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@9) o_22@@0 f_30@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| ExhaleHeap@@9) o_22@@0 f_30@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10769) (ExhaleHeap@@10 T@PolymorphicMapType_10769) (Mask@@31 T@PolymorphicMapType_10790) (o_22@@1 T@Ref) (f_30@@40 T@Field_6208_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_6208_53 Mask@@31 o_22@@1 f_30@@40) (= (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@14) o_22@@1 f_30@@40) (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@10) o_22@@1 f_30@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| ExhaleHeap@@10) o_22@@1 f_30@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10769) (ExhaleHeap@@11 T@PolymorphicMapType_10769) (Mask@@32 T@PolymorphicMapType_10790) (o_22@@2 T@Ref) (f_30@@41 T@Field_17420_17421) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_6208_6209 Mask@@32 o_22@@2 f_30@@41) (= (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@15) o_22@@2 f_30@@41) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@11) o_22@@2 f_30@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| ExhaleHeap@@11) o_22@@2 f_30@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10769) (ExhaleHeap@@12 T@PolymorphicMapType_10769) (Mask@@33 T@PolymorphicMapType_10790) (o_22@@3 T@Ref) (f_30@@42 T@Field_6208_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_6208_2989 Mask@@33 o_22@@3 f_30@@42) (= (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@16) o_22@@3 f_30@@42) (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@12) o_22@@3 f_30@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| ExhaleHeap@@12) o_22@@3 f_30@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10769) (ExhaleHeap@@13 T@PolymorphicMapType_10769) (Mask@@34 T@PolymorphicMapType_10790) (o_22@@4 T@Ref) (f_30@@43 T@Field_6208_6169) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_6208_6169 Mask@@34 o_22@@4 f_30@@43) (= (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@17) o_22@@4 f_30@@43) (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@13) o_22@@4 f_30@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| ExhaleHeap@@13) o_22@@4 f_30@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10769) (ExhaleHeap@@14 T@PolymorphicMapType_10769) (Mask@@35 T@PolymorphicMapType_10790) (o_22@@5 T@Ref) (f_30@@44 T@Field_6168_20304) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6168_32945 Mask@@35 o_22@@5 f_30@@44) (= (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@18) o_22@@5 f_30@@44) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@14) o_22@@5 f_30@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| ExhaleHeap@@14) o_22@@5 f_30@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10769) (ExhaleHeap@@15 T@PolymorphicMapType_10769) (Mask@@36 T@PolymorphicMapType_10790) (o_22@@6 T@Ref) (f_30@@45 T@Field_10829_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6168_53 Mask@@36 o_22@@6 f_30@@45) (= (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@19) o_22@@6 f_30@@45) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@15) o_22@@6 f_30@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| ExhaleHeap@@15) o_22@@6 f_30@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10769) (ExhaleHeap@@16 T@PolymorphicMapType_10769) (Mask@@37 T@PolymorphicMapType_10790) (o_22@@7 T@Ref) (f_30@@46 T@Field_6168_6209) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6168_6209 Mask@@37 o_22@@7 f_30@@46) (= (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@20) o_22@@7 f_30@@46) (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@16) o_22@@7 f_30@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| ExhaleHeap@@16) o_22@@7 f_30@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10769) (ExhaleHeap@@17 T@PolymorphicMapType_10769) (Mask@@38 T@PolymorphicMapType_10790) (o_22@@8 T@Ref) (f_30@@47 T@Field_16847_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6166_2989 Mask@@38 o_22@@8 f_30@@47) (= (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@21) o_22@@8 f_30@@47) (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@17) o_22@@8 f_30@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| ExhaleHeap@@17) o_22@@8 f_30@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10769) (ExhaleHeap@@18 T@PolymorphicMapType_10769) (Mask@@39 T@PolymorphicMapType_10790) (o_22@@9 T@Ref) (f_30@@48 T@Field_10842_10843) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6168_6169 Mask@@39 o_22@@9 f_30@@48) (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@22) o_22@@9 f_30@@48) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@18) o_22@@9 f_30@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| ExhaleHeap@@18) o_22@@9 f_30@@48))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6168_20304) ) (! (= (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_10829_53) ) (! (= (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_10842_10843) ) (! (= (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_16847_2989) ) (! (= (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6168_6209) ) (! (= (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_20299_20304) ) (! (= (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_6208_53) ) (! (= (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6208_6169) ) (! (= (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_6208_2989) ) (! (= (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_17420_17421) ) (! (= (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_5436| (|Seq#Append_2989| s@@7 t@@0) n@@7) (|Seq#Drop_5436| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5436| (|Seq#Append_2989| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10790) (SummandMask1 T@PolymorphicMapType_10790) (SummandMask2 T@PolymorphicMapType_10790) (o_2@@39 T@Ref) (f_4@@39 T@Field_6168_20304) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10790) (SummandMask1@@0 T@PolymorphicMapType_10790) (SummandMask2@@0 T@PolymorphicMapType_10790) (o_2@@40 T@Ref) (f_4@@40 T@Field_10829_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10790) (SummandMask1@@1 T@PolymorphicMapType_10790) (SummandMask2@@1 T@PolymorphicMapType_10790) (o_2@@41 T@Ref) (f_4@@41 T@Field_10842_10843) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10790) (SummandMask1@@2 T@PolymorphicMapType_10790) (SummandMask2@@2 T@PolymorphicMapType_10790) (o_2@@42 T@Ref) (f_4@@42 T@Field_16847_2989) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10790) (SummandMask1@@3 T@PolymorphicMapType_10790) (SummandMask2@@3 T@PolymorphicMapType_10790) (o_2@@43 T@Ref) (f_4@@43 T@Field_6168_6209) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10790) (SummandMask1@@4 T@PolymorphicMapType_10790) (SummandMask2@@4 T@PolymorphicMapType_10790) (o_2@@44 T@Ref) (f_4@@44 T@Field_20299_20304) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10790) (SummandMask1@@5 T@PolymorphicMapType_10790) (SummandMask2@@5 T@PolymorphicMapType_10790) (o_2@@45 T@Ref) (f_4@@45 T@Field_6208_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10790) (SummandMask1@@6 T@PolymorphicMapType_10790) (SummandMask2@@6 T@PolymorphicMapType_10790) (o_2@@46 T@Ref) (f_4@@46 T@Field_6208_6169) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10790) (SummandMask1@@7 T@PolymorphicMapType_10790) (SummandMask2@@7 T@PolymorphicMapType_10790) (o_2@@47 T@Ref) (f_4@@47 T@Field_6208_2989) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10790) (SummandMask1@@8 T@PolymorphicMapType_10790) (SummandMask2@@8 T@PolymorphicMapType_10790) (o_2@@48 T@Ref) (f_4@@48 T@Field_17420_17421) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3026| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3026| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_2867|) (= (|Seq#Append_2989| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2867|) (= (|Seq#Append_2989| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2989| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2989| t@@1) 0) t@@1)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2989| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3026| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3026| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10769) (Mask@@40 T@PolymorphicMapType_10790) (diz@@5 T@Ref) ) (!  (=> (state Heap@@23 Mask@@40) (= (|node__contents'| Heap@@23 diz@@5) (|node__contents#frame| (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@23) null (node__state diz@@5)) diz@@5)))
 :qid |stdinbpl.578:15|
 :skolemid |61|
 :pattern ( (state Heap@@23 Mask@@40) (|node__contents'| Heap@@23 diz@@5))
 :pattern ( (state Heap@@23 Mask@@40) (|node__contents#triggerStateless| diz@@5) (|node__state#trigger_6208| Heap@@23 (node__state diz@@5)))
)))
(assert (forall ((diz@@6 T@Ref) ) (! (= (getPredWandId_6208_6209 (node__state diz@@6)) 0)
 :qid |stdinbpl.708:15|
 :skolemid |65|
 :pattern ( (node__state diz@@6))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2989| t@@2)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2989| t@@2))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10769) (Mask@@41 T@PolymorphicMapType_10790) (diz@@7 T@Ref) ) (!  (=> (and (state Heap@@24 Mask@@41) (< AssumeFunctionsAbove 0)) (=> (not (= diz@@7 null)) (= (node__contents Heap@@24 diz@@7) (ite (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@24) diz@@7 node__next) null) (|Seq#Singleton_2989| (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@24) diz@@7 node__val)) (|Seq#Append_2989| (|Seq#Singleton_2989| (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@24) diz@@7 node__val)) (|node__contents'| Heap@@24 (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@24) diz@@7 node__next)))))))
 :qid |stdinbpl.571:15|
 :skolemid |60|
 :pattern ( (state Heap@@24 Mask@@41) (node__contents Heap@@24 diz@@7))
 :pattern ( (state Heap@@24 Mask@@41) (|node__contents#triggerStateless| diz@@7) (|node__state#trigger_6208| Heap@@24 (node__state diz@@7)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_2989| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2989| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10769) (o_35 T@Ref) (f_11 T@Field_20299_20304) (v@@2 T@PolymorphicMapType_11318) ) (! (succHeap Heap@@25 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@25) (store (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@25) o_35 f_11 v@@2) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@25) (store (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@25) o_35 f_11 v@@2) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@25) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10769) (o_35@@0 T@Ref) (f_11@@0 T@Field_17420_17421) (v@@3 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@26) (store (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@26) o_35@@0 f_11@@0 v@@3) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@26) (store (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@26) o_35@@0 f_11@@0 v@@3) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@26) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10769) (o_35@@1 T@Ref) (f_11@@1 T@Field_6208_2989) (v@@4 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@27) (store (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@27) o_35@@1 f_11@@1 v@@4) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@27) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@27) (store (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@27) o_35@@1 f_11@@1 v@@4) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10769) (o_35@@2 T@Ref) (f_11@@2 T@Field_6208_6169) (v@@5 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@28) (store (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@28) o_35@@2 f_11@@2 v@@5) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@28) (store (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@28) o_35@@2 f_11@@2 v@@5) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@28) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10769) (o_35@@3 T@Ref) (f_11@@3 T@Field_6208_53) (v@@6 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@29) (store (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@29) o_35@@3 f_11@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@29) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@29) (store (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@29) o_35@@3 f_11@@3 v@@6)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10769) (o_35@@4 T@Ref) (f_11@@4 T@Field_6168_20304) (v@@7 T@PolymorphicMapType_11318) ) (! (succHeap Heap@@30 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@30) (store (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@30) o_35@@4 f_11@@4 v@@7) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@30) (store (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@30) o_35@@4 f_11@@4 v@@7) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@30) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10769) (o_35@@5 T@Ref) (f_11@@5 T@Field_6168_6209) (v@@8 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@31) (store (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@31) o_35@@5 f_11@@5 v@@8) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@31) (store (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@31) o_35@@5 f_11@@5 v@@8) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@31) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10769) (o_35@@6 T@Ref) (f_11@@6 T@Field_16847_2989) (v@@9 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@32) (store (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@32) o_35@@6 f_11@@6 v@@9) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@32) (store (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@32) o_35@@6 f_11@@6 v@@9) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@32) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10769) (o_35@@7 T@Ref) (f_11@@7 T@Field_10842_10843) (v@@10 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@33) (store (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@33) o_35@@7 f_11@@7 v@@10) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@33) (store (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@33) o_35@@7 f_11@@7 v@@10) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@33) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10769) (o_35@@8 T@Ref) (f_11@@8 T@Field_10829_53) (v@@11 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_10769 (store (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@34) o_35@@8 f_11@@8 v@@11) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10769 (store (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@34) o_35@@8 f_11@@8 v@@11) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@34) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@34)))
)))
(assert (forall ((diz@@8 T@Ref) ) (! (= (PredicateMaskField_6208 (node__state diz@@8)) (|node__state#sm| diz@@8))
 :qid |stdinbpl.700:15|
 :skolemid |63|
 :pattern ( (PredicateMaskField_6208 (node__state diz@@8)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_5436| (|Seq#Append_2989| s@@12 t@@4) n@@9) (|Seq#Append_2989| (|Seq#Drop_5436| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5436| (|Seq#Append_2989| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_5436| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5436| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2867|)) (not (= s1@@3 |Seq#Empty_2867|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_2989| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2867|)) (not (= s1@@4 |Seq#Empty_2867|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_2989| s0@@4 s1@@4))
)))
(assert (forall ((o_35@@9 T@Ref) (f_31 T@Field_10842_10843) (Heap@@35 T@PolymorphicMapType_10769) ) (!  (=> (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@35) o_35@@9 $allocated) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@35) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@35) o_35@@9 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@35) o_35@@9 f_31))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3026| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3026| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3026| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3026| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_6168_6209) (v_1@@1 T@FrameType) (q T@Field_6168_6209) (w@@1 T@FrameType) (r T@Field_6168_6209) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10829_10829 p@@2 v_1@@1 q w@@1) (InsidePredicate_10829_10829 q w@@1 r u)) (InsidePredicate_10829_10829 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10829_10829 p@@2 v_1@@1 q w@@1) (InsidePredicate_10829_10829 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6168_6209) (v_1@@2 T@FrameType) (q@@0 T@Field_6168_6209) (w@@2 T@FrameType) (r@@0 T@Field_17420_17421) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10829_10829 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10829_6208 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_10829_6208 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10829_10829 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10829_6208 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6168_6209) (v_1@@3 T@FrameType) (q@@1 T@Field_17420_17421) (w@@3 T@FrameType) (r@@1 T@Field_6168_6209) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10829_6208 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6208_10829 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_10829_10829 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10829_6208 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6208_10829 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6168_6209) (v_1@@4 T@FrameType) (q@@2 T@Field_17420_17421) (w@@4 T@FrameType) (r@@2 T@Field_17420_17421) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10829_6208 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6208_6208 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_10829_6208 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10829_6208 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6208_6208 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_17420_17421) (v_1@@5 T@FrameType) (q@@3 T@Field_6168_6209) (w@@5 T@FrameType) (r@@3 T@Field_6168_6209) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6208_10829 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10829_10829 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6208_10829 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6208_10829 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10829_10829 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_17420_17421) (v_1@@6 T@FrameType) (q@@4 T@Field_6168_6209) (w@@6 T@FrameType) (r@@4 T@Field_17420_17421) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6208_10829 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10829_6208 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6208_6208 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6208_10829 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10829_6208 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_17420_17421) (v_1@@7 T@FrameType) (q@@5 T@Field_17420_17421) (w@@7 T@FrameType) (r@@5 T@Field_6168_6209) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6208_6208 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6208_10829 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6208_10829 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6208_6208 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6208_10829 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_17420_17421) (v_1@@8 T@FrameType) (q@@6 T@Field_17420_17421) (w@@8 T@FrameType) (r@@6 T@Field_17420_17421) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6208_6208 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6208_6208 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6208_6208 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6208_6208 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6208_6208 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_2867|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_2867|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_10769)
(declare-fun diz@@9 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_10769)
(declare-fun newPMask@0 () T@PolymorphicMapType_11318)
(declare-fun Heap@2 () T@PolymorphicMapType_10769)
(declare-fun Heap@0 () T@PolymorphicMapType_10769)
(declare-fun Heap@@36 () T@PolymorphicMapType_10769)
(declare-fun |node__contents#trigger| (T@FrameType T@Ref) Bool)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_10790)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_10790)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_10790)
(declare-fun Mask@0 () T@PolymorphicMapType_10790)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2989 (Int) T@FrameType)
(declare-fun FrameFragment_6169 (T@Ref) T@FrameType)
(declare-fun FrameFragment_6209 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_10790)
(set-info :boogie-vc-id |node__contents#definedness|)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon9_correct true))
(let ((anon13_Else_correct  (=> (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 6) 4)) anon9_correct))))
(let ((anon13_Then_correct  (=> (not (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_16847_2989) ) (!  (=> (or (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15 f_20) (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15 f_20)) (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| newPMask@0) o_15 f_20))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_10842_10843) ) (!  (=> (or (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_10829_53) ) (!  (=> (or (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_6168_6209) ) (!  (=> (or (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_6168_20304) ) (!  (=> (or (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_6208_2989) ) (!  (=> (or (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_6208_6169) ) (!  (=> (or (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_6208_53) ) (!  (=> (or (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_17420_17421) ) (!  (=> (or (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_20299_20304) ) (!  (=> (or (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) diz@@9 node__next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.681:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@2 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@1) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@1) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@1) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@1) (store (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@1) null (|node__state#sm| diz@@9) newPMask@0) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@1) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@1) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@1) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@1) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 5) 4))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@36) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@36) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@36) (store (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9) (PolymorphicMapType_11318 (store (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) diz@@9 node__val true) (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@@36) null (|node__state#sm| diz@@9))))) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@@36) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@@36) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@@36) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@@36) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@@36))) (= Heap@1 (PolymorphicMapType_10769 (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@0) (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@0) (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@0) (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@0) (store (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9) (PolymorphicMapType_11318 (|PolymorphicMapType_11318_6166_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (store (|PolymorphicMapType_11318_6168_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) diz@@9 node__next true) (|PolymorphicMapType_11318_6166_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_6166_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_6166_35788#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_2989#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_6169#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_53#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_17421#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))) (|PolymorphicMapType_11318_17420_36836#PolymorphicMapType_11318| (select (|PolymorphicMapType_10769_6212_20391#PolymorphicMapType_10769| Heap@0) null (|node__state#sm| diz@@9))))) (|PolymorphicMapType_10769_6168_6209#PolymorphicMapType_10769| Heap@0) (|PolymorphicMapType_10769_6168_32987#PolymorphicMapType_10769| Heap@0) (|PolymorphicMapType_10769_6208_6169#PolymorphicMapType_10769| Heap@0) (|PolymorphicMapType_10769_6208_2989#PolymorphicMapType_10769| Heap@0) (|PolymorphicMapType_10769_6208_53#PolymorphicMapType_10769| Heap@0)))) (and (=> (= (ControlFlow 0 7) 5) anon13_Then_correct) (=> (= (ControlFlow 0 7) 6) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (|node__contents#trigger| (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@36) null (node__state (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next))) (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next)) (= (ControlFlow 0 10) 7)) anon7_correct)))
(let ((anon11_Then_correct  (=> (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next) null) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_6166_2989 UnfoldingMask@3 diz@@9 node__val)) (=> (HasDirectPerm_6166_2989 UnfoldingMask@3 diz@@9 node__val) (=> (= (ControlFlow 0 8) 7) anon7_correct))))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next) null))) (=> (not (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next) null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| UnfoldingMask@3) null (node__state (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next))))))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next) null)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (HasDirectPerm_6166_2989 UnfoldingMask@3 diz@@9 node__val)) (=> (HasDirectPerm_6166_2989 UnfoldingMask@3 diz@@9 node__val) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_6168_6169 UnfoldingMask@3 diz@@9 node__next)) (=> (HasDirectPerm_6168_6169 UnfoldingMask@3 diz@@9 node__next) (and (=> (= (ControlFlow 0 11) 2) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))))))
(let ((anon2_correct  (=> (state Heap@@36 UnfoldingMask@3) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_6168_6169 UnfoldingMask@3 diz@@9 node__next)) (=> (HasDirectPerm_6168_6169 UnfoldingMask@3 diz@@9 node__next) (and (=> (= (ControlFlow 0 14) 8) anon11_Then_correct) (=> (= (ControlFlow 0 14) 11) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 17) 14)) anon2_correct))))
(let ((anon10_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next) null)) (= UnfoldingMask@2 (PolymorphicMapType_10790 (store (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| UnfoldingMask@1) null (node__state (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next)) (+ (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| UnfoldingMask@1) null (node__state (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next))) FullPerm)) (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| UnfoldingMask@1) (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_6208_6208 (node__state diz@@9) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@36) null (node__state diz@@9)) (node__state (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next)) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@36) null (node__state (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next)))) (state Heap@@36 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 16) 14))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_10769_5978_53#PolymorphicMapType_10769| Heap@@36) diz@@9 $allocated)) (=> (and (and (and (= AssumeFunctionsAbove 0) (not (= diz@@9 null))) (and (state Heap@@36 ZeroMask) (= Mask@0 (PolymorphicMapType_10790 (store (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| ZeroMask) null (node__state diz@@9) (+ (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| ZeroMask) null (node__state diz@@9)) FullPerm)) (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| ZeroMask) (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| ZeroMask))))) (and (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0)) (and (|node__state#trigger_6208| Heap@@36 (node__state diz@@9)) (= (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@36) null (node__state diz@@9)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_10769_6166_2989#PolymorphicMapType_10769| Heap@@36) diz@@9 node__val)) (CombineFrames (FrameFragment_6169 (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next)) (FrameFragment_6209 (ite (not (= (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next) null)) (select (|PolymorphicMapType_10769_6208_6209#PolymorphicMapType_10769| Heap@@36) null (node__state (select (|PolymorphicMapType_10769_5981_5982#PolymorphicMapType_10769| Heap@@36) diz@@9 node__next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| Mask@0) null (node__state diz@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| Mask@0) null (node__state diz@@9)))) (=> (and (not (= diz@@9 null)) (= UnfoldingMask@0 (PolymorphicMapType_10790 (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| Mask@0) (store (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| Mask@0) diz@@9 node__val (+ (select (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| Mask@0) diz@@9 node__val) FullPerm)) (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| Mask@0) (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| Mask@0) (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| Mask@0) (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| Mask@0) (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| Mask@0) (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| Mask@0) (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| Mask@0) (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| Mask@0)))) (=> (and (and (state Heap@@36 UnfoldingMask@0) (not (= diz@@9 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_10790 (|PolymorphicMapType_10790_6208_6209#PolymorphicMapType_10790| UnfoldingMask@0) (|PolymorphicMapType_10790_6166_2989#PolymorphicMapType_10790| UnfoldingMask@0) (store (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| UnfoldingMask@0) diz@@9 node__next (+ (select (|PolymorphicMapType_10790_6168_6169#PolymorphicMapType_10790| UnfoldingMask@0) diz@@9 node__next) FullPerm)) (|PolymorphicMapType_10790_6208_2989#PolymorphicMapType_10790| UnfoldingMask@0) (|PolymorphicMapType_10790_6208_6169#PolymorphicMapType_10790| UnfoldingMask@0) (|PolymorphicMapType_10790_6208_53#PolymorphicMapType_10790| UnfoldingMask@0) (|PolymorphicMapType_10790_6208_42227#PolymorphicMapType_10790| UnfoldingMask@0) (|PolymorphicMapType_10790_6166_6209#PolymorphicMapType_10790| UnfoldingMask@0) (|PolymorphicMapType_10790_6166_53#PolymorphicMapType_10790| UnfoldingMask@0) (|PolymorphicMapType_10790_6166_42626#PolymorphicMapType_10790| UnfoldingMask@0))) (state Heap@@36 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 18) 16) anon10_Then_correct) (=> (= (ControlFlow 0 18) 17) anon10_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 18) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
