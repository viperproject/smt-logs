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
(declare-sort T@Field_15183_53 0)
(declare-sort T@Field_15196_15197 0)
(declare-sort T@Field_22179_3735 0)
(declare-sort T@Field_9812_41772 0)
(declare-sort T@Field_9812_41639 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_15144 0)) (((PolymorphicMapType_15144 (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| (Array T@Ref T@Field_15196_15197 Real)) (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| (Array T@Ref T@Field_22179_3735 Real)) (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| (Array T@Ref T@Field_15183_53 Real)) (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| (Array T@Ref T@Field_9812_41639 Real)) (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| (Array T@Ref T@Field_9812_41772 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15672 0)) (((PolymorphicMapType_15672 (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| (Array T@Ref T@Field_15183_53 Bool)) (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| (Array T@Ref T@Field_15196_15197 Bool)) (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| (Array T@Ref T@Field_22179_3735 Bool)) (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| (Array T@Ref T@Field_9812_41639 Bool)) (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| (Array T@Ref T@Field_9812_41772 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15123 0)) (((PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| (Array T@Ref T@Field_15183_53 Bool)) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| (Array T@Ref T@Field_15196_15197 T@Ref)) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| (Array T@Ref T@Field_22179_3735 Int)) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| (Array T@Ref T@Field_9812_41772 T@PolymorphicMapType_15672)) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| (Array T@Ref T@Field_9812_41639 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_15183_53)
(declare-fun ref_2 () T@Field_15196_15197)
(declare-fun x_36 () T@Field_22179_3735)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_15123 T@PolymorphicMapType_15123) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15123 T@PolymorphicMapType_15123) Bool)
(declare-sort T@treeDomainType 0)
(declare-fun bounded_9811 (T@treeDomainType) Bool)
(declare-fun state (T@PolymorphicMapType_15123 T@PolymorphicMapType_15144) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15144) Bool)
(declare-fun node_1 (T@treeDomainType T@treeDomainType) T@treeDomainType)
(declare-fun decreasing_9800 (T@treeDomainType T@treeDomainType) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15672)
(declare-sort T@pointerDomainType 0)
(declare-fun |ptr_add'| (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@pointerDomainType)
(declare-fun dummyFunction_9873 (T@pointerDomainType) Bool)
(declare-fun |ptr_add#triggerStateless| (T@pointerDomainType Int) T@pointerDomainType)
(declare-fun |inp_to_seq_2'| (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@Seq_2963)
(declare-fun dummyFunction_23779 (T@Seq_2963) Bool)
(declare-fun |inp_to_seq_2#triggerStateless| (T@pointerDomainType Int) T@Seq_2963)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |ptr_add#frame| (T@FrameType T@pointerDomainType Int) T@pointerDomainType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_4579| () T@Seq_2963)
(declare-fun |ptr_deref'| (T@PolymorphicMapType_15123 T@pointerDomainType) T@Ref)
(declare-fun dummyFunction_9841 (T@Ref) Bool)
(declare-fun |ptr_deref#triggerStateless| (T@pointerDomainType) T@Ref)
(declare-fun |leafCount'| (T@PolymorphicMapType_15123 T@treeDomainType) Int)
(declare-fun dummyFunction_6826 (Int) Bool)
(declare-fun |leafCount#triggerStateless| (T@treeDomainType) Int)
(declare-fun |id'| (T@PolymorphicMapType_15123 Int) Int)
(declare-fun |id#triggerStateless| (Int) Int)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun ptr_deref (T@PolymorphicMapType_15123 T@pointerDomainType) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-sort T@blockDomainType 0)
(declare-fun loc (T@blockDomainType Int) T@Ref)
(declare-fun pointer_block (T@pointerDomainType) T@blockDomainType)
(declare-fun pointer_offset (T@pointerDomainType) Int)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun leafCount (T@PolymorphicMapType_15123 T@treeDomainType) Int)
(declare-fun id (T@PolymorphicMapType_15123 Int) Int)
(declare-fun decreasing_3307 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15123 T@PolymorphicMapType_15123 T@PolymorphicMapType_15144) Bool)
(declare-fun IsPredicateField_9812_41730 (T@Field_9812_41639) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9812 (T@Field_9812_41639) T@Field_9812_41772)
(declare-fun HasDirectPerm_9812_41703 (T@PolymorphicMapType_15144 T@Ref T@Field_9812_41639) Bool)
(declare-fun IsWandField_9812_43477 (T@Field_9812_41639) Bool)
(declare-fun WandMaskField_9812 (T@Field_9812_41639) T@Field_9812_41772)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_15123)
(declare-fun ZeroMask () T@PolymorphicMapType_15144)
(declare-fun |inp_to_seq_2#condqp2| (T@PolymorphicMapType_15123 T@pointerDomainType Int) Int)
(declare-fun |sk_inp_to_seq_2#condqp2| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun ptr_add (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@pointerDomainType)
(declare-fun InsidePredicate_15183_15183 (T@Field_9812_41639 T@FrameType T@Field_9812_41639 T@FrameType) Bool)
(declare-fun block_length (T@blockDomainType) Int)
(declare-fun pointer_of (T@blockDomainType Int) T@pointerDomainType)
(declare-fun IsPredicateField_9812_9813 (T@Field_15196_15197) Bool)
(declare-fun IsWandField_9812_9813 (T@Field_15196_15197) Bool)
(declare-fun IsPredicateField_9815_3735 (T@Field_22179_3735) Bool)
(declare-fun IsWandField_9815_3735 (T@Field_22179_3735) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9812_46994 (T@Field_9812_41772) Bool)
(declare-fun IsWandField_9812_47010 (T@Field_9812_41772) Bool)
(declare-fun IsPredicateField_9812_53 (T@Field_15183_53) Bool)
(declare-fun IsWandField_9812_53 (T@Field_15183_53) Bool)
(declare-fun HasDirectPerm_9812_47448 (T@PolymorphicMapType_15144 T@Ref T@Field_9812_41772) Bool)
(declare-fun HasDirectPerm_9812_3735 (T@PolymorphicMapType_15144 T@Ref T@Field_22179_3735) Bool)
(declare-fun HasDirectPerm_9812_53 (T@PolymorphicMapType_15144 T@Ref T@Field_15183_53) Bool)
(declare-fun HasDirectPerm_9812_9813 (T@PolymorphicMapType_15144 T@Ref T@Field_15196_15197) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun inp_to_seq_2 (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@Seq_2963)
(declare-fun sumMask (T@PolymorphicMapType_15144 T@PolymorphicMapType_15144 T@PolymorphicMapType_15144) Bool)
(declare-fun |ptr_deref#frame| (T@FrameType T@pointerDomainType) T@Ref)
(declare-fun bounded_3332 (Int) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun tree_tag (T@treeDomainType) Int)
(declare-fun get_tree_left (T@treeDomainType) T@treeDomainType)
(declare-fun get_tree_right (T@treeDomainType) T@treeDomainType)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun leaf (Int) T@treeDomainType)
(declare-fun |leafCount#frame| (T@FrameType T@treeDomainType) Int)
(declare-fun |id#frame| (T@FrameType Int) Int)
(declare-fun get_tree_value (T@treeDomainType) Int)
(declare-fun loc_inv_1 (T@Ref) T@blockDomainType)
(declare-fun loc_inv_2 (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(declare-fun |inp_to_seq_2#frame| (T@FrameType T@pointerDomainType Int) T@Seq_2963)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4671 (Int) T@FrameType)
(declare-fun |inp_to_seq_2#condqp1| (T@PolymorphicMapType_15123 T@pointerDomainType Int) Int)
(declare-fun |sk_inp_to_seq_2#condqp1| (Int Int) Int)
(assert (forall ((s T@Seq_2963) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2963| s)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s n)) (- (|Seq#Length_2963| s) n))) (=> (< (|Seq#Length_2963| s) n) (= (|Seq#Length_2963| (|Seq#Drop_2963| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s n)) (|Seq#Length_2963| s))))
 :qid |stdinbpl.304:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s n)))
 :pattern ( (|Seq#Length_2963| s) (|Seq#Drop_2963| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15123) (Heap1 T@PolymorphicMapType_15123) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@treeDomainType) ) (! (bounded_9811 x)
 :qid |stdinbpl.749:15|
 :skolemid |73|
 :pattern ( (bounded_9811 x))
)))
(assert (forall ((Heap T@PolymorphicMapType_15123) (Mask T@PolymorphicMapType_15144) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((left_0 T@treeDomainType) (right T@treeDomainType) ) (! (decreasing_9800 left_0 (node_1 left_0 right))
 :qid |stdinbpl.737:14|
 :skolemid |71|
 :pattern ( (node_1 left_0 right))
)))
(assert (forall ((right_0 T@treeDomainType) (left_1 T@treeDomainType) ) (! (decreasing_9800 right_0 (node_1 left_1 right_0))
 :qid |stdinbpl.734:15|
 :skolemid |70|
 :pattern ( (node_1 left_1 right_0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15123) (Heap1@@0 T@PolymorphicMapType_15123) (Heap2 T@PolymorphicMapType_15123) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@treeDomainType) (v2 T@treeDomainType) (v3 T@treeDomainType) ) (!  (=> (and (decreasing_9800 v1 v2) (decreasing_9800 v2 v3)) (decreasing_9800 v1 v3))
 :qid |stdinbpl.743:15|
 :skolemid |72|
 :pattern ( (decreasing_9800 v1 v2) (decreasing_9800 v2 v3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9812_41772) ) (!  (not (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9812_41639) ) (!  (not (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22179_3735) ) (!  (not (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15196_15197) ) (!  (not (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15183_53) ) (!  (not (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15123) (p_1 T@pointerDomainType) (offset Int) ) (! (dummyFunction_9873 (|ptr_add#triggerStateless| p_1 offset))
 :qid |stdinbpl.826:15|
 :skolemid |79|
 :pattern ( (|ptr_add'| Heap@@0 p_1 offset))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15123) (inp T@pointerDomainType) (n@@0 Int) ) (! (dummyFunction_23779 (|inp_to_seq_2#triggerStateless| inp n@@0))
 :qid |stdinbpl.882:15|
 :skolemid |83|
 :pattern ( (|inp_to_seq_2'| Heap@@1 inp n@@0))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_2963| s@@0) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@0 n@@1) j) (|Seq#Index_2963| s@@0 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.325:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@0 n@@1) j))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15123) (Mask@@0 T@PolymorphicMapType_15144) (p_1@@0 T@pointerDomainType) (offset@@0 Int) ) (!  (=> (state Heap@@2 Mask@@0) (= (|ptr_add'| Heap@@2 p_1@@0 offset@@0) (|ptr_add#frame| EmptyFrame p_1@@0 offset@@0)))
 :qid |stdinbpl.839:15|
 :skolemid |81|
 :pattern ( (state Heap@@2 Mask@@0) (|ptr_add'| Heap@@2 p_1@@0 offset@@0))
)))
(assert (= (|Seq#Length_2963| |Seq#Empty_4579|) 0))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15123) (p_1@@1 T@pointerDomainType) ) (! (dummyFunction_9841 (|ptr_deref#triggerStateless| p_1@@1))
 :qid |stdinbpl.776:15|
 :skolemid |75|
 :pattern ( (|ptr_deref'| Heap@@3 p_1@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15123) (t_2 T@treeDomainType) ) (! (dummyFunction_6826 (|leafCount#triggerStateless| t_2))
 :qid |stdinbpl.1145:15|
 :skolemid |105|
 :pattern ( (|leafCount'| Heap@@4 t_2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15123) (i Int) ) (! (dummyFunction_6826 (|id#triggerStateless| i))
 :qid |stdinbpl.1220:15|
 :skolemid |109|
 :pattern ( (|id'| Heap@@5 i))
)))
(assert (forall ((s@@1 T@Seq_2963) (i@@0 Int) (v Int) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (< n@@2 (|Seq#Length_2963| s@@1))) (and (=> (= i@@0 n@@2) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@1 i@@0 v) n@@2) v)) (=> (not (= i@@0 n@@2)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@1 i@@0 v) n@@2) (|Seq#Index_2963| s@@1 n@@2)))))
 :qid |stdinbpl.280:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@1 i@@0 v) n@@2))
 :pattern ( (|Seq#Index_2963| s@@1 n@@2) (|Seq#Update_2963| s@@1 i@@0 v))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@3 Int) ) (!  (and (=> (<= 0 n@@3) (and (=> (<= n@@3 (|Seq#Length_2963| s@@2)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)) n@@3)) (=> (< (|Seq#Length_2963| s@@2) n@@3) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)) (|Seq#Length_2963| s@@2))))) (=> (< n@@3 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)) 0)))
 :qid |stdinbpl.291:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)))
 :pattern ( (|Seq#Take_2963| s@@2 n@@3) (|Seq#Length_2963| s@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15123) (Mask@@1 T@PolymorphicMapType_15144) (p_1@@2 T@pointerDomainType) ) (!  (=> (and (state Heap@@6 Mask@@1) (< AssumeFunctionsAbove 3)) (= (ptr_deref Heap@@6 p_1@@2) (loc (pointer_block p_1@@2) (pointer_offset p_1@@2))))
 :qid |stdinbpl.782:15|
 :skolemid |76|
 :pattern ( (state Heap@@6 Mask@@1) (ptr_deref Heap@@6 p_1@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.565:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@3 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@3 x@@0)) (< (|Seq#Skolem_2963| s@@3 x@@0) (|Seq#Length_2963| s@@3))) (= (|Seq#Index_2963| s@@3 (|Seq#Skolem_2963| s@@3 x@@0)) x@@0)))
 :qid |stdinbpl.423:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@3 x@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15123) (p_1@@3 T@pointerDomainType) ) (!  (and (= (ptr_deref Heap@@7 p_1@@3) (|ptr_deref'| Heap@@7 p_1@@3)) (dummyFunction_9841 (|ptr_deref#triggerStateless| p_1@@3)))
 :qid |stdinbpl.772:15|
 :skolemid |74|
 :pattern ( (ptr_deref Heap@@7 p_1@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15123) (t_2@@0 T@treeDomainType) ) (!  (and (= (leafCount Heap@@8 t_2@@0) (|leafCount'| Heap@@8 t_2@@0)) (dummyFunction_6826 (|leafCount#triggerStateless| t_2@@0)))
 :qid |stdinbpl.1141:15|
 :skolemid |104|
 :pattern ( (leafCount Heap@@8 t_2@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15123) (i@@1 Int) ) (!  (and (= (id Heap@@9 i@@1) (|id'| Heap@@9 i@@1)) (dummyFunction_6826 (|id#triggerStateless| i@@1)))
 :qid |stdinbpl.1216:15|
 :skolemid |108|
 :pattern ( (id Heap@@9 i@@1))
)))
(assert (forall ((s@@4 T@Seq_2963) (n@@4 Int) ) (!  (=> (<= n@@4 0) (= (|Seq#Drop_2963| s@@4 n@@4) s@@4))
 :qid |stdinbpl.407:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@4 n@@4))
)))
(assert (forall ((i@@2 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@2 j@@0) (- i@@2 j@@0))
 :qid |stdinbpl.260:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@0))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@3 j@@1) (+ i@@3 j@@1))
 :qid |stdinbpl.258:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@1))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_3307 int1 int2))
 :qid |stdinbpl.638:15|
 :skolemid |62|
 :pattern ( (decreasing_3307 int1 int2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15123) (ExhaleHeap T@PolymorphicMapType_15123) (Mask@@2 T@PolymorphicMapType_15144) (pm_f_1 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_9812_41703 Mask@@2 null pm_f_1) (IsPredicateField_9812_41730 pm_f_1)) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@10) null (PredicateMaskField_9812 pm_f_1)) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap) null (PredicateMaskField_9812 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (IsPredicateField_9812_41730 pm_f_1) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap) null (PredicateMaskField_9812 pm_f_1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15123) (ExhaleHeap@@0 T@PolymorphicMapType_15123) (Mask@@3 T@PolymorphicMapType_15144) (pm_f_1@@0 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_9812_41703 Mask@@3 null pm_f_1@@0) (IsWandField_9812_43477 pm_f_1@@0)) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@11) null (WandMaskField_9812 pm_f_1@@0)) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@0) null (WandMaskField_9812 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (IsWandField_9812_43477 pm_f_1@@0) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@0) null (WandMaskField_9812 pm_f_1@@0)))
)))
(assert (forall ((x@@1 Int) (y Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.548:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@1) y))
)))
(assert (forall ((s@@5 T@Seq_2963) (n@@5 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@5)) (< j@@2 (|Seq#Length_2963| s@@5))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@5 n@@5) j@@2) (|Seq#Index_2963| s@@5 j@@2)))
 :qid |stdinbpl.299:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@5 n@@5) j@@2))
 :pattern ( (|Seq#Index_2963| s@@5 j@@2) (|Seq#Take_2963| s@@5 n@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (t T@Seq_2963) (n@@6 Int) ) (!  (=> (and (and (> n@@6 0) (> n@@6 (|Seq#Length_2963| s@@6))) (< n@@6 (|Seq#Length_2963| (|Seq#Append_2963| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2963| s@@6)) (|Seq#Length_2963| s@@6)) n@@6) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@6 t) n@@6) (|Seq#Append_2963| s@@6 (|Seq#Take_2963| t (|Seq#Sub| n@@6 (|Seq#Length_2963| s@@6)))))))
 :qid |stdinbpl.384:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@6 t) n@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap2Heap T@PolymorphicMapType_15123) (Heap1Heap T@PolymorphicMapType_15123) (inp@@0 T@pointerDomainType) (n@@7 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7))) (< (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)) n@@7)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))  (and (and (<= 0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7))) (< (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)) n@@7)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))) (=> (and (and (<= 0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7))) (< (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)) n@@7)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10)))) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap2Heap) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap2Heap) (ptr_deref Heap2Heap (ptr_add Heap2Heap inp@@0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)))) ref_2) x_36) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap1Heap) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap1Heap) (ptr_deref Heap1Heap (ptr_add Heap1Heap inp@@0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)))) ref_2) x_36)))) (= (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)))
 :qid |stdinbpl.918:15|
 :skolemid |88|
 :pattern ( (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15123) (ExhaleHeap@@1 T@PolymorphicMapType_15123) (Mask@@4 T@PolymorphicMapType_15144) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@12) o_3 $allocated) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_9812_41639) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15183_15183 p v_1 p w))
 :qid |stdinbpl.202:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15183_15183 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2963) (s1 T@Seq_2963) (n@@8 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4579|)) (not (= s1 |Seq#Empty_4579|))) (<= (|Seq#Length_2963| s0) n@@8)) (< n@@8 (|Seq#Length_2963| (|Seq#Append_2963| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@8 (|Seq#Length_2963| s0)) (|Seq#Length_2963| s0)) n@@8) (= (|Seq#Index_2963| (|Seq#Append_2963| s0 s1) n@@8) (|Seq#Index_2963| s1 (|Seq#Sub| n@@8 (|Seq#Length_2963| s0))))))
 :qid |stdinbpl.271:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0 s1) n@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15123) (Mask@@5 T@PolymorphicMapType_15144) (p_1@@4 T@pointerDomainType) (offset@@1 Int) ) (!  (=> (and (state Heap@@13 Mask@@5) (< AssumeFunctionsAbove 4)) (=> (and (<= 0 (+ (pointer_offset p_1@@4) offset@@1)) (< (+ (pointer_offset p_1@@4) offset@@1) (block_length (pointer_block p_1@@4)))) (= (ptr_add Heap@@13 p_1@@4 offset@@1) (pointer_of (pointer_block p_1@@4) (+ (pointer_offset p_1@@4) offset@@1)))))
 :qid |stdinbpl.832:15|
 :skolemid |80|
 :pattern ( (state Heap@@13 Mask@@5) (ptr_add Heap@@13 p_1@@4 offset@@1))
)))
(assert  (not (IsPredicateField_9812_9813 ref_2)))
(assert  (not (IsWandField_9812_9813 ref_2)))
(assert  (not (IsPredicateField_9815_3735 x_36)))
(assert  (not (IsWandField_9815_3735 x_36)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15123) (ExhaleHeap@@2 T@PolymorphicMapType_15123) (Mask@@6 T@PolymorphicMapType_15144) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@14 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_15144) (o_2@@4 T@Ref) (f_4@@4 T@Field_9812_41772) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9812_46994 f_4@@4))) (not (IsWandField_9812_47010 f_4@@4))) (<= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15144) (o_2@@5 T@Ref) (f_4@@5 T@Field_9812_41639) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9812_41730 f_4@@5))) (not (IsWandField_9812_43477 f_4@@5))) (<= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15144) (o_2@@6 T@Ref) (f_4@@6 T@Field_15183_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9812_53 f_4@@6))) (not (IsWandField_9812_53 f_4@@6))) (<= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15144) (o_2@@7 T@Ref) (f_4@@7 T@Field_22179_3735) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9815_3735 f_4@@7))) (not (IsWandField_9815_3735 f_4@@7))) (<= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15144) (o_2@@8 T@Ref) (f_4@@8 T@Field_15196_15197) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9812_9813 f_4@@8))) (not (IsWandField_9812_9813 f_4@@8))) (<= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((p_1@@5 T@pointerDomainType) ) (!  (and (>= (pointer_offset p_1@@5) 0) (< (pointer_offset p_1@@5) (block_length (pointer_block p_1@@5))))
 :qid |stdinbpl.619:15|
 :skolemid |60|
 :pattern ( (pointer_offset p_1@@5))
 :pattern ( (block_length (pointer_block p_1@@5)))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15144) (o_2@@9 T@Ref) (f_4@@9 T@Field_9812_41772) ) (! (= (HasDirectPerm_9812_47448 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_47448 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15144) (o_2@@10 T@Ref) (f_4@@10 T@Field_9812_41639) ) (! (= (HasDirectPerm_9812_41703 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_41703 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15144) (o_2@@11 T@Ref) (f_4@@11 T@Field_22179_3735) ) (! (= (HasDirectPerm_9812_3735 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_3735 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15144) (o_2@@12 T@Ref) (f_4@@12 T@Field_15183_53) ) (! (= (HasDirectPerm_9812_53 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_53 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15144) (o_2@@13 T@Ref) (f_4@@13 T@Field_15196_15197) ) (! (= (HasDirectPerm_9812_9813 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_9813 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15123) (ExhaleHeap@@3 T@PolymorphicMapType_15123) (Mask@@17 T@PolymorphicMapType_15144) (pm_f_1@@1 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_9812_41703 Mask@@17 null pm_f_1@@1) (IsPredicateField_9812_41730 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_15183_53) ) (!  (=> (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@15) o2_1 f_8) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_15196_15197) ) (!  (=> (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@15) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_22179_3735) ) (!  (=> (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@15) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_9812_41639) ) (!  (=> (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@15) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_9812_41772) ) (!  (=> (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@17) (IsPredicateField_9812_41730 pm_f_1@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15123) (ExhaleHeap@@4 T@PolymorphicMapType_15123) (Mask@@18 T@PolymorphicMapType_15144) (pm_f_1@@2 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_9812_41703 Mask@@18 null pm_f_1@@2) (IsWandField_9812_43477 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_15183_53) ) (!  (=> (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@16) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_15196_15197) ) (!  (=> (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@16) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_22179_3735) ) (!  (=> (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@16) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_9812_41639) ) (!  (=> (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@16) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_9812_41772) ) (!  (=> (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@18) (IsWandField_9812_43477 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.190:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.563:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15123) (ExhaleHeap@@5 T@PolymorphicMapType_15123) (Mask@@19 T@PolymorphicMapType_15144) (o_3@@0 T@Ref) (f_8@@9 T@Field_9812_41772) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_9812_47448 Mask@@19 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@17) o_3@@0 f_8@@9) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15123) (ExhaleHeap@@6 T@PolymorphicMapType_15123) (Mask@@20 T@PolymorphicMapType_15144) (o_3@@1 T@Ref) (f_8@@10 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_9812_41703 Mask@@20 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@18) o_3@@1 f_8@@10) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15123) (ExhaleHeap@@7 T@PolymorphicMapType_15123) (Mask@@21 T@PolymorphicMapType_15144) (o_3@@2 T@Ref) (f_8@@11 T@Field_22179_3735) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_9812_3735 Mask@@21 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@19) o_3@@2 f_8@@11) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15123) (ExhaleHeap@@8 T@PolymorphicMapType_15123) (Mask@@22 T@PolymorphicMapType_15144) (o_3@@3 T@Ref) (f_8@@12 T@Field_15183_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_9812_53 Mask@@22 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@20) o_3@@3 f_8@@12) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15123) (ExhaleHeap@@9 T@PolymorphicMapType_15123) (Mask@@23 T@PolymorphicMapType_15144) (o_3@@4 T@Ref) (f_8@@13 T@Field_15196_15197) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_9812_9813 Mask@@23 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@21) o_3@@4 f_8@@13) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_4579|)) (not (= s1@@0 |Seq#Empty_4579|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)) (+ (|Seq#Length_2963| s0@@0) (|Seq#Length_2963| s1@@0))))
 :qid |stdinbpl.240:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9812_41772) ) (! (= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9812_41639) ) (! (= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15183_53) ) (! (= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22179_3735) ) (! (= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15196_15197) ) (! (= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_2963) (t@@0 T@Seq_2963) (n@@9 Int) ) (!  (=> (and (> n@@9 0) (> n@@9 (|Seq#Length_2963| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@9 (|Seq#Length_2963| s@@7)) (|Seq#Length_2963| s@@7)) n@@9) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@7 t@@0) n@@9) (|Seq#Drop_2963| t@@0 (|Seq#Sub| n@@9 (|Seq#Length_2963| s@@7))))))
 :qid |stdinbpl.397:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@7 t@@0) n@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15123) (p_1@@6 T@pointerDomainType) (offset@@2 Int) ) (!  (and (= (ptr_add Heap@@22 p_1@@6 offset@@2) (|ptr_add'| Heap@@22 p_1@@6 offset@@2)) (dummyFunction_9873 (|ptr_add#triggerStateless| p_1@@6 offset@@2)))
 :qid |stdinbpl.822:15|
 :skolemid |78|
 :pattern ( (ptr_add Heap@@22 p_1@@6 offset@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15123) (inp@@1 T@pointerDomainType) (n@@10 Int) ) (!  (and (= (inp_to_seq_2 Heap@@23 inp@@1 n@@10) (|inp_to_seq_2'| Heap@@23 inp@@1 n@@10)) (dummyFunction_23779 (|inp_to_seq_2#triggerStateless| inp@@1 n@@10)))
 :qid |stdinbpl.878:15|
 :skolemid |82|
 :pattern ( (inp_to_seq_2 Heap@@23 inp@@1 n@@10))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15144) (SummandMask1 T@PolymorphicMapType_15144) (SummandMask2 T@PolymorphicMapType_15144) (o_2@@19 T@Ref) (f_4@@19 T@Field_9812_41772) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15144) (SummandMask1@@0 T@PolymorphicMapType_15144) (SummandMask2@@0 T@PolymorphicMapType_15144) (o_2@@20 T@Ref) (f_4@@20 T@Field_9812_41639) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15144) (SummandMask1@@1 T@PolymorphicMapType_15144) (SummandMask2@@1 T@PolymorphicMapType_15144) (o_2@@21 T@Ref) (f_4@@21 T@Field_15183_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15144) (SummandMask1@@2 T@PolymorphicMapType_15144) (SummandMask2@@2 T@PolymorphicMapType_15144) (o_2@@22 T@Ref) (f_4@@22 T@Field_22179_3735) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15144) (SummandMask1@@3 T@PolymorphicMapType_15144) (SummandMask2@@3 T@PolymorphicMapType_15144) (o_2@@23 T@Ref) (f_4@@23 T@Field_15196_15197) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.562:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15123) (Mask@@24 T@PolymorphicMapType_15144) (inp@@2 T@pointerDomainType) (n@@11 Int) ) (!  (=> (and (state Heap@@24 Mask@@24) (< AssumeFunctionsAbove 1)) (=> (and (<= n@@11 (- (block_length (pointer_block inp@@2)) (pointer_offset inp@@2))) (forall ((i_1 Int) (j_9 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 n@@11) (and (<= 0 j_9) (< j_9 n@@11)))) (=> (not (= i_1 j_9)) (not (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@24) (ptr_deref Heap@@24 (ptr_add Heap@@24 inp@@2 i_1)) ref_2) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@24) (ptr_deref Heap@@24 (ptr_add Heap@@24 inp@@2 j_9)) ref_2)))))
 :qid |stdinbpl.890:157|
 :skolemid |84|
 :pattern ( (|ptr_add#frame| EmptyFrame inp@@2 i_1) (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 j_9)))
 :pattern ( (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 i_1)) (|ptr_add#frame| EmptyFrame inp@@2 j_9))
 :pattern ( (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 i_1)) (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 j_9)))
))) (= (inp_to_seq_2 Heap@@24 inp@@2 n@@11) |Seq#Empty_4579|)))
 :qid |stdinbpl.888:15|
 :skolemid |85|
 :pattern ( (state Heap@@24 Mask@@24) (inp_to_seq_2 Heap@@24 inp@@2 n@@11))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_3332 int1@@0))
 :qid |stdinbpl.644:15|
 :skolemid |63|
 :pattern ( (bounded_3332 int1@@0))
)))
(assert (forall ((a T@Seq_2963) (b T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a b) (= a b))
 :qid |stdinbpl.535:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a b))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15123) (Mask@@25 T@PolymorphicMapType_15144) (t_2@@1 T@treeDomainType) ) (!  (=> (and (state Heap@@25 Mask@@25) (< AssumeFunctionsAbove 0)) (= (leafCount Heap@@25 t_2@@1) (id Heap@@25 (ite  (and (= (tree_tag t_2@@1) 0) (= (tree_tag t_2@@1) 0)) 1 (+ (|leafCount'| Heap@@25 (get_tree_left t_2@@1)) (|leafCount'| Heap@@25 (get_tree_right t_2@@1)))))))
 :qid |stdinbpl.1151:15|
 :skolemid |106|
 :pattern ( (state Heap@@25 Mask@@25) (leafCount Heap@@25 t_2@@1))
)))
(assert (forall ((b_24 T@blockDomainType) ) (! (>= (block_length b_24) 0)
 :qid |stdinbpl.591:15|
 :skolemid |58|
 :pattern ( (block_length b_24))
)))
(assert (forall ((s@@8 T@Seq_2963) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2963| s@@8))) (|Seq#ContainsTrigger_2963| s@@8 (|Seq#Index_2963| s@@8 i@@4)))
 :qid |stdinbpl.428:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@8 i@@4))
)))
(assert (forall ((s0@@1 T@Seq_2963) (s1@@1 T@Seq_2963) ) (!  (and (=> (= s0@@1 |Seq#Empty_4579|) (= (|Seq#Append_2963| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_4579|) (= (|Seq#Append_2963| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.246:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@1) 0) t@@1)
 :qid |stdinbpl.250:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@9))
 :qid |stdinbpl.229:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@9))
)))
(assert (forall ((left_1@@0 T@treeDomainType) (right@@0 T@treeDomainType) ) (! (= (tree_tag (node_1 left_1@@0 right@@0)) 1)
 :qid |stdinbpl.712:15|
 :skolemid |68|
 :pattern ( (node_1 left_1@@0 right@@0))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@2 s1@@2) (and (= (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2963| s0@@2))) (= (|Seq#Index_2963| s0@@2 j@@4) (|Seq#Index_2963| s1@@2 j@@4)))
 :qid |stdinbpl.525:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2963| s1@@2 j@@4))
))))
 :qid |stdinbpl.522:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@2 s1@@2))
)))
(assert (forall ((value_1 Int) ) (! (= (tree_tag (leaf value_1)) 0)
 :qid |stdinbpl.706:15|
 :skolemid |67|
 :pattern ( (leaf value_1))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@2)) 1)
 :qid |stdinbpl.237:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15123) (Mask@@26 T@PolymorphicMapType_15144) (p_1@@7 T@pointerDomainType) ) (!  (=> (state Heap@@26 Mask@@26) (= (|ptr_deref'| Heap@@26 p_1@@7) (|ptr_deref#frame| EmptyFrame p_1@@7)))
 :qid |stdinbpl.789:15|
 :skolemid |77|
 :pattern ( (state Heap@@26 Mask@@26) (|ptr_deref'| Heap@@26 p_1@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15123) (Mask@@27 T@PolymorphicMapType_15144) (t_2@@2 T@treeDomainType) ) (!  (=> (state Heap@@27 Mask@@27) (= (|leafCount'| Heap@@27 t_2@@2) (|leafCount#frame| EmptyFrame t_2@@2)))
 :qid |stdinbpl.1158:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (|leafCount'| Heap@@27 t_2@@2))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15123) (Mask@@28 T@PolymorphicMapType_15144) (i@@5 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|id'| Heap@@28 i@@5) (|id#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.1233:15|
 :skolemid |111|
 :pattern ( (state Heap@@28 Mask@@28) (|id'| Heap@@28 i@@5))
)))
(assert (forall ((left_1@@1 T@treeDomainType) (right@@1 T@treeDomainType) ) (! (= left_1@@1 (get_tree_left (node_1 left_1@@1 right@@1)))
 :qid |stdinbpl.694:15|
 :skolemid |65|
 :pattern ( (node_1 left_1@@1 right@@1))
)))
(assert (forall ((left_1@@2 T@treeDomainType) (right@@2 T@treeDomainType) ) (! (= right@@2 (get_tree_right (node_1 left_1@@2 right@@2)))
 :qid |stdinbpl.700:15|
 :skolemid |66|
 :pattern ( (node_1 left_1@@2 right@@2))
)))
(assert (forall ((s@@10 T@Seq_2963) (t@@3 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (< 0 n@@12) (<= n@@12 (|Seq#Length_2963| s@@10))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@10 t@@3) n@@12) (|Seq#Take_2963| s@@10 n@@12)))
 :qid |stdinbpl.379:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@10 t@@3) n@@12))
)))
(assert (forall ((value_1@@0 Int) ) (! (= value_1@@0 (get_tree_value (leaf value_1@@0)))
 :qid |stdinbpl.688:15|
 :skolemid |64|
 :pattern ( (leaf value_1@@0))
)))
(assert (forall ((s@@11 T@Seq_2963) (i@@6 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2963| s@@11))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@11 i@@6 v@@1)) (|Seq#Length_2963| s@@11)))
 :qid |stdinbpl.278:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@11 i@@6 v@@1)))
 :pattern ( (|Seq#Length_2963| s@@11) (|Seq#Update_2963| s@@11 i@@6 v@@1))
)))
(assert (forall ((b_24@@0 T@blockDomainType) (i@@7 Int) ) (!  (and (= (loc_inv_1 (loc b_24@@0 i@@7)) b_24@@0) (= (loc_inv_2 (loc b_24@@0 i@@7)) i@@7))
 :qid |stdinbpl.597:15|
 :skolemid |59|
 :pattern ( (loc b_24@@0 i@@7))
)))
(assert (forall ((b_24@@1 T@blockDomainType) (offset@@3 Int) ) (!  (and (= (pointer_block (pointer_of b_24@@1 offset@@3)) b_24@@1) (= (pointer_offset (pointer_of b_24@@1 offset@@3)) offset@@3))
 :qid |stdinbpl.625:15|
 :skolemid |61|
 :pattern ( (pointer_block (pointer_of b_24@@1 offset@@3)) (pointer_offset (pointer_of b_24@@1 offset@@3)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15123) (o_1 T@Ref) (f_9 T@Field_9812_41639) (v@@2 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@29) (store (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@29) o_1 f_9 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@29) (store (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@29) o_1 f_9 v@@2)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15123) (o_1@@0 T@Ref) (f_9@@0 T@Field_9812_41772) (v@@3 T@PolymorphicMapType_15672) ) (! (succHeap Heap@@30 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@30) (store (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@30) o_1@@0 f_9@@0 v@@3) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@30) (store (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@30) o_1@@0 f_9@@0 v@@3) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15123) (o_1@@1 T@Ref) (f_9@@1 T@Field_22179_3735) (v@@4 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@31) (store (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@31) o_1@@1 f_9@@1 v@@4) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@31) (store (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@31) o_1@@1 f_9@@1 v@@4) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15123) (o_1@@2 T@Ref) (f_9@@2 T@Field_15196_15197) (v@@5 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@32) (store (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@32) o_1@@2 f_9@@2 v@@5) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@32) (store (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@32) o_1@@2 f_9@@2 v@@5) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15123) (o_1@@3 T@Ref) (f_9@@3 T@Field_15183_53) (v@@6 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_15123 (store (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@33) o_1@@3 f_9@@3 v@@6) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (store (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@33) o_1@@3 f_9@@3 v@@6) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@33)))
)))
(assert (forall ((s@@12 T@Seq_2963) (t@@4 T@Seq_2963) (n@@13 Int) ) (!  (=> (and (< 0 n@@13) (<= n@@13 (|Seq#Length_2963| s@@12))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@12 t@@4) n@@13) (|Seq#Append_2963| (|Seq#Drop_2963| s@@12 n@@13) t@@4)))
 :qid |stdinbpl.393:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@12 t@@4) n@@13))
)))
(assert (forall ((s@@13 T@Seq_2963) (n@@14 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@14) (<= n@@14 i@@8)) (< i@@8 (|Seq#Length_2963| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@14) n@@14) i@@8) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@13 n@@14) (|Seq#Sub| i@@8 n@@14)) (|Seq#Index_2963| s@@13 i@@8))))
 :qid |stdinbpl.329:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@13 n@@14) (|Seq#Index_2963| s@@13 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_2963) (s1@@3 T@Seq_2963) (n@@15 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_4579|)) (not (= s1@@3 |Seq#Empty_4579|))) (<= 0 n@@15)) (< n@@15 (|Seq#Length_2963| s0@@3))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@3 s1@@3) n@@15) (|Seq#Index_2963| s0@@3 n@@15)))
 :qid |stdinbpl.269:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@3 s1@@3) n@@15))
 :pattern ( (|Seq#Index_2963| s0@@3 n@@15) (|Seq#Append_2963| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_4579|)) (not (= s1@@4 |Seq#Empty_4579|))) (<= 0 m)) (< m (|Seq#Length_2963| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2963| s0@@4)) (|Seq#Length_2963| s0@@4)) m) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2963| s0@@4))) (|Seq#Index_2963| s1@@4 m))))
 :qid |stdinbpl.274:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@4 m) (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_15196_15197) (Heap@@34 T@PolymorphicMapType_15123) ) (!  (=> (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@34) o_1@@4 $allocated) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@34) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@34) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@34) o_1@@4 f_2))
)))
(assert (forall ((s@@14 T@Seq_2963) (x@@2 Int) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2963| s@@14))) (= (|Seq#Index_2963| s@@14 i@@9) x@@2)) (|Seq#Contains_2963| s@@14 x@@2))
 :qid |stdinbpl.426:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@14 x@@2) (|Seq#Index_2963| s@@14 i@@9))
)))
(assert (forall ((s0@@5 T@Seq_2963) (s1@@5 T@Seq_2963) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2963| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2963| s0@@5 s1@@5))) (not (= (|Seq#Length_2963| s0@@5) (|Seq#Length_2963| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2963| s0@@5 s1@@5))) (= (|Seq#Length_2963| s0@@5) (|Seq#Length_2963| s1@@5))) (= (|Seq#SkolemDiff_2963| s0@@5 s1@@5) (|Seq#SkolemDiff_2963| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2963| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2963| s0@@5 s1@@5) (|Seq#Length_2963| s0@@5))) (not (= (|Seq#Index_2963| s0@@5 (|Seq#SkolemDiff_2963| s0@@5 s1@@5)) (|Seq#Index_2963| s1@@5 (|Seq#SkolemDiff_2963| s0@@5 s1@@5))))))
 :qid |stdinbpl.530:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_9812_41639) (v_1@@0 T@FrameType) (q T@Field_9812_41639) (w@@0 T@FrameType) (r T@Field_9812_41639) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15183_15183 p@@1 v_1@@0 q w@@0) (InsidePredicate_15183_15183 q w@@0 r u)) (InsidePredicate_15183_15183 p@@1 v_1@@0 r u))
 :qid |stdinbpl.197:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15183_15183 p@@1 v_1@@0 q w@@0) (InsidePredicate_15183_15183 q w@@0 r u))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15123) (Mask@@29 T@PolymorphicMapType_15144) (i@@10 Int) ) (!  (=> (and (state Heap@@35 Mask@@29) (< AssumeFunctionsAbove 2)) (= (id Heap@@35 i@@10) i@@10))
 :qid |stdinbpl.1226:15|
 :skolemid |110|
 :pattern ( (state Heap@@35 Mask@@29) (id Heap@@35 i@@10))
)))
(assert (forall ((s@@15 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@15) 0) (= s@@15 |Seq#Empty_4579|))
 :qid |stdinbpl.233:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (n@@16 Int) ) (!  (=> (<= n@@16 0) (= (|Seq#Take_2963| s@@16 n@@16) |Seq#Empty_4579|))
 :qid |stdinbpl.409:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@16 n@@16))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15123) (Mask@@30 T@PolymorphicMapType_15144) (inp@@3 T@pointerDomainType) (n@@17 Int) ) (!  (=> (state Heap@@36 Mask@@30) (= (|inp_to_seq_2'| Heap@@36 inp@@3 n@@17) (|inp_to_seq_2#frame| (CombineFrames (FrameFragment_4671 (|inp_to_seq_2#condqp1| Heap@@36 inp@@3 n@@17)) (FrameFragment_4671 (|inp_to_seq_2#condqp2| Heap@@36 inp@@3 n@@17))) inp@@3 n@@17)))
 :qid |stdinbpl.898:15|
 :skolemid |86|
 :pattern ( (state Heap@@36 Mask@@30) (|inp_to_seq_2'| Heap@@36 inp@@3 n@@17))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_15123) (Heap1Heap@@0 T@PolymorphicMapType_15123) (inp@@4 T@pointerDomainType) (n@@18 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18))) (< (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)) n@@18)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))  (and (and (<= 0 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18))) (< (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)) n@@18)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))) (=> (and (and (<= 0 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18))) (< (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)) n@@18)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10)))) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap2Heap@@0) (ptr_deref Heap2Heap@@0 (ptr_add Heap2Heap@@0 inp@@4 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)))) ref_2) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap1Heap@@0) (ptr_deref Heap1Heap@@0 (ptr_add Heap1Heap@@0 inp@@4 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)))) ref_2)))) (= (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)))
 :qid |stdinbpl.908:15|
 :skolemid |87|
 :pattern ( (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((t_2@@3 T@treeDomainType) ) (!  (or (= t_2@@3 (leaf (get_tree_value t_2@@3))) (= t_2@@3 (node_1 (get_tree_left t_2@@3) (get_tree_right t_2@@3))))
 :qid |stdinbpl.718:15|
 :skolemid |69|
 :pattern ( (tree_tag t_2@@3))
 :pattern ( (get_tree_left t_2@@3))
 :pattern ( (get_tree_right t_2@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |ptr_deref#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
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
(declare-sort T@Field_15183_53 0)
(declare-sort T@Field_15196_15197 0)
(declare-sort T@Field_22179_3735 0)
(declare-sort T@Field_9812_41772 0)
(declare-sort T@Field_9812_41639 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_15144 0)) (((PolymorphicMapType_15144 (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| (Array T@Ref T@Field_15196_15197 Real)) (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| (Array T@Ref T@Field_22179_3735 Real)) (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| (Array T@Ref T@Field_15183_53 Real)) (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| (Array T@Ref T@Field_9812_41639 Real)) (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| (Array T@Ref T@Field_9812_41772 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15672 0)) (((PolymorphicMapType_15672 (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| (Array T@Ref T@Field_15183_53 Bool)) (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| (Array T@Ref T@Field_15196_15197 Bool)) (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| (Array T@Ref T@Field_22179_3735 Bool)) (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| (Array T@Ref T@Field_9812_41639 Bool)) (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| (Array T@Ref T@Field_9812_41772 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15123 0)) (((PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| (Array T@Ref T@Field_15183_53 Bool)) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| (Array T@Ref T@Field_15196_15197 T@Ref)) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| (Array T@Ref T@Field_22179_3735 Int)) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| (Array T@Ref T@Field_9812_41772 T@PolymorphicMapType_15672)) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| (Array T@Ref T@Field_9812_41639 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_15183_53)
(declare-fun ref_2 () T@Field_15196_15197)
(declare-fun x_36 () T@Field_22179_3735)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_15123 T@PolymorphicMapType_15123) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15123 T@PolymorphicMapType_15123) Bool)
(declare-sort T@treeDomainType 0)
(declare-fun bounded_9811 (T@treeDomainType) Bool)
(declare-fun state (T@PolymorphicMapType_15123 T@PolymorphicMapType_15144) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15144) Bool)
(declare-fun node_1 (T@treeDomainType T@treeDomainType) T@treeDomainType)
(declare-fun decreasing_9800 (T@treeDomainType T@treeDomainType) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15672)
(declare-sort T@pointerDomainType 0)
(declare-fun |ptr_add'| (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@pointerDomainType)
(declare-fun dummyFunction_9873 (T@pointerDomainType) Bool)
(declare-fun |ptr_add#triggerStateless| (T@pointerDomainType Int) T@pointerDomainType)
(declare-fun |inp_to_seq_2'| (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@Seq_2963)
(declare-fun dummyFunction_23779 (T@Seq_2963) Bool)
(declare-fun |inp_to_seq_2#triggerStateless| (T@pointerDomainType Int) T@Seq_2963)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |ptr_add#frame| (T@FrameType T@pointerDomainType Int) T@pointerDomainType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_4579| () T@Seq_2963)
(declare-fun |ptr_deref'| (T@PolymorphicMapType_15123 T@pointerDomainType) T@Ref)
(declare-fun dummyFunction_9841 (T@Ref) Bool)
(declare-fun |ptr_deref#triggerStateless| (T@pointerDomainType) T@Ref)
(declare-fun |leafCount'| (T@PolymorphicMapType_15123 T@treeDomainType) Int)
(declare-fun dummyFunction_6826 (Int) Bool)
(declare-fun |leafCount#triggerStateless| (T@treeDomainType) Int)
(declare-fun |id'| (T@PolymorphicMapType_15123 Int) Int)
(declare-fun |id#triggerStateless| (Int) Int)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun ptr_deref (T@PolymorphicMapType_15123 T@pointerDomainType) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-sort T@blockDomainType 0)
(declare-fun loc (T@blockDomainType Int) T@Ref)
(declare-fun pointer_block (T@pointerDomainType) T@blockDomainType)
(declare-fun pointer_offset (T@pointerDomainType) Int)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun leafCount (T@PolymorphicMapType_15123 T@treeDomainType) Int)
(declare-fun id (T@PolymorphicMapType_15123 Int) Int)
(declare-fun decreasing_3307 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15123 T@PolymorphicMapType_15123 T@PolymorphicMapType_15144) Bool)
(declare-fun IsPredicateField_9812_41730 (T@Field_9812_41639) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9812 (T@Field_9812_41639) T@Field_9812_41772)
(declare-fun HasDirectPerm_9812_41703 (T@PolymorphicMapType_15144 T@Ref T@Field_9812_41639) Bool)
(declare-fun IsWandField_9812_43477 (T@Field_9812_41639) Bool)
(declare-fun WandMaskField_9812 (T@Field_9812_41639) T@Field_9812_41772)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_15123)
(declare-fun ZeroMask () T@PolymorphicMapType_15144)
(declare-fun |inp_to_seq_2#condqp2| (T@PolymorphicMapType_15123 T@pointerDomainType Int) Int)
(declare-fun |sk_inp_to_seq_2#condqp2| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun ptr_add (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@pointerDomainType)
(declare-fun InsidePredicate_15183_15183 (T@Field_9812_41639 T@FrameType T@Field_9812_41639 T@FrameType) Bool)
(declare-fun block_length (T@blockDomainType) Int)
(declare-fun pointer_of (T@blockDomainType Int) T@pointerDomainType)
(declare-fun IsPredicateField_9812_9813 (T@Field_15196_15197) Bool)
(declare-fun IsWandField_9812_9813 (T@Field_15196_15197) Bool)
(declare-fun IsPredicateField_9815_3735 (T@Field_22179_3735) Bool)
(declare-fun IsWandField_9815_3735 (T@Field_22179_3735) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9812_46994 (T@Field_9812_41772) Bool)
(declare-fun IsWandField_9812_47010 (T@Field_9812_41772) Bool)
(declare-fun IsPredicateField_9812_53 (T@Field_15183_53) Bool)
(declare-fun IsWandField_9812_53 (T@Field_15183_53) Bool)
(declare-fun HasDirectPerm_9812_47448 (T@PolymorphicMapType_15144 T@Ref T@Field_9812_41772) Bool)
(declare-fun HasDirectPerm_9812_3735 (T@PolymorphicMapType_15144 T@Ref T@Field_22179_3735) Bool)
(declare-fun HasDirectPerm_9812_53 (T@PolymorphicMapType_15144 T@Ref T@Field_15183_53) Bool)
(declare-fun HasDirectPerm_9812_9813 (T@PolymorphicMapType_15144 T@Ref T@Field_15196_15197) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun inp_to_seq_2 (T@PolymorphicMapType_15123 T@pointerDomainType Int) T@Seq_2963)
(declare-fun sumMask (T@PolymorphicMapType_15144 T@PolymorphicMapType_15144 T@PolymorphicMapType_15144) Bool)
(declare-fun |ptr_deref#frame| (T@FrameType T@pointerDomainType) T@Ref)
(declare-fun bounded_3332 (Int) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun tree_tag (T@treeDomainType) Int)
(declare-fun get_tree_left (T@treeDomainType) T@treeDomainType)
(declare-fun get_tree_right (T@treeDomainType) T@treeDomainType)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun leaf (Int) T@treeDomainType)
(declare-fun |leafCount#frame| (T@FrameType T@treeDomainType) Int)
(declare-fun |id#frame| (T@FrameType Int) Int)
(declare-fun get_tree_value (T@treeDomainType) Int)
(declare-fun loc_inv_1 (T@Ref) T@blockDomainType)
(declare-fun loc_inv_2 (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(declare-fun |inp_to_seq_2#frame| (T@FrameType T@pointerDomainType Int) T@Seq_2963)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4671 (Int) T@FrameType)
(declare-fun |inp_to_seq_2#condqp1| (T@PolymorphicMapType_15123 T@pointerDomainType Int) Int)
(declare-fun |sk_inp_to_seq_2#condqp1| (Int Int) Int)
(assert (forall ((s T@Seq_2963) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2963| s)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s n)) (- (|Seq#Length_2963| s) n))) (=> (< (|Seq#Length_2963| s) n) (= (|Seq#Length_2963| (|Seq#Drop_2963| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s n)) (|Seq#Length_2963| s))))
 :qid |stdinbpl.304:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s n)))
 :pattern ( (|Seq#Length_2963| s) (|Seq#Drop_2963| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15123) (Heap1 T@PolymorphicMapType_15123) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@treeDomainType) ) (! (bounded_9811 x)
 :qid |stdinbpl.749:15|
 :skolemid |73|
 :pattern ( (bounded_9811 x))
)))
(assert (forall ((Heap T@PolymorphicMapType_15123) (Mask T@PolymorphicMapType_15144) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((left_0 T@treeDomainType) (right T@treeDomainType) ) (! (decreasing_9800 left_0 (node_1 left_0 right))
 :qid |stdinbpl.737:14|
 :skolemid |71|
 :pattern ( (node_1 left_0 right))
)))
(assert (forall ((right_0 T@treeDomainType) (left_1 T@treeDomainType) ) (! (decreasing_9800 right_0 (node_1 left_1 right_0))
 :qid |stdinbpl.734:15|
 :skolemid |70|
 :pattern ( (node_1 left_1 right_0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15123) (Heap1@@0 T@PolymorphicMapType_15123) (Heap2 T@PolymorphicMapType_15123) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@treeDomainType) (v2 T@treeDomainType) (v3 T@treeDomainType) ) (!  (=> (and (decreasing_9800 v1 v2) (decreasing_9800 v2 v3)) (decreasing_9800 v1 v3))
 :qid |stdinbpl.743:15|
 :skolemid |72|
 :pattern ( (decreasing_9800 v1 v2) (decreasing_9800 v2 v3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9812_41772) ) (!  (not (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9812_41639) ) (!  (not (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22179_3735) ) (!  (not (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15196_15197) ) (!  (not (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15183_53) ) (!  (not (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15123) (p_1 T@pointerDomainType) (offset Int) ) (! (dummyFunction_9873 (|ptr_add#triggerStateless| p_1 offset))
 :qid |stdinbpl.826:15|
 :skolemid |79|
 :pattern ( (|ptr_add'| Heap@@0 p_1 offset))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15123) (inp T@pointerDomainType) (n@@0 Int) ) (! (dummyFunction_23779 (|inp_to_seq_2#triggerStateless| inp n@@0))
 :qid |stdinbpl.882:15|
 :skolemid |83|
 :pattern ( (|inp_to_seq_2'| Heap@@1 inp n@@0))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_2963| s@@0) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@0 n@@1) j) (|Seq#Index_2963| s@@0 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.325:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@0 n@@1) j))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15123) (Mask@@0 T@PolymorphicMapType_15144) (p_1@@0 T@pointerDomainType) (offset@@0 Int) ) (!  (=> (state Heap@@2 Mask@@0) (= (|ptr_add'| Heap@@2 p_1@@0 offset@@0) (|ptr_add#frame| EmptyFrame p_1@@0 offset@@0)))
 :qid |stdinbpl.839:15|
 :skolemid |81|
 :pattern ( (state Heap@@2 Mask@@0) (|ptr_add'| Heap@@2 p_1@@0 offset@@0))
)))
(assert (= (|Seq#Length_2963| |Seq#Empty_4579|) 0))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15123) (p_1@@1 T@pointerDomainType) ) (! (dummyFunction_9841 (|ptr_deref#triggerStateless| p_1@@1))
 :qid |stdinbpl.776:15|
 :skolemid |75|
 :pattern ( (|ptr_deref'| Heap@@3 p_1@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15123) (t_2 T@treeDomainType) ) (! (dummyFunction_6826 (|leafCount#triggerStateless| t_2))
 :qid |stdinbpl.1145:15|
 :skolemid |105|
 :pattern ( (|leafCount'| Heap@@4 t_2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15123) (i Int) ) (! (dummyFunction_6826 (|id#triggerStateless| i))
 :qid |stdinbpl.1220:15|
 :skolemid |109|
 :pattern ( (|id'| Heap@@5 i))
)))
(assert (forall ((s@@1 T@Seq_2963) (i@@0 Int) (v Int) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (< n@@2 (|Seq#Length_2963| s@@1))) (and (=> (= i@@0 n@@2) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@1 i@@0 v) n@@2) v)) (=> (not (= i@@0 n@@2)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@1 i@@0 v) n@@2) (|Seq#Index_2963| s@@1 n@@2)))))
 :qid |stdinbpl.280:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@1 i@@0 v) n@@2))
 :pattern ( (|Seq#Index_2963| s@@1 n@@2) (|Seq#Update_2963| s@@1 i@@0 v))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@3 Int) ) (!  (and (=> (<= 0 n@@3) (and (=> (<= n@@3 (|Seq#Length_2963| s@@2)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)) n@@3)) (=> (< (|Seq#Length_2963| s@@2) n@@3) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)) (|Seq#Length_2963| s@@2))))) (=> (< n@@3 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)) 0)))
 :qid |stdinbpl.291:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@2 n@@3)))
 :pattern ( (|Seq#Take_2963| s@@2 n@@3) (|Seq#Length_2963| s@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15123) (Mask@@1 T@PolymorphicMapType_15144) (p_1@@2 T@pointerDomainType) ) (!  (=> (and (state Heap@@6 Mask@@1) (< AssumeFunctionsAbove 3)) (= (ptr_deref Heap@@6 p_1@@2) (loc (pointer_block p_1@@2) (pointer_offset p_1@@2))))
 :qid |stdinbpl.782:15|
 :skolemid |76|
 :pattern ( (state Heap@@6 Mask@@1) (ptr_deref Heap@@6 p_1@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.565:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@3 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@3 x@@0)) (< (|Seq#Skolem_2963| s@@3 x@@0) (|Seq#Length_2963| s@@3))) (= (|Seq#Index_2963| s@@3 (|Seq#Skolem_2963| s@@3 x@@0)) x@@0)))
 :qid |stdinbpl.423:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@3 x@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15123) (p_1@@3 T@pointerDomainType) ) (!  (and (= (ptr_deref Heap@@7 p_1@@3) (|ptr_deref'| Heap@@7 p_1@@3)) (dummyFunction_9841 (|ptr_deref#triggerStateless| p_1@@3)))
 :qid |stdinbpl.772:15|
 :skolemid |74|
 :pattern ( (ptr_deref Heap@@7 p_1@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15123) (t_2@@0 T@treeDomainType) ) (!  (and (= (leafCount Heap@@8 t_2@@0) (|leafCount'| Heap@@8 t_2@@0)) (dummyFunction_6826 (|leafCount#triggerStateless| t_2@@0)))
 :qid |stdinbpl.1141:15|
 :skolemid |104|
 :pattern ( (leafCount Heap@@8 t_2@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15123) (i@@1 Int) ) (!  (and (= (id Heap@@9 i@@1) (|id'| Heap@@9 i@@1)) (dummyFunction_6826 (|id#triggerStateless| i@@1)))
 :qid |stdinbpl.1216:15|
 :skolemid |108|
 :pattern ( (id Heap@@9 i@@1))
)))
(assert (forall ((s@@4 T@Seq_2963) (n@@4 Int) ) (!  (=> (<= n@@4 0) (= (|Seq#Drop_2963| s@@4 n@@4) s@@4))
 :qid |stdinbpl.407:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@4 n@@4))
)))
(assert (forall ((i@@2 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@2 j@@0) (- i@@2 j@@0))
 :qid |stdinbpl.260:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@0))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@3 j@@1) (+ i@@3 j@@1))
 :qid |stdinbpl.258:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@1))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_3307 int1 int2))
 :qid |stdinbpl.638:15|
 :skolemid |62|
 :pattern ( (decreasing_3307 int1 int2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15123) (ExhaleHeap T@PolymorphicMapType_15123) (Mask@@2 T@PolymorphicMapType_15144) (pm_f_1 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_9812_41703 Mask@@2 null pm_f_1) (IsPredicateField_9812_41730 pm_f_1)) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@10) null (PredicateMaskField_9812 pm_f_1)) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap) null (PredicateMaskField_9812 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (IsPredicateField_9812_41730 pm_f_1) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap) null (PredicateMaskField_9812 pm_f_1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15123) (ExhaleHeap@@0 T@PolymorphicMapType_15123) (Mask@@3 T@PolymorphicMapType_15144) (pm_f_1@@0 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_9812_41703 Mask@@3 null pm_f_1@@0) (IsWandField_9812_43477 pm_f_1@@0)) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@11) null (WandMaskField_9812 pm_f_1@@0)) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@0) null (WandMaskField_9812 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (IsWandField_9812_43477 pm_f_1@@0) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@0) null (WandMaskField_9812 pm_f_1@@0)))
)))
(assert (forall ((x@@1 Int) (y Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.548:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@1) y))
)))
(assert (forall ((s@@5 T@Seq_2963) (n@@5 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@5)) (< j@@2 (|Seq#Length_2963| s@@5))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@5 n@@5) j@@2) (|Seq#Index_2963| s@@5 j@@2)))
 :qid |stdinbpl.299:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@5 n@@5) j@@2))
 :pattern ( (|Seq#Index_2963| s@@5 j@@2) (|Seq#Take_2963| s@@5 n@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (t T@Seq_2963) (n@@6 Int) ) (!  (=> (and (and (> n@@6 0) (> n@@6 (|Seq#Length_2963| s@@6))) (< n@@6 (|Seq#Length_2963| (|Seq#Append_2963| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2963| s@@6)) (|Seq#Length_2963| s@@6)) n@@6) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@6 t) n@@6) (|Seq#Append_2963| s@@6 (|Seq#Take_2963| t (|Seq#Sub| n@@6 (|Seq#Length_2963| s@@6)))))))
 :qid |stdinbpl.384:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@6 t) n@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap2Heap T@PolymorphicMapType_15123) (Heap1Heap T@PolymorphicMapType_15123) (inp@@0 T@pointerDomainType) (n@@7 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7))) (< (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)) n@@7)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))  (and (and (<= 0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7))) (< (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)) n@@7)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))) (=> (and (and (<= 0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7))) (< (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)) n@@7)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10)))) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap2Heap) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap2Heap) (ptr_deref Heap2Heap (ptr_add Heap2Heap inp@@0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)))) ref_2) x_36) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap1Heap) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap1Heap) (ptr_deref Heap1Heap (ptr_add Heap1Heap inp@@0 (|sk_inp_to_seq_2#condqp2| (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)))) ref_2) x_36)))) (= (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7)))
 :qid |stdinbpl.918:15|
 :skolemid |88|
 :pattern ( (|inp_to_seq_2#condqp2| Heap2Heap inp@@0 n@@7) (|inp_to_seq_2#condqp2| Heap1Heap inp@@0 n@@7) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15123) (ExhaleHeap@@1 T@PolymorphicMapType_15123) (Mask@@4 T@PolymorphicMapType_15144) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@12) o_3 $allocated) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_9812_41639) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15183_15183 p v_1 p w))
 :qid |stdinbpl.202:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15183_15183 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2963) (s1 T@Seq_2963) (n@@8 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4579|)) (not (= s1 |Seq#Empty_4579|))) (<= (|Seq#Length_2963| s0) n@@8)) (< n@@8 (|Seq#Length_2963| (|Seq#Append_2963| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@8 (|Seq#Length_2963| s0)) (|Seq#Length_2963| s0)) n@@8) (= (|Seq#Index_2963| (|Seq#Append_2963| s0 s1) n@@8) (|Seq#Index_2963| s1 (|Seq#Sub| n@@8 (|Seq#Length_2963| s0))))))
 :qid |stdinbpl.271:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0 s1) n@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15123) (Mask@@5 T@PolymorphicMapType_15144) (p_1@@4 T@pointerDomainType) (offset@@1 Int) ) (!  (=> (and (state Heap@@13 Mask@@5) (< AssumeFunctionsAbove 4)) (=> (and (<= 0 (+ (pointer_offset p_1@@4) offset@@1)) (< (+ (pointer_offset p_1@@4) offset@@1) (block_length (pointer_block p_1@@4)))) (= (ptr_add Heap@@13 p_1@@4 offset@@1) (pointer_of (pointer_block p_1@@4) (+ (pointer_offset p_1@@4) offset@@1)))))
 :qid |stdinbpl.832:15|
 :skolemid |80|
 :pattern ( (state Heap@@13 Mask@@5) (ptr_add Heap@@13 p_1@@4 offset@@1))
)))
(assert  (not (IsPredicateField_9812_9813 ref_2)))
(assert  (not (IsWandField_9812_9813 ref_2)))
(assert  (not (IsPredicateField_9815_3735 x_36)))
(assert  (not (IsWandField_9815_3735 x_36)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15123) (ExhaleHeap@@2 T@PolymorphicMapType_15123) (Mask@@6 T@PolymorphicMapType_15144) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@14 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_15144) (o_2@@4 T@Ref) (f_4@@4 T@Field_9812_41772) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9812_46994 f_4@@4))) (not (IsWandField_9812_47010 f_4@@4))) (<= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15144) (o_2@@5 T@Ref) (f_4@@5 T@Field_9812_41639) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9812_41730 f_4@@5))) (not (IsWandField_9812_43477 f_4@@5))) (<= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15144) (o_2@@6 T@Ref) (f_4@@6 T@Field_15183_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9812_53 f_4@@6))) (not (IsWandField_9812_53 f_4@@6))) (<= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15144) (o_2@@7 T@Ref) (f_4@@7 T@Field_22179_3735) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9815_3735 f_4@@7))) (not (IsWandField_9815_3735 f_4@@7))) (<= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15144) (o_2@@8 T@Ref) (f_4@@8 T@Field_15196_15197) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9812_9813 f_4@@8))) (not (IsWandField_9812_9813 f_4@@8))) (<= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((p_1@@5 T@pointerDomainType) ) (!  (and (>= (pointer_offset p_1@@5) 0) (< (pointer_offset p_1@@5) (block_length (pointer_block p_1@@5))))
 :qid |stdinbpl.619:15|
 :skolemid |60|
 :pattern ( (pointer_offset p_1@@5))
 :pattern ( (block_length (pointer_block p_1@@5)))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15144) (o_2@@9 T@Ref) (f_4@@9 T@Field_9812_41772) ) (! (= (HasDirectPerm_9812_47448 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_47448 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15144) (o_2@@10 T@Ref) (f_4@@10 T@Field_9812_41639) ) (! (= (HasDirectPerm_9812_41703 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_41703 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15144) (o_2@@11 T@Ref) (f_4@@11 T@Field_22179_3735) ) (! (= (HasDirectPerm_9812_3735 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_3735 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15144) (o_2@@12 T@Ref) (f_4@@12 T@Field_15183_53) ) (! (= (HasDirectPerm_9812_53 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_53 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15144) (o_2@@13 T@Ref) (f_4@@13 T@Field_15196_15197) ) (! (= (HasDirectPerm_9812_9813 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9812_9813 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15123) (ExhaleHeap@@3 T@PolymorphicMapType_15123) (Mask@@17 T@PolymorphicMapType_15144) (pm_f_1@@1 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_9812_41703 Mask@@17 null pm_f_1@@1) (IsPredicateField_9812_41730 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_15183_53) ) (!  (=> (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@15) o2_1 f_8) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_15196_15197) ) (!  (=> (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@15) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_22179_3735) ) (!  (=> (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@15) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_9812_41639) ) (!  (=> (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@15) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_9812_41772) ) (!  (=> (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) null (PredicateMaskField_9812 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@15) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@17) (IsPredicateField_9812_41730 pm_f_1@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15123) (ExhaleHeap@@4 T@PolymorphicMapType_15123) (Mask@@18 T@PolymorphicMapType_15144) (pm_f_1@@2 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_9812_41703 Mask@@18 null pm_f_1@@2) (IsWandField_9812_43477 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_15183_53) ) (!  (=> (select (|PolymorphicMapType_15672_15183_53#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@16) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_15196_15197) ) (!  (=> (select (|PolymorphicMapType_15672_15183_15197#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@16) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_22179_3735) ) (!  (=> (select (|PolymorphicMapType_15672_15183_3735#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@16) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_9812_41639) ) (!  (=> (select (|PolymorphicMapType_15672_15183_41639#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@16) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_9812_41772) ) (!  (=> (select (|PolymorphicMapType_15672_15183_42950#PolymorphicMapType_15672| (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) null (WandMaskField_9812 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@16) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@18) (IsWandField_9812_43477 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.190:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.563:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15123) (ExhaleHeap@@5 T@PolymorphicMapType_15123) (Mask@@19 T@PolymorphicMapType_15144) (o_3@@0 T@Ref) (f_8@@9 T@Field_9812_41772) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_9812_47448 Mask@@19 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@17) o_3@@0 f_8@@9) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15123) (ExhaleHeap@@6 T@PolymorphicMapType_15123) (Mask@@20 T@PolymorphicMapType_15144) (o_3@@1 T@Ref) (f_8@@10 T@Field_9812_41639) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_9812_41703 Mask@@20 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@18) o_3@@1 f_8@@10) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15123) (ExhaleHeap@@7 T@PolymorphicMapType_15123) (Mask@@21 T@PolymorphicMapType_15144) (o_3@@2 T@Ref) (f_8@@11 T@Field_22179_3735) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_9812_3735 Mask@@21 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@19) o_3@@2 f_8@@11) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15123) (ExhaleHeap@@8 T@PolymorphicMapType_15123) (Mask@@22 T@PolymorphicMapType_15144) (o_3@@3 T@Ref) (f_8@@12 T@Field_15183_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_9812_53 Mask@@22 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@20) o_3@@3 f_8@@12) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15123) (ExhaleHeap@@9 T@PolymorphicMapType_15123) (Mask@@23 T@PolymorphicMapType_15144) (o_3@@4 T@Ref) (f_8@@13 T@Field_15196_15197) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_9812_9813 Mask@@23 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@21) o_3@@4 f_8@@13) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_4579|)) (not (= s1@@0 |Seq#Empty_4579|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)) (+ (|Seq#Length_2963| s0@@0) (|Seq#Length_2963| s1@@0))))
 :qid |stdinbpl.240:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9812_41772) ) (! (= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9812_41639) ) (! (= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15183_53) ) (! (= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22179_3735) ) (! (= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15196_15197) ) (! (= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_2963) (t@@0 T@Seq_2963) (n@@9 Int) ) (!  (=> (and (> n@@9 0) (> n@@9 (|Seq#Length_2963| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@9 (|Seq#Length_2963| s@@7)) (|Seq#Length_2963| s@@7)) n@@9) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@7 t@@0) n@@9) (|Seq#Drop_2963| t@@0 (|Seq#Sub| n@@9 (|Seq#Length_2963| s@@7))))))
 :qid |stdinbpl.397:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@7 t@@0) n@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15123) (p_1@@6 T@pointerDomainType) (offset@@2 Int) ) (!  (and (= (ptr_add Heap@@22 p_1@@6 offset@@2) (|ptr_add'| Heap@@22 p_1@@6 offset@@2)) (dummyFunction_9873 (|ptr_add#triggerStateless| p_1@@6 offset@@2)))
 :qid |stdinbpl.822:15|
 :skolemid |78|
 :pattern ( (ptr_add Heap@@22 p_1@@6 offset@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15123) (inp@@1 T@pointerDomainType) (n@@10 Int) ) (!  (and (= (inp_to_seq_2 Heap@@23 inp@@1 n@@10) (|inp_to_seq_2'| Heap@@23 inp@@1 n@@10)) (dummyFunction_23779 (|inp_to_seq_2#triggerStateless| inp@@1 n@@10)))
 :qid |stdinbpl.878:15|
 :skolemid |82|
 :pattern ( (inp_to_seq_2 Heap@@23 inp@@1 n@@10))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15144) (SummandMask1 T@PolymorphicMapType_15144) (SummandMask2 T@PolymorphicMapType_15144) (o_2@@19 T@Ref) (f_4@@19 T@Field_9812_41772) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15144_9812_45879#PolymorphicMapType_15144| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15144) (SummandMask1@@0 T@PolymorphicMapType_15144) (SummandMask2@@0 T@PolymorphicMapType_15144) (o_2@@20 T@Ref) (f_4@@20 T@Field_9812_41639) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15144_9812_41639#PolymorphicMapType_15144| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15144) (SummandMask1@@1 T@PolymorphicMapType_15144) (SummandMask2@@1 T@PolymorphicMapType_15144) (o_2@@21 T@Ref) (f_4@@21 T@Field_15183_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15144_9812_53#PolymorphicMapType_15144| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15144) (SummandMask1@@2 T@PolymorphicMapType_15144) (SummandMask2@@2 T@PolymorphicMapType_15144) (o_2@@22 T@Ref) (f_4@@22 T@Field_22179_3735) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15144_9815_3735#PolymorphicMapType_15144| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15144) (SummandMask1@@3 T@PolymorphicMapType_15144) (SummandMask2@@3 T@PolymorphicMapType_15144) (o_2@@23 T@Ref) (f_4@@23 T@Field_15196_15197) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15144_9812_9813#PolymorphicMapType_15144| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.562:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15123) (Mask@@24 T@PolymorphicMapType_15144) (inp@@2 T@pointerDomainType) (n@@11 Int) ) (!  (=> (and (state Heap@@24 Mask@@24) (< AssumeFunctionsAbove 1)) (=> (and (<= n@@11 (- (block_length (pointer_block inp@@2)) (pointer_offset inp@@2))) (forall ((i_1 Int) (j_9 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 n@@11) (and (<= 0 j_9) (< j_9 n@@11)))) (=> (not (= i_1 j_9)) (not (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@24) (ptr_deref Heap@@24 (ptr_add Heap@@24 inp@@2 i_1)) ref_2) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@24) (ptr_deref Heap@@24 (ptr_add Heap@@24 inp@@2 j_9)) ref_2)))))
 :qid |stdinbpl.890:157|
 :skolemid |84|
 :pattern ( (|ptr_add#frame| EmptyFrame inp@@2 i_1) (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 j_9)))
 :pattern ( (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 i_1)) (|ptr_add#frame| EmptyFrame inp@@2 j_9))
 :pattern ( (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 i_1)) (|ptr_deref#frame| EmptyFrame (|ptr_add#frame| EmptyFrame inp@@2 j_9)))
))) (= (inp_to_seq_2 Heap@@24 inp@@2 n@@11) |Seq#Empty_4579|)))
 :qid |stdinbpl.888:15|
 :skolemid |85|
 :pattern ( (state Heap@@24 Mask@@24) (inp_to_seq_2 Heap@@24 inp@@2 n@@11))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_3332 int1@@0))
 :qid |stdinbpl.644:15|
 :skolemid |63|
 :pattern ( (bounded_3332 int1@@0))
)))
(assert (forall ((a T@Seq_2963) (b T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a b) (= a b))
 :qid |stdinbpl.535:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a b))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15123) (Mask@@25 T@PolymorphicMapType_15144) (t_2@@1 T@treeDomainType) ) (!  (=> (and (state Heap@@25 Mask@@25) (< AssumeFunctionsAbove 0)) (= (leafCount Heap@@25 t_2@@1) (id Heap@@25 (ite  (and (= (tree_tag t_2@@1) 0) (= (tree_tag t_2@@1) 0)) 1 (+ (|leafCount'| Heap@@25 (get_tree_left t_2@@1)) (|leafCount'| Heap@@25 (get_tree_right t_2@@1)))))))
 :qid |stdinbpl.1151:15|
 :skolemid |106|
 :pattern ( (state Heap@@25 Mask@@25) (leafCount Heap@@25 t_2@@1))
)))
(assert (forall ((b_24 T@blockDomainType) ) (! (>= (block_length b_24) 0)
 :qid |stdinbpl.591:15|
 :skolemid |58|
 :pattern ( (block_length b_24))
)))
(assert (forall ((s@@8 T@Seq_2963) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2963| s@@8))) (|Seq#ContainsTrigger_2963| s@@8 (|Seq#Index_2963| s@@8 i@@4)))
 :qid |stdinbpl.428:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@8 i@@4))
)))
(assert (forall ((s0@@1 T@Seq_2963) (s1@@1 T@Seq_2963) ) (!  (and (=> (= s0@@1 |Seq#Empty_4579|) (= (|Seq#Append_2963| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_4579|) (= (|Seq#Append_2963| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.246:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@1) 0) t@@1)
 :qid |stdinbpl.250:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@9))
 :qid |stdinbpl.229:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@9))
)))
(assert (forall ((left_1@@0 T@treeDomainType) (right@@0 T@treeDomainType) ) (! (= (tree_tag (node_1 left_1@@0 right@@0)) 1)
 :qid |stdinbpl.712:15|
 :skolemid |68|
 :pattern ( (node_1 left_1@@0 right@@0))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@2 s1@@2) (and (= (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2963| s0@@2))) (= (|Seq#Index_2963| s0@@2 j@@4) (|Seq#Index_2963| s1@@2 j@@4)))
 :qid |stdinbpl.525:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2963| s1@@2 j@@4))
))))
 :qid |stdinbpl.522:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@2 s1@@2))
)))
(assert (forall ((value_1 Int) ) (! (= (tree_tag (leaf value_1)) 0)
 :qid |stdinbpl.706:15|
 :skolemid |67|
 :pattern ( (leaf value_1))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@2)) 1)
 :qid |stdinbpl.237:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15123) (Mask@@26 T@PolymorphicMapType_15144) (p_1@@7 T@pointerDomainType) ) (!  (=> (state Heap@@26 Mask@@26) (= (|ptr_deref'| Heap@@26 p_1@@7) (|ptr_deref#frame| EmptyFrame p_1@@7)))
 :qid |stdinbpl.789:15|
 :skolemid |77|
 :pattern ( (state Heap@@26 Mask@@26) (|ptr_deref'| Heap@@26 p_1@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15123) (Mask@@27 T@PolymorphicMapType_15144) (t_2@@2 T@treeDomainType) ) (!  (=> (state Heap@@27 Mask@@27) (= (|leafCount'| Heap@@27 t_2@@2) (|leafCount#frame| EmptyFrame t_2@@2)))
 :qid |stdinbpl.1158:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (|leafCount'| Heap@@27 t_2@@2))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15123) (Mask@@28 T@PolymorphicMapType_15144) (i@@5 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|id'| Heap@@28 i@@5) (|id#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.1233:15|
 :skolemid |111|
 :pattern ( (state Heap@@28 Mask@@28) (|id'| Heap@@28 i@@5))
)))
(assert (forall ((left_1@@1 T@treeDomainType) (right@@1 T@treeDomainType) ) (! (= left_1@@1 (get_tree_left (node_1 left_1@@1 right@@1)))
 :qid |stdinbpl.694:15|
 :skolemid |65|
 :pattern ( (node_1 left_1@@1 right@@1))
)))
(assert (forall ((left_1@@2 T@treeDomainType) (right@@2 T@treeDomainType) ) (! (= right@@2 (get_tree_right (node_1 left_1@@2 right@@2)))
 :qid |stdinbpl.700:15|
 :skolemid |66|
 :pattern ( (node_1 left_1@@2 right@@2))
)))
(assert (forall ((s@@10 T@Seq_2963) (t@@3 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (< 0 n@@12) (<= n@@12 (|Seq#Length_2963| s@@10))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@10 t@@3) n@@12) (|Seq#Take_2963| s@@10 n@@12)))
 :qid |stdinbpl.379:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@10 t@@3) n@@12))
)))
(assert (forall ((value_1@@0 Int) ) (! (= value_1@@0 (get_tree_value (leaf value_1@@0)))
 :qid |stdinbpl.688:15|
 :skolemid |64|
 :pattern ( (leaf value_1@@0))
)))
(assert (forall ((s@@11 T@Seq_2963) (i@@6 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2963| s@@11))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@11 i@@6 v@@1)) (|Seq#Length_2963| s@@11)))
 :qid |stdinbpl.278:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@11 i@@6 v@@1)))
 :pattern ( (|Seq#Length_2963| s@@11) (|Seq#Update_2963| s@@11 i@@6 v@@1))
)))
(assert (forall ((b_24@@0 T@blockDomainType) (i@@7 Int) ) (!  (and (= (loc_inv_1 (loc b_24@@0 i@@7)) b_24@@0) (= (loc_inv_2 (loc b_24@@0 i@@7)) i@@7))
 :qid |stdinbpl.597:15|
 :skolemid |59|
 :pattern ( (loc b_24@@0 i@@7))
)))
(assert (forall ((b_24@@1 T@blockDomainType) (offset@@3 Int) ) (!  (and (= (pointer_block (pointer_of b_24@@1 offset@@3)) b_24@@1) (= (pointer_offset (pointer_of b_24@@1 offset@@3)) offset@@3))
 :qid |stdinbpl.625:15|
 :skolemid |61|
 :pattern ( (pointer_block (pointer_of b_24@@1 offset@@3)) (pointer_offset (pointer_of b_24@@1 offset@@3)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15123) (o_1 T@Ref) (f_9 T@Field_9812_41639) (v@@2 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@29) (store (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@29) o_1 f_9 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@29) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@29) (store (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@29) o_1 f_9 v@@2)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15123) (o_1@@0 T@Ref) (f_9@@0 T@Field_9812_41772) (v@@3 T@PolymorphicMapType_15672) ) (! (succHeap Heap@@30 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@30) (store (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@30) o_1@@0 f_9@@0 v@@3) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@30) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@30) (store (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@30) o_1@@0 f_9@@0 v@@3) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15123) (o_1@@1 T@Ref) (f_9@@1 T@Field_22179_3735) (v@@4 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@31) (store (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@31) o_1@@1 f_9@@1 v@@4) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@31) (store (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@31) o_1@@1 f_9@@1 v@@4) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@31) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15123) (o_1@@2 T@Ref) (f_9@@2 T@Field_15196_15197) (v@@5 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@32) (store (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@32) o_1@@2 f_9@@2 v@@5) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@32) (store (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@32) o_1@@2 f_9@@2 v@@5) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@32) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15123) (o_1@@3 T@Ref) (f_9@@3 T@Field_15183_53) (v@@6 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_15123 (store (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@33) o_1@@3 f_9@@3 v@@6) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15123 (store (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@33) o_1@@3 f_9@@3 v@@6) (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9815_3735#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_9812_41816#PolymorphicMapType_15123| Heap@@33) (|PolymorphicMapType_15123_15183_41639#PolymorphicMapType_15123| Heap@@33)))
)))
(assert (forall ((s@@12 T@Seq_2963) (t@@4 T@Seq_2963) (n@@13 Int) ) (!  (=> (and (< 0 n@@13) (<= n@@13 (|Seq#Length_2963| s@@12))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@12 t@@4) n@@13) (|Seq#Append_2963| (|Seq#Drop_2963| s@@12 n@@13) t@@4)))
 :qid |stdinbpl.393:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@12 t@@4) n@@13))
)))
(assert (forall ((s@@13 T@Seq_2963) (n@@14 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@14) (<= n@@14 i@@8)) (< i@@8 (|Seq#Length_2963| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@14) n@@14) i@@8) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@13 n@@14) (|Seq#Sub| i@@8 n@@14)) (|Seq#Index_2963| s@@13 i@@8))))
 :qid |stdinbpl.329:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@13 n@@14) (|Seq#Index_2963| s@@13 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_2963) (s1@@3 T@Seq_2963) (n@@15 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_4579|)) (not (= s1@@3 |Seq#Empty_4579|))) (<= 0 n@@15)) (< n@@15 (|Seq#Length_2963| s0@@3))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@3 s1@@3) n@@15) (|Seq#Index_2963| s0@@3 n@@15)))
 :qid |stdinbpl.269:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@3 s1@@3) n@@15))
 :pattern ( (|Seq#Index_2963| s0@@3 n@@15) (|Seq#Append_2963| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_4579|)) (not (= s1@@4 |Seq#Empty_4579|))) (<= 0 m)) (< m (|Seq#Length_2963| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2963| s0@@4)) (|Seq#Length_2963| s0@@4)) m) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2963| s0@@4))) (|Seq#Index_2963| s1@@4 m))))
 :qid |stdinbpl.274:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@4 m) (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_15196_15197) (Heap@@34 T@PolymorphicMapType_15123) ) (!  (=> (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@34) o_1@@4 $allocated) (select (|PolymorphicMapType_15123_9542_53#PolymorphicMapType_15123| Heap@@34) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@34) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap@@34) o_1@@4 f_2))
)))
(assert (forall ((s@@14 T@Seq_2963) (x@@2 Int) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2963| s@@14))) (= (|Seq#Index_2963| s@@14 i@@9) x@@2)) (|Seq#Contains_2963| s@@14 x@@2))
 :qid |stdinbpl.426:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@14 x@@2) (|Seq#Index_2963| s@@14 i@@9))
)))
(assert (forall ((s0@@5 T@Seq_2963) (s1@@5 T@Seq_2963) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2963| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2963| s0@@5 s1@@5))) (not (= (|Seq#Length_2963| s0@@5) (|Seq#Length_2963| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2963| s0@@5 s1@@5))) (= (|Seq#Length_2963| s0@@5) (|Seq#Length_2963| s1@@5))) (= (|Seq#SkolemDiff_2963| s0@@5 s1@@5) (|Seq#SkolemDiff_2963| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2963| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2963| s0@@5 s1@@5) (|Seq#Length_2963| s0@@5))) (not (= (|Seq#Index_2963| s0@@5 (|Seq#SkolemDiff_2963| s0@@5 s1@@5)) (|Seq#Index_2963| s1@@5 (|Seq#SkolemDiff_2963| s0@@5 s1@@5))))))
 :qid |stdinbpl.530:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_9812_41639) (v_1@@0 T@FrameType) (q T@Field_9812_41639) (w@@0 T@FrameType) (r T@Field_9812_41639) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15183_15183 p@@1 v_1@@0 q w@@0) (InsidePredicate_15183_15183 q w@@0 r u)) (InsidePredicate_15183_15183 p@@1 v_1@@0 r u))
 :qid |stdinbpl.197:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15183_15183 p@@1 v_1@@0 q w@@0) (InsidePredicate_15183_15183 q w@@0 r u))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15123) (Mask@@29 T@PolymorphicMapType_15144) (i@@10 Int) ) (!  (=> (and (state Heap@@35 Mask@@29) (< AssumeFunctionsAbove 2)) (= (id Heap@@35 i@@10) i@@10))
 :qid |stdinbpl.1226:15|
 :skolemid |110|
 :pattern ( (state Heap@@35 Mask@@29) (id Heap@@35 i@@10))
)))
(assert (forall ((s@@15 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@15) 0) (= s@@15 |Seq#Empty_4579|))
 :qid |stdinbpl.233:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (n@@16 Int) ) (!  (=> (<= n@@16 0) (= (|Seq#Take_2963| s@@16 n@@16) |Seq#Empty_4579|))
 :qid |stdinbpl.409:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@16 n@@16))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15123) (Mask@@30 T@PolymorphicMapType_15144) (inp@@3 T@pointerDomainType) (n@@17 Int) ) (!  (=> (state Heap@@36 Mask@@30) (= (|inp_to_seq_2'| Heap@@36 inp@@3 n@@17) (|inp_to_seq_2#frame| (CombineFrames (FrameFragment_4671 (|inp_to_seq_2#condqp1| Heap@@36 inp@@3 n@@17)) (FrameFragment_4671 (|inp_to_seq_2#condqp2| Heap@@36 inp@@3 n@@17))) inp@@3 n@@17)))
 :qid |stdinbpl.898:15|
 :skolemid |86|
 :pattern ( (state Heap@@36 Mask@@30) (|inp_to_seq_2'| Heap@@36 inp@@3 n@@17))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_15123) (Heap1Heap@@0 T@PolymorphicMapType_15123) (inp@@4 T@pointerDomainType) (n@@18 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18))) (< (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)) n@@18)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))  (and (and (<= 0 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18))) (< (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)) n@@18)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10))))) (=> (and (and (<= 0 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18))) (< (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)) n@@18)) (< NoPerm (/ (* (to_real 1) FullPerm) (to_real 10)))) (= (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap2Heap@@0) (ptr_deref Heap2Heap@@0 (ptr_add Heap2Heap@@0 inp@@4 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)))) ref_2) (select (|PolymorphicMapType_15123_9545_9546#PolymorphicMapType_15123| Heap1Heap@@0) (ptr_deref Heap1Heap@@0 (ptr_add Heap1Heap@@0 inp@@4 (|sk_inp_to_seq_2#condqp1| (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)))) ref_2)))) (= (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18)))
 :qid |stdinbpl.908:15|
 :skolemid |87|
 :pattern ( (|inp_to_seq_2#condqp1| Heap2Heap@@0 inp@@4 n@@18) (|inp_to_seq_2#condqp1| Heap1Heap@@0 inp@@4 n@@18) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((t_2@@3 T@treeDomainType) ) (!  (or (= t_2@@3 (leaf (get_tree_value t_2@@3))) (= t_2@@3 (node_1 (get_tree_left t_2@@3) (get_tree_right t_2@@3))))
 :qid |stdinbpl.718:15|
 :skolemid |69|
 :pattern ( (tree_tag t_2@@3))
 :pattern ( (get_tree_left t_2@@3))
 :pattern ( (get_tree_right t_2@@3))
)))
; Valid

