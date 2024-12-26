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
(declare-sort T@Field_11707_53 0)
(declare-sort T@Field_11720_11721 0)
(declare-sort T@Field_11707_31383 0)
(declare-sort T@Field_11707_31250 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11668 0)) (((PolymorphicMapType_11668 (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| (Array T@Ref T@Field_11707_53 Real)) (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| (Array T@Ref T@Field_11720_11721 Real)) (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| (Array T@Ref T@Field_11707_31250 Real)) (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| (Array T@Ref T@Field_11707_31383 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12196 0)) (((PolymorphicMapType_12196 (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| (Array T@Ref T@Field_11707_53 Bool)) (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| (Array T@Ref T@Field_11720_11721 Bool)) (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| (Array T@Ref T@Field_11707_31250 Bool)) (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| (Array T@Ref T@Field_11707_31383 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11647 0)) (((PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| (Array T@Ref T@Field_11707_53 Bool)) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| (Array T@Ref T@Field_11720_11721 T@Ref)) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| (Array T@Ref T@Field_11707_31383 T@PolymorphicMapType_12196)) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| (Array T@Ref T@Field_11707_31250 T@FrameType)) ) ) ))
(declare-sort T@Triple1DomainType 0)
(declare-fun state (T@PolymorphicMapType_11647 T@PolymorphicMapType_11668) Bool)
(declare-fun tripleLen1Bad (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-sort T@Triple3DomainType 0)
(declare-fun Triple3_tag (T@Triple3DomainType) Int)
(declare-sort T@Triple2DomainType 0)
(declare-fun get_Triple2_x (T@Triple2DomainType) T@Triple3DomainType)
(declare-fun get_Triple1_x (T@Triple1DomainType) T@Triple2DomainType)
(declare-fun |tripleLen1Bad'| (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun succHeap (T@PolymorphicMapType_11647 T@PolymorphicMapType_11647) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11647 T@PolymorphicMapType_11647) Bool)
(declare-sort T@List1DomainType 0)
(declare-fun bounded_7479 (T@List1DomainType) Bool)
(declare-sort T@List2DomainType 0)
(declare-fun bounded_7511 (T@List2DomainType) Bool)
(declare-sort T@MList1DomainType 0)
(declare-fun bounded_7540 (T@MList1DomainType) Bool)
(declare-sort T@MList2DomainType 0)
(declare-fun bounded_7572 (T@MList2DomainType) Bool)
(declare-fun bounded_7599 (T@Triple1DomainType) Bool)
(declare-fun bounded_7626 (T@Triple2DomainType) Bool)
(declare-fun bounded_7659 (T@Triple3DomainType) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11668) Bool)
(declare-fun decreasing_7471 (T@List1DomainType T@List1DomainType) Bool)
(declare-fun decreasing_7503 (T@List2DomainType T@List2DomainType) Bool)
(declare-fun decreasing_7532 (T@MList1DomainType T@MList1DomainType) Bool)
(declare-fun decreasing_7564 (T@MList2DomainType T@MList2DomainType) Bool)
(declare-fun decreasing_7589 (T@Triple1DomainType T@Triple1DomainType) Bool)
(declare-fun decreasing_7616 (T@Triple2DomainType T@Triple2DomainType) Bool)
(declare-fun decreasing_7649 (T@Triple3DomainType T@Triple3DomainType) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12196)
(declare-fun List2_tag (T@List2DomainType) Int)
(declare-fun Empty () T@List2DomainType)
(declare-fun MList2_tag (T@MList2DomainType) Int)
(declare-fun MEmpty () T@MList2DomainType)
(declare-fun |len2'| (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun dummyFunction_3134 (Int) Bool)
(declare-fun |len2#triggerStateless| (T@List2DomainType) Int)
(declare-fun |len2Bad'| (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun |len2Bad#triggerStateless| (T@List2DomainType) Int)
(declare-fun |len1'| (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun |len1#triggerStateless| (T@List1DomainType) Int)
(declare-fun |len1Bad'| (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun |len1Bad#triggerStateless| (T@List1DomainType) Int)
(declare-fun |mlen2'| (T@PolymorphicMapType_11647 T@MList2DomainType) Int)
(declare-fun |mlen2#triggerStateless| (T@MList2DomainType) Int)
(declare-fun |tripleLen1'| (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun |tripleLen1#triggerStateless| (T@Triple1DomainType) Int)
(declare-fun |tripleLen2'| (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun |tripleLen2#triggerStateless| (T@Triple2DomainType) Int)
(declare-fun |tripleLen3'| (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun |tripleLen3#triggerStateless| (T@Triple3DomainType) Int)
(declare-fun |tripleLen1Bad#triggerStateless| (T@Triple1DomainType) Int)
(declare-fun |tripleLen2Bad'| (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun |tripleLen2Bad#triggerStateless| (T@Triple2DomainType) Int)
(declare-fun |tripleLen3Bad'| (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun |tripleLen3Bad#triggerStateless| (T@Triple3DomainType) Int)
(declare-fun RList1 (Int T@List2DomainType) T@List1DomainType)
(declare-fun NonEmpty (Int T@List1DomainType) T@List2DomainType)
(declare-fun MRList1 (Int T@MList2DomainType) T@MList1DomainType)
(declare-fun MNonEmpty (Int T@MList1DomainType) T@MList2DomainType)
(declare-fun tripleLen3Bad (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun tripleLen2Bad (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun len1Bad (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun get_List1_l (T@List1DomainType) T@List2DomainType)
(declare-fun len2 (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun len2Bad (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun len1 (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun mlen2 (T@PolymorphicMapType_11647 T@MList2DomainType) Int)
(declare-fun tripleLen1 (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun tripleLen2 (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun tripleLen3 (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11647 T@PolymorphicMapType_11647 T@PolymorphicMapType_11668) Bool)
(declare-fun IsPredicateField_11707_31341 (T@Field_11707_31250) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11707 (T@Field_11707_31250) T@Field_11707_31383)
(declare-fun HasDirectPerm_11707_31314 (T@PolymorphicMapType_11668 T@Ref T@Field_11707_31250) Bool)
(declare-fun IsWandField_11707_32890 (T@Field_11707_31250) Bool)
(declare-fun WandMaskField_11707 (T@Field_11707_31250) T@Field_11707_31383)
(declare-fun triple1 (T@Triple2DomainType) T@Triple1DomainType)
(declare-fun triple2 (T@Triple3DomainType) T@Triple2DomainType)
(declare-fun triple3 (T@Triple1DomainType) T@Triple3DomainType)
(declare-fun get_Triple3_x (T@Triple3DomainType) T@Triple1DomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_11647)
(declare-fun ZeroMask () T@PolymorphicMapType_11668)
(declare-fun $allocated () T@Field_11707_53)
(declare-fun InsidePredicate_11707_11707 (T@Field_11707_31250 T@FrameType T@Field_11707_31250 T@FrameType) Bool)
(declare-fun get_List2_l (T@List2DomainType) T@List1DomainType)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11707_35853 (T@Field_11707_31383) Bool)
(declare-fun IsWandField_11707_35869 (T@Field_11707_31383) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11707_11721 (T@Field_11720_11721) Bool)
(declare-fun IsWandField_11707_11721 (T@Field_11720_11721) Bool)
(declare-fun IsPredicateField_11707_53 (T@Field_11707_53) Bool)
(declare-fun IsWandField_11707_53 (T@Field_11707_53) Bool)
(declare-fun HasDirectPerm_11707_36224 (T@PolymorphicMapType_11668 T@Ref T@Field_11707_31383) Bool)
(declare-fun HasDirectPerm_11707_11721 (T@PolymorphicMapType_11668 T@Ref T@Field_11720_11721) Bool)
(declare-fun HasDirectPerm_11707_53 (T@PolymorphicMapType_11668 T@Ref T@Field_11707_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11668 T@PolymorphicMapType_11668 T@PolymorphicMapType_11668) Bool)
(declare-fun List1_tag (T@List1DomainType) Int)
(declare-fun MList1_tag (T@MList1DomainType) Int)
(declare-fun Triple1_tag (T@Triple1DomainType) Int)
(declare-fun Triple2_tag (T@Triple2DomainType) Int)
(declare-fun nil (Int) T@Triple3DomainType)
(declare-fun |len2#frame| (T@FrameType T@List2DomainType) Int)
(declare-fun |len2Bad#frame| (T@FrameType T@List2DomainType) Int)
(declare-fun |len1#frame| (T@FrameType T@List1DomainType) Int)
(declare-fun |len1Bad#frame| (T@FrameType T@List1DomainType) Int)
(declare-fun |mlen2#frame| (T@FrameType T@MList2DomainType) Int)
(declare-fun |tripleLen1#frame| (T@FrameType T@Triple1DomainType) Int)
(declare-fun |tripleLen2#frame| (T@FrameType T@Triple2DomainType) Int)
(declare-fun |tripleLen3#frame| (T@FrameType T@Triple3DomainType) Int)
(declare-fun |tripleLen1Bad#frame| (T@FrameType T@Triple1DomainType) Int)
(declare-fun |tripleLen2Bad#frame| (T@FrameType T@Triple2DomainType) Int)
(declare-fun |tripleLen3Bad#frame| (T@FrameType T@Triple3DomainType) Int)
(declare-fun get_List1_x (T@List1DomainType) Int)
(declare-fun get_List2_x (T@List2DomainType) Int)
(declare-fun get_MList1_x (T@MList1DomainType) Int)
(declare-fun get_MList1_y (T@MList1DomainType) T@MList2DomainType)
(declare-fun get_MList2_y (T@MList2DomainType) Int)
(declare-fun get_MList2_l (T@MList2DomainType) T@MList1DomainType)
(declare-fun get_Triple3_i (T@Triple3DomainType) Int)
(assert (forall ((Heap T@PolymorphicMapType_11647) (Mask T@PolymorphicMapType_11668) (t_2 T@Triple1DomainType) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 6)) (= (tripleLen1Bad Heap t_2) (+ 2 (ite (= (Triple3_tag (get_Triple2_x (get_Triple1_x t_2))) 0) 0 (|tripleLen1Bad'| Heap t_2)))))
 :qid |stdinbpl.1219:15|
 :skolemid |104|
 :pattern ( (state Heap Mask) (tripleLen1Bad Heap t_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11647) (Heap1 T@PolymorphicMapType_11647) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@List1DomainType) ) (! (bounded_7479 x)
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (bounded_7479 x))
)))
(assert (forall ((x@@0 T@List2DomainType) ) (! (bounded_7511 x@@0)
 :qid |stdinbpl.342:15|
 :skolemid |35|
 :pattern ( (bounded_7511 x@@0))
)))
(assert (forall ((x@@1 T@MList1DomainType) ) (! (bounded_7540 x@@1)
 :qid |stdinbpl.410:15|
 :skolemid |42|
 :pattern ( (bounded_7540 x@@1))
)))
(assert (forall ((x@@2 T@MList2DomainType) ) (! (bounded_7572 x@@2)
 :qid |stdinbpl.487:15|
 :skolemid |49|
 :pattern ( (bounded_7572 x@@2))
)))
(assert (forall ((x@@3 T@Triple1DomainType) ) (! (bounded_7599 x@@3)
 :qid |stdinbpl.546:15|
 :skolemid |55|
 :pattern ( (bounded_7599 x@@3))
)))
(assert (forall ((x@@4 T@Triple2DomainType) ) (! (bounded_7626 x@@4)
 :qid |stdinbpl.605:15|
 :skolemid |61|
 :pattern ( (bounded_7626 x@@4))
)))
(assert (forall ((x@@5 T@Triple3DomainType) ) (! (bounded_7659 x@@5)
 :qid |stdinbpl.685:15|
 :skolemid |69|
 :pattern ( (bounded_7659 x@@5))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11647) (Mask@@0 T@PolymorphicMapType_11668) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11647) (Heap1@@0 T@PolymorphicMapType_11647) (Heap2 T@PolymorphicMapType_11647) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@List1DomainType) (v2 T@List1DomainType) (v3 T@List1DomainType) ) (!  (=> (and (decreasing_7471 v1 v2) (decreasing_7471 v2 v3)) (decreasing_7471 v1 v3))
 :qid |stdinbpl.259:15|
 :skolemid |27|
 :pattern ( (decreasing_7471 v1 v2) (decreasing_7471 v2 v3))
)))
(assert (forall ((v1@@0 T@List2DomainType) (v2@@0 T@List2DomainType) (v3@@0 T@List2DomainType) ) (!  (=> (and (decreasing_7503 v1@@0 v2@@0) (decreasing_7503 v2@@0 v3@@0)) (decreasing_7503 v1@@0 v3@@0))
 :qid |stdinbpl.336:15|
 :skolemid |34|
 :pattern ( (decreasing_7503 v1@@0 v2@@0) (decreasing_7503 v2@@0 v3@@0))
)))
(assert (forall ((v1@@1 T@MList1DomainType) (v2@@1 T@MList1DomainType) (v3@@1 T@MList1DomainType) ) (!  (=> (and (decreasing_7532 v1@@1 v2@@1) (decreasing_7532 v2@@1 v3@@1)) (decreasing_7532 v1@@1 v3@@1))
 :qid |stdinbpl.404:15|
 :skolemid |41|
 :pattern ( (decreasing_7532 v1@@1 v2@@1) (decreasing_7532 v2@@1 v3@@1))
)))
(assert (forall ((v1@@2 T@MList2DomainType) (v2@@2 T@MList2DomainType) (v3@@2 T@MList2DomainType) ) (!  (=> (and (decreasing_7564 v1@@2 v2@@2) (decreasing_7564 v2@@2 v3@@2)) (decreasing_7564 v1@@2 v3@@2))
 :qid |stdinbpl.481:15|
 :skolemid |48|
 :pattern ( (decreasing_7564 v1@@2 v2@@2) (decreasing_7564 v2@@2 v3@@2))
)))
(assert (forall ((v1@@3 T@Triple1DomainType) (v2@@3 T@Triple1DomainType) (v3@@3 T@Triple1DomainType) ) (!  (=> (and (decreasing_7589 v1@@3 v2@@3) (decreasing_7589 v2@@3 v3@@3)) (decreasing_7589 v1@@3 v3@@3))
 :qid |stdinbpl.540:15|
 :skolemid |54|
 :pattern ( (decreasing_7589 v1@@3 v2@@3) (decreasing_7589 v2@@3 v3@@3))
)))
(assert (forall ((v1@@4 T@Triple2DomainType) (v2@@4 T@Triple2DomainType) (v3@@4 T@Triple2DomainType) ) (!  (=> (and (decreasing_7616 v1@@4 v2@@4) (decreasing_7616 v2@@4 v3@@4)) (decreasing_7616 v1@@4 v3@@4))
 :qid |stdinbpl.599:15|
 :skolemid |60|
 :pattern ( (decreasing_7616 v1@@4 v2@@4) (decreasing_7616 v2@@4 v3@@4))
)))
(assert (forall ((v1@@5 T@Triple3DomainType) (v2@@5 T@Triple3DomainType) (v3@@5 T@Triple3DomainType) ) (!  (=> (and (decreasing_7649 v1@@5 v2@@5) (decreasing_7649 v2@@5 v3@@5)) (decreasing_7649 v1@@5 v3@@5))
 :qid |stdinbpl.679:15|
 :skolemid |68|
 :pattern ( (decreasing_7649 v1@@5 v2@@5) (decreasing_7649 v2@@5 v3@@5))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11707_31383) ) (!  (not (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11707_31250) ) (!  (not (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11720_11721) ) (!  (not (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11707_53) ) (!  (not (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (= (List2_tag Empty) 0))
(assert (= (MList2_tag MEmpty) 0))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11647) (l_2 T@List2DomainType) ) (! (dummyFunction_3134 (|len2#triggerStateless| l_2))
 :qid |stdinbpl.701:15|
 :skolemid |71|
 :pattern ( (|len2'| Heap@@1 l_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11647) (l_2@@0 T@List2DomainType) ) (! (dummyFunction_3134 (|len2Bad#triggerStateless| l_2@@0))
 :qid |stdinbpl.765:15|
 :skolemid |75|
 :pattern ( (|len2Bad'| Heap@@2 l_2@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11647) (l_2@@1 T@List1DomainType) ) (! (dummyFunction_3134 (|len1#triggerStateless| l_2@@1))
 :qid |stdinbpl.829:15|
 :skolemid |79|
 :pattern ( (|len1'| Heap@@3 l_2@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11647) (l_2@@2 T@List1DomainType) ) (! (dummyFunction_3134 (|len1Bad#triggerStateless| l_2@@2))
 :qid |stdinbpl.893:15|
 :skolemid |83|
 :pattern ( (|len1Bad'| Heap@@4 l_2@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11647) (l_2@@3 T@MList2DomainType) ) (! (dummyFunction_3134 (|mlen2#triggerStateless| l_2@@3))
 :qid |stdinbpl.957:15|
 :skolemid |87|
 :pattern ( (|mlen2'| Heap@@5 l_2@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11647) (t_2@@0 T@Triple1DomainType) ) (! (dummyFunction_3134 (|tripleLen1#triggerStateless| t_2@@0))
 :qid |stdinbpl.1021:15|
 :skolemid |91|
 :pattern ( (|tripleLen1'| Heap@@6 t_2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11647) (t_2@@1 T@Triple2DomainType) ) (! (dummyFunction_3134 (|tripleLen2#triggerStateless| t_2@@1))
 :qid |stdinbpl.1085:15|
 :skolemid |95|
 :pattern ( (|tripleLen2'| Heap@@7 t_2@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11647) (t_2@@2 T@Triple3DomainType) ) (! (dummyFunction_3134 (|tripleLen3#triggerStateless| t_2@@2))
 :qid |stdinbpl.1149:15|
 :skolemid |99|
 :pattern ( (|tripleLen3'| Heap@@8 t_2@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11647) (t_2@@3 T@Triple1DomainType) ) (! (dummyFunction_3134 (|tripleLen1Bad#triggerStateless| t_2@@3))
 :qid |stdinbpl.1213:15|
 :skolemid |103|
 :pattern ( (|tripleLen1Bad'| Heap@@9 t_2@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11647) (t_2@@4 T@Triple2DomainType) ) (! (dummyFunction_3134 (|tripleLen2Bad#triggerStateless| t_2@@4))
 :qid |stdinbpl.1277:15|
 :skolemid |107|
 :pattern ( (|tripleLen2Bad'| Heap@@10 t_2@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11647) (t_2@@5 T@Triple3DomainType) ) (! (dummyFunction_3134 (|tripleLen3Bad#triggerStateless| t_2@@5))
 :qid |stdinbpl.1341:15|
 :skolemid |111|
 :pattern ( (|tripleLen3Bad'| Heap@@11 t_2@@5))
)))
(assert (forall ((l_1 T@List1DomainType) (x_0 Int) (x@@6 Int) ) (! (decreasing_7471 l_1 (RList1 x@@6 (NonEmpty x_0 l_1)))
 :qid |stdinbpl.253:15|
 :skolemid |26|
 :pattern ( (RList1 x@@6 (NonEmpty x_0 l_1)))
)))
(assert (forall ((l_1@@0 T@List2DomainType) (x_0@@0 Int) (x@@7 Int) ) (! (decreasing_7503 l_1@@0 (NonEmpty x@@7 (RList1 x_0@@0 l_1@@0)))
 :qid |stdinbpl.330:15|
 :skolemid |33|
 :pattern ( (NonEmpty x@@7 (RList1 x_0@@0 l_1@@0)))
)))
(assert (forall ((l_1@@1 T@MList1DomainType) (y_0 Int) (x@@8 Int) ) (! (decreasing_7532 l_1@@1 (MRList1 x@@8 (MNonEmpty y_0 l_1@@1)))
 :qid |stdinbpl.398:15|
 :skolemid |40|
 :pattern ( (MRList1 x@@8 (MNonEmpty y_0 l_1@@1)))
)))
(assert (forall ((y_1 T@MList2DomainType) (x_0@@1 Int) (y Int) ) (! (decreasing_7564 y_1 (MNonEmpty y (MRList1 x_0@@1 y_1)))
 :qid |stdinbpl.475:15|
 :skolemid |47|
 :pattern ( (MNonEmpty y (MRList1 x_0@@1 y_1)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11647) (Mask@@1 T@PolymorphicMapType_11668) (t_2@@6 T@Triple3DomainType) ) (!  (=> (and (state Heap@@12 Mask@@1) (< AssumeFunctionsAbove 10)) (= (tripleLen3Bad Heap@@12 t_2@@6) (ite (= (Triple3_tag t_2@@6) 0) 0 (+ 3 (|tripleLen3Bad'| Heap@@12 t_2@@6)))))
 :qid |stdinbpl.1347:15|
 :skolemid |112|
 :pattern ( (state Heap@@12 Mask@@1) (tripleLen3Bad Heap@@12 t_2@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11647) (Mask@@2 T@PolymorphicMapType_11668) (t_2@@7 T@Triple2DomainType) ) (!  (=> (and (state Heap@@13 Mask@@2) (< AssumeFunctionsAbove 2)) (= (tripleLen2Bad Heap@@13 t_2@@7) (+ 1 (ite (= (Triple3_tag (get_Triple2_x t_2@@7)) 0) 0 (+ 1 (|tripleLen2Bad'| Heap@@13 t_2@@7))))))
 :qid |stdinbpl.1283:15|
 :skolemid |108|
 :pattern ( (state Heap@@13 Mask@@2) (tripleLen2Bad Heap@@13 t_2@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11647) (Mask@@3 T@PolymorphicMapType_11668) (l_2@@4 T@List1DomainType) ) (!  (=> (and (state Heap@@14 Mask@@3) (< AssumeFunctionsAbove 3)) (= (len1Bad Heap@@14 l_2@@4) (ite (= (get_List1_l l_2@@4) Empty) 0 (+ 1 (|len1Bad'| Heap@@14 l_2@@4)))))
 :qid |stdinbpl.899:15|
 :skolemid |84|
 :pattern ( (state Heap@@14 Mask@@3) (len1Bad Heap@@14 l_2@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11647) (l_2@@5 T@List2DomainType) ) (!  (and (= (len2 Heap@@15 l_2@@5) (|len2'| Heap@@15 l_2@@5)) (dummyFunction_3134 (|len2#triggerStateless| l_2@@5)))
 :qid |stdinbpl.697:15|
 :skolemid |70|
 :pattern ( (len2 Heap@@15 l_2@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11647) (l_2@@6 T@List2DomainType) ) (!  (and (= (len2Bad Heap@@16 l_2@@6) (|len2Bad'| Heap@@16 l_2@@6)) (dummyFunction_3134 (|len2Bad#triggerStateless| l_2@@6)))
 :qid |stdinbpl.761:15|
 :skolemid |74|
 :pattern ( (len2Bad Heap@@16 l_2@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11647) (l_2@@7 T@List1DomainType) ) (!  (and (= (len1 Heap@@17 l_2@@7) (|len1'| Heap@@17 l_2@@7)) (dummyFunction_3134 (|len1#triggerStateless| l_2@@7)))
 :qid |stdinbpl.825:15|
 :skolemid |78|
 :pattern ( (len1 Heap@@17 l_2@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11647) (l_2@@8 T@List1DomainType) ) (!  (and (= (len1Bad Heap@@18 l_2@@8) (|len1Bad'| Heap@@18 l_2@@8)) (dummyFunction_3134 (|len1Bad#triggerStateless| l_2@@8)))
 :qid |stdinbpl.889:15|
 :skolemid |82|
 :pattern ( (len1Bad Heap@@18 l_2@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11647) (l_2@@9 T@MList2DomainType) ) (!  (and (= (mlen2 Heap@@19 l_2@@9) (|mlen2'| Heap@@19 l_2@@9)) (dummyFunction_3134 (|mlen2#triggerStateless| l_2@@9)))
 :qid |stdinbpl.953:15|
 :skolemid |86|
 :pattern ( (mlen2 Heap@@19 l_2@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11647) (t_2@@8 T@Triple1DomainType) ) (!  (and (= (tripleLen1 Heap@@20 t_2@@8) (|tripleLen1'| Heap@@20 t_2@@8)) (dummyFunction_3134 (|tripleLen1#triggerStateless| t_2@@8)))
 :qid |stdinbpl.1017:15|
 :skolemid |90|
 :pattern ( (tripleLen1 Heap@@20 t_2@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11647) (t_2@@9 T@Triple2DomainType) ) (!  (and (= (tripleLen2 Heap@@21 t_2@@9) (|tripleLen2'| Heap@@21 t_2@@9)) (dummyFunction_3134 (|tripleLen2#triggerStateless| t_2@@9)))
 :qid |stdinbpl.1081:15|
 :skolemid |94|
 :pattern ( (tripleLen2 Heap@@21 t_2@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11647) (t_2@@10 T@Triple3DomainType) ) (!  (and (= (tripleLen3 Heap@@22 t_2@@10) (|tripleLen3'| Heap@@22 t_2@@10)) (dummyFunction_3134 (|tripleLen3#triggerStateless| t_2@@10)))
 :qid |stdinbpl.1145:15|
 :skolemid |98|
 :pattern ( (tripleLen3 Heap@@22 t_2@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11647) (t_2@@11 T@Triple1DomainType) ) (!  (and (= (tripleLen1Bad Heap@@23 t_2@@11) (|tripleLen1Bad'| Heap@@23 t_2@@11)) (dummyFunction_3134 (|tripleLen1Bad#triggerStateless| t_2@@11)))
 :qid |stdinbpl.1209:15|
 :skolemid |102|
 :pattern ( (tripleLen1Bad Heap@@23 t_2@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11647) (t_2@@12 T@Triple2DomainType) ) (!  (and (= (tripleLen2Bad Heap@@24 t_2@@12) (|tripleLen2Bad'| Heap@@24 t_2@@12)) (dummyFunction_3134 (|tripleLen2Bad#triggerStateless| t_2@@12)))
 :qid |stdinbpl.1273:15|
 :skolemid |106|
 :pattern ( (tripleLen2Bad Heap@@24 t_2@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11647) (t_2@@13 T@Triple3DomainType) ) (!  (and (= (tripleLen3Bad Heap@@25 t_2@@13) (|tripleLen3Bad'| Heap@@25 t_2@@13)) (dummyFunction_3134 (|tripleLen3Bad#triggerStateless| t_2@@13)))
 :qid |stdinbpl.1337:15|
 :skolemid |110|
 :pattern ( (tripleLen3Bad Heap@@25 t_2@@13))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11647) (ExhaleHeap T@PolymorphicMapType_11647) (Mask@@4 T@PolymorphicMapType_11668) (pm_f T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_11707_31314 Mask@@4 null pm_f) (IsPredicateField_11707_31341 pm_f)) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@26) null (PredicateMaskField_11707 pm_f)) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap) null (PredicateMaskField_11707 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap Mask@@4) (IsPredicateField_11707_31341 pm_f) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap) null (PredicateMaskField_11707 pm_f)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11647) (ExhaleHeap@@0 T@PolymorphicMapType_11647) (Mask@@5 T@PolymorphicMapType_11668) (pm_f@@0 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_11707_31314 Mask@@5 null pm_f@@0) (IsWandField_11707_32890 pm_f@@0)) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@27) null (WandMaskField_11707 pm_f@@0)) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@0) null (WandMaskField_11707 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@0 Mask@@5) (IsWandField_11707_32890 pm_f@@0) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@0) null (WandMaskField_11707 pm_f@@0)))
)))
(assert (forall ((x_2_2 T@Triple1DomainType) ) (! (decreasing_7589 x_2_2 (triple1 (triple2 (triple3 x_2_2))))
 :qid |stdinbpl.534:15|
 :skolemid |53|
 :pattern ( (triple1 (triple2 (triple3 x_2_2))))
)))
(assert (forall ((x_2_2@@0 T@Triple2DomainType) ) (! (decreasing_7616 x_2_2@@0 (triple2 (triple3 (triple1 x_2_2@@0))))
 :qid |stdinbpl.593:15|
 :skolemid |59|
 :pattern ( (triple2 (triple3 (triple1 x_2_2@@0))))
)))
(assert (forall ((x_2_2@@1 T@Triple3DomainType) ) (! (decreasing_7649 x_2_2@@1 (triple3 (triple1 (triple2 x_2_2@@1))))
 :qid |stdinbpl.670:15|
 :skolemid |67|
 :pattern ( (triple3 (triple1 (triple2 x_2_2@@1))))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11647) (Mask@@6 T@PolymorphicMapType_11668) (t_2@@14 T@Triple1DomainType) ) (!  (=> (and (state Heap@@28 Mask@@6) (< AssumeFunctionsAbove 8)) (= (tripleLen1 Heap@@28 t_2@@14) (+ 2 (ite (= (Triple3_tag (get_Triple2_x (get_Triple1_x t_2@@14))) 0) 0 (|tripleLen1'| Heap@@28 (get_Triple3_x (get_Triple2_x (get_Triple1_x t_2@@14))))))))
 :qid |stdinbpl.1027:15|
 :skolemid |92|
 :pattern ( (state Heap@@28 Mask@@6) (tripleLen1 Heap@@28 t_2@@14))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11647) (ExhaleHeap@@1 T@PolymorphicMapType_11647) (Mask@@7 T@PolymorphicMapType_11668) (pm_f@@1 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@7) (=> (and (HasDirectPerm_11707_31314 Mask@@7 null pm_f@@1) (IsPredicateField_11707_31341 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_11707_53) ) (!  (=> (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@29) o2 f_2) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_11720_11721) ) (!  (=> (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@29) o2@@0 f_2@@0) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_11707_31250) ) (!  (=> (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@29) o2@@1 f_2@@1) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11707_31383) ) (!  (=> (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) o2@@2 f_2@@2) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@7) (IsPredicateField_11707_31341 pm_f@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11647) (ExhaleHeap@@2 T@PolymorphicMapType_11647) (Mask@@8 T@PolymorphicMapType_11668) (pm_f@@2 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@8) (=> (and (HasDirectPerm_11707_31314 Mask@@8 null pm_f@@2) (IsWandField_11707_32890 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11707_53) ) (!  (=> (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@30) o2@@3 f_2@@3) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11720_11721) ) (!  (=> (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11707_31250) ) (!  (=> (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11707_31383) ) (!  (=> (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@8) (IsWandField_11707_32890 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11647) (ExhaleHeap@@3 T@PolymorphicMapType_11647) (Mask@@9 T@PolymorphicMapType_11668) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@9) (=> (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@31) o_1 $allocated) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@9) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_11707_31250) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11707_11707 p v_1 p w))
 :qid |stdinbpl.184:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11707_11707 p v_1 p w))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11647) (Mask@@10 T@PolymorphicMapType_11668) (l_2@@10 T@List1DomainType) ) (!  (=> (and (state Heap@@32 Mask@@10) (< AssumeFunctionsAbove 9)) (= (len1 Heap@@32 l_2@@10) (ite (= (get_List1_l l_2@@10) Empty) 0 (+ 1 (|len1'| Heap@@32 (get_List2_l (get_List1_l l_2@@10)))))))
 :qid |stdinbpl.835:15|
 :skolemid |80|
 :pattern ( (state Heap@@32 Mask@@10) (len1 Heap@@32 l_2@@10))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11647) (ExhaleHeap@@4 T@PolymorphicMapType_11647) (Mask@@11 T@PolymorphicMapType_11668) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@33 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11668) (o_2@@3 T@Ref) (f_4@@3 T@Field_11707_31383) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_11707_35853 f_4@@3))) (not (IsWandField_11707_35869 f_4@@3))) (<= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11668) (o_2@@4 T@Ref) (f_4@@4 T@Field_11707_31250) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_11707_31341 f_4@@4))) (not (IsWandField_11707_32890 f_4@@4))) (<= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11668) (o_2@@5 T@Ref) (f_4@@5 T@Field_11720_11721) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11707_11721 f_4@@5))) (not (IsWandField_11707_11721 f_4@@5))) (<= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11668) (o_2@@6 T@Ref) (f_4@@6 T@Field_11707_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11707_53 f_4@@6))) (not (IsWandField_11707_53 f_4@@6))) (<= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11647) (Mask@@16 T@PolymorphicMapType_11668) (t_2@@15 T@Triple3DomainType) ) (!  (=> (and (state Heap@@34 Mask@@16) (< AssumeFunctionsAbove 4)) (= (tripleLen3 Heap@@34 t_2@@15) (ite (= (Triple3_tag t_2@@15) 0) 0 (+ 3 (|tripleLen3'| Heap@@34 (get_Triple2_x (get_Triple1_x (get_Triple3_x t_2@@15))))))))
 :qid |stdinbpl.1155:15|
 :skolemid |100|
 :pattern ( (state Heap@@34 Mask@@16) (tripleLen3 Heap@@34 t_2@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11668) (o_2@@7 T@Ref) (f_4@@7 T@Field_11707_31383) ) (! (= (HasDirectPerm_11707_36224 Mask@@17 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@17) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_36224 Mask@@17 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11668) (o_2@@8 T@Ref) (f_4@@8 T@Field_11707_31250) ) (! (= (HasDirectPerm_11707_31314 Mask@@18 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@18) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_31314 Mask@@18 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11668) (o_2@@9 T@Ref) (f_4@@9 T@Field_11720_11721) ) (! (= (HasDirectPerm_11707_11721 Mask@@19 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@19) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_11721 Mask@@19 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11668) (o_2@@10 T@Ref) (f_4@@10 T@Field_11707_53) ) (! (= (HasDirectPerm_11707_53 Mask@@20 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@20) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_53 Mask@@20 o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11647) (Mask@@21 T@PolymorphicMapType_11668) (t_2@@16 T@Triple2DomainType) ) (!  (=> (and (state Heap@@35 Mask@@21) (< AssumeFunctionsAbove 1)) (= (tripleLen2 Heap@@35 t_2@@16) (+ 1 (ite (= (Triple3_tag (get_Triple2_x t_2@@16)) 0) 0 (+ 1 (|tripleLen2'| Heap@@35 (get_Triple1_x (get_Triple3_x (get_Triple2_x t_2@@16)))))))))
 :qid |stdinbpl.1091:15|
 :skolemid |96|
 :pattern ( (state Heap@@35 Mask@@21) (tripleLen2 Heap@@35 t_2@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.172:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11647) (ExhaleHeap@@5 T@PolymorphicMapType_11647) (Mask@@22 T@PolymorphicMapType_11668) (o_1@@0 T@Ref) (f_2@@7 T@Field_11707_31383) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@5 Mask@@22) (=> (HasDirectPerm_11707_36224 Mask@@22 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@36) o_1@@0 f_2@@7) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@5 Mask@@22) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11647) (ExhaleHeap@@6 T@PolymorphicMapType_11647) (Mask@@23 T@PolymorphicMapType_11668) (o_1@@1 T@Ref) (f_2@@8 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@6 Mask@@23) (=> (HasDirectPerm_11707_31314 Mask@@23 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@37) o_1@@1 f_2@@8) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@6 Mask@@23) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11647) (ExhaleHeap@@7 T@PolymorphicMapType_11647) (Mask@@24 T@PolymorphicMapType_11668) (o_1@@2 T@Ref) (f_2@@9 T@Field_11720_11721) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@7 Mask@@24) (=> (HasDirectPerm_11707_11721 Mask@@24 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@38) o_1@@2 f_2@@9) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@7 Mask@@24) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11647) (ExhaleHeap@@8 T@PolymorphicMapType_11647) (Mask@@25 T@PolymorphicMapType_11668) (o_1@@3 T@Ref) (f_2@@10 T@Field_11707_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@8 Mask@@25) (=> (HasDirectPerm_11707_53 Mask@@25 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@39) o_1@@3 f_2@@10) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@8 Mask@@25) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11707_31383) ) (! (= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11707_31250) ) (! (= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11720_11721) ) (! (= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11707_53) ) (! (= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11668) (SummandMask1 T@PolymorphicMapType_11668) (SummandMask2 T@PolymorphicMapType_11668) (o_2@@15 T@Ref) (f_4@@15 T@Field_11707_31383) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11668) (SummandMask1@@0 T@PolymorphicMapType_11668) (SummandMask2@@0 T@PolymorphicMapType_11668) (o_2@@16 T@Ref) (f_4@@16 T@Field_11707_31250) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11668) (SummandMask1@@1 T@PolymorphicMapType_11668) (SummandMask2@@1 T@PolymorphicMapType_11668) (o_2@@17 T@Ref) (f_4@@17 T@Field_11720_11721) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11668) (SummandMask1@@2 T@PolymorphicMapType_11668) (SummandMask2@@2 T@PolymorphicMapType_11668) (o_2@@18 T@Ref) (f_4@@18 T@Field_11707_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((x@@9 Int) (l_2@@11 T@List2DomainType) ) (! (= (List1_tag (RList1 x@@9 l_2@@11)) 0)
 :qid |stdinbpl.234:15|
 :skolemid |24|
 :pattern ( (RList1 x@@9 l_2@@11))
)))
(assert (forall ((x@@10 Int) (y@@0 T@MList2DomainType) ) (! (= (MList1_tag (MRList1 x@@10 y@@0)) 0)
 :qid |stdinbpl.379:15|
 :skolemid |38|
 :pattern ( (MRList1 x@@10 y@@0))
)))
(assert (forall ((x@@11 Int) (l_2@@12 T@List1DomainType) ) (! (= (List2_tag (NonEmpty x@@11 l_2@@12)) 1)
 :qid |stdinbpl.308:15|
 :skolemid |31|
 :pattern ( (NonEmpty x@@11 l_2@@12))
)))
(assert (forall ((y@@1 Int) (l_2@@13 T@MList1DomainType) ) (! (= (MList2_tag (MNonEmpty y@@1 l_2@@13)) 1)
 :qid |stdinbpl.453:15|
 :skolemid |45|
 :pattern ( (MNonEmpty y@@1 l_2@@13))
)))
(assert (forall ((x@@12 T@Triple2DomainType) ) (! (= (Triple1_tag (triple1 x@@12)) 0)
 :qid |stdinbpl.515:15|
 :skolemid |51|
 :pattern ( (triple1 x@@12))
)))
(assert (forall ((x@@13 T@Triple3DomainType) ) (! (= (Triple2_tag (triple2 x@@13)) 0)
 :qid |stdinbpl.574:15|
 :skolemid |57|
 :pattern ( (triple2 x@@13))
)))
(assert (forall ((i Int) ) (! (= (Triple3_tag (nil i)) 0)
 :qid |stdinbpl.651:15|
 :skolemid |65|
 :pattern ( (nil i))
)))
(assert (forall ((x@@14 T@Triple1DomainType) ) (! (= (Triple3_tag (triple3 x@@14)) 1)
 :qid |stdinbpl.645:15|
 :skolemid |64|
 :pattern ( (triple3 x@@14))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11647) (Mask@@26 T@PolymorphicMapType_11668) (l_2@@14 T@List2DomainType) ) (!  (=> (state Heap@@40 Mask@@26) (= (|len2'| Heap@@40 l_2@@14) (|len2#frame| EmptyFrame l_2@@14)))
 :qid |stdinbpl.714:15|
 :skolemid |73|
 :pattern ( (state Heap@@40 Mask@@26) (|len2'| Heap@@40 l_2@@14))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11647) (Mask@@27 T@PolymorphicMapType_11668) (l_2@@15 T@List2DomainType) ) (!  (=> (state Heap@@41 Mask@@27) (= (|len2Bad'| Heap@@41 l_2@@15) (|len2Bad#frame| EmptyFrame l_2@@15)))
 :qid |stdinbpl.778:15|
 :skolemid |77|
 :pattern ( (state Heap@@41 Mask@@27) (|len2Bad'| Heap@@41 l_2@@15))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11647) (Mask@@28 T@PolymorphicMapType_11668) (l_2@@16 T@List1DomainType) ) (!  (=> (state Heap@@42 Mask@@28) (= (|len1'| Heap@@42 l_2@@16) (|len1#frame| EmptyFrame l_2@@16)))
 :qid |stdinbpl.842:15|
 :skolemid |81|
 :pattern ( (state Heap@@42 Mask@@28) (|len1'| Heap@@42 l_2@@16))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11647) (Mask@@29 T@PolymorphicMapType_11668) (l_2@@17 T@List1DomainType) ) (!  (=> (state Heap@@43 Mask@@29) (= (|len1Bad'| Heap@@43 l_2@@17) (|len1Bad#frame| EmptyFrame l_2@@17)))
 :qid |stdinbpl.906:15|
 :skolemid |85|
 :pattern ( (state Heap@@43 Mask@@29) (|len1Bad'| Heap@@43 l_2@@17))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11647) (Mask@@30 T@PolymorphicMapType_11668) (l_2@@18 T@MList2DomainType) ) (!  (=> (state Heap@@44 Mask@@30) (= (|mlen2'| Heap@@44 l_2@@18) (|mlen2#frame| EmptyFrame l_2@@18)))
 :qid |stdinbpl.970:15|
 :skolemid |89|
 :pattern ( (state Heap@@44 Mask@@30) (|mlen2'| Heap@@44 l_2@@18))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11647) (Mask@@31 T@PolymorphicMapType_11668) (t_2@@17 T@Triple1DomainType) ) (!  (=> (state Heap@@45 Mask@@31) (= (|tripleLen1'| Heap@@45 t_2@@17) (|tripleLen1#frame| EmptyFrame t_2@@17)))
 :qid |stdinbpl.1034:15|
 :skolemid |93|
 :pattern ( (state Heap@@45 Mask@@31) (|tripleLen1'| Heap@@45 t_2@@17))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11647) (Mask@@32 T@PolymorphicMapType_11668) (t_2@@18 T@Triple2DomainType) ) (!  (=> (state Heap@@46 Mask@@32) (= (|tripleLen2'| Heap@@46 t_2@@18) (|tripleLen2#frame| EmptyFrame t_2@@18)))
 :qid |stdinbpl.1098:15|
 :skolemid |97|
 :pattern ( (state Heap@@46 Mask@@32) (|tripleLen2'| Heap@@46 t_2@@18))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11647) (Mask@@33 T@PolymorphicMapType_11668) (t_2@@19 T@Triple3DomainType) ) (!  (=> (state Heap@@47 Mask@@33) (= (|tripleLen3'| Heap@@47 t_2@@19) (|tripleLen3#frame| EmptyFrame t_2@@19)))
 :qid |stdinbpl.1162:15|
 :skolemid |101|
 :pattern ( (state Heap@@47 Mask@@33) (|tripleLen3'| Heap@@47 t_2@@19))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11647) (Mask@@34 T@PolymorphicMapType_11668) (t_2@@20 T@Triple1DomainType) ) (!  (=> (state Heap@@48 Mask@@34) (= (|tripleLen1Bad'| Heap@@48 t_2@@20) (|tripleLen1Bad#frame| EmptyFrame t_2@@20)))
 :qid |stdinbpl.1226:15|
 :skolemid |105|
 :pattern ( (state Heap@@48 Mask@@34) (|tripleLen1Bad'| Heap@@48 t_2@@20))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11647) (Mask@@35 T@PolymorphicMapType_11668) (t_2@@21 T@Triple2DomainType) ) (!  (=> (state Heap@@49 Mask@@35) (= (|tripleLen2Bad'| Heap@@49 t_2@@21) (|tripleLen2Bad#frame| EmptyFrame t_2@@21)))
 :qid |stdinbpl.1290:15|
 :skolemid |109|
 :pattern ( (state Heap@@49 Mask@@35) (|tripleLen2Bad'| Heap@@49 t_2@@21))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11647) (Mask@@36 T@PolymorphicMapType_11668) (t_2@@22 T@Triple3DomainType) ) (!  (=> (state Heap@@50 Mask@@36) (= (|tripleLen3Bad'| Heap@@50 t_2@@22) (|tripleLen3Bad#frame| EmptyFrame t_2@@22)))
 :qid |stdinbpl.1354:15|
 :skolemid |113|
 :pattern ( (state Heap@@50 Mask@@36) (|tripleLen3Bad'| Heap@@50 t_2@@22))
)))
(assert (forall ((x@@15 Int) (l_2@@19 T@List2DomainType) ) (! (= x@@15 (get_List1_x (RList1 x@@15 l_2@@19)))
 :qid |stdinbpl.222:15|
 :skolemid |22|
 :pattern ( (RList1 x@@15 l_2@@19))
)))
(assert (forall ((x@@16 Int) (l_2@@20 T@List2DomainType) ) (! (= l_2@@20 (get_List1_l (RList1 x@@16 l_2@@20)))
 :qid |stdinbpl.228:15|
 :skolemid |23|
 :pattern ( (RList1 x@@16 l_2@@20))
)))
(assert (forall ((x@@17 Int) (l_2@@21 T@List1DomainType) ) (! (= x@@17 (get_List2_x (NonEmpty x@@17 l_2@@21)))
 :qid |stdinbpl.293:15|
 :skolemid |29|
 :pattern ( (NonEmpty x@@17 l_2@@21))
)))
(assert (forall ((x@@18 Int) (l_2@@22 T@List1DomainType) ) (! (= l_2@@22 (get_List2_l (NonEmpty x@@18 l_2@@22)))
 :qid |stdinbpl.299:15|
 :skolemid |30|
 :pattern ( (NonEmpty x@@18 l_2@@22))
)))
(assert (forall ((x@@19 Int) (y@@2 T@MList2DomainType) ) (! (= x@@19 (get_MList1_x (MRList1 x@@19 y@@2)))
 :qid |stdinbpl.367:15|
 :skolemid |36|
 :pattern ( (MRList1 x@@19 y@@2))
)))
(assert (forall ((x@@20 Int) (y@@3 T@MList2DomainType) ) (! (= y@@3 (get_MList1_y (MRList1 x@@20 y@@3)))
 :qid |stdinbpl.373:15|
 :skolemid |37|
 :pattern ( (MRList1 x@@20 y@@3))
)))
(assert (forall ((y@@4 Int) (l_2@@23 T@MList1DomainType) ) (! (= y@@4 (get_MList2_y (MNonEmpty y@@4 l_2@@23)))
 :qid |stdinbpl.438:15|
 :skolemid |43|
 :pattern ( (MNonEmpty y@@4 l_2@@23))
)))
(assert (forall ((y@@5 Int) (l_2@@24 T@MList1DomainType) ) (! (= l_2@@24 (get_MList2_l (MNonEmpty y@@5 l_2@@24)))
 :qid |stdinbpl.444:15|
 :skolemid |44|
 :pattern ( (MNonEmpty y@@5 l_2@@24))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11647) (Mask@@37 T@PolymorphicMapType_11668) (l_2@@25 T@List2DomainType) ) (!  (=> (and (state Heap@@51 Mask@@37) (< AssumeFunctionsAbove 0)) (= (len2Bad Heap@@51 l_2@@25) (ite (= l_2@@25 Empty) 0 (+ 1 (|len2Bad'| Heap@@51 l_2@@25)))))
 :qid |stdinbpl.771:15|
 :skolemid |76|
 :pattern ( (state Heap@@51 Mask@@37) (len2Bad Heap@@51 l_2@@25))
)))
(assert (forall ((x@@21 T@Triple2DomainType) ) (! (= x@@21 (get_Triple1_x (triple1 x@@21)))
 :qid |stdinbpl.509:15|
 :skolemid |50|
 :pattern ( (triple1 x@@21))
)))
(assert (forall ((t_2@@23 T@Triple1DomainType) ) (! (= t_2@@23 (triple1 (get_Triple1_x t_2@@23)))
 :qid |stdinbpl.521:15|
 :skolemid |52|
 :pattern ( (Triple1_tag t_2@@23))
 :pattern ( (get_Triple1_x t_2@@23))
)))
(assert (forall ((x@@22 T@Triple3DomainType) ) (! (= x@@22 (get_Triple2_x (triple2 x@@22)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (triple2 x@@22))
)))
(assert (forall ((t_2@@24 T@Triple2DomainType) ) (! (= t_2@@24 (triple2 (get_Triple2_x t_2@@24)))
 :qid |stdinbpl.580:15|
 :skolemid |58|
 :pattern ( (Triple2_tag t_2@@24))
 :pattern ( (get_Triple2_x t_2@@24))
)))
(assert (forall ((x@@23 T@Triple1DomainType) ) (! (= x@@23 (get_Triple3_x (triple3 x@@23)))
 :qid |stdinbpl.633:15|
 :skolemid |62|
 :pattern ( (triple3 x@@23))
)))
(assert (forall ((i@@0 Int) ) (! (= i@@0 (get_Triple3_i (nil i@@0)))
 :qid |stdinbpl.639:15|
 :skolemid |63|
 :pattern ( (nil i@@0))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11647) (o T@Ref) (f_3 T@Field_11707_31250) (v T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@52) (store (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@52) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@52) (store (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@52) o f_3 v)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11647) (o@@0 T@Ref) (f_3@@0 T@Field_11707_31383) (v@@0 T@PolymorphicMapType_12196) ) (! (succHeap Heap@@53 (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@53) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@53) (store (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@53) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@53) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@53) (store (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@53) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11647) (o@@1 T@Ref) (f_3@@1 T@Field_11720_11721) (v@@1 T@Ref) ) (! (succHeap Heap@@54 (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@54) (store (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@54) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@54) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@54) (store (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@54) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@54) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11647) (o@@2 T@Ref) (f_3@@2 T@Field_11707_53) (v@@2 Bool) ) (! (succHeap Heap@@55 (PolymorphicMapType_11647 (store (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@55) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (store (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@55) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@55)))
)))
(assert (forall ((t_2@@25 T@List1DomainType) ) (! (= t_2@@25 (RList1 (get_List1_x t_2@@25) (get_List1_l t_2@@25)))
 :qid |stdinbpl.240:15|
 :skolemid |25|
 :pattern ( (List1_tag t_2@@25))
 :pattern ( (get_List1_x t_2@@25))
 :pattern ( (get_List1_l t_2@@25))
)))
(assert (forall ((t_2@@26 T@MList1DomainType) ) (! (= t_2@@26 (MRList1 (get_MList1_x t_2@@26) (get_MList1_y t_2@@26)))
 :qid |stdinbpl.385:15|
 :skolemid |39|
 :pattern ( (MList1_tag t_2@@26))
 :pattern ( (get_MList1_x t_2@@26))
 :pattern ( (get_MList1_y t_2@@26))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_11720_11721) (Heap@@56 T@PolymorphicMapType_11647) ) (!  (=> (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@56) o@@3 $allocated) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@56) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@56) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@56) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_11707_31250) (v_1@@0 T@FrameType) (q T@Field_11707_31250) (w@@0 T@FrameType) (r T@Field_11707_31250) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11707_11707 p@@1 v_1@@0 q w@@0) (InsidePredicate_11707_11707 q w@@0 r u)) (InsidePredicate_11707_11707 p@@1 v_1@@0 r u))
 :qid |stdinbpl.179:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11707_11707 p@@1 v_1@@0 q w@@0) (InsidePredicate_11707_11707 q w@@0 r u))
)))
(assert (forall ((t_2@@27 T@List2DomainType) ) (!  (or (= t_2@@27 Empty) (= t_2@@27 (NonEmpty (get_List2_x t_2@@27) (get_List2_l t_2@@27))))
 :qid |stdinbpl.314:15|
 :skolemid |32|
 :pattern ( (List2_tag t_2@@27))
 :pattern ( (get_List2_x t_2@@27))
 :pattern ( (get_List2_l t_2@@27))
)))
(assert (forall ((t_2@@28 T@MList2DomainType) ) (!  (or (= t_2@@28 MEmpty) (= t_2@@28 (MNonEmpty (get_MList2_y t_2@@28) (get_MList2_l t_2@@28))))
 :qid |stdinbpl.459:15|
 :skolemid |46|
 :pattern ( (MList2_tag t_2@@28))
 :pattern ( (get_MList2_y t_2@@28))
 :pattern ( (get_MList2_l t_2@@28))
)))
(assert (forall ((t_2@@29 T@Triple3DomainType) ) (!  (or (= t_2@@29 (triple3 (get_Triple3_x t_2@@29))) (= t_2@@29 (nil (get_Triple3_i t_2@@29))))
 :qid |stdinbpl.657:15|
 :skolemid |66|
 :pattern ( (Triple3_tag t_2@@29))
 :pattern ( (get_Triple3_i t_2@@29))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@57 T@PolymorphicMapType_11647) (Mask@@38 T@PolymorphicMapType_11668) (l_2@@26 T@List2DomainType) ) (!  (=> (and (state Heap@@57 Mask@@38) (< AssumeFunctionsAbove 5)) (= (len2 Heap@@57 l_2@@26) (ite (= l_2@@26 Empty) 0 (+ 1 (|len2'| Heap@@57 (get_List1_l (get_List2_l l_2@@26)))))))
 :qid |stdinbpl.707:15|
 :skolemid |72|
 :pattern ( (state Heap@@57 Mask@@38) (len2 Heap@@57 l_2@@26))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_11647) (Mask@@39 T@PolymorphicMapType_11668) (l_2@@27 T@MList2DomainType) ) (!  (=> (and (state Heap@@58 Mask@@39) (< AssumeFunctionsAbove 7)) (= (mlen2 Heap@@58 l_2@@27) (ite (= l_2@@27 MEmpty) 0 (+ 1 (|mlen2'| Heap@@58 (get_MList1_y (get_MList2_l l_2@@27)))))))
 :qid |stdinbpl.963:15|
 :skolemid |88|
 :pattern ( (state Heap@@58 Mask@@39) (mlen2 Heap@@58 l_2@@27))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |tripleLen2Bad#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) true)
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
(declare-sort T@Field_11707_53 0)
(declare-sort T@Field_11720_11721 0)
(declare-sort T@Field_11707_31383 0)
(declare-sort T@Field_11707_31250 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11668 0)) (((PolymorphicMapType_11668 (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| (Array T@Ref T@Field_11707_53 Real)) (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| (Array T@Ref T@Field_11720_11721 Real)) (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| (Array T@Ref T@Field_11707_31250 Real)) (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| (Array T@Ref T@Field_11707_31383 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12196 0)) (((PolymorphicMapType_12196 (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| (Array T@Ref T@Field_11707_53 Bool)) (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| (Array T@Ref T@Field_11720_11721 Bool)) (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| (Array T@Ref T@Field_11707_31250 Bool)) (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| (Array T@Ref T@Field_11707_31383 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11647 0)) (((PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| (Array T@Ref T@Field_11707_53 Bool)) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| (Array T@Ref T@Field_11720_11721 T@Ref)) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| (Array T@Ref T@Field_11707_31383 T@PolymorphicMapType_12196)) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| (Array T@Ref T@Field_11707_31250 T@FrameType)) ) ) ))
(declare-sort T@Triple1DomainType 0)
(declare-fun state (T@PolymorphicMapType_11647 T@PolymorphicMapType_11668) Bool)
(declare-fun tripleLen1Bad (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-sort T@Triple3DomainType 0)
(declare-fun Triple3_tag (T@Triple3DomainType) Int)
(declare-sort T@Triple2DomainType 0)
(declare-fun get_Triple2_x (T@Triple2DomainType) T@Triple3DomainType)
(declare-fun get_Triple1_x (T@Triple1DomainType) T@Triple2DomainType)
(declare-fun |tripleLen1Bad'| (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun succHeap (T@PolymorphicMapType_11647 T@PolymorphicMapType_11647) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11647 T@PolymorphicMapType_11647) Bool)
(declare-sort T@List1DomainType 0)
(declare-fun bounded_7479 (T@List1DomainType) Bool)
(declare-sort T@List2DomainType 0)
(declare-fun bounded_7511 (T@List2DomainType) Bool)
(declare-sort T@MList1DomainType 0)
(declare-fun bounded_7540 (T@MList1DomainType) Bool)
(declare-sort T@MList2DomainType 0)
(declare-fun bounded_7572 (T@MList2DomainType) Bool)
(declare-fun bounded_7599 (T@Triple1DomainType) Bool)
(declare-fun bounded_7626 (T@Triple2DomainType) Bool)
(declare-fun bounded_7659 (T@Triple3DomainType) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11668) Bool)
(declare-fun decreasing_7471 (T@List1DomainType T@List1DomainType) Bool)
(declare-fun decreasing_7503 (T@List2DomainType T@List2DomainType) Bool)
(declare-fun decreasing_7532 (T@MList1DomainType T@MList1DomainType) Bool)
(declare-fun decreasing_7564 (T@MList2DomainType T@MList2DomainType) Bool)
(declare-fun decreasing_7589 (T@Triple1DomainType T@Triple1DomainType) Bool)
(declare-fun decreasing_7616 (T@Triple2DomainType T@Triple2DomainType) Bool)
(declare-fun decreasing_7649 (T@Triple3DomainType T@Triple3DomainType) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12196)
(declare-fun List2_tag (T@List2DomainType) Int)
(declare-fun Empty () T@List2DomainType)
(declare-fun MList2_tag (T@MList2DomainType) Int)
(declare-fun MEmpty () T@MList2DomainType)
(declare-fun |len2'| (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun dummyFunction_3134 (Int) Bool)
(declare-fun |len2#triggerStateless| (T@List2DomainType) Int)
(declare-fun |len2Bad'| (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun |len2Bad#triggerStateless| (T@List2DomainType) Int)
(declare-fun |len1'| (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun |len1#triggerStateless| (T@List1DomainType) Int)
(declare-fun |len1Bad'| (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun |len1Bad#triggerStateless| (T@List1DomainType) Int)
(declare-fun |mlen2'| (T@PolymorphicMapType_11647 T@MList2DomainType) Int)
(declare-fun |mlen2#triggerStateless| (T@MList2DomainType) Int)
(declare-fun |tripleLen1'| (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun |tripleLen1#triggerStateless| (T@Triple1DomainType) Int)
(declare-fun |tripleLen2'| (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun |tripleLen2#triggerStateless| (T@Triple2DomainType) Int)
(declare-fun |tripleLen3'| (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun |tripleLen3#triggerStateless| (T@Triple3DomainType) Int)
(declare-fun |tripleLen1Bad#triggerStateless| (T@Triple1DomainType) Int)
(declare-fun |tripleLen2Bad'| (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun |tripleLen2Bad#triggerStateless| (T@Triple2DomainType) Int)
(declare-fun |tripleLen3Bad'| (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun |tripleLen3Bad#triggerStateless| (T@Triple3DomainType) Int)
(declare-fun RList1 (Int T@List2DomainType) T@List1DomainType)
(declare-fun NonEmpty (Int T@List1DomainType) T@List2DomainType)
(declare-fun MRList1 (Int T@MList2DomainType) T@MList1DomainType)
(declare-fun MNonEmpty (Int T@MList1DomainType) T@MList2DomainType)
(declare-fun tripleLen3Bad (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun tripleLen2Bad (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun len1Bad (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun get_List1_l (T@List1DomainType) T@List2DomainType)
(declare-fun len2 (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun len2Bad (T@PolymorphicMapType_11647 T@List2DomainType) Int)
(declare-fun len1 (T@PolymorphicMapType_11647 T@List1DomainType) Int)
(declare-fun mlen2 (T@PolymorphicMapType_11647 T@MList2DomainType) Int)
(declare-fun tripleLen1 (T@PolymorphicMapType_11647 T@Triple1DomainType) Int)
(declare-fun tripleLen2 (T@PolymorphicMapType_11647 T@Triple2DomainType) Int)
(declare-fun tripleLen3 (T@PolymorphicMapType_11647 T@Triple3DomainType) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11647 T@PolymorphicMapType_11647 T@PolymorphicMapType_11668) Bool)
(declare-fun IsPredicateField_11707_31341 (T@Field_11707_31250) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11707 (T@Field_11707_31250) T@Field_11707_31383)
(declare-fun HasDirectPerm_11707_31314 (T@PolymorphicMapType_11668 T@Ref T@Field_11707_31250) Bool)
(declare-fun IsWandField_11707_32890 (T@Field_11707_31250) Bool)
(declare-fun WandMaskField_11707 (T@Field_11707_31250) T@Field_11707_31383)
(declare-fun triple1 (T@Triple2DomainType) T@Triple1DomainType)
(declare-fun triple2 (T@Triple3DomainType) T@Triple2DomainType)
(declare-fun triple3 (T@Triple1DomainType) T@Triple3DomainType)
(declare-fun get_Triple3_x (T@Triple3DomainType) T@Triple1DomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_11647)
(declare-fun ZeroMask () T@PolymorphicMapType_11668)
(declare-fun $allocated () T@Field_11707_53)
(declare-fun InsidePredicate_11707_11707 (T@Field_11707_31250 T@FrameType T@Field_11707_31250 T@FrameType) Bool)
(declare-fun get_List2_l (T@List2DomainType) T@List1DomainType)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11707_35853 (T@Field_11707_31383) Bool)
(declare-fun IsWandField_11707_35869 (T@Field_11707_31383) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11707_11721 (T@Field_11720_11721) Bool)
(declare-fun IsWandField_11707_11721 (T@Field_11720_11721) Bool)
(declare-fun IsPredicateField_11707_53 (T@Field_11707_53) Bool)
(declare-fun IsWandField_11707_53 (T@Field_11707_53) Bool)
(declare-fun HasDirectPerm_11707_36224 (T@PolymorphicMapType_11668 T@Ref T@Field_11707_31383) Bool)
(declare-fun HasDirectPerm_11707_11721 (T@PolymorphicMapType_11668 T@Ref T@Field_11720_11721) Bool)
(declare-fun HasDirectPerm_11707_53 (T@PolymorphicMapType_11668 T@Ref T@Field_11707_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11668 T@PolymorphicMapType_11668 T@PolymorphicMapType_11668) Bool)
(declare-fun List1_tag (T@List1DomainType) Int)
(declare-fun MList1_tag (T@MList1DomainType) Int)
(declare-fun Triple1_tag (T@Triple1DomainType) Int)
(declare-fun Triple2_tag (T@Triple2DomainType) Int)
(declare-fun nil (Int) T@Triple3DomainType)
(declare-fun |len2#frame| (T@FrameType T@List2DomainType) Int)
(declare-fun |len2Bad#frame| (T@FrameType T@List2DomainType) Int)
(declare-fun |len1#frame| (T@FrameType T@List1DomainType) Int)
(declare-fun |len1Bad#frame| (T@FrameType T@List1DomainType) Int)
(declare-fun |mlen2#frame| (T@FrameType T@MList2DomainType) Int)
(declare-fun |tripleLen1#frame| (T@FrameType T@Triple1DomainType) Int)
(declare-fun |tripleLen2#frame| (T@FrameType T@Triple2DomainType) Int)
(declare-fun |tripleLen3#frame| (T@FrameType T@Triple3DomainType) Int)
(declare-fun |tripleLen1Bad#frame| (T@FrameType T@Triple1DomainType) Int)
(declare-fun |tripleLen2Bad#frame| (T@FrameType T@Triple2DomainType) Int)
(declare-fun |tripleLen3Bad#frame| (T@FrameType T@Triple3DomainType) Int)
(declare-fun get_List1_x (T@List1DomainType) Int)
(declare-fun get_List2_x (T@List2DomainType) Int)
(declare-fun get_MList1_x (T@MList1DomainType) Int)
(declare-fun get_MList1_y (T@MList1DomainType) T@MList2DomainType)
(declare-fun get_MList2_y (T@MList2DomainType) Int)
(declare-fun get_MList2_l (T@MList2DomainType) T@MList1DomainType)
(declare-fun get_Triple3_i (T@Triple3DomainType) Int)
(assert (forall ((Heap T@PolymorphicMapType_11647) (Mask T@PolymorphicMapType_11668) (t_2 T@Triple1DomainType) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 6)) (= (tripleLen1Bad Heap t_2) (+ 2 (ite (= (Triple3_tag (get_Triple2_x (get_Triple1_x t_2))) 0) 0 (|tripleLen1Bad'| Heap t_2)))))
 :qid |stdinbpl.1219:15|
 :skolemid |104|
 :pattern ( (state Heap Mask) (tripleLen1Bad Heap t_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11647) (Heap1 T@PolymorphicMapType_11647) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@List1DomainType) ) (! (bounded_7479 x)
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (bounded_7479 x))
)))
(assert (forall ((x@@0 T@List2DomainType) ) (! (bounded_7511 x@@0)
 :qid |stdinbpl.342:15|
 :skolemid |35|
 :pattern ( (bounded_7511 x@@0))
)))
(assert (forall ((x@@1 T@MList1DomainType) ) (! (bounded_7540 x@@1)
 :qid |stdinbpl.410:15|
 :skolemid |42|
 :pattern ( (bounded_7540 x@@1))
)))
(assert (forall ((x@@2 T@MList2DomainType) ) (! (bounded_7572 x@@2)
 :qid |stdinbpl.487:15|
 :skolemid |49|
 :pattern ( (bounded_7572 x@@2))
)))
(assert (forall ((x@@3 T@Triple1DomainType) ) (! (bounded_7599 x@@3)
 :qid |stdinbpl.546:15|
 :skolemid |55|
 :pattern ( (bounded_7599 x@@3))
)))
(assert (forall ((x@@4 T@Triple2DomainType) ) (! (bounded_7626 x@@4)
 :qid |stdinbpl.605:15|
 :skolemid |61|
 :pattern ( (bounded_7626 x@@4))
)))
(assert (forall ((x@@5 T@Triple3DomainType) ) (! (bounded_7659 x@@5)
 :qid |stdinbpl.685:15|
 :skolemid |69|
 :pattern ( (bounded_7659 x@@5))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11647) (Mask@@0 T@PolymorphicMapType_11668) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11647) (Heap1@@0 T@PolymorphicMapType_11647) (Heap2 T@PolymorphicMapType_11647) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@List1DomainType) (v2 T@List1DomainType) (v3 T@List1DomainType) ) (!  (=> (and (decreasing_7471 v1 v2) (decreasing_7471 v2 v3)) (decreasing_7471 v1 v3))
 :qid |stdinbpl.259:15|
 :skolemid |27|
 :pattern ( (decreasing_7471 v1 v2) (decreasing_7471 v2 v3))
)))
(assert (forall ((v1@@0 T@List2DomainType) (v2@@0 T@List2DomainType) (v3@@0 T@List2DomainType) ) (!  (=> (and (decreasing_7503 v1@@0 v2@@0) (decreasing_7503 v2@@0 v3@@0)) (decreasing_7503 v1@@0 v3@@0))
 :qid |stdinbpl.336:15|
 :skolemid |34|
 :pattern ( (decreasing_7503 v1@@0 v2@@0) (decreasing_7503 v2@@0 v3@@0))
)))
(assert (forall ((v1@@1 T@MList1DomainType) (v2@@1 T@MList1DomainType) (v3@@1 T@MList1DomainType) ) (!  (=> (and (decreasing_7532 v1@@1 v2@@1) (decreasing_7532 v2@@1 v3@@1)) (decreasing_7532 v1@@1 v3@@1))
 :qid |stdinbpl.404:15|
 :skolemid |41|
 :pattern ( (decreasing_7532 v1@@1 v2@@1) (decreasing_7532 v2@@1 v3@@1))
)))
(assert (forall ((v1@@2 T@MList2DomainType) (v2@@2 T@MList2DomainType) (v3@@2 T@MList2DomainType) ) (!  (=> (and (decreasing_7564 v1@@2 v2@@2) (decreasing_7564 v2@@2 v3@@2)) (decreasing_7564 v1@@2 v3@@2))
 :qid |stdinbpl.481:15|
 :skolemid |48|
 :pattern ( (decreasing_7564 v1@@2 v2@@2) (decreasing_7564 v2@@2 v3@@2))
)))
(assert (forall ((v1@@3 T@Triple1DomainType) (v2@@3 T@Triple1DomainType) (v3@@3 T@Triple1DomainType) ) (!  (=> (and (decreasing_7589 v1@@3 v2@@3) (decreasing_7589 v2@@3 v3@@3)) (decreasing_7589 v1@@3 v3@@3))
 :qid |stdinbpl.540:15|
 :skolemid |54|
 :pattern ( (decreasing_7589 v1@@3 v2@@3) (decreasing_7589 v2@@3 v3@@3))
)))
(assert (forall ((v1@@4 T@Triple2DomainType) (v2@@4 T@Triple2DomainType) (v3@@4 T@Triple2DomainType) ) (!  (=> (and (decreasing_7616 v1@@4 v2@@4) (decreasing_7616 v2@@4 v3@@4)) (decreasing_7616 v1@@4 v3@@4))
 :qid |stdinbpl.599:15|
 :skolemid |60|
 :pattern ( (decreasing_7616 v1@@4 v2@@4) (decreasing_7616 v2@@4 v3@@4))
)))
(assert (forall ((v1@@5 T@Triple3DomainType) (v2@@5 T@Triple3DomainType) (v3@@5 T@Triple3DomainType) ) (!  (=> (and (decreasing_7649 v1@@5 v2@@5) (decreasing_7649 v2@@5 v3@@5)) (decreasing_7649 v1@@5 v3@@5))
 :qid |stdinbpl.679:15|
 :skolemid |68|
 :pattern ( (decreasing_7649 v1@@5 v2@@5) (decreasing_7649 v2@@5 v3@@5))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11707_31383) ) (!  (not (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11707_31250) ) (!  (not (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11720_11721) ) (!  (not (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11707_53) ) (!  (not (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (= (List2_tag Empty) 0))
(assert (= (MList2_tag MEmpty) 0))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11647) (l_2 T@List2DomainType) ) (! (dummyFunction_3134 (|len2#triggerStateless| l_2))
 :qid |stdinbpl.701:15|
 :skolemid |71|
 :pattern ( (|len2'| Heap@@1 l_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11647) (l_2@@0 T@List2DomainType) ) (! (dummyFunction_3134 (|len2Bad#triggerStateless| l_2@@0))
 :qid |stdinbpl.765:15|
 :skolemid |75|
 :pattern ( (|len2Bad'| Heap@@2 l_2@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11647) (l_2@@1 T@List1DomainType) ) (! (dummyFunction_3134 (|len1#triggerStateless| l_2@@1))
 :qid |stdinbpl.829:15|
 :skolemid |79|
 :pattern ( (|len1'| Heap@@3 l_2@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11647) (l_2@@2 T@List1DomainType) ) (! (dummyFunction_3134 (|len1Bad#triggerStateless| l_2@@2))
 :qid |stdinbpl.893:15|
 :skolemid |83|
 :pattern ( (|len1Bad'| Heap@@4 l_2@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11647) (l_2@@3 T@MList2DomainType) ) (! (dummyFunction_3134 (|mlen2#triggerStateless| l_2@@3))
 :qid |stdinbpl.957:15|
 :skolemid |87|
 :pattern ( (|mlen2'| Heap@@5 l_2@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11647) (t_2@@0 T@Triple1DomainType) ) (! (dummyFunction_3134 (|tripleLen1#triggerStateless| t_2@@0))
 :qid |stdinbpl.1021:15|
 :skolemid |91|
 :pattern ( (|tripleLen1'| Heap@@6 t_2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11647) (t_2@@1 T@Triple2DomainType) ) (! (dummyFunction_3134 (|tripleLen2#triggerStateless| t_2@@1))
 :qid |stdinbpl.1085:15|
 :skolemid |95|
 :pattern ( (|tripleLen2'| Heap@@7 t_2@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11647) (t_2@@2 T@Triple3DomainType) ) (! (dummyFunction_3134 (|tripleLen3#triggerStateless| t_2@@2))
 :qid |stdinbpl.1149:15|
 :skolemid |99|
 :pattern ( (|tripleLen3'| Heap@@8 t_2@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11647) (t_2@@3 T@Triple1DomainType) ) (! (dummyFunction_3134 (|tripleLen1Bad#triggerStateless| t_2@@3))
 :qid |stdinbpl.1213:15|
 :skolemid |103|
 :pattern ( (|tripleLen1Bad'| Heap@@9 t_2@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11647) (t_2@@4 T@Triple2DomainType) ) (! (dummyFunction_3134 (|tripleLen2Bad#triggerStateless| t_2@@4))
 :qid |stdinbpl.1277:15|
 :skolemid |107|
 :pattern ( (|tripleLen2Bad'| Heap@@10 t_2@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11647) (t_2@@5 T@Triple3DomainType) ) (! (dummyFunction_3134 (|tripleLen3Bad#triggerStateless| t_2@@5))
 :qid |stdinbpl.1341:15|
 :skolemid |111|
 :pattern ( (|tripleLen3Bad'| Heap@@11 t_2@@5))
)))
(assert (forall ((l_1 T@List1DomainType) (x_0 Int) (x@@6 Int) ) (! (decreasing_7471 l_1 (RList1 x@@6 (NonEmpty x_0 l_1)))
 :qid |stdinbpl.253:15|
 :skolemid |26|
 :pattern ( (RList1 x@@6 (NonEmpty x_0 l_1)))
)))
(assert (forall ((l_1@@0 T@List2DomainType) (x_0@@0 Int) (x@@7 Int) ) (! (decreasing_7503 l_1@@0 (NonEmpty x@@7 (RList1 x_0@@0 l_1@@0)))
 :qid |stdinbpl.330:15|
 :skolemid |33|
 :pattern ( (NonEmpty x@@7 (RList1 x_0@@0 l_1@@0)))
)))
(assert (forall ((l_1@@1 T@MList1DomainType) (y_0 Int) (x@@8 Int) ) (! (decreasing_7532 l_1@@1 (MRList1 x@@8 (MNonEmpty y_0 l_1@@1)))
 :qid |stdinbpl.398:15|
 :skolemid |40|
 :pattern ( (MRList1 x@@8 (MNonEmpty y_0 l_1@@1)))
)))
(assert (forall ((y_1 T@MList2DomainType) (x_0@@1 Int) (y Int) ) (! (decreasing_7564 y_1 (MNonEmpty y (MRList1 x_0@@1 y_1)))
 :qid |stdinbpl.475:15|
 :skolemid |47|
 :pattern ( (MNonEmpty y (MRList1 x_0@@1 y_1)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11647) (Mask@@1 T@PolymorphicMapType_11668) (t_2@@6 T@Triple3DomainType) ) (!  (=> (and (state Heap@@12 Mask@@1) (< AssumeFunctionsAbove 10)) (= (tripleLen3Bad Heap@@12 t_2@@6) (ite (= (Triple3_tag t_2@@6) 0) 0 (+ 3 (|tripleLen3Bad'| Heap@@12 t_2@@6)))))
 :qid |stdinbpl.1347:15|
 :skolemid |112|
 :pattern ( (state Heap@@12 Mask@@1) (tripleLen3Bad Heap@@12 t_2@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11647) (Mask@@2 T@PolymorphicMapType_11668) (t_2@@7 T@Triple2DomainType) ) (!  (=> (and (state Heap@@13 Mask@@2) (< AssumeFunctionsAbove 2)) (= (tripleLen2Bad Heap@@13 t_2@@7) (+ 1 (ite (= (Triple3_tag (get_Triple2_x t_2@@7)) 0) 0 (+ 1 (|tripleLen2Bad'| Heap@@13 t_2@@7))))))
 :qid |stdinbpl.1283:15|
 :skolemid |108|
 :pattern ( (state Heap@@13 Mask@@2) (tripleLen2Bad Heap@@13 t_2@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11647) (Mask@@3 T@PolymorphicMapType_11668) (l_2@@4 T@List1DomainType) ) (!  (=> (and (state Heap@@14 Mask@@3) (< AssumeFunctionsAbove 3)) (= (len1Bad Heap@@14 l_2@@4) (ite (= (get_List1_l l_2@@4) Empty) 0 (+ 1 (|len1Bad'| Heap@@14 l_2@@4)))))
 :qid |stdinbpl.899:15|
 :skolemid |84|
 :pattern ( (state Heap@@14 Mask@@3) (len1Bad Heap@@14 l_2@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11647) (l_2@@5 T@List2DomainType) ) (!  (and (= (len2 Heap@@15 l_2@@5) (|len2'| Heap@@15 l_2@@5)) (dummyFunction_3134 (|len2#triggerStateless| l_2@@5)))
 :qid |stdinbpl.697:15|
 :skolemid |70|
 :pattern ( (len2 Heap@@15 l_2@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11647) (l_2@@6 T@List2DomainType) ) (!  (and (= (len2Bad Heap@@16 l_2@@6) (|len2Bad'| Heap@@16 l_2@@6)) (dummyFunction_3134 (|len2Bad#triggerStateless| l_2@@6)))
 :qid |stdinbpl.761:15|
 :skolemid |74|
 :pattern ( (len2Bad Heap@@16 l_2@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11647) (l_2@@7 T@List1DomainType) ) (!  (and (= (len1 Heap@@17 l_2@@7) (|len1'| Heap@@17 l_2@@7)) (dummyFunction_3134 (|len1#triggerStateless| l_2@@7)))
 :qid |stdinbpl.825:15|
 :skolemid |78|
 :pattern ( (len1 Heap@@17 l_2@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11647) (l_2@@8 T@List1DomainType) ) (!  (and (= (len1Bad Heap@@18 l_2@@8) (|len1Bad'| Heap@@18 l_2@@8)) (dummyFunction_3134 (|len1Bad#triggerStateless| l_2@@8)))
 :qid |stdinbpl.889:15|
 :skolemid |82|
 :pattern ( (len1Bad Heap@@18 l_2@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11647) (l_2@@9 T@MList2DomainType) ) (!  (and (= (mlen2 Heap@@19 l_2@@9) (|mlen2'| Heap@@19 l_2@@9)) (dummyFunction_3134 (|mlen2#triggerStateless| l_2@@9)))
 :qid |stdinbpl.953:15|
 :skolemid |86|
 :pattern ( (mlen2 Heap@@19 l_2@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11647) (t_2@@8 T@Triple1DomainType) ) (!  (and (= (tripleLen1 Heap@@20 t_2@@8) (|tripleLen1'| Heap@@20 t_2@@8)) (dummyFunction_3134 (|tripleLen1#triggerStateless| t_2@@8)))
 :qid |stdinbpl.1017:15|
 :skolemid |90|
 :pattern ( (tripleLen1 Heap@@20 t_2@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11647) (t_2@@9 T@Triple2DomainType) ) (!  (and (= (tripleLen2 Heap@@21 t_2@@9) (|tripleLen2'| Heap@@21 t_2@@9)) (dummyFunction_3134 (|tripleLen2#triggerStateless| t_2@@9)))
 :qid |stdinbpl.1081:15|
 :skolemid |94|
 :pattern ( (tripleLen2 Heap@@21 t_2@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11647) (t_2@@10 T@Triple3DomainType) ) (!  (and (= (tripleLen3 Heap@@22 t_2@@10) (|tripleLen3'| Heap@@22 t_2@@10)) (dummyFunction_3134 (|tripleLen3#triggerStateless| t_2@@10)))
 :qid |stdinbpl.1145:15|
 :skolemid |98|
 :pattern ( (tripleLen3 Heap@@22 t_2@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11647) (t_2@@11 T@Triple1DomainType) ) (!  (and (= (tripleLen1Bad Heap@@23 t_2@@11) (|tripleLen1Bad'| Heap@@23 t_2@@11)) (dummyFunction_3134 (|tripleLen1Bad#triggerStateless| t_2@@11)))
 :qid |stdinbpl.1209:15|
 :skolemid |102|
 :pattern ( (tripleLen1Bad Heap@@23 t_2@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11647) (t_2@@12 T@Triple2DomainType) ) (!  (and (= (tripleLen2Bad Heap@@24 t_2@@12) (|tripleLen2Bad'| Heap@@24 t_2@@12)) (dummyFunction_3134 (|tripleLen2Bad#triggerStateless| t_2@@12)))
 :qid |stdinbpl.1273:15|
 :skolemid |106|
 :pattern ( (tripleLen2Bad Heap@@24 t_2@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11647) (t_2@@13 T@Triple3DomainType) ) (!  (and (= (tripleLen3Bad Heap@@25 t_2@@13) (|tripleLen3Bad'| Heap@@25 t_2@@13)) (dummyFunction_3134 (|tripleLen3Bad#triggerStateless| t_2@@13)))
 :qid |stdinbpl.1337:15|
 :skolemid |110|
 :pattern ( (tripleLen3Bad Heap@@25 t_2@@13))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11647) (ExhaleHeap T@PolymorphicMapType_11647) (Mask@@4 T@PolymorphicMapType_11668) (pm_f T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_11707_31314 Mask@@4 null pm_f) (IsPredicateField_11707_31341 pm_f)) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@26) null (PredicateMaskField_11707 pm_f)) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap) null (PredicateMaskField_11707 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap Mask@@4) (IsPredicateField_11707_31341 pm_f) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap) null (PredicateMaskField_11707 pm_f)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11647) (ExhaleHeap@@0 T@PolymorphicMapType_11647) (Mask@@5 T@PolymorphicMapType_11668) (pm_f@@0 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_11707_31314 Mask@@5 null pm_f@@0) (IsWandField_11707_32890 pm_f@@0)) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@27) null (WandMaskField_11707 pm_f@@0)) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@0) null (WandMaskField_11707 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@0 Mask@@5) (IsWandField_11707_32890 pm_f@@0) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@0) null (WandMaskField_11707 pm_f@@0)))
)))
(assert (forall ((x_2_2 T@Triple1DomainType) ) (! (decreasing_7589 x_2_2 (triple1 (triple2 (triple3 x_2_2))))
 :qid |stdinbpl.534:15|
 :skolemid |53|
 :pattern ( (triple1 (triple2 (triple3 x_2_2))))
)))
(assert (forall ((x_2_2@@0 T@Triple2DomainType) ) (! (decreasing_7616 x_2_2@@0 (triple2 (triple3 (triple1 x_2_2@@0))))
 :qid |stdinbpl.593:15|
 :skolemid |59|
 :pattern ( (triple2 (triple3 (triple1 x_2_2@@0))))
)))
(assert (forall ((x_2_2@@1 T@Triple3DomainType) ) (! (decreasing_7649 x_2_2@@1 (triple3 (triple1 (triple2 x_2_2@@1))))
 :qid |stdinbpl.670:15|
 :skolemid |67|
 :pattern ( (triple3 (triple1 (triple2 x_2_2@@1))))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11647) (Mask@@6 T@PolymorphicMapType_11668) (t_2@@14 T@Triple1DomainType) ) (!  (=> (and (state Heap@@28 Mask@@6) (< AssumeFunctionsAbove 8)) (= (tripleLen1 Heap@@28 t_2@@14) (+ 2 (ite (= (Triple3_tag (get_Triple2_x (get_Triple1_x t_2@@14))) 0) 0 (|tripleLen1'| Heap@@28 (get_Triple3_x (get_Triple2_x (get_Triple1_x t_2@@14))))))))
 :qid |stdinbpl.1027:15|
 :skolemid |92|
 :pattern ( (state Heap@@28 Mask@@6) (tripleLen1 Heap@@28 t_2@@14))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11647) (ExhaleHeap@@1 T@PolymorphicMapType_11647) (Mask@@7 T@PolymorphicMapType_11668) (pm_f@@1 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@7) (=> (and (HasDirectPerm_11707_31314 Mask@@7 null pm_f@@1) (IsPredicateField_11707_31341 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_11707_53) ) (!  (=> (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@29) o2 f_2) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_11720_11721) ) (!  (=> (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@29) o2@@0 f_2@@0) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_11707_31250) ) (!  (=> (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@29) o2@@1 f_2@@1) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11707_31383) ) (!  (=> (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) null (PredicateMaskField_11707 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@29) o2@@2 f_2@@2) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@1 Mask@@7) (IsPredicateField_11707_31341 pm_f@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11647) (ExhaleHeap@@2 T@PolymorphicMapType_11647) (Mask@@8 T@PolymorphicMapType_11668) (pm_f@@2 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@8) (=> (and (HasDirectPerm_11707_31314 Mask@@8 null pm_f@@2) (IsWandField_11707_32890 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11707_53) ) (!  (=> (select (|PolymorphicMapType_12196_11707_53#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@30) o2@@3 f_2@@3) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11720_11721) ) (!  (=> (select (|PolymorphicMapType_12196_11707_11721#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11707_31250) ) (!  (=> (select (|PolymorphicMapType_12196_11707_31250#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11707_31383) ) (!  (=> (select (|PolymorphicMapType_12196_11707_32363#PolymorphicMapType_12196| (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) null (WandMaskField_11707 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@2 Mask@@8) (IsWandField_11707_32890 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11647) (ExhaleHeap@@3 T@PolymorphicMapType_11647) (Mask@@9 T@PolymorphicMapType_11668) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@9) (=> (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@31) o_1 $allocated) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@3 Mask@@9) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_11707_31250) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11707_11707 p v_1 p w))
 :qid |stdinbpl.184:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11707_11707 p v_1 p w))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11647) (Mask@@10 T@PolymorphicMapType_11668) (l_2@@10 T@List1DomainType) ) (!  (=> (and (state Heap@@32 Mask@@10) (< AssumeFunctionsAbove 9)) (= (len1 Heap@@32 l_2@@10) (ite (= (get_List1_l l_2@@10) Empty) 0 (+ 1 (|len1'| Heap@@32 (get_List2_l (get_List1_l l_2@@10)))))))
 :qid |stdinbpl.835:15|
 :skolemid |80|
 :pattern ( (state Heap@@32 Mask@@10) (len1 Heap@@32 l_2@@10))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11647) (ExhaleHeap@@4 T@PolymorphicMapType_11647) (Mask@@11 T@PolymorphicMapType_11668) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@33 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11668) (o_2@@3 T@Ref) (f_4@@3 T@Field_11707_31383) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_11707_35853 f_4@@3))) (not (IsWandField_11707_35869 f_4@@3))) (<= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11668) (o_2@@4 T@Ref) (f_4@@4 T@Field_11707_31250) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_11707_31341 f_4@@4))) (not (IsWandField_11707_32890 f_4@@4))) (<= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11668) (o_2@@5 T@Ref) (f_4@@5 T@Field_11720_11721) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11707_11721 f_4@@5))) (not (IsWandField_11707_11721 f_4@@5))) (<= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11668) (o_2@@6 T@Ref) (f_4@@6 T@Field_11707_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11707_53 f_4@@6))) (not (IsWandField_11707_53 f_4@@6))) (<= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11647) (Mask@@16 T@PolymorphicMapType_11668) (t_2@@15 T@Triple3DomainType) ) (!  (=> (and (state Heap@@34 Mask@@16) (< AssumeFunctionsAbove 4)) (= (tripleLen3 Heap@@34 t_2@@15) (ite (= (Triple3_tag t_2@@15) 0) 0 (+ 3 (|tripleLen3'| Heap@@34 (get_Triple2_x (get_Triple1_x (get_Triple3_x t_2@@15))))))))
 :qid |stdinbpl.1155:15|
 :skolemid |100|
 :pattern ( (state Heap@@34 Mask@@16) (tripleLen3 Heap@@34 t_2@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11668) (o_2@@7 T@Ref) (f_4@@7 T@Field_11707_31383) ) (! (= (HasDirectPerm_11707_36224 Mask@@17 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| Mask@@17) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_36224 Mask@@17 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11668) (o_2@@8 T@Ref) (f_4@@8 T@Field_11707_31250) ) (! (= (HasDirectPerm_11707_31314 Mask@@18 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| Mask@@18) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_31314 Mask@@18 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11668) (o_2@@9 T@Ref) (f_4@@9 T@Field_11720_11721) ) (! (= (HasDirectPerm_11707_11721 Mask@@19 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| Mask@@19) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_11721 Mask@@19 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11668) (o_2@@10 T@Ref) (f_4@@10 T@Field_11707_53) ) (! (= (HasDirectPerm_11707_53 Mask@@20 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| Mask@@20) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11707_53 Mask@@20 o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11647) (Mask@@21 T@PolymorphicMapType_11668) (t_2@@16 T@Triple2DomainType) ) (!  (=> (and (state Heap@@35 Mask@@21) (< AssumeFunctionsAbove 1)) (= (tripleLen2 Heap@@35 t_2@@16) (+ 1 (ite (= (Triple3_tag (get_Triple2_x t_2@@16)) 0) 0 (+ 1 (|tripleLen2'| Heap@@35 (get_Triple1_x (get_Triple3_x (get_Triple2_x t_2@@16)))))))))
 :qid |stdinbpl.1091:15|
 :skolemid |96|
 :pattern ( (state Heap@@35 Mask@@21) (tripleLen2 Heap@@35 t_2@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.172:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11647) (ExhaleHeap@@5 T@PolymorphicMapType_11647) (Mask@@22 T@PolymorphicMapType_11668) (o_1@@0 T@Ref) (f_2@@7 T@Field_11707_31383) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@5 Mask@@22) (=> (HasDirectPerm_11707_36224 Mask@@22 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@36) o_1@@0 f_2@@7) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@5 Mask@@22) (select (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11647) (ExhaleHeap@@6 T@PolymorphicMapType_11647) (Mask@@23 T@PolymorphicMapType_11668) (o_1@@1 T@Ref) (f_2@@8 T@Field_11707_31250) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@6 Mask@@23) (=> (HasDirectPerm_11707_31314 Mask@@23 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@37) o_1@@1 f_2@@8) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@6 Mask@@23) (select (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11647) (ExhaleHeap@@7 T@PolymorphicMapType_11647) (Mask@@24 T@PolymorphicMapType_11668) (o_1@@2 T@Ref) (f_2@@9 T@Field_11720_11721) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@7 Mask@@24) (=> (HasDirectPerm_11707_11721 Mask@@24 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@38) o_1@@2 f_2@@9) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@7 Mask@@24) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11647) (ExhaleHeap@@8 T@PolymorphicMapType_11647) (Mask@@25 T@PolymorphicMapType_11668) (o_1@@3 T@Ref) (f_2@@10 T@Field_11707_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@8 Mask@@25) (=> (HasDirectPerm_11707_53 Mask@@25 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@39) o_1@@3 f_2@@10) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@8 Mask@@25) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11707_31383) ) (! (= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11707_31250) ) (! (= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11720_11721) ) (! (= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11707_53) ) (! (= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11668) (SummandMask1 T@PolymorphicMapType_11668) (SummandMask2 T@PolymorphicMapType_11668) (o_2@@15 T@Ref) (f_4@@15 T@Field_11707_31383) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11668_11707_34944#PolymorphicMapType_11668| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11668) (SummandMask1@@0 T@PolymorphicMapType_11668) (SummandMask2@@0 T@PolymorphicMapType_11668) (o_2@@16 T@Ref) (f_4@@16 T@Field_11707_31250) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11668_11707_31250#PolymorphicMapType_11668| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11668) (SummandMask1@@1 T@PolymorphicMapType_11668) (SummandMask2@@1 T@PolymorphicMapType_11668) (o_2@@17 T@Ref) (f_4@@17 T@Field_11720_11721) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11668_11707_11721#PolymorphicMapType_11668| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11668) (SummandMask1@@2 T@PolymorphicMapType_11668) (SummandMask2@@2 T@PolymorphicMapType_11668) (o_2@@18 T@Ref) (f_4@@18 T@Field_11707_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11668_11707_53#PolymorphicMapType_11668| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((x@@9 Int) (l_2@@11 T@List2DomainType) ) (! (= (List1_tag (RList1 x@@9 l_2@@11)) 0)
 :qid |stdinbpl.234:15|
 :skolemid |24|
 :pattern ( (RList1 x@@9 l_2@@11))
)))
(assert (forall ((x@@10 Int) (y@@0 T@MList2DomainType) ) (! (= (MList1_tag (MRList1 x@@10 y@@0)) 0)
 :qid |stdinbpl.379:15|
 :skolemid |38|
 :pattern ( (MRList1 x@@10 y@@0))
)))
(assert (forall ((x@@11 Int) (l_2@@12 T@List1DomainType) ) (! (= (List2_tag (NonEmpty x@@11 l_2@@12)) 1)
 :qid |stdinbpl.308:15|
 :skolemid |31|
 :pattern ( (NonEmpty x@@11 l_2@@12))
)))
(assert (forall ((y@@1 Int) (l_2@@13 T@MList1DomainType) ) (! (= (MList2_tag (MNonEmpty y@@1 l_2@@13)) 1)
 :qid |stdinbpl.453:15|
 :skolemid |45|
 :pattern ( (MNonEmpty y@@1 l_2@@13))
)))
(assert (forall ((x@@12 T@Triple2DomainType) ) (! (= (Triple1_tag (triple1 x@@12)) 0)
 :qid |stdinbpl.515:15|
 :skolemid |51|
 :pattern ( (triple1 x@@12))
)))
(assert (forall ((x@@13 T@Triple3DomainType) ) (! (= (Triple2_tag (triple2 x@@13)) 0)
 :qid |stdinbpl.574:15|
 :skolemid |57|
 :pattern ( (triple2 x@@13))
)))
(assert (forall ((i Int) ) (! (= (Triple3_tag (nil i)) 0)
 :qid |stdinbpl.651:15|
 :skolemid |65|
 :pattern ( (nil i))
)))
(assert (forall ((x@@14 T@Triple1DomainType) ) (! (= (Triple3_tag (triple3 x@@14)) 1)
 :qid |stdinbpl.645:15|
 :skolemid |64|
 :pattern ( (triple3 x@@14))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11647) (Mask@@26 T@PolymorphicMapType_11668) (l_2@@14 T@List2DomainType) ) (!  (=> (state Heap@@40 Mask@@26) (= (|len2'| Heap@@40 l_2@@14) (|len2#frame| EmptyFrame l_2@@14)))
 :qid |stdinbpl.714:15|
 :skolemid |73|
 :pattern ( (state Heap@@40 Mask@@26) (|len2'| Heap@@40 l_2@@14))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11647) (Mask@@27 T@PolymorphicMapType_11668) (l_2@@15 T@List2DomainType) ) (!  (=> (state Heap@@41 Mask@@27) (= (|len2Bad'| Heap@@41 l_2@@15) (|len2Bad#frame| EmptyFrame l_2@@15)))
 :qid |stdinbpl.778:15|
 :skolemid |77|
 :pattern ( (state Heap@@41 Mask@@27) (|len2Bad'| Heap@@41 l_2@@15))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11647) (Mask@@28 T@PolymorphicMapType_11668) (l_2@@16 T@List1DomainType) ) (!  (=> (state Heap@@42 Mask@@28) (= (|len1'| Heap@@42 l_2@@16) (|len1#frame| EmptyFrame l_2@@16)))
 :qid |stdinbpl.842:15|
 :skolemid |81|
 :pattern ( (state Heap@@42 Mask@@28) (|len1'| Heap@@42 l_2@@16))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11647) (Mask@@29 T@PolymorphicMapType_11668) (l_2@@17 T@List1DomainType) ) (!  (=> (state Heap@@43 Mask@@29) (= (|len1Bad'| Heap@@43 l_2@@17) (|len1Bad#frame| EmptyFrame l_2@@17)))
 :qid |stdinbpl.906:15|
 :skolemid |85|
 :pattern ( (state Heap@@43 Mask@@29) (|len1Bad'| Heap@@43 l_2@@17))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11647) (Mask@@30 T@PolymorphicMapType_11668) (l_2@@18 T@MList2DomainType) ) (!  (=> (state Heap@@44 Mask@@30) (= (|mlen2'| Heap@@44 l_2@@18) (|mlen2#frame| EmptyFrame l_2@@18)))
 :qid |stdinbpl.970:15|
 :skolemid |89|
 :pattern ( (state Heap@@44 Mask@@30) (|mlen2'| Heap@@44 l_2@@18))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11647) (Mask@@31 T@PolymorphicMapType_11668) (t_2@@17 T@Triple1DomainType) ) (!  (=> (state Heap@@45 Mask@@31) (= (|tripleLen1'| Heap@@45 t_2@@17) (|tripleLen1#frame| EmptyFrame t_2@@17)))
 :qid |stdinbpl.1034:15|
 :skolemid |93|
 :pattern ( (state Heap@@45 Mask@@31) (|tripleLen1'| Heap@@45 t_2@@17))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11647) (Mask@@32 T@PolymorphicMapType_11668) (t_2@@18 T@Triple2DomainType) ) (!  (=> (state Heap@@46 Mask@@32) (= (|tripleLen2'| Heap@@46 t_2@@18) (|tripleLen2#frame| EmptyFrame t_2@@18)))
 :qid |stdinbpl.1098:15|
 :skolemid |97|
 :pattern ( (state Heap@@46 Mask@@32) (|tripleLen2'| Heap@@46 t_2@@18))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11647) (Mask@@33 T@PolymorphicMapType_11668) (t_2@@19 T@Triple3DomainType) ) (!  (=> (state Heap@@47 Mask@@33) (= (|tripleLen3'| Heap@@47 t_2@@19) (|tripleLen3#frame| EmptyFrame t_2@@19)))
 :qid |stdinbpl.1162:15|
 :skolemid |101|
 :pattern ( (state Heap@@47 Mask@@33) (|tripleLen3'| Heap@@47 t_2@@19))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11647) (Mask@@34 T@PolymorphicMapType_11668) (t_2@@20 T@Triple1DomainType) ) (!  (=> (state Heap@@48 Mask@@34) (= (|tripleLen1Bad'| Heap@@48 t_2@@20) (|tripleLen1Bad#frame| EmptyFrame t_2@@20)))
 :qid |stdinbpl.1226:15|
 :skolemid |105|
 :pattern ( (state Heap@@48 Mask@@34) (|tripleLen1Bad'| Heap@@48 t_2@@20))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11647) (Mask@@35 T@PolymorphicMapType_11668) (t_2@@21 T@Triple2DomainType) ) (!  (=> (state Heap@@49 Mask@@35) (= (|tripleLen2Bad'| Heap@@49 t_2@@21) (|tripleLen2Bad#frame| EmptyFrame t_2@@21)))
 :qid |stdinbpl.1290:15|
 :skolemid |109|
 :pattern ( (state Heap@@49 Mask@@35) (|tripleLen2Bad'| Heap@@49 t_2@@21))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11647) (Mask@@36 T@PolymorphicMapType_11668) (t_2@@22 T@Triple3DomainType) ) (!  (=> (state Heap@@50 Mask@@36) (= (|tripleLen3Bad'| Heap@@50 t_2@@22) (|tripleLen3Bad#frame| EmptyFrame t_2@@22)))
 :qid |stdinbpl.1354:15|
 :skolemid |113|
 :pattern ( (state Heap@@50 Mask@@36) (|tripleLen3Bad'| Heap@@50 t_2@@22))
)))
(assert (forall ((x@@15 Int) (l_2@@19 T@List2DomainType) ) (! (= x@@15 (get_List1_x (RList1 x@@15 l_2@@19)))
 :qid |stdinbpl.222:15|
 :skolemid |22|
 :pattern ( (RList1 x@@15 l_2@@19))
)))
(assert (forall ((x@@16 Int) (l_2@@20 T@List2DomainType) ) (! (= l_2@@20 (get_List1_l (RList1 x@@16 l_2@@20)))
 :qid |stdinbpl.228:15|
 :skolemid |23|
 :pattern ( (RList1 x@@16 l_2@@20))
)))
(assert (forall ((x@@17 Int) (l_2@@21 T@List1DomainType) ) (! (= x@@17 (get_List2_x (NonEmpty x@@17 l_2@@21)))
 :qid |stdinbpl.293:15|
 :skolemid |29|
 :pattern ( (NonEmpty x@@17 l_2@@21))
)))
(assert (forall ((x@@18 Int) (l_2@@22 T@List1DomainType) ) (! (= l_2@@22 (get_List2_l (NonEmpty x@@18 l_2@@22)))
 :qid |stdinbpl.299:15|
 :skolemid |30|
 :pattern ( (NonEmpty x@@18 l_2@@22))
)))
(assert (forall ((x@@19 Int) (y@@2 T@MList2DomainType) ) (! (= x@@19 (get_MList1_x (MRList1 x@@19 y@@2)))
 :qid |stdinbpl.367:15|
 :skolemid |36|
 :pattern ( (MRList1 x@@19 y@@2))
)))
(assert (forall ((x@@20 Int) (y@@3 T@MList2DomainType) ) (! (= y@@3 (get_MList1_y (MRList1 x@@20 y@@3)))
 :qid |stdinbpl.373:15|
 :skolemid |37|
 :pattern ( (MRList1 x@@20 y@@3))
)))
(assert (forall ((y@@4 Int) (l_2@@23 T@MList1DomainType) ) (! (= y@@4 (get_MList2_y (MNonEmpty y@@4 l_2@@23)))
 :qid |stdinbpl.438:15|
 :skolemid |43|
 :pattern ( (MNonEmpty y@@4 l_2@@23))
)))
(assert (forall ((y@@5 Int) (l_2@@24 T@MList1DomainType) ) (! (= l_2@@24 (get_MList2_l (MNonEmpty y@@5 l_2@@24)))
 :qid |stdinbpl.444:15|
 :skolemid |44|
 :pattern ( (MNonEmpty y@@5 l_2@@24))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11647) (Mask@@37 T@PolymorphicMapType_11668) (l_2@@25 T@List2DomainType) ) (!  (=> (and (state Heap@@51 Mask@@37) (< AssumeFunctionsAbove 0)) (= (len2Bad Heap@@51 l_2@@25) (ite (= l_2@@25 Empty) 0 (+ 1 (|len2Bad'| Heap@@51 l_2@@25)))))
 :qid |stdinbpl.771:15|
 :skolemid |76|
 :pattern ( (state Heap@@51 Mask@@37) (len2Bad Heap@@51 l_2@@25))
)))
(assert (forall ((x@@21 T@Triple2DomainType) ) (! (= x@@21 (get_Triple1_x (triple1 x@@21)))
 :qid |stdinbpl.509:15|
 :skolemid |50|
 :pattern ( (triple1 x@@21))
)))
(assert (forall ((t_2@@23 T@Triple1DomainType) ) (! (= t_2@@23 (triple1 (get_Triple1_x t_2@@23)))
 :qid |stdinbpl.521:15|
 :skolemid |52|
 :pattern ( (Triple1_tag t_2@@23))
 :pattern ( (get_Triple1_x t_2@@23))
)))
(assert (forall ((x@@22 T@Triple3DomainType) ) (! (= x@@22 (get_Triple2_x (triple2 x@@22)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (triple2 x@@22))
)))
(assert (forall ((t_2@@24 T@Triple2DomainType) ) (! (= t_2@@24 (triple2 (get_Triple2_x t_2@@24)))
 :qid |stdinbpl.580:15|
 :skolemid |58|
 :pattern ( (Triple2_tag t_2@@24))
 :pattern ( (get_Triple2_x t_2@@24))
)))
(assert (forall ((x@@23 T@Triple1DomainType) ) (! (= x@@23 (get_Triple3_x (triple3 x@@23)))
 :qid |stdinbpl.633:15|
 :skolemid |62|
 :pattern ( (triple3 x@@23))
)))
(assert (forall ((i@@0 Int) ) (! (= i@@0 (get_Triple3_i (nil i@@0)))
 :qid |stdinbpl.639:15|
 :skolemid |63|
 :pattern ( (nil i@@0))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11647) (o T@Ref) (f_3 T@Field_11707_31250) (v T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@52) (store (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@52) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@52) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@52) (store (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@52) o f_3 v)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11647) (o@@0 T@Ref) (f_3@@0 T@Field_11707_31383) (v@@0 T@PolymorphicMapType_12196) ) (! (succHeap Heap@@53 (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@53) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@53) (store (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@53) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@53) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@53) (store (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@53) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11647) (o@@1 T@Ref) (f_3@@1 T@Field_11720_11721) (v@@1 T@Ref) ) (! (succHeap Heap@@54 (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@54) (store (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@54) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@54) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@54) (store (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@54) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@54) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11647) (o@@2 T@Ref) (f_3@@2 T@Field_11707_53) (v@@2 Bool) ) (! (succHeap Heap@@55 (PolymorphicMapType_11647 (store (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@55) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11647 (store (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@55) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31427#PolymorphicMapType_11647| Heap@@55) (|PolymorphicMapType_11647_11707_31250#PolymorphicMapType_11647| Heap@@55)))
)))
(assert (forall ((t_2@@25 T@List1DomainType) ) (! (= t_2@@25 (RList1 (get_List1_x t_2@@25) (get_List1_l t_2@@25)))
 :qid |stdinbpl.240:15|
 :skolemid |25|
 :pattern ( (List1_tag t_2@@25))
 :pattern ( (get_List1_x t_2@@25))
 :pattern ( (get_List1_l t_2@@25))
)))
(assert (forall ((t_2@@26 T@MList1DomainType) ) (! (= t_2@@26 (MRList1 (get_MList1_x t_2@@26) (get_MList1_y t_2@@26)))
 :qid |stdinbpl.385:15|
 :skolemid |39|
 :pattern ( (MList1_tag t_2@@26))
 :pattern ( (get_MList1_x t_2@@26))
 :pattern ( (get_MList1_y t_2@@26))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_11720_11721) (Heap@@56 T@PolymorphicMapType_11647) ) (!  (=> (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@56) o@@3 $allocated) (select (|PolymorphicMapType_11647_7323_53#PolymorphicMapType_11647| Heap@@56) (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@56) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11647_7326_7327#PolymorphicMapType_11647| Heap@@56) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_11707_31250) (v_1@@0 T@FrameType) (q T@Field_11707_31250) (w@@0 T@FrameType) (r T@Field_11707_31250) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11707_11707 p@@1 v_1@@0 q w@@0) (InsidePredicate_11707_11707 q w@@0 r u)) (InsidePredicate_11707_11707 p@@1 v_1@@0 r u))
 :qid |stdinbpl.179:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11707_11707 p@@1 v_1@@0 q w@@0) (InsidePredicate_11707_11707 q w@@0 r u))
)))
(assert (forall ((t_2@@27 T@List2DomainType) ) (!  (or (= t_2@@27 Empty) (= t_2@@27 (NonEmpty (get_List2_x t_2@@27) (get_List2_l t_2@@27))))
 :qid |stdinbpl.314:15|
 :skolemid |32|
 :pattern ( (List2_tag t_2@@27))
 :pattern ( (get_List2_x t_2@@27))
 :pattern ( (get_List2_l t_2@@27))
)))
(assert (forall ((t_2@@28 T@MList2DomainType) ) (!  (or (= t_2@@28 MEmpty) (= t_2@@28 (MNonEmpty (get_MList2_y t_2@@28) (get_MList2_l t_2@@28))))
 :qid |stdinbpl.459:15|
 :skolemid |46|
 :pattern ( (MList2_tag t_2@@28))
 :pattern ( (get_MList2_y t_2@@28))
 :pattern ( (get_MList2_l t_2@@28))
)))
(assert (forall ((t_2@@29 T@Triple3DomainType) ) (!  (or (= t_2@@29 (triple3 (get_Triple3_x t_2@@29))) (= t_2@@29 (nil (get_Triple3_i t_2@@29))))
 :qid |stdinbpl.657:15|
 :skolemid |66|
 :pattern ( (Triple3_tag t_2@@29))
 :pattern ( (get_Triple3_i t_2@@29))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@57 T@PolymorphicMapType_11647) (Mask@@38 T@PolymorphicMapType_11668) (l_2@@26 T@List2DomainType) ) (!  (=> (and (state Heap@@57 Mask@@38) (< AssumeFunctionsAbove 5)) (= (len2 Heap@@57 l_2@@26) (ite (= l_2@@26 Empty) 0 (+ 1 (|len2'| Heap@@57 (get_List1_l (get_List2_l l_2@@26)))))))
 :qid |stdinbpl.707:15|
 :skolemid |72|
 :pattern ( (state Heap@@57 Mask@@38) (len2 Heap@@57 l_2@@26))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_11647) (Mask@@39 T@PolymorphicMapType_11668) (l_2@@27 T@MList2DomainType) ) (!  (=> (and (state Heap@@58 Mask@@39) (< AssumeFunctionsAbove 7)) (= (mlen2 Heap@@58 l_2@@27) (ite (= l_2@@27 MEmpty) 0 (+ 1 (|mlen2'| Heap@@58 (get_MList1_y (get_MList2_l l_2@@27)))))))
 :qid |stdinbpl.963:15|
 :skolemid |88|
 :pattern ( (state Heap@@58 Mask@@39) (mlen2 Heap@@58 l_2@@27))
)))
; Valid

