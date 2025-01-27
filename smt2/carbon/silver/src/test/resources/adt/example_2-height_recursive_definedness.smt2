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
(declare-sort T@Field_10116_53 0)
(declare-sort T@Field_10129_10130 0)
(declare-sort T@Field_10116_26305 0)
(declare-sort T@Field_10116_26172 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10077 0)) (((PolymorphicMapType_10077 (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| (Array T@Ref T@Field_10116_53 Real)) (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| (Array T@Ref T@Field_10129_10130 Real)) (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| (Array T@Ref T@Field_10116_26172 Real)) (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| (Array T@Ref T@Field_10116_26305 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10605 0)) (((PolymorphicMapType_10605 (|PolymorphicMapType_10605_10116_53#PolymorphicMapType_10605| (Array T@Ref T@Field_10116_53 Bool)) (|PolymorphicMapType_10605_10116_10130#PolymorphicMapType_10605| (Array T@Ref T@Field_10129_10130 Bool)) (|PolymorphicMapType_10605_10116_26172#PolymorphicMapType_10605| (Array T@Ref T@Field_10116_26172 Bool)) (|PolymorphicMapType_10605_10116_27285#PolymorphicMapType_10605| (Array T@Ref T@Field_10116_26305 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10056 0)) (((PolymorphicMapType_10056 (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| (Array T@Ref T@Field_10116_53 Bool)) (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| (Array T@Ref T@Field_10129_10130 T@Ref)) (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| (Array T@Ref T@Field_10116_26305 T@PolymorphicMapType_10605)) (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| (Array T@Ref T@Field_10116_26172 T@FrameType)) ) ) ))
(declare-sort T@Seq_16509 0)
(declare-fun |Seq#Length_6523| (T@Seq_16509) Int)
(declare-fun |Seq#Drop_6635| (T@Seq_16509 Int) T@Seq_16509)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_10056 T@PolymorphicMapType_10056) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10056 T@PolymorphicMapType_10056) Bool)
(declare-fun state (T@PolymorphicMapType_10056 T@PolymorphicMapType_10077) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10077) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10605)
(declare-sort T@TreeDomainType 0)
(declare-fun Node_1 (Int T@TreeDomainType T@TreeDomainType) T@TreeDomainType)
(declare-fun Tree_tag (T@TreeDomainType) Int)
(declare-fun |Seq#Index_6635| (T@Seq_16509 Int) T@TreeDomainType)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_6579| () T@Seq_16509)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun Leaf () T@TreeDomainType)
(declare-fun |height_recursive'| (T@PolymorphicMapType_10056 T@Seq_16509) Int)
(declare-fun dummyFunction_3428 (Int) Bool)
(declare-fun |height_recursive#triggerStateless| (T@Seq_16509) Int)
(declare-fun |height'| (T@PolymorphicMapType_10056 T@TreeDomainType) Int)
(declare-fun |height#triggerStateless| (T@TreeDomainType) Int)
(declare-fun |children'| (T@PolymorphicMapType_10056 T@TreeDomainType) T@Seq_16509)
(declare-fun dummyFunction_18038 (T@Seq_16509) Bool)
(declare-fun |children#triggerStateless| (T@TreeDomainType) T@Seq_16509)
(declare-fun |children_seq'| (T@PolymorphicMapType_10056 T@Seq_16509) T@Seq_16509)
(declare-fun |children_seq#triggerStateless| (T@Seq_16509) T@Seq_16509)
(declare-fun |Seq#Update_6523| (T@Seq_16509 Int T@TreeDomainType) T@Seq_16509)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_6523| (T@Seq_16509 Int) T@Seq_16509)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun children_2 (T@PolymorphicMapType_10056 T@TreeDomainType) T@Seq_16509)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun get_Tree_left (T@TreeDomainType) T@TreeDomainType)
(declare-fun get_Tree_right (T@TreeDomainType) T@TreeDomainType)
(declare-fun |Seq#Append_6583| (T@Seq_16509 T@Seq_16509) T@Seq_16509)
(declare-fun |Seq#Singleton_6551| (T@TreeDomainType) T@Seq_16509)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun height_recursive (T@PolymorphicMapType_10056 T@Seq_16509) Int)
(declare-fun children_seq (T@PolymorphicMapType_10056 T@Seq_16509) T@Seq_16509)
(declare-fun |Seq#Contains_16509| (T@Seq_16509 T@TreeDomainType) Bool)
(declare-fun |Seq#Skolem_16509| (T@Seq_16509 T@TreeDomainType) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun height_2 (T@PolymorphicMapType_10056 T@TreeDomainType) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10056 T@PolymorphicMapType_10056 T@PolymorphicMapType_10077) Bool)
(declare-fun IsPredicateField_10116_26263 (T@Field_10116_26172) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10116 (T@Field_10116_26172) T@Field_10116_26305)
(declare-fun HasDirectPerm_10116_26236 (T@PolymorphicMapType_10077 T@Ref T@Field_10116_26172) Bool)
(declare-fun IsWandField_10116_27812 (T@Field_10116_26172) Bool)
(declare-fun WandMaskField_10116 (T@Field_10116_26172) T@Field_10116_26305)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_10056)
(declare-fun ZeroMask () T@PolymorphicMapType_10077)
(declare-fun $allocated () T@Field_10116_53)
(declare-fun InsidePredicate_10116_10116 (T@Field_10116_26172 T@FrameType T@Field_10116_26172 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10116_30775 (T@Field_10116_26305) Bool)
(declare-fun IsWandField_10116_30791 (T@Field_10116_26305) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10116_10130 (T@Field_10129_10130) Bool)
(declare-fun IsWandField_10116_10130 (T@Field_10129_10130) Bool)
(declare-fun IsPredicateField_10116_53 (T@Field_10116_53) Bool)
(declare-fun IsWandField_10116_53 (T@Field_10116_53) Bool)
(declare-fun HasDirectPerm_10116_31146 (T@PolymorphicMapType_10077 T@Ref T@Field_10116_26305) Bool)
(declare-fun HasDirectPerm_10116_10130 (T@PolymorphicMapType_10077 T@Ref T@Field_10129_10130) Bool)
(declare-fun HasDirectPerm_10116_53 (T@PolymorphicMapType_10077 T@Ref T@Field_10116_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10077 T@PolymorphicMapType_10077 T@PolymorphicMapType_10077) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#Equal_6679| (T@Seq_16509 T@Seq_16509) Bool)
(declare-fun |Seq#ContainsTrigger_6523| (T@Seq_16509 T@TreeDomainType) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |height_recursive#frame| (T@FrameType T@Seq_16509) Int)
(declare-fun |height#frame| (T@FrameType T@TreeDomainType) Int)
(declare-fun |children#frame| (T@FrameType T@TreeDomainType) T@Seq_16509)
(declare-fun |children_seq#frame| (T@FrameType T@Seq_16509) T@Seq_16509)
(declare-fun get_Tree_v (T@TreeDomainType) Int)
(declare-fun |Seq#SkolemDiff_16509| (T@Seq_16509 T@Seq_16509) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_16509) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6523| s)) (= (|Seq#Length_6523| (|Seq#Drop_6635| s n)) (- (|Seq#Length_6523| s) n))) (=> (< (|Seq#Length_6523| s) n) (= (|Seq#Length_6523| (|Seq#Drop_6635| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6523| (|Seq#Drop_6635| s n)) (|Seq#Length_6523| s))))
 :qid |stdinbpl.279:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6523| (|Seq#Drop_6635| s n)))
 :pattern ( (|Seq#Length_6523| s) (|Seq#Drop_6635| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.279:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_2867| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10056) (Heap1 T@PolymorphicMapType_10056) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10056) (Mask T@PolymorphicMapType_10077) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10056) (Heap1@@0 T@PolymorphicMapType_10056) (Heap2 T@PolymorphicMapType_10056) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10116_26305) ) (!  (not (select (|PolymorphicMapType_10605_10116_27285#PolymorphicMapType_10605| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10605_10116_27285#PolymorphicMapType_10605| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10116_26172) ) (!  (not (select (|PolymorphicMapType_10605_10116_26172#PolymorphicMapType_10605| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10605_10116_26172#PolymorphicMapType_10605| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10129_10130) ) (!  (not (select (|PolymorphicMapType_10605_10116_10130#PolymorphicMapType_10605| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10605_10116_10130#PolymorphicMapType_10605| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10116_53) ) (!  (not (select (|PolymorphicMapType_10605_10116_53#PolymorphicMapType_10605| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10605_10116_53#PolymorphicMapType_10605| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((v_2 Int) (left T@TreeDomainType) (right_2 T@TreeDomainType) ) (! (= (Tree_tag (Node_1 v_2 left right_2)) 1)
 :qid |stdinbpl.593:15|
 :skolemid |61|
 :pattern ( (Node_1 v_2 left right_2))
)))
(assert (forall ((s@@1 T@Seq_16509) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6523| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6635| (|Seq#Drop_6635| s@@1 n@@1) j) (|Seq#Index_6635| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.300:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6635| (|Seq#Drop_6635| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.300:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6523| |Seq#Empty_6579|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (= (Tree_tag Leaf) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10056) (ts T@Seq_16509) ) (! (dummyFunction_3428 (|height_recursive#triggerStateless| ts))
 :qid |stdinbpl.615:15|
 :skolemid |64|
 :pattern ( (|height_recursive'| Heap@@0 ts))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10056) (t_2 T@TreeDomainType) ) (! (dummyFunction_3428 (|height#triggerStateless| t_2))
 :qid |stdinbpl.683:15|
 :skolemid |68|
 :pattern ( (|height'| Heap@@1 t_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10056) (t_2@@0 T@TreeDomainType) ) (! (dummyFunction_18038 (|children#triggerStateless| t_2@@0))
 :qid |stdinbpl.744:15|
 :skolemid |72|
 :pattern ( (|children'| Heap@@2 t_2@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10056) (ts@@0 T@Seq_16509) ) (! (dummyFunction_18038 (|children_seq#triggerStateless| ts@@0))
 :qid |stdinbpl.794:15|
 :skolemid |76|
 :pattern ( (|children_seq'| Heap@@3 ts@@0))
)))
(assert (forall ((s@@3 T@Seq_16509) (i Int) (v T@TreeDomainType) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6523| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_6635| (|Seq#Update_6523| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_6635| (|Seq#Update_6523| s@@3 i v) n@@3) (|Seq#Index_6635| s@@3 n@@3)))))
 :qid |stdinbpl.255:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6635| (|Seq#Update_6523| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_6635| s@@3 n@@3) (|Seq#Update_6523| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.255:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16509) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6523| s@@5)) (= (|Seq#Length_6523| (|Seq#Take_6523| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6523| s@@5) n@@5) (= (|Seq#Length_6523| (|Seq#Take_6523| s@@5 n@@5)) (|Seq#Length_6523| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6523| (|Seq#Take_6523| s@@5 n@@5)) 0)))
 :qid |stdinbpl.266:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6523| (|Seq#Take_6523| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6523| s@@5 n@@5) (|Seq#Length_6523| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.266:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10056) (Mask@@0 T@PolymorphicMapType_10077) (t_2@@1 T@TreeDomainType) ) (!  (=> (and (state Heap@@4 Mask@@0) (< AssumeFunctionsAbove 3)) (= (children_2 Heap@@4 t_2@@1) (ite  (or (= (Tree_tag t_2@@1) 0) (and (= (Tree_tag t_2@@1) 1) (and (= (Tree_tag (get_Tree_left t_2@@1)) 0) (= (Tree_tag (get_Tree_right t_2@@1)) 0)))) |Seq#Empty_6579| (ite  (and (= (Tree_tag (get_Tree_left t_2@@1)) 1) (= (Tree_tag (get_Tree_right t_2@@1)) 1)) (|Seq#Append_6583| (|Seq#Singleton_6551| (get_Tree_right t_2@@1)) (|Seq#Singleton_6551| (get_Tree_left t_2@@1))) (ite (= (Tree_tag (get_Tree_left t_2@@1)) 1) (|Seq#Singleton_6551| (get_Tree_left t_2@@1)) (|Seq#Singleton_6551| (get_Tree_right t_2@@1)))))))
 :qid |stdinbpl.750:15|
 :skolemid |73|
 :pattern ( (state Heap@@4 Mask@@0) (children_2 Heap@@4 t_2@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.540:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10056) (Mask@@1 T@PolymorphicMapType_10077) (ts@@1 T@Seq_16509) ) (!  (=> (and (state Heap@@5 Mask@@1) (< AssumeFunctionsAbove 1)) (= (height_recursive Heap@@5 ts@@1) (ite (= (|Seq#Length_6523| ts@@1) 0) 0 (+ 1 (|height_recursive'| Heap@@5 (children_seq Heap@@5 ts@@1))))))
 :qid |stdinbpl.621:15|
 :skolemid |65|
 :pattern ( (state Heap@@5 Mask@@1) (height_recursive Heap@@5 ts@@1))
)))
(assert (forall ((s@@7 T@Seq_16509) (x T@TreeDomainType) ) (!  (=> (|Seq#Contains_16509| s@@7 x) (and (and (<= 0 (|Seq#Skolem_16509| s@@7 x)) (< (|Seq#Skolem_16509| s@@7 x) (|Seq#Length_6523| s@@7))) (= (|Seq#Index_6635| s@@7 (|Seq#Skolem_16509| s@@7 x)) x)))
 :qid |stdinbpl.398:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16509| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.398:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10056) (ts@@2 T@Seq_16509) ) (!  (and (= (height_recursive Heap@@6 ts@@2) (|height_recursive'| Heap@@6 ts@@2)) (dummyFunction_3428 (|height_recursive#triggerStateless| ts@@2)))
 :qid |stdinbpl.611:15|
 :skolemid |63|
 :pattern ( (height_recursive Heap@@6 ts@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10056) (t_2@@2 T@TreeDomainType) ) (!  (and (= (height_2 Heap@@7 t_2@@2) (|height'| Heap@@7 t_2@@2)) (dummyFunction_3428 (|height#triggerStateless| t_2@@2)))
 :qid |stdinbpl.679:15|
 :skolemid |67|
 :pattern ( (height_2 Heap@@7 t_2@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10056) (t_2@@3 T@TreeDomainType) ) (!  (and (= (children_2 Heap@@8 t_2@@3) (|children'| Heap@@8 t_2@@3)) (dummyFunction_18038 (|children#triggerStateless| t_2@@3)))
 :qid |stdinbpl.740:15|
 :skolemid |71|
 :pattern ( (children_2 Heap@@8 t_2@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10056) (ts@@3 T@Seq_16509) ) (!  (and (= (children_seq Heap@@9 ts@@3) (|children_seq'| Heap@@9 ts@@3)) (dummyFunction_18038 (|children_seq#triggerStateless| ts@@3)))
 :qid |stdinbpl.790:15|
 :skolemid |75|
 :pattern ( (children_seq Heap@@9 ts@@3))
)))
(assert (forall ((s@@9 T@Seq_2867) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_2867| s@@9 n@@7) s@@9))
 :qid |stdinbpl.382:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_16509) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_6635| s@@10 n@@8) s@@10))
 :qid |stdinbpl.382:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6635| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.235:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.233:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10056) (ExhaleHeap T@PolymorphicMapType_10056) (Mask@@2 T@PolymorphicMapType_10077) (pm_f_32 T@Field_10116_26172) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_10116_26236 Mask@@2 null pm_f_32) (IsPredicateField_10116_26263 pm_f_32)) (= (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@10) null (PredicateMaskField_10116 pm_f_32)) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap) null (PredicateMaskField_10116 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (IsPredicateField_10116_26263 pm_f_32) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap) null (PredicateMaskField_10116 pm_f_32)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10056) (ExhaleHeap@@0 T@PolymorphicMapType_10056) (Mask@@3 T@PolymorphicMapType_10077) (pm_f_32@@0 T@Field_10116_26172) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_10116_26236 Mask@@3 null pm_f_32@@0) (IsWandField_10116_27812 pm_f_32@@0)) (= (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@11) null (WandMaskField_10116 pm_f_32@@0)) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@0) null (WandMaskField_10116 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (IsWandField_10116_27812 pm_f_32@@0) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@0) null (WandMaskField_10116 pm_f_32@@0)))
)))
(assert (forall ((x@@1 T@TreeDomainType) (y T@TreeDomainType) ) (! (= (|Seq#Contains_16509| (|Seq#Singleton_6551| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.523:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16509| (|Seq#Singleton_6551| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.523:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16509) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6523| s@@11))) (= (|Seq#Index_6635| (|Seq#Take_6523| s@@11 n@@9) j@@3) (|Seq#Index_6635| s@@11 j@@3)))
 :qid |stdinbpl.274:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6635| (|Seq#Take_6523| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6635| s@@11 j@@3) (|Seq#Take_6523| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.274:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16509) (t T@Seq_16509) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6523| s@@13))) (< n@@11 (|Seq#Length_6523| (|Seq#Append_6583| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6523| s@@13)) (|Seq#Length_6523| s@@13)) n@@11) (= (|Seq#Take_6523| (|Seq#Append_6583| s@@13 t) n@@11) (|Seq#Append_6583| s@@13 (|Seq#Take_6523| t (|Seq#Sub| n@@11 (|Seq#Length_6523| s@@13)))))))
 :qid |stdinbpl.359:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6523| (|Seq#Append_6583| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_2867| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12) (|Seq#Append_2867| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.359:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10056) (ExhaleHeap@@1 T@PolymorphicMapType_10056) (Mask@@4 T@PolymorphicMapType_10077) (pm_f_32@@1 T@Field_10116_26172) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_10116_26236 Mask@@4 null pm_f_32@@1) (IsPredicateField_10116_26263 pm_f_32@@1)) (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_10116_53) ) (!  (=> (select (|PolymorphicMapType_10605_10116_53#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@12) null (PredicateMaskField_10116 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@12) o2_32 f_54) (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_10129_10130) ) (!  (=> (select (|PolymorphicMapType_10605_10116_10130#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@12) null (PredicateMaskField_10116 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@12) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_10116_26172) ) (!  (=> (select (|PolymorphicMapType_10605_10116_26172#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@12) null (PredicateMaskField_10116 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@12) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_10116_26305) ) (!  (=> (select (|PolymorphicMapType_10605_10116_27285#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@12) null (PredicateMaskField_10116 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@12) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@1) o2_32@@2 f_54@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (IsPredicateField_10116_26263 pm_f_32@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10056) (ExhaleHeap@@2 T@PolymorphicMapType_10056) (Mask@@5 T@PolymorphicMapType_10077) (pm_f_32@@2 T@Field_10116_26172) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_10116_26236 Mask@@5 null pm_f_32@@2) (IsWandField_10116_27812 pm_f_32@@2)) (and (and (and (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_10116_53) ) (!  (=> (select (|PolymorphicMapType_10605_10116_53#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@13) null (WandMaskField_10116 pm_f_32@@2))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@13) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@3 f_54@@3))
)) (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_10129_10130) ) (!  (=> (select (|PolymorphicMapType_10605_10116_10130#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@13) null (WandMaskField_10116 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@13) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@4 f_54@@4))
))) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_10116_26172) ) (!  (=> (select (|PolymorphicMapType_10605_10116_26172#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@13) null (WandMaskField_10116 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@13) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_10116_26305) ) (!  (=> (select (|PolymorphicMapType_10605_10116_27285#PolymorphicMapType_10605| (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@13) null (WandMaskField_10116 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@13) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@2) o2_32@@6 f_54@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@5) (IsWandField_10116_27812 pm_f_32@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10056) (ExhaleHeap@@3 T@PolymorphicMapType_10056) (Mask@@6 T@PolymorphicMapType_10077) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@14) o_55 $allocated) (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@3) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@3) o_55 $allocated))
)))
(assert (forall ((p T@Field_10116_26172) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10116_10116 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10116_10116 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_16509) (s1 T@Seq_16509) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6579|)) (not (= s1 |Seq#Empty_6579|))) (<= (|Seq#Length_6523| s0) n@@13)) (< n@@13 (|Seq#Length_6523| (|Seq#Append_6583| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6523| s0)) (|Seq#Length_6523| s0)) n@@13) (= (|Seq#Index_6635| (|Seq#Append_6583| s0 s1) n@@13) (|Seq#Index_6635| s1 (|Seq#Sub| n@@13 (|Seq#Length_6523| s0))))))
 :qid |stdinbpl.246:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6635| (|Seq#Append_6583| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.246:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10056) (ExhaleHeap@@4 T@PolymorphicMapType_10056) (Mask@@7 T@PolymorphicMapType_10077) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@15 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10077) (o_2@@3 T@Ref) (f_4@@3 T@Field_10116_26305) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_10116_30775 f_4@@3))) (not (IsWandField_10116_30791 f_4@@3))) (<= (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10077) (o_2@@4 T@Ref) (f_4@@4 T@Field_10116_26172) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_10116_26263 f_4@@4))) (not (IsWandField_10116_27812 f_4@@4))) (<= (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10077) (o_2@@5 T@Ref) (f_4@@5 T@Field_10129_10130) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_10116_10130 f_4@@5))) (not (IsWandField_10116_10130 f_4@@5))) (<= (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10077) (o_2@@6 T@Ref) (f_4@@6 T@Field_10116_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_10116_53 f_4@@6))) (not (IsWandField_10116_53 f_4@@6))) (<= (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10077) (o_2@@7 T@Ref) (f_4@@7 T@Field_10116_26305) ) (! (= (HasDirectPerm_10116_31146 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10116_31146 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10077) (o_2@@8 T@Ref) (f_4@@8 T@Field_10116_26172) ) (! (= (HasDirectPerm_10116_26236 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10116_26236 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10077) (o_2@@9 T@Ref) (f_4@@9 T@Field_10129_10130) ) (! (= (HasDirectPerm_10116_10130 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10116_10130 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10077) (o_2@@10 T@Ref) (f_4@@10 T@Field_10116_53) ) (! (= (HasDirectPerm_10116_53 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10116_53 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.538:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10056) (ExhaleHeap@@5 T@PolymorphicMapType_10056) (Mask@@16 T@PolymorphicMapType_10077) (o_55@@0 T@Ref) (f_54@@7 T@Field_10116_26305) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10116_31146 Mask@@16 o_55@@0 f_54@@7) (= (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@16) o_55@@0 f_54@@7) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@5) o_55@@0 f_54@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| ExhaleHeap@@5) o_55@@0 f_54@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10056) (ExhaleHeap@@6 T@PolymorphicMapType_10056) (Mask@@17 T@PolymorphicMapType_10077) (o_55@@1 T@Ref) (f_54@@8 T@Field_10116_26172) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10116_26236 Mask@@17 o_55@@1 f_54@@8) (= (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@17) o_55@@1 f_54@@8) (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| ExhaleHeap@@6) o_55@@1 f_54@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| ExhaleHeap@@6) o_55@@1 f_54@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10056) (ExhaleHeap@@7 T@PolymorphicMapType_10056) (Mask@@18 T@PolymorphicMapType_10077) (o_55@@2 T@Ref) (f_54@@9 T@Field_10129_10130) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10116_10130 Mask@@18 o_55@@2 f_54@@9) (= (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@18) o_55@@2 f_54@@9) (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| ExhaleHeap@@7) o_55@@2 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| ExhaleHeap@@7) o_55@@2 f_54@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10056) (ExhaleHeap@@8 T@PolymorphicMapType_10056) (Mask@@19 T@PolymorphicMapType_10077) (o_55@@3 T@Ref) (f_54@@10 T@Field_10116_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10116_53 Mask@@19 o_55@@3 f_54@@10) (= (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@19) o_55@@3 f_54@@10) (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@8) o_55@@3 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| ExhaleHeap@@8) o_55@@3 f_54@@10))
)))
(assert (forall ((s0@@1 T@Seq_16509) (s1@@1 T@Seq_16509) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6579|)) (not (= s1@@1 |Seq#Empty_6579|))) (= (|Seq#Length_6523| (|Seq#Append_6583| s0@@1 s1@@1)) (+ (|Seq#Length_6523| s0@@1) (|Seq#Length_6523| s1@@1))))
 :qid |stdinbpl.215:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6523| (|Seq#Append_6583| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.215:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10116_26305) ) (! (= (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10116_26172) ) (! (= (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10129_10130) ) (! (= (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10116_53) ) (! (= (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@15 T@Seq_16509) (t@@1 T@Seq_16509) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6523| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6523| s@@15)) (|Seq#Length_6523| s@@15)) n@@15) (= (|Seq#Drop_6635| (|Seq#Append_6583| s@@15 t@@1) n@@15) (|Seq#Drop_6635| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6523| s@@15))))))
 :qid |stdinbpl.372:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6635| (|Seq#Append_6583| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16) (|Seq#Drop_2867| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.372:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10056) (Mask@@20 T@PolymorphicMapType_10077) (ts@@4 T@Seq_16509) ) (!  (=> (and (state Heap@@20 Mask@@20) (< AssumeFunctionsAbove 2)) (= (children_seq Heap@@20 ts@@4) (ite (= (|Seq#Length_6523| ts@@4) 0) |Seq#Empty_6579| (ite (= (|Seq#Length_6523| ts@@4) 1) (children_2 Heap@@20 (|Seq#Index_6635| ts@@4 0)) (|Seq#Append_6583| (|children_seq'| Heap@@20 (|Seq#Drop_6635| ts@@4 1)) (children_2 Heap@@20 (|Seq#Index_6635| ts@@4 0)))))))
 :qid |stdinbpl.800:15|
 :skolemid |77|
 :pattern ( (state Heap@@20 Mask@@20) (children_seq Heap@@20 ts@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10077) (SummandMask1 T@PolymorphicMapType_10077) (SummandMask2 T@PolymorphicMapType_10077) (o_2@@15 T@Ref) (f_4@@15 T@Field_10116_26305) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10077_10116_29866#PolymorphicMapType_10077| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10077) (SummandMask1@@0 T@PolymorphicMapType_10077) (SummandMask2@@0 T@PolymorphicMapType_10077) (o_2@@16 T@Ref) (f_4@@16 T@Field_10116_26172) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10077_10116_26172#PolymorphicMapType_10077| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10077) (SummandMask1@@1 T@PolymorphicMapType_10077) (SummandMask2@@1 T@PolymorphicMapType_10077) (o_2@@17 T@Ref) (f_4@@17 T@Field_10129_10130) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10077_10116_10130#PolymorphicMapType_10077| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10077) (SummandMask1@@2 T@PolymorphicMapType_10077) (SummandMask2@@2 T@PolymorphicMapType_10077) (o_2@@18 T@Ref) (f_4@@18 T@Field_10116_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10077_10116_53#PolymorphicMapType_10077| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.537:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a b) (= a b))
 :qid |stdinbpl.510:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a b))
)))
(assert (forall ((a@@0 T@Seq_16509) (b@@0 T@Seq_16509) ) (!  (=> (|Seq#Equal_6679| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.510:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_6679| a@@0 b@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10056) (Mask@@21 T@PolymorphicMapType_10077) (t_2@@4 T@TreeDomainType) ) (!  (=> (and (state Heap@@21 Mask@@21) (< AssumeFunctionsAbove 0)) (= (height_2 Heap@@21 t_2@@4) (ite (= (Tree_tag t_2@@4) 0) 0 (height_recursive Heap@@21 (|Seq#Singleton_6551| t_2@@4)))))
 :qid |stdinbpl.689:15|
 :skolemid |69|
 :pattern ( (state Heap@@21 Mask@@21) (height_2 Heap@@21 t_2@@4))
)))
(assert (forall ((s@@17 T@Seq_16509) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_6523| s@@17))) (|Seq#ContainsTrigger_6523| s@@17 (|Seq#Index_6635| s@@17 i@@3)))
 :qid |stdinbpl.403:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6635| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@4)))
 :qid |stdinbpl.403:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16509) (s1@@3 T@Seq_16509) ) (!  (and (=> (= s0@@3 |Seq#Empty_6579|) (= (|Seq#Append_6583| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6579|) (= (|Seq#Append_6583| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.221:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_6583| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.221:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@TreeDomainType) ) (! (= (|Seq#Index_6635| (|Seq#Singleton_6551| t@@3) 0) t@@3)
 :qid |stdinbpl.225:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6551| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@4) 0) t@@4)
 :qid |stdinbpl.225:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16509) ) (! (<= 0 (|Seq#Length_6523| s@@19))
 :qid |stdinbpl.204:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6523| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.204:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@5 s1@@5) (and (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_2867| s0@@5))) (= (|Seq#Index_2867| s0@@5 j@@6) (|Seq#Index_2867| s1@@5 j@@6)))
 :qid |stdinbpl.500:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@5 j@@6))
 :pattern ( (|Seq#Index_2867| s1@@5 j@@6))
))))
 :qid |stdinbpl.497:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_16509) (s1@@6 T@Seq_16509) ) (!  (=> (|Seq#Equal_6679| s0@@6 s1@@6) (and (= (|Seq#Length_6523| s0@@6) (|Seq#Length_6523| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_6523| s0@@6))) (= (|Seq#Index_6635| s0@@6 j@@7) (|Seq#Index_6635| s1@@6 j@@7)))
 :qid |stdinbpl.500:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6635| s0@@6 j@@7))
 :pattern ( (|Seq#Index_6635| s1@@6 j@@7))
))))
 :qid |stdinbpl.497:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_6679| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@TreeDomainType) ) (! (= (|Seq#Length_6523| (|Seq#Singleton_6551| t@@5)) 1)
 :qid |stdinbpl.212:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6551| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@6)) 1)
 :qid |stdinbpl.212:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10056) (Mask@@22 T@PolymorphicMapType_10077) (ts@@5 T@Seq_16509) ) (!  (=> (state Heap@@22 Mask@@22) (= (|height_recursive'| Heap@@22 ts@@5) (|height_recursive#frame| EmptyFrame ts@@5)))
 :qid |stdinbpl.628:15|
 :skolemid |66|
 :pattern ( (state Heap@@22 Mask@@22) (|height_recursive'| Heap@@22 ts@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10056) (Mask@@23 T@PolymorphicMapType_10077) (t_2@@5 T@TreeDomainType) ) (!  (=> (state Heap@@23 Mask@@23) (= (|height'| Heap@@23 t_2@@5) (|height#frame| EmptyFrame t_2@@5)))
 :qid |stdinbpl.696:15|
 :skolemid |70|
 :pattern ( (state Heap@@23 Mask@@23) (|height'| Heap@@23 t_2@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10056) (Mask@@24 T@PolymorphicMapType_10077) (t_2@@6 T@TreeDomainType) ) (!  (=> (state Heap@@24 Mask@@24) (= (|children'| Heap@@24 t_2@@6) (|children#frame| EmptyFrame t_2@@6)))
 :qid |stdinbpl.757:15|
 :skolemid |74|
 :pattern ( (state Heap@@24 Mask@@24) (|children'| Heap@@24 t_2@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10056) (Mask@@25 T@PolymorphicMapType_10077) (ts@@6 T@Seq_16509) ) (!  (=> (state Heap@@25 Mask@@25) (= (|children_seq'| Heap@@25 ts@@6) (|children_seq#frame| EmptyFrame ts@@6)))
 :qid |stdinbpl.807:15|
 :skolemid |78|
 :pattern ( (state Heap@@25 Mask@@25) (|children_seq'| Heap@@25 ts@@6))
)))
(assert (forall ((v_2@@0 Int) (left@@0 T@TreeDomainType) (right_2@@0 T@TreeDomainType) ) (! (= v_2@@0 (get_Tree_v (Node_1 v_2@@0 left@@0 right_2@@0)))
 :qid |stdinbpl.572:15|
 :skolemid |58|
 :pattern ( (Node_1 v_2@@0 left@@0 right_2@@0))
)))
(assert (forall ((v_2@@1 Int) (left@@1 T@TreeDomainType) (right_2@@1 T@TreeDomainType) ) (! (= left@@1 (get_Tree_left (Node_1 v_2@@1 left@@1 right_2@@1)))
 :qid |stdinbpl.578:15|
 :skolemid |59|
 :pattern ( (Node_1 v_2@@1 left@@1 right_2@@1))
)))
(assert (forall ((v_2@@2 Int) (left@@2 T@TreeDomainType) (right_2@@2 T@TreeDomainType) ) (! (= right_2@@2 (get_Tree_right (Node_1 v_2@@2 left@@2 right_2@@2)))
 :qid |stdinbpl.584:15|
 :skolemid |60|
 :pattern ( (Node_1 v_2@@2 left@@2 right_2@@2))
)))
(assert (forall ((s@@21 T@Seq_16509) (t@@7 T@Seq_16509) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6523| s@@21))) (= (|Seq#Take_6523| (|Seq#Append_6583| s@@21 t@@7) n@@17) (|Seq#Take_6523| s@@21 n@@17)))
 :qid |stdinbpl.354:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6523| (|Seq#Append_6583| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18) (|Seq#Take_2867| s@@22 n@@18)))
 :qid |stdinbpl.354:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16509) (i@@5 Int) (v@@2 T@TreeDomainType) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_6523| s@@23))) (= (|Seq#Length_6523| (|Seq#Update_6523| s@@23 i@@5 v@@2)) (|Seq#Length_6523| s@@23)))
 :qid |stdinbpl.253:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6523| (|Seq#Update_6523| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_6523| s@@23) (|Seq#Update_6523| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@6 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.253:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10056) (o_54 T@Ref) (f_8 T@Field_10116_26172) (v@@4 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_10056 (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@26) (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@26) (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@26) (store (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@26) o_54 f_8 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10056 (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@26) (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@26) (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@26) (store (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@26) o_54 f_8 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10056) (o_54@@0 T@Ref) (f_8@@0 T@Field_10116_26305) (v@@5 T@PolymorphicMapType_10605) ) (! (succHeap Heap@@27 (PolymorphicMapType_10056 (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@27) (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@27) (store (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@27) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10056 (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@27) (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@27) (store (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@27) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10056) (o_54@@1 T@Ref) (f_8@@1 T@Field_10129_10130) (v@@6 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_10056 (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@28) (store (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@28) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@28) (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10056 (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@28) (store (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@28) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@28) (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10056) (o_54@@2 T@Ref) (f_8@@2 T@Field_10116_53) (v@@7 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_10056 (store (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@29) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@29) (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@29) (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10056 (store (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@29) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@29) (|PolymorphicMapType_10056_10116_26349#PolymorphicMapType_10056| Heap@@29) (|PolymorphicMapType_10056_10116_26172#PolymorphicMapType_10056| Heap@@29)))
)))
(assert (forall ((s@@25 T@Seq_16509) (t@@9 T@Seq_16509) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6523| s@@25))) (= (|Seq#Drop_6635| (|Seq#Append_6583| s@@25 t@@9) n@@19) (|Seq#Append_6583| (|Seq#Drop_6635| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.368:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6635| (|Seq#Append_6583| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20) (|Seq#Append_2867| (|Seq#Drop_2867| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.368:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16509) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_6523| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_6635| (|Seq#Drop_6635| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_6635| s@@27 i@@7))))
 :qid |stdinbpl.304:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6635| s@@27 n@@21) (|Seq#Index_6635| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2867| s@@28 i@@8))))
 :qid |stdinbpl.304:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16509) (s1@@7 T@Seq_16509) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6579|)) (not (= s1@@7 |Seq#Empty_6579|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6523| s0@@7))) (= (|Seq#Index_6635| (|Seq#Append_6583| s0@@7 s1@@7) n@@23) (|Seq#Index_6635| s0@@7 n@@23)))
 :qid |stdinbpl.244:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6635| (|Seq#Append_6583| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6635| s0@@7 n@@23) (|Seq#Append_6583| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.244:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_2867| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16509) (s1@@9 T@Seq_16509) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6579|)) (not (= s1@@9 |Seq#Empty_6579|))) (<= 0 m)) (< m (|Seq#Length_6523| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6523| s0@@9)) (|Seq#Length_6523| s0@@9)) m) (= (|Seq#Index_6635| (|Seq#Append_6583| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6523| s0@@9))) (|Seq#Index_6635| s1@@9 m))))
 :qid |stdinbpl.249:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6635| s1@@9 m) (|Seq#Append_6583| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.249:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_2867| s0@@10 s1@@10))
)))
(assert (forall ((o_54@@3 T@Ref) (f_24 T@Field_10129_10130) (Heap@@30 T@PolymorphicMapType_10056) ) (!  (=> (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@30) o_54@@3 $allocated) (select (|PolymorphicMapType_10056_6285_53#PolymorphicMapType_10056| Heap@@30) (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@30) o_54@@3 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10056_6288_6289#PolymorphicMapType_10056| Heap@@30) o_54@@3 f_24))
)))
(assert (forall ((s@@29 T@Seq_16509) (x@@3 T@TreeDomainType) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6523| s@@29))) (= (|Seq#Index_6635| s@@29 i@@9) x@@3)) (|Seq#Contains_16509| s@@29 x@@3))
 :qid |stdinbpl.401:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16509| s@@29 x@@3) (|Seq#Index_6635| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@10) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.401:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16509) (s1@@11 T@Seq_16509) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_6679| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_6679| s0@@11 s1@@11))) (not (= (|Seq#Length_6523| s0@@11) (|Seq#Length_6523| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_6679| s0@@11 s1@@11))) (= (|Seq#Length_6523| s0@@11) (|Seq#Length_6523| s1@@11))) (= (|Seq#SkolemDiff_16509| s0@@11 s1@@11) (|Seq#SkolemDiff_16509| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16509| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16509| s0@@11 s1@@11) (|Seq#Length_6523| s0@@11))) (not (= (|Seq#Index_6635| s0@@11 (|Seq#SkolemDiff_16509| s0@@11 s1@@11)) (|Seq#Index_6635| s1@@11 (|Seq#SkolemDiff_16509| s0@@11 s1@@11))))))
 :qid |stdinbpl.505:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_6679| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.505:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_10116_26172) (v_1@@0 T@FrameType) (q T@Field_10116_26172) (w@@0 T@FrameType) (r T@Field_10116_26172) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10116_10116 p@@1 v_1@@0 q w@@0) (InsidePredicate_10116_10116 q w@@0 r u)) (InsidePredicate_10116_10116 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10116_10116 p@@1 v_1@@0 q w@@0) (InsidePredicate_10116_10116 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_16509) ) (!  (=> (= (|Seq#Length_6523| s@@31) 0) (= s@@31 |Seq#Empty_6579|))
 :qid |stdinbpl.208:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6523| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_2867|))
 :qid |stdinbpl.208:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16509) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_6523| s@@33 n@@25) |Seq#Empty_6579|))
 :qid |stdinbpl.384:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6523| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@34 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.384:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((t_2@@7 T@TreeDomainType) ) (!  (or (= t_2@@7 Leaf) (= t_2@@7 (Node_1 (get_Tree_v t_2@@7) (get_Tree_left t_2@@7) (get_Tree_right t_2@@7))))
 :qid |stdinbpl.599:15|
 :skolemid |62|
 :pattern ( (Tree_tag t_2@@7))
 :pattern ( (get_Tree_v t_2@@7))
 :pattern ( (get_Tree_left t_2@@7))
 :pattern ( (get_Tree_right t_2@@7))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |height_recursive#definedness|)
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
 (=> (= (ControlFlow 0 0) 8) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
