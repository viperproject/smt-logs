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
(declare-sort T@Field_34304_53 0)
(declare-sort T@Field_34317_34318 0)
(declare-sort T@Field_37845_1759 0)
(declare-sort T@Field_38264_38265 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_37891_37892 0)
(declare-sort T@ArrayDomainType 0)
(declare-sort T@Field_41603_41608 0)
(declare-sort T@Field_19861_19964 0)
(declare-sort T@Field_19861_41608 0)
(declare-sort T@Field_19963_1789 0)
(declare-sort T@Field_19963_19859 0)
(declare-sort T@Field_19963_53 0)
(declare-sort T@Field_19963_34318 0)
(declare-datatypes ((T@PolymorphicMapType_34265 0)) (((PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| (Array T@Ref T@Field_38264_38265 Real)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| (Array T@Ref T@Field_37891_37892 Real)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| (Array T@Ref T@Field_37845_1759 Real)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| (Array T@Ref T@Field_19963_19859 Real)) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| (Array T@Ref T@Field_19963_1789 Real)) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| (Array T@Ref T@Field_19963_53 Real)) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| (Array T@Ref T@Field_19963_34318 Real)) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| (Array T@Ref T@Field_41603_41608 Real)) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| (Array T@Ref T@Field_19861_19964 Real)) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| (Array T@Ref T@Field_34304_53 Real)) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| (Array T@Ref T@Field_34317_34318 Real)) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| (Array T@Ref T@Field_19861_41608 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34793 0)) (((PolymorphicMapType_34793 (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (Array T@Ref T@Field_37891_37892 Bool)) (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (Array T@Ref T@Field_37845_1759 Bool)) (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (Array T@Ref T@Field_34304_53 Bool)) (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (Array T@Ref T@Field_34317_34318 Bool)) (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (Array T@Ref T@Field_19861_19964 Bool)) (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (Array T@Ref T@Field_19861_41608 Bool)) (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (Array T@Ref T@Field_19963_19859 Bool)) (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (Array T@Ref T@Field_19963_1789 Bool)) (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (Array T@Ref T@Field_19963_53 Bool)) (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (Array T@Ref T@Field_19963_34318 Bool)) (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (Array T@Ref T@Field_38264_38265 Bool)) (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (Array T@Ref T@Field_41603_41608 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34244 0)) (((PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| (Array T@Ref T@Field_34304_53 Bool)) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| (Array T@Ref T@Field_34317_34318 T@Ref)) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| (Array T@Ref T@Field_37845_1759 Int)) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| (Array T@Ref T@Field_38264_38265 T@FrameType)) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| (Array T@Ref T@Field_37891_37892 T@ArrayDomainType)) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| (Array T@Ref T@Field_41603_41608 T@PolymorphicMapType_34793)) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| (Array T@Ref T@Field_19861_19964 T@FrameType)) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| (Array T@Ref T@Field_19861_41608 T@PolymorphicMapType_34793)) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| (Array T@Ref T@Field_19963_1789 Int)) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| (Array T@Ref T@Field_19963_19859 T@ArrayDomainType)) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| (Array T@Ref T@Field_19963_53 Bool)) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| (Array T@Ref T@Field_19963_34318 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_34304_53)
(declare-fun val () T@Field_37845_1759)
(declare-fun elems_1 () T@Field_37891_37892)
(declare-fun size_3 () T@Field_37845_1759)
(declare-fun succHeap (T@PolymorphicMapType_34244 T@PolymorphicMapType_34244) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_34244 T@PolymorphicMapType_34244) Bool)
(declare-fun |AList#condqp1| (T@PolymorphicMapType_34244 T@Ref) Int)
(declare-fun |sk_AList#condqp1| (Int Int) Int)
(declare-fun len (T@ArrayDomainType) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun state (T@PolymorphicMapType_34244 T@PolymorphicMapType_34265) Bool)
(declare-fun length_1 (T@PolymorphicMapType_34244 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |AList#trigger_19963| (T@PolymorphicMapType_34244 T@Field_38264_38265) Bool)
(declare-fun AList (T@Ref) T@Field_38264_38265)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_34265) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_34793)
(declare-fun |itemAt'| (T@PolymorphicMapType_34244 T@Ref Int) Int)
(declare-fun dummyFunction_2037 (Int) Bool)
(declare-fun |itemAt#triggerStateless| (T@Ref Int) Int)
(declare-fun IsPredicateField_19963_19964 (T@Field_38264_38265) Bool)
(declare-fun |length'| (T@PolymorphicMapType_34244 T@Ref) Int)
(declare-fun |AList#everUsed_19963| (T@Field_38264_38265) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_34244 T@PolymorphicMapType_34244 T@PolymorphicMapType_34265) Bool)
(declare-fun HasDirectPerm_19963_19964 (T@PolymorphicMapType_34265 T@Ref T@Field_38264_38265) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19963 (T@Field_38264_38265) T@Field_41603_41608)
(declare-fun IsPredicateField_19861_117692 (T@Field_19861_19964) Bool)
(declare-fun HasDirectPerm_19861_19964 (T@PolymorphicMapType_34265 T@Ref T@Field_19861_19964) Bool)
(declare-fun PredicateMaskField_19861 (T@Field_19861_19964) T@Field_19861_41608)
(declare-fun IsWandField_19963_121770 (T@Field_38264_38265) Bool)
(declare-fun WandMaskField_19963 (T@Field_38264_38265) T@Field_41603_41608)
(declare-fun IsWandField_19861_121413 (T@Field_19861_19964) Bool)
(declare-fun WandMaskField_19861 (T@Field_19861_19964) T@Field_19861_41608)
(declare-fun |AList#sm| (T@Ref) T@Field_41603_41608)
(declare-fun dummyHeap () T@PolymorphicMapType_34244)
(declare-fun ZeroMask () T@PolymorphicMapType_34265)
(declare-fun InsidePredicate_38264_38264 (T@Field_38264_38265 T@FrameType T@Field_38264_38265 T@FrameType) Bool)
(declare-fun InsidePredicate_34304_34304 (T@Field_19861_19964 T@FrameType T@Field_19861_19964 T@FrameType) Bool)
(declare-fun IsPredicateField_19856_1759 (T@Field_37845_1759) Bool)
(declare-fun IsWandField_19856_1759 (T@Field_37845_1759) Bool)
(declare-fun IsPredicateField_19858_19859 (T@Field_37891_37892) Bool)
(declare-fun IsWandField_19858_19859 (T@Field_37891_37892) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19858_129907 (T@Field_19861_41608) Bool)
(declare-fun IsWandField_19858_129923 (T@Field_19861_41608) Bool)
(declare-fun IsPredicateField_19858_34318 (T@Field_34317_34318) Bool)
(declare-fun IsWandField_19858_34318 (T@Field_34317_34318) Bool)
(declare-fun IsPredicateField_19858_53 (T@Field_34304_53) Bool)
(declare-fun IsWandField_19858_53 (T@Field_34304_53) Bool)
(declare-fun IsPredicateField_19963_128936 (T@Field_41603_41608) Bool)
(declare-fun IsWandField_19963_128952 (T@Field_41603_41608) Bool)
(declare-fun IsPredicateField_19963_34318 (T@Field_19963_34318) Bool)
(declare-fun IsWandField_19963_34318 (T@Field_19963_34318) Bool)
(declare-fun IsPredicateField_19963_53 (T@Field_19963_53) Bool)
(declare-fun IsWandField_19963_53 (T@Field_19963_53) Bool)
(declare-fun IsPredicateField_19963_1789 (T@Field_19963_1789) Bool)
(declare-fun IsWandField_19963_1789 (T@Field_19963_1789) Bool)
(declare-fun IsPredicateField_19963_19859 (T@Field_19963_19859) Bool)
(declare-fun IsWandField_19963_19859 (T@Field_19963_19859) Bool)
(declare-fun HasDirectPerm_19963_117447 (T@PolymorphicMapType_34265 T@Ref T@Field_41603_41608) Bool)
(declare-fun HasDirectPerm_19963_34318 (T@PolymorphicMapType_34265 T@Ref T@Field_19963_34318) Bool)
(declare-fun HasDirectPerm_19963_53 (T@PolymorphicMapType_34265 T@Ref T@Field_19963_53) Bool)
(declare-fun HasDirectPerm_19963_19859 (T@PolymorphicMapType_34265 T@Ref T@Field_19963_19859) Bool)
(declare-fun HasDirectPerm_19963_1789 (T@PolymorphicMapType_34265 T@Ref T@Field_19963_1789) Bool)
(declare-fun HasDirectPerm_19861_116077 (T@PolymorphicMapType_34265 T@Ref T@Field_19861_41608) Bool)
(declare-fun HasDirectPerm_19861_34318 (T@PolymorphicMapType_34265 T@Ref T@Field_34317_34318) Bool)
(declare-fun HasDirectPerm_19861_53 (T@PolymorphicMapType_34265 T@Ref T@Field_34304_53) Bool)
(declare-fun HasDirectPerm_19858_19859 (T@PolymorphicMapType_34265 T@Ref T@Field_37891_37892) Bool)
(declare-fun HasDirectPerm_19861_1789 (T@PolymorphicMapType_34265 T@Ref T@Field_37845_1759) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun itemAt (T@PolymorphicMapType_34244 T@Ref Int) Int)
(declare-sort T@PairDomainType_37671_1671 0)
(declare-fun first_1_19849_1710 (T@PairDomainType_37671_1671) T@ArrayDomainType)
(declare-fun inv_loc (T@Ref) T@PairDomainType_37671_1671)
(declare-fun second_1_19852_1728 (T@PairDomainType_37671_1671) Int)
(declare-fun sumMask (T@PolymorphicMapType_34265 T@PolymorphicMapType_34265 T@PolymorphicMapType_34265) Bool)
(declare-fun |itemAt#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_19963_19964 (T@Field_38264_38265) Int)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_38264_34304 (T@Field_38264_38265 T@FrameType T@Field_19861_19964 T@FrameType) Bool)
(declare-fun InsidePredicate_34304_38264 (T@Field_19861_19964 T@FrameType T@Field_38264_38265 T@FrameType) Bool)
(assert (distinct val size_3)
)
(assert (forall ((Heap0 T@PolymorphicMapType_34244) (Heap1 T@PolymorphicMapType_34244) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_34244) (Heap1Heap T@PolymorphicMapType_34244) (this T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this))) (< (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this)) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap2Heap) this elems_1)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this))) (< (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this)) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap1Heap) this elems_1)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this))) (< (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this)) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap2Heap) this elems_1)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap2Heap) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap2Heap) this elems_1) (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this))) val) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap1Heap) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap1Heap) this elems_1) (|sk_AList#condqp1| (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this))) val)))) (= (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this)))
 :qid |stdinbpl.659:15|
 :skolemid |55|
 :pattern ( (|AList#condqp1| Heap2Heap this) (|AList#condqp1| Heap1Heap this) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap T@PolymorphicMapType_34244) (Mask T@PolymorphicMapType_34265) (this@@0 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (length_1 Heap this@@0) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap) this@@0 size_3)))
 :qid |stdinbpl.318:15|
 :skolemid |26|
 :pattern ( (state Heap Mask) (length_1 Heap this@@0))
 :pattern ( (state Heap Mask) (|length#triggerStateless| this@@0) (|AList#trigger_19963| Heap (AList this@@0)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_34244) (Mask@@0 T@PolymorphicMapType_34265) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_34244) (Heap1@@0 T@PolymorphicMapType_34244) (Heap2 T@PolymorphicMapType_34244) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_41603_41608) ) (!  (not (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_38264_38265) ) (!  (not (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_19963_34318) ) (!  (not (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19963_53) ) (!  (not (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_19963_1789) ) (!  (not (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19963_19859) ) (!  (not (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19861_41608) ) (!  (not (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19861_19964) ) (!  (not (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_34317_34318) ) (!  (not (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_34304_53) ) (!  (not (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_37845_1759) ) (!  (not (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_37891_37892) ) (!  (not (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34244) (this@@1 T@Ref) (index Int) ) (! (dummyFunction_2037 (|itemAt#triggerStateless| this@@1 index))
 :qid |stdinbpl.465:15|
 :skolemid |38|
 :pattern ( (|itemAt'| Heap@@1 this@@1 index))
)))
(assert (forall ((this@@2 T@Ref) ) (! (IsPredicateField_19963_19964 (AList this@@2))
 :qid |stdinbpl.629:15|
 :skolemid |50|
 :pattern ( (AList this@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_34244) (this@@3 T@Ref) ) (! (dummyFunction_2037 (|length#triggerStateless| this@@3))
 :qid |stdinbpl.312:15|
 :skolemid |25|
 :pattern ( (|length'| Heap@@2 this@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_34244) (this@@4 T@Ref) ) (! (|AList#everUsed_19963| (AList this@@4))
 :qid |stdinbpl.648:15|
 :skolemid |54|
 :pattern ( (|AList#trigger_19963| Heap@@3 (AList this@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_34244) (this@@5 T@Ref) ) (!  (and (= (length_1 Heap@@4 this@@5) (|length'| Heap@@4 this@@5)) (dummyFunction_2037 (|length#triggerStateless| this@@5)))
 :qid |stdinbpl.308:15|
 :skolemid |24|
 :pattern ( (length_1 Heap@@4 this@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34244) (ExhaleHeap T@PolymorphicMapType_34244) (Mask@@1 T@PolymorphicMapType_34265) (pm_f_31 T@Field_38264_38265) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_19963_19964 Mask@@1 null pm_f_31) (IsPredicateField_19963_19964 pm_f_31)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_31 T@Ref) (f_28 T@Field_37891_37892) ) (!  (=> (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31 f_28) (= (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@5) o2_31 f_28) (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap) o2_31 f_28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap) o2_31 f_28))
)) (forall ((o2_31@@0 T@Ref) (f_28@@0 T@Field_37845_1759) ) (!  (=> (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@0 f_28@@0) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@5) o2_31@@0 f_28@@0) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap) o2_31@@0 f_28@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap) o2_31@@0 f_28@@0))
))) (forall ((o2_31@@1 T@Ref) (f_28@@1 T@Field_34304_53) ) (!  (=> (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@1 f_28@@1) (= (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@5) o2_31@@1 f_28@@1) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap) o2_31@@1 f_28@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap) o2_31@@1 f_28@@1))
))) (forall ((o2_31@@2 T@Ref) (f_28@@2 T@Field_34317_34318) ) (!  (=> (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@2 f_28@@2) (= (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@5) o2_31@@2 f_28@@2) (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap) o2_31@@2 f_28@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap) o2_31@@2 f_28@@2))
))) (forall ((o2_31@@3 T@Ref) (f_28@@3 T@Field_19861_19964) ) (!  (=> (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@3 f_28@@3) (= (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@5) o2_31@@3 f_28@@3) (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap) o2_31@@3 f_28@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap) o2_31@@3 f_28@@3))
))) (forall ((o2_31@@4 T@Ref) (f_28@@4 T@Field_19861_41608) ) (!  (=> (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@4 f_28@@4) (= (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@5) o2_31@@4 f_28@@4) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap) o2_31@@4 f_28@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap) o2_31@@4 f_28@@4))
))) (forall ((o2_31@@5 T@Ref) (f_28@@5 T@Field_19963_19859) ) (!  (=> (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@5 f_28@@5) (= (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@5) o2_31@@5 f_28@@5) (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap) o2_31@@5 f_28@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap) o2_31@@5 f_28@@5))
))) (forall ((o2_31@@6 T@Ref) (f_28@@6 T@Field_19963_1789) ) (!  (=> (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@6 f_28@@6) (= (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@5) o2_31@@6 f_28@@6) (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap) o2_31@@6 f_28@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap) o2_31@@6 f_28@@6))
))) (forall ((o2_31@@7 T@Ref) (f_28@@7 T@Field_19963_53) ) (!  (=> (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@7 f_28@@7) (= (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@5) o2_31@@7 f_28@@7) (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap) o2_31@@7 f_28@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap) o2_31@@7 f_28@@7))
))) (forall ((o2_31@@8 T@Ref) (f_28@@8 T@Field_19963_34318) ) (!  (=> (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@8 f_28@@8) (= (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@5) o2_31@@8 f_28@@8) (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap) o2_31@@8 f_28@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap) o2_31@@8 f_28@@8))
))) (forall ((o2_31@@9 T@Ref) (f_28@@9 T@Field_38264_38265) ) (!  (=> (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@9 f_28@@9) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@5) o2_31@@9 f_28@@9) (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap) o2_31@@9 f_28@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap) o2_31@@9 f_28@@9))
))) (forall ((o2_31@@10 T@Ref) (f_28@@10 T@Field_41603_41608) ) (!  (=> (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) null (PredicateMaskField_19963 pm_f_31))) o2_31@@10 f_28@@10) (= (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@5) o2_31@@10 f_28@@10) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap) o2_31@@10 f_28@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap) o2_31@@10 f_28@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_19963_19964 pm_f_31))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34244) (ExhaleHeap@@0 T@PolymorphicMapType_34244) (Mask@@2 T@PolymorphicMapType_34265) (pm_f_31@@0 T@Field_19861_19964) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_19861_19964 Mask@@2 null pm_f_31@@0) (IsPredicateField_19861_117692 pm_f_31@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_31@@11 T@Ref) (f_28@@11 T@Field_37891_37892) ) (!  (=> (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@11 f_28@@11) (= (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@6) o2_31@@11 f_28@@11) (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@11 f_28@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@11 f_28@@11))
)) (forall ((o2_31@@12 T@Ref) (f_28@@12 T@Field_37845_1759) ) (!  (=> (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@12 f_28@@12) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@6) o2_31@@12 f_28@@12) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@12 f_28@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@12 f_28@@12))
))) (forall ((o2_31@@13 T@Ref) (f_28@@13 T@Field_34304_53) ) (!  (=> (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@13 f_28@@13) (= (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@6) o2_31@@13 f_28@@13) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@13 f_28@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@13 f_28@@13))
))) (forall ((o2_31@@14 T@Ref) (f_28@@14 T@Field_34317_34318) ) (!  (=> (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@14 f_28@@14) (= (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@6) o2_31@@14 f_28@@14) (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@14 f_28@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@14 f_28@@14))
))) (forall ((o2_31@@15 T@Ref) (f_28@@15 T@Field_19861_19964) ) (!  (=> (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@15 f_28@@15) (= (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@6) o2_31@@15 f_28@@15) (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@15 f_28@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@15 f_28@@15))
))) (forall ((o2_31@@16 T@Ref) (f_28@@16 T@Field_19861_41608) ) (!  (=> (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@16 f_28@@16) (= (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) o2_31@@16 f_28@@16) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@16 f_28@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@16 f_28@@16))
))) (forall ((o2_31@@17 T@Ref) (f_28@@17 T@Field_19963_19859) ) (!  (=> (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@17 f_28@@17) (= (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@6) o2_31@@17 f_28@@17) (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@17 f_28@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@17 f_28@@17))
))) (forall ((o2_31@@18 T@Ref) (f_28@@18 T@Field_19963_1789) ) (!  (=> (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@18 f_28@@18) (= (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@6) o2_31@@18 f_28@@18) (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@18 f_28@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@18 f_28@@18))
))) (forall ((o2_31@@19 T@Ref) (f_28@@19 T@Field_19963_53) ) (!  (=> (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@19 f_28@@19) (= (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@6) o2_31@@19 f_28@@19) (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@19 f_28@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@19 f_28@@19))
))) (forall ((o2_31@@20 T@Ref) (f_28@@20 T@Field_19963_34318) ) (!  (=> (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@20 f_28@@20) (= (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@6) o2_31@@20 f_28@@20) (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@20 f_28@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@20 f_28@@20))
))) (forall ((o2_31@@21 T@Ref) (f_28@@21 T@Field_38264_38265) ) (!  (=> (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@21 f_28@@21) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@6) o2_31@@21 f_28@@21) (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@21 f_28@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@21 f_28@@21))
))) (forall ((o2_31@@22 T@Ref) (f_28@@22 T@Field_41603_41608) ) (!  (=> (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@6) null (PredicateMaskField_19861 pm_f_31@@0))) o2_31@@22 f_28@@22) (= (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@6) o2_31@@22 f_28@@22) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@22 f_28@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@0) o2_31@@22 f_28@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_19861_117692 pm_f_31@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34244) (ExhaleHeap@@1 T@PolymorphicMapType_34244) (Mask@@3 T@PolymorphicMapType_34265) (pm_f_31@@1 T@Field_38264_38265) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_19963_19964 Mask@@3 null pm_f_31@@1) (IsWandField_19963_121770 pm_f_31@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_31@@23 T@Ref) (f_28@@23 T@Field_37891_37892) ) (!  (=> (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@23 f_28@@23) (= (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@7) o2_31@@23 f_28@@23) (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@23 f_28@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@23 f_28@@23))
)) (forall ((o2_31@@24 T@Ref) (f_28@@24 T@Field_37845_1759) ) (!  (=> (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@24 f_28@@24) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@7) o2_31@@24 f_28@@24) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@24 f_28@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@24 f_28@@24))
))) (forall ((o2_31@@25 T@Ref) (f_28@@25 T@Field_34304_53) ) (!  (=> (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@25 f_28@@25) (= (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@7) o2_31@@25 f_28@@25) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@25 f_28@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@25 f_28@@25))
))) (forall ((o2_31@@26 T@Ref) (f_28@@26 T@Field_34317_34318) ) (!  (=> (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@26 f_28@@26) (= (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@7) o2_31@@26 f_28@@26) (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@26 f_28@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@26 f_28@@26))
))) (forall ((o2_31@@27 T@Ref) (f_28@@27 T@Field_19861_19964) ) (!  (=> (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@27 f_28@@27) (= (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@7) o2_31@@27 f_28@@27) (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@27 f_28@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@27 f_28@@27))
))) (forall ((o2_31@@28 T@Ref) (f_28@@28 T@Field_19861_41608) ) (!  (=> (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@28 f_28@@28) (= (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@7) o2_31@@28 f_28@@28) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@28 f_28@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@28 f_28@@28))
))) (forall ((o2_31@@29 T@Ref) (f_28@@29 T@Field_19963_19859) ) (!  (=> (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@29 f_28@@29) (= (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@7) o2_31@@29 f_28@@29) (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@29 f_28@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@29 f_28@@29))
))) (forall ((o2_31@@30 T@Ref) (f_28@@30 T@Field_19963_1789) ) (!  (=> (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@30 f_28@@30) (= (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@7) o2_31@@30 f_28@@30) (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@30 f_28@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@30 f_28@@30))
))) (forall ((o2_31@@31 T@Ref) (f_28@@31 T@Field_19963_53) ) (!  (=> (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@31 f_28@@31) (= (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@7) o2_31@@31 f_28@@31) (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@31 f_28@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@31 f_28@@31))
))) (forall ((o2_31@@32 T@Ref) (f_28@@32 T@Field_19963_34318) ) (!  (=> (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@32 f_28@@32) (= (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@7) o2_31@@32 f_28@@32) (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@32 f_28@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@32 f_28@@32))
))) (forall ((o2_31@@33 T@Ref) (f_28@@33 T@Field_38264_38265) ) (!  (=> (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@33 f_28@@33) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@7) o2_31@@33 f_28@@33) (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@33 f_28@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@33 f_28@@33))
))) (forall ((o2_31@@34 T@Ref) (f_28@@34 T@Field_41603_41608) ) (!  (=> (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) null (WandMaskField_19963 pm_f_31@@1))) o2_31@@34 f_28@@34) (= (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@7) o2_31@@34 f_28@@34) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@34 f_28@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@1) o2_31@@34 f_28@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_19963_121770 pm_f_31@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34244) (ExhaleHeap@@2 T@PolymorphicMapType_34244) (Mask@@4 T@PolymorphicMapType_34265) (pm_f_31@@2 T@Field_19861_19964) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_19861_19964 Mask@@4 null pm_f_31@@2) (IsWandField_19861_121413 pm_f_31@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_31@@35 T@Ref) (f_28@@35 T@Field_37891_37892) ) (!  (=> (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@35 f_28@@35) (= (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@8) o2_31@@35 f_28@@35) (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@35 f_28@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@35 f_28@@35))
)) (forall ((o2_31@@36 T@Ref) (f_28@@36 T@Field_37845_1759) ) (!  (=> (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@36 f_28@@36) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@8) o2_31@@36 f_28@@36) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@36 f_28@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@36 f_28@@36))
))) (forall ((o2_31@@37 T@Ref) (f_28@@37 T@Field_34304_53) ) (!  (=> (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@37 f_28@@37) (= (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@8) o2_31@@37 f_28@@37) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@37 f_28@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@37 f_28@@37))
))) (forall ((o2_31@@38 T@Ref) (f_28@@38 T@Field_34317_34318) ) (!  (=> (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@38 f_28@@38) (= (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@8) o2_31@@38 f_28@@38) (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@38 f_28@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@38 f_28@@38))
))) (forall ((o2_31@@39 T@Ref) (f_28@@39 T@Field_19861_19964) ) (!  (=> (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@39 f_28@@39) (= (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@8) o2_31@@39 f_28@@39) (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@39 f_28@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@39 f_28@@39))
))) (forall ((o2_31@@40 T@Ref) (f_28@@40 T@Field_19861_41608) ) (!  (=> (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@40 f_28@@40) (= (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) o2_31@@40 f_28@@40) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@40 f_28@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@40 f_28@@40))
))) (forall ((o2_31@@41 T@Ref) (f_28@@41 T@Field_19963_19859) ) (!  (=> (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@41 f_28@@41) (= (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@8) o2_31@@41 f_28@@41) (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@41 f_28@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@41 f_28@@41))
))) (forall ((o2_31@@42 T@Ref) (f_28@@42 T@Field_19963_1789) ) (!  (=> (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@42 f_28@@42) (= (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@8) o2_31@@42 f_28@@42) (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@42 f_28@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@42 f_28@@42))
))) (forall ((o2_31@@43 T@Ref) (f_28@@43 T@Field_19963_53) ) (!  (=> (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@43 f_28@@43) (= (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@8) o2_31@@43 f_28@@43) (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@43 f_28@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@43 f_28@@43))
))) (forall ((o2_31@@44 T@Ref) (f_28@@44 T@Field_19963_34318) ) (!  (=> (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@44 f_28@@44) (= (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@8) o2_31@@44 f_28@@44) (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@44 f_28@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@44 f_28@@44))
))) (forall ((o2_31@@45 T@Ref) (f_28@@45 T@Field_38264_38265) ) (!  (=> (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@45 f_28@@45) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@8) o2_31@@45 f_28@@45) (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@45 f_28@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@45 f_28@@45))
))) (forall ((o2_31@@46 T@Ref) (f_28@@46 T@Field_41603_41608) ) (!  (=> (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@8) null (WandMaskField_19861 pm_f_31@@2))) o2_31@@46 f_28@@46) (= (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@8) o2_31@@46 f_28@@46) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@46 f_28@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@2) o2_31@@46 f_28@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_19861_121413 pm_f_31@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34244) (ExhaleHeap@@3 T@PolymorphicMapType_34244) (Mask@@5 T@PolymorphicMapType_34265) (pm_f_31@@3 T@Field_38264_38265) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_19963_19964 Mask@@5 null pm_f_31@@3) (IsPredicateField_19963_19964 pm_f_31@@3)) (= (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@9) null (PredicateMaskField_19963 pm_f_31@@3)) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@3) null (PredicateMaskField_19963 pm_f_31@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_19963_19964 pm_f_31@@3) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@3) null (PredicateMaskField_19963 pm_f_31@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_34244) (ExhaleHeap@@4 T@PolymorphicMapType_34244) (Mask@@6 T@PolymorphicMapType_34265) (pm_f_31@@4 T@Field_19861_19964) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_19861_19964 Mask@@6 null pm_f_31@@4) (IsPredicateField_19861_117692 pm_f_31@@4)) (= (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@10) null (PredicateMaskField_19861 pm_f_31@@4)) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@4) null (PredicateMaskField_19861 pm_f_31@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_19861_117692 pm_f_31@@4) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@4) null (PredicateMaskField_19861 pm_f_31@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34244) (ExhaleHeap@@5 T@PolymorphicMapType_34244) (Mask@@7 T@PolymorphicMapType_34265) (pm_f_31@@5 T@Field_38264_38265) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_19963_19964 Mask@@7 null pm_f_31@@5) (IsWandField_19963_121770 pm_f_31@@5)) (= (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@11) null (WandMaskField_19963 pm_f_31@@5)) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@5) null (WandMaskField_19963 pm_f_31@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_19963_121770 pm_f_31@@5) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@5) null (WandMaskField_19963 pm_f_31@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_34244) (ExhaleHeap@@6 T@PolymorphicMapType_34244) (Mask@@8 T@PolymorphicMapType_34265) (pm_f_31@@6 T@Field_19861_19964) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_19861_19964 Mask@@8 null pm_f_31@@6) (IsWandField_19861_121413 pm_f_31@@6)) (= (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@12) null (WandMaskField_19861 pm_f_31@@6)) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@6) null (WandMaskField_19861 pm_f_31@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_19861_121413 pm_f_31@@6) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@6) null (WandMaskField_19861 pm_f_31@@6)))
)))
(assert (forall ((this@@6 T@Ref) (this2 T@Ref) ) (!  (=> (= (AList this@@6) (AList this2)) (= this@@6 this2))
 :qid |stdinbpl.639:15|
 :skolemid |52|
 :pattern ( (AList this@@6) (AList this2))
)))
(assert (forall ((this@@7 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|AList#sm| this@@7) (|AList#sm| this2@@0)) (= this@@7 this2@@0))
 :qid |stdinbpl.643:15|
 :skolemid |53|
 :pattern ( (|AList#sm| this@@7) (|AList#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34244) (ExhaleHeap@@7 T@PolymorphicMapType_34244) (Mask@@9 T@PolymorphicMapType_34265) (o_59 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@13) o_59 $allocated) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@7) o_59 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@7) o_59 $allocated))
)))
(assert (forall ((p T@Field_38264_38265) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_38264_38264 p v_1 p w))
 :qid |stdinbpl.241:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38264_38264 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19861_19964) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_34304_34304 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.241:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34304_34304 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_19856_1759 val)))
(assert  (not (IsWandField_19856_1759 val)))
(assert  (not (IsPredicateField_19858_19859 elems_1)))
(assert  (not (IsWandField_19858_19859 elems_1)))
(assert  (not (IsPredicateField_19856_1759 size_3)))
(assert  (not (IsWandField_19856_1759 size_3)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34244) (ExhaleHeap@@8 T@PolymorphicMapType_34244) (Mask@@10 T@PolymorphicMapType_34265) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_34265) (o_2@@11 T@Ref) (f_4@@11 T@Field_19861_41608) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@@11) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_19858_129907 f_4@@11))) (not (IsWandField_19858_129923 f_4@@11))) (<= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@@11) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@@11) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_34265) (o_2@@12 T@Ref) (f_4@@12 T@Field_34317_34318) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@@12) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_19858_34318 f_4@@12))) (not (IsWandField_19858_34318 f_4@@12))) (<= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@@12) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@@12) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_34265) (o_2@@13 T@Ref) (f_4@@13 T@Field_34304_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@@13) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_19858_53 f_4@@13))) (not (IsWandField_19858_53 f_4@@13))) (<= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@@13) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@@13) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_34265) (o_2@@14 T@Ref) (f_4@@14 T@Field_37845_1759) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@@14) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_19856_1759 f_4@@14))) (not (IsWandField_19856_1759 f_4@@14))) (<= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@@14) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@@14) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_34265) (o_2@@15 T@Ref) (f_4@@15 T@Field_37891_37892) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@@15) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_19858_19859 f_4@@15))) (not (IsWandField_19858_19859 f_4@@15))) (<= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@@15) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@@15) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_34265) (o_2@@16 T@Ref) (f_4@@16 T@Field_19861_19964) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@@16) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_19861_117692 f_4@@16))) (not (IsWandField_19861_121413 f_4@@16))) (<= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@@16) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@@16) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_34265) (o_2@@17 T@Ref) (f_4@@17 T@Field_41603_41608) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@@17) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_19963_128936 f_4@@17))) (not (IsWandField_19963_128952 f_4@@17))) (<= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@@17) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@@17) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_34265) (o_2@@18 T@Ref) (f_4@@18 T@Field_19963_34318) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@@18) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_19963_34318 f_4@@18))) (not (IsWandField_19963_34318 f_4@@18))) (<= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@@18) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@@18) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_34265) (o_2@@19 T@Ref) (f_4@@19 T@Field_19963_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@@19) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_19963_53 f_4@@19))) (not (IsWandField_19963_53 f_4@@19))) (<= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@@19) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@@19) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_34265) (o_2@@20 T@Ref) (f_4@@20 T@Field_19963_1789) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@@20) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_19963_1789 f_4@@20))) (not (IsWandField_19963_1789 f_4@@20))) (<= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@@20) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@@20) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_34265) (o_2@@21 T@Ref) (f_4@@21 T@Field_19963_19859) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@@21) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_19963_19859 f_4@@21))) (not (IsWandField_19963_19859 f_4@@21))) (<= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@@21) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@@21) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_34265) (o_2@@22 T@Ref) (f_4@@22 T@Field_38264_38265) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@@22) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_19963_19964 f_4@@22))) (not (IsWandField_19963_121770 f_4@@22))) (<= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@@22) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@@22) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_34265) (o_2@@23 T@Ref) (f_4@@23 T@Field_41603_41608) ) (! (= (HasDirectPerm_19963_117447 Mask@@23 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@@23) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19963_117447 Mask@@23 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_34265) (o_2@@24 T@Ref) (f_4@@24 T@Field_19963_34318) ) (! (= (HasDirectPerm_19963_34318 Mask@@24 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@@24) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19963_34318 Mask@@24 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_34265) (o_2@@25 T@Ref) (f_4@@25 T@Field_19963_53) ) (! (= (HasDirectPerm_19963_53 Mask@@25 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@@25) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19963_53 Mask@@25 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_34265) (o_2@@26 T@Ref) (f_4@@26 T@Field_38264_38265) ) (! (= (HasDirectPerm_19963_19964 Mask@@26 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@@26) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19963_19964 Mask@@26 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_34265) (o_2@@27 T@Ref) (f_4@@27 T@Field_19963_19859) ) (! (= (HasDirectPerm_19963_19859 Mask@@27 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@@27) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19963_19859 Mask@@27 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_34265) (o_2@@28 T@Ref) (f_4@@28 T@Field_19963_1789) ) (! (= (HasDirectPerm_19963_1789 Mask@@28 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@@28) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19963_1789 Mask@@28 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_34265) (o_2@@29 T@Ref) (f_4@@29 T@Field_19861_41608) ) (! (= (HasDirectPerm_19861_116077 Mask@@29 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@@29) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19861_116077 Mask@@29 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_34265) (o_2@@30 T@Ref) (f_4@@30 T@Field_34317_34318) ) (! (= (HasDirectPerm_19861_34318 Mask@@30 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@@30) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19861_34318 Mask@@30 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_34265) (o_2@@31 T@Ref) (f_4@@31 T@Field_34304_53) ) (! (= (HasDirectPerm_19861_53 Mask@@31 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@@31) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19861_53 Mask@@31 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_34265) (o_2@@32 T@Ref) (f_4@@32 T@Field_19861_19964) ) (! (= (HasDirectPerm_19861_19964 Mask@@32 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@@32) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19861_19964 Mask@@32 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_34265) (o_2@@33 T@Ref) (f_4@@33 T@Field_37891_37892) ) (! (= (HasDirectPerm_19858_19859 Mask@@33 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@@33) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19858_19859 Mask@@33 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_34265) (o_2@@34 T@Ref) (f_4@@34 T@Field_37845_1759) ) (! (= (HasDirectPerm_19861_1789 Mask@@34 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@@34) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19861_1789 Mask@@34 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.229:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34244) (ExhaleHeap@@9 T@PolymorphicMapType_34244) (Mask@@35 T@PolymorphicMapType_34265) (o_59@@0 T@Ref) (f_28@@47 T@Field_41603_41608) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@35) (=> (HasDirectPerm_19963_117447 Mask@@35 o_59@@0 f_28@@47) (= (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@15) o_59@@0 f_28@@47) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@9) o_59@@0 f_28@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@35) (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@@9) o_59@@0 f_28@@47))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_34244) (ExhaleHeap@@10 T@PolymorphicMapType_34244) (Mask@@36 T@PolymorphicMapType_34265) (o_59@@1 T@Ref) (f_28@@48 T@Field_19963_34318) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@36) (=> (HasDirectPerm_19963_34318 Mask@@36 o_59@@1 f_28@@48) (= (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@16) o_59@@1 f_28@@48) (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@10) o_59@@1 f_28@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@36) (select (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@@10) o_59@@1 f_28@@48))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_34244) (ExhaleHeap@@11 T@PolymorphicMapType_34244) (Mask@@37 T@PolymorphicMapType_34265) (o_59@@2 T@Ref) (f_28@@49 T@Field_19963_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@37) (=> (HasDirectPerm_19963_53 Mask@@37 o_59@@2 f_28@@49) (= (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@17) o_59@@2 f_28@@49) (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@11) o_59@@2 f_28@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@37) (select (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@@11) o_59@@2 f_28@@49))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_34244) (ExhaleHeap@@12 T@PolymorphicMapType_34244) (Mask@@38 T@PolymorphicMapType_34265) (o_59@@3 T@Ref) (f_28@@50 T@Field_38264_38265) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@38) (=> (HasDirectPerm_19963_19964 Mask@@38 o_59@@3 f_28@@50) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@18) o_59@@3 f_28@@50) (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@12) o_59@@3 f_28@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@38) (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@@12) o_59@@3 f_28@@50))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_34244) (ExhaleHeap@@13 T@PolymorphicMapType_34244) (Mask@@39 T@PolymorphicMapType_34265) (o_59@@4 T@Ref) (f_28@@51 T@Field_19963_19859) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@39) (=> (HasDirectPerm_19963_19859 Mask@@39 o_59@@4 f_28@@51) (= (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@19) o_59@@4 f_28@@51) (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@13) o_59@@4 f_28@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@39) (select (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@@13) o_59@@4 f_28@@51))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_34244) (ExhaleHeap@@14 T@PolymorphicMapType_34244) (Mask@@40 T@PolymorphicMapType_34265) (o_59@@5 T@Ref) (f_28@@52 T@Field_19963_1789) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@40) (=> (HasDirectPerm_19963_1789 Mask@@40 o_59@@5 f_28@@52) (= (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@20) o_59@@5 f_28@@52) (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@14) o_59@@5 f_28@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@40) (select (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@@14) o_59@@5 f_28@@52))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_34244) (ExhaleHeap@@15 T@PolymorphicMapType_34244) (Mask@@41 T@PolymorphicMapType_34265) (o_59@@6 T@Ref) (f_28@@53 T@Field_19861_41608) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@41) (=> (HasDirectPerm_19861_116077 Mask@@41 o_59@@6 f_28@@53) (= (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@21) o_59@@6 f_28@@53) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@15) o_59@@6 f_28@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@41) (select (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@@15) o_59@@6 f_28@@53))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_34244) (ExhaleHeap@@16 T@PolymorphicMapType_34244) (Mask@@42 T@PolymorphicMapType_34265) (o_59@@7 T@Ref) (f_28@@54 T@Field_34317_34318) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@42) (=> (HasDirectPerm_19861_34318 Mask@@42 o_59@@7 f_28@@54) (= (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@22) o_59@@7 f_28@@54) (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@16) o_59@@7 f_28@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@42) (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@@16) o_59@@7 f_28@@54))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_34244) (ExhaleHeap@@17 T@PolymorphicMapType_34244) (Mask@@43 T@PolymorphicMapType_34265) (o_59@@8 T@Ref) (f_28@@55 T@Field_34304_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@43) (=> (HasDirectPerm_19861_53 Mask@@43 o_59@@8 f_28@@55) (= (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@23) o_59@@8 f_28@@55) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@17) o_59@@8 f_28@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@43) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@@17) o_59@@8 f_28@@55))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_34244) (ExhaleHeap@@18 T@PolymorphicMapType_34244) (Mask@@44 T@PolymorphicMapType_34265) (o_59@@9 T@Ref) (f_28@@56 T@Field_19861_19964) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@44) (=> (HasDirectPerm_19861_19964 Mask@@44 o_59@@9 f_28@@56) (= (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@24) o_59@@9 f_28@@56) (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@18) o_59@@9 f_28@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@44) (select (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@@18) o_59@@9 f_28@@56))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_34244) (ExhaleHeap@@19 T@PolymorphicMapType_34244) (Mask@@45 T@PolymorphicMapType_34265) (o_59@@10 T@Ref) (f_28@@57 T@Field_37891_37892) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@45) (=> (HasDirectPerm_19858_19859 Mask@@45 o_59@@10 f_28@@57) (= (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@25) o_59@@10 f_28@@57) (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@19) o_59@@10 f_28@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@45) (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@@19) o_59@@10 f_28@@57))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_34244) (ExhaleHeap@@20 T@PolymorphicMapType_34244) (Mask@@46 T@PolymorphicMapType_34265) (o_59@@11 T@Ref) (f_28@@58 T@Field_37845_1759) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@46) (=> (HasDirectPerm_19861_1789 Mask@@46 o_59@@11 f_28@@58) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@26) o_59@@11 f_28@@58) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@20) o_59@@11 f_28@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@46) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@@20) o_59@@11 f_28@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_19861_41608) ) (! (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_34317_34318) ) (! (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_34304_53) ) (! (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_37845_1759) ) (! (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_37891_37892) ) (! (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_19861_19964) ) (! (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_41603_41608) ) (! (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_19963_34318) ) (! (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_19963_53) ) (! (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_19963_1789) ) (! (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_19963_19859) ) (! (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_38264_38265) ) (! (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_34244) (this@@8 T@Ref) (index@@0 Int) ) (!  (and (= (itemAt Heap@@27 this@@8 index@@0) (|itemAt'| Heap@@27 this@@8 index@@0)) (dummyFunction_2037 (|itemAt#triggerStateless| this@@8 index@@0)))
 :qid |stdinbpl.461:15|
 :skolemid |37|
 :pattern ( (itemAt Heap@@27 this@@8 index@@0))
)))
(assert (forall ((a_2 T@ArrayDomainType) (i Int) ) (!  (=> (and (<= 0 i) (< i (len a_2))) (and (= (first_1_19849_1710 (inv_loc (loc a_2 i))) a_2) (= (second_1_19852_1728 (inv_loc (loc a_2 i))) i)))
 :qid |stdinbpl.276:15|
 :skolemid |22|
 :pattern ( (loc a_2 i))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_34265) (SummandMask1 T@PolymorphicMapType_34265) (SummandMask2 T@PolymorphicMapType_34265) (o_2@@47 T@Ref) (f_4@@47 T@Field_19861_41608) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_34265) (SummandMask1@@0 T@PolymorphicMapType_34265) (SummandMask2@@0 T@PolymorphicMapType_34265) (o_2@@48 T@Ref) (f_4@@48 T@Field_34317_34318) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_34265) (SummandMask1@@1 T@PolymorphicMapType_34265) (SummandMask2@@1 T@PolymorphicMapType_34265) (o_2@@49 T@Ref) (f_4@@49 T@Field_34304_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_34265) (SummandMask1@@2 T@PolymorphicMapType_34265) (SummandMask2@@2 T@PolymorphicMapType_34265) (o_2@@50 T@Ref) (f_4@@50 T@Field_37845_1759) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_34265) (SummandMask1@@3 T@PolymorphicMapType_34265) (SummandMask2@@3 T@PolymorphicMapType_34265) (o_2@@51 T@Ref) (f_4@@51 T@Field_37891_37892) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_34265) (SummandMask1@@4 T@PolymorphicMapType_34265) (SummandMask2@@4 T@PolymorphicMapType_34265) (o_2@@52 T@Ref) (f_4@@52 T@Field_19861_19964) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_34265) (SummandMask1@@5 T@PolymorphicMapType_34265) (SummandMask2@@5 T@PolymorphicMapType_34265) (o_2@@53 T@Ref) (f_4@@53 T@Field_41603_41608) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_34265) (SummandMask1@@6 T@PolymorphicMapType_34265) (SummandMask2@@6 T@PolymorphicMapType_34265) (o_2@@54 T@Ref) (f_4@@54 T@Field_19963_34318) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_34265) (SummandMask1@@7 T@PolymorphicMapType_34265) (SummandMask2@@7 T@PolymorphicMapType_34265) (o_2@@55 T@Ref) (f_4@@55 T@Field_19963_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_34265) (SummandMask1@@8 T@PolymorphicMapType_34265) (SummandMask2@@8 T@PolymorphicMapType_34265) (o_2@@56 T@Ref) (f_4@@56 T@Field_19963_1789) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_34265) (SummandMask1@@9 T@PolymorphicMapType_34265) (SummandMask2@@9 T@PolymorphicMapType_34265) (o_2@@57 T@Ref) (f_4@@57 T@Field_19963_19859) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_34265) (SummandMask1@@10 T@PolymorphicMapType_34265) (SummandMask2@@10 T@PolymorphicMapType_34265) (o_2@@58 T@Ref) (f_4@@58 T@Field_38264_38265) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_34244) (Mask@@47 T@PolymorphicMapType_34265) (this@@9 T@Ref) (index@@1 Int) ) (!  (=> (and (state Heap@@28 Mask@@47) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 index@@1) (< index@@1 (length_1 Heap@@28 this@@9))) (= (itemAt Heap@@28 this@@9 index@@1) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@28) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@28) this@@9 elems_1) index@@1) val))))
 :qid |stdinbpl.471:15|
 :skolemid |39|
 :pattern ( (state Heap@@28 Mask@@47) (itemAt Heap@@28 this@@9 index@@1))
 :pattern ( (state Heap@@28 Mask@@47) (|itemAt#triggerStateless| this@@9 index@@1) (|AList#trigger_19963| Heap@@28 (AList this@@9)))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) ) (! (>= (len a_2@@0) 0)
 :qid |stdinbpl.282:15|
 :skolemid |23|
 :pattern ( (len a_2@@0))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_34244) (Mask@@48 T@PolymorphicMapType_34265) (this@@10 T@Ref) (index@@2 Int) ) (!  (=> (state Heap@@29 Mask@@48) (= (|itemAt'| Heap@@29 this@@10 index@@2) (|itemAt#frame| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@29) null (AList this@@10)) this@@10 index@@2)))
 :qid |stdinbpl.478:15|
 :skolemid |40|
 :pattern ( (state Heap@@29 Mask@@48) (|itemAt'| Heap@@29 this@@10 index@@2))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_34244) (Mask@@49 T@PolymorphicMapType_34265) (this@@11 T@Ref) ) (!  (=> (state Heap@@30 Mask@@49) (= (|length'| Heap@@30 this@@11) (|length#frame| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@30) null (AList this@@11)) this@@11)))
 :qid |stdinbpl.325:15|
 :skolemid |27|
 :pattern ( (state Heap@@30 Mask@@49) (|length'| Heap@@30 this@@11))
)))
(assert (forall ((this@@12 T@Ref) ) (! (= (getPredWandId_19963_19964 (AList this@@12)) 0)
 :qid |stdinbpl.633:15|
 :skolemid |51|
 :pattern ( (AList this@@12))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_34244) (Mask@@50 T@PolymorphicMapType_34265) (this@@13 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@50) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@31) null (AList this@@13)) this@@13))) (>= (|length'| Heap@@31 this@@13) 0))
 :qid |stdinbpl.331:15|
 :skolemid |28|
 :pattern ( (state Heap@@31 Mask@@50) (|length'| Heap@@31 this@@13))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_34244) (o_49 T@Ref) (f_70 T@Field_41603_41608) (v T@PolymorphicMapType_34793) ) (! (succHeap Heap@@32 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@32) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@32) o_49 f_70 v) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@32) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@32) o_49 f_70 v) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@32) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_34244) (o_49@@0 T@Ref) (f_70@@0 T@Field_19963_19859) (v@@0 T@ArrayDomainType) ) (! (succHeap Heap@@33 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@33) (store (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@33) o_49@@0 f_70@@0 v@@0) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@33) (store (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@33) o_49@@0 f_70@@0 v@@0) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@33) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_34244) (o_49@@1 T@Ref) (f_70@@1 T@Field_38264_38265) (v@@1 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@34) (store (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@34) o_49@@1 f_70@@1 v@@1) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@34) (store (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@34) o_49@@1 f_70@@1 v@@1) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@34) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_34244) (o_49@@2 T@Ref) (f_70@@2 T@Field_19963_1789) (v@@2 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@35) (store (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@35) o_49@@2 f_70@@2 v@@2) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@35) (store (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@35) o_49@@2 f_70@@2 v@@2) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@35) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_34244) (o_49@@3 T@Ref) (f_70@@3 T@Field_19963_34318) (v@@3 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@36) (store (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@36) o_49@@3 f_70@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@36) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@36) (store (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@36) o_49@@3 f_70@@3 v@@3)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_34244) (o_49@@4 T@Ref) (f_70@@4 T@Field_19963_53) (v@@4 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@37) (store (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@37) o_49@@4 f_70@@4 v@@4) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@37) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@37) (store (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@37) o_49@@4 f_70@@4 v@@4) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_34244) (o_49@@5 T@Ref) (f_70@@5 T@Field_19861_41608) (v@@5 T@PolymorphicMapType_34793) ) (! (succHeap Heap@@38 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@38) (store (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@38) o_49@@5 f_70@@5 v@@5) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@38) (store (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@38) o_49@@5 f_70@@5 v@@5) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@38) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_34244) (o_49@@6 T@Ref) (f_70@@6 T@Field_37891_37892) (v@@6 T@ArrayDomainType) ) (! (succHeap Heap@@39 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@39) (store (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@39) o_49@@6 f_70@@6 v@@6) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@39) (store (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@39) o_49@@6 f_70@@6 v@@6) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@39) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_34244) (o_49@@7 T@Ref) (f_70@@7 T@Field_19861_19964) (v@@7 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@40) (store (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@40) o_49@@7 f_70@@7 v@@7) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@40) (store (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@40) o_49@@7 f_70@@7 v@@7) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@40) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_34244) (o_49@@8 T@Ref) (f_70@@8 T@Field_37845_1759) (v@@8 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@41) (store (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@41) o_49@@8 f_70@@8 v@@8) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@41) (store (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@41) o_49@@8 f_70@@8 v@@8) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@41) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_34244) (o_49@@9 T@Ref) (f_70@@9 T@Field_34317_34318) (v@@9 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@42) (store (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@42) o_49@@9 f_70@@9 v@@9) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@42) (store (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@42) o_49@@9 f_70@@9 v@@9) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@42) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_34244) (o_49@@10 T@Ref) (f_70@@10 T@Field_34304_53) (v@@10 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_34244 (store (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@43) o_49@@10 f_70@@10 v@@10) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34244 (store (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@43) o_49@@10 f_70@@10 v@@10) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@43) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@43)))
)))
(assert (forall ((this@@14 T@Ref) ) (! (= (PredicateMaskField_19963 (AList this@@14)) (|AList#sm| this@@14))
 :qid |stdinbpl.625:15|
 :skolemid |49|
 :pattern ( (PredicateMaskField_19963 (AList this@@14)))
)))
(assert (forall ((o_49@@11 T@Ref) (f_30 T@Field_34317_34318) (Heap@@44 T@PolymorphicMapType_34244) ) (!  (=> (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@44) o_49@@11 $allocated) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@44) (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@44) o_49@@11 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@44) o_49@@11 f_30))
)))
(assert (forall ((p@@2 T@Field_38264_38265) (v_1@@1 T@FrameType) (q T@Field_38264_38265) (w@@1 T@FrameType) (r T@Field_38264_38265) (u T@FrameType) ) (!  (=> (and (InsidePredicate_38264_38264 p@@2 v_1@@1 q w@@1) (InsidePredicate_38264_38264 q w@@1 r u)) (InsidePredicate_38264_38264 p@@2 v_1@@1 r u))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38264_38264 p@@2 v_1@@1 q w@@1) (InsidePredicate_38264_38264 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_38264_38265) (v_1@@2 T@FrameType) (q@@0 T@Field_38264_38265) (w@@2 T@FrameType) (r@@0 T@Field_19861_19964) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_38264_38264 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_38264_34304 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_38264_34304 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38264_38264 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_38264_34304 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_38264_38265) (v_1@@3 T@FrameType) (q@@1 T@Field_19861_19964) (w@@3 T@FrameType) (r@@1 T@Field_38264_38265) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_38264_34304 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_34304_38264 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_38264_38264 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38264_34304 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_34304_38264 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_38264_38265) (v_1@@4 T@FrameType) (q@@2 T@Field_19861_19964) (w@@4 T@FrameType) (r@@2 T@Field_19861_19964) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_38264_34304 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_34304_34304 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_38264_34304 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38264_34304 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_34304_34304 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_19861_19964) (v_1@@5 T@FrameType) (q@@3 T@Field_38264_38265) (w@@5 T@FrameType) (r@@3 T@Field_38264_38265) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_34304_38264 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_38264_38264 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_34304_38264 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34304_38264 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_38264_38264 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_19861_19964) (v_1@@6 T@FrameType) (q@@4 T@Field_38264_38265) (w@@6 T@FrameType) (r@@4 T@Field_19861_19964) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_34304_38264 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_38264_34304 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_34304_34304 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34304_38264 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_38264_34304 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_19861_19964) (v_1@@7 T@FrameType) (q@@5 T@Field_19861_19964) (w@@7 T@FrameType) (r@@5 T@Field_38264_38265) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_34304_34304 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_34304_38264 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_34304_38264 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34304_34304 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_34304_38264 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_19861_19964) (v_1@@8 T@FrameType) (q@@6 T@Field_19861_19964) (w@@8 T@FrameType) (r@@6 T@Field_19861_19964) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_34304_34304 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_34304_34304 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_34304_34304 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.236:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34304_34304 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_34304_34304 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_34265)
(declare-fun this@@15 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_34265)
(declare-fun k_24 () Int)
(declare-fun Heap@@45 () T@PolymorphicMapType_34244)
(declare-fun PostHeap@0 () T@PolymorphicMapType_34244)
(declare-fun j () Int)
(declare-fun elem_1 () Int)
(declare-fun k_23 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_34265)
(declare-fun j@0 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_34244)
(declare-fun k_21 () Int)
(declare-fun Mask@1 () T@PolymorphicMapType_34265)
(declare-fun Mask@3 () T@PolymorphicMapType_34265)
(declare-fun k_13 () Int)
(declare-fun Heap@20 () T@PolymorphicMapType_34244)
(declare-fun j@1 () Int)
(declare-fun Mask@34 () T@PolymorphicMapType_34265)
(declare-fun Mask@33 () T@PolymorphicMapType_34265)
(declare-fun Heap@18 () T@PolymorphicMapType_34244)
(declare-fun Heap@17 () T@PolymorphicMapType_34244)
(declare-fun Heap@19 () T@PolymorphicMapType_34244)
(declare-fun newPMask@1 () T@PolymorphicMapType_34793)
(declare-fun Heap@14 () T@PolymorphicMapType_34244)
(declare-fun Heap@15 () T@PolymorphicMapType_34244)
(declare-fun Heap@16 () T@PolymorphicMapType_34244)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@32 () T@PolymorphicMapType_34265)
(declare-fun Mask@31 () T@PolymorphicMapType_34265)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_34265)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_19859 (T@ArrayDomainType) T@FrameType)
(declare-fun FrameFragment_1789 (Int) T@FrameType)
(declare-fun QPMask@8 () T@PolymorphicMapType_34265)
(declare-fun Mask@29 () T@PolymorphicMapType_34265)
(declare-fun Mask@28 () T@PolymorphicMapType_34265)
(declare-fun Mask@30 () T@PolymorphicMapType_34265)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun Heap@13 () T@PolymorphicMapType_34244)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun i_27 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_34244)
(declare-fun QPMask@1 () T@PolymorphicMapType_34265)
(declare-fun a_2@@1 () T@ArrayDomainType)
(declare-fun i_51 () Int)
(declare-fun t_2@1 () Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_34265)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_34244)
(declare-fun i_42 () Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun Mask@14 () T@PolymorphicMapType_34265)
(declare-fun i_16 () Int)
(declare-fun perm@3 () Real)
(declare-fun Mask@12 () T@PolymorphicMapType_34265)
(declare-fun QPMask@2 () T@PolymorphicMapType_34265)
(declare-fun perm@4 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_34265)
(declare-fun perm@5 () Real)
(declare-fun t_2@2 () Int)
(declare-fun i_25_1 () Int)
(declare-fun Heap@4 () T@PolymorphicMapType_34244)
(declare-fun i_23_1 () Int)
(declare-fun Mask@27 () T@PolymorphicMapType_34265)
(declare-fun Mask@26 () T@PolymorphicMapType_34265)
(declare-fun perm@14 () Real)
(declare-fun neverTriggered16 (Int) Bool)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_34265)
(declare-fun Mask@25 () T@PolymorphicMapType_34265)
(declare-fun perm@13 () Real)
(declare-fun QPMask@3 () T@PolymorphicMapType_34265)
(declare-fun perm@9 () Real)
(declare-fun perm@6 () Real)
(declare-fun Mask@15 () T@PolymorphicMapType_34265)
(declare-fun perm@7 () Real)
(declare-fun Mask@16 () T@PolymorphicMapType_34265)
(declare-fun perm@8 () Real)
(declare-fun Mask@17 () T@PolymorphicMapType_34265)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun k_6_2 () Int)
(declare-fun Heap@12 () T@PolymorphicMapType_34244)
(declare-fun k_4_2 () Int)
(declare-fun Mask@24 () T@PolymorphicMapType_34265)
(declare-fun Mask@23 () T@PolymorphicMapType_34265)
(declare-fun Heap@10 () T@PolymorphicMapType_34244)
(declare-fun Heap@9 () T@PolymorphicMapType_34244)
(declare-fun Heap@11 () T@PolymorphicMapType_34244)
(declare-fun newPMask@0 () T@PolymorphicMapType_34793)
(declare-fun Heap@6 () T@PolymorphicMapType_34244)
(declare-fun Heap@7 () T@PolymorphicMapType_34244)
(declare-fun Heap@8 () T@PolymorphicMapType_34244)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@22 () T@PolymorphicMapType_34265)
(declare-fun Mask@21 () T@PolymorphicMapType_34265)
(declare-fun neverTriggered18 (Int) Bool)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_34265)
(declare-fun QPMask@4 () T@PolymorphicMapType_34265)
(declare-fun perm@10 () Real)
(declare-fun Mask@18 () T@PolymorphicMapType_34265)
(declare-fun perm@11 () Real)
(declare-fun Mask@19 () T@PolymorphicMapType_34265)
(declare-fun perm@12 () Real)
(declare-fun Mask@20 () T@PolymorphicMapType_34265)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) Int)
(declare-fun Heap@5 () T@PolymorphicMapType_34244)
(declare-fun Heap@3 () T@PolymorphicMapType_34244)
(declare-fun t_2@0 () Int)
(declare-fun i_11_1 () Int)
(declare-fun i_9_1 () Int)
(declare-fun Mask@11 () T@PolymorphicMapType_34265)
(declare-fun Mask@10 () T@PolymorphicMapType_34265)
(declare-fun perm@2 () Real)
(declare-fun neverTriggered13 (Int) Bool)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun Mask@9 () T@PolymorphicMapType_34265)
(declare-fun perm@1 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_34265)
(declare-fun perm@0 () Real)
(declare-fun Heap@2 () T@PolymorphicMapType_34244)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_34265)
(declare-fun Mask@6 () T@PolymorphicMapType_34265)
(declare-fun Mask@5 () T@PolymorphicMapType_34265)
(declare-fun Mask@7 () T@PolymorphicMapType_34265)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun Heap@0 () T@PolymorphicMapType_34244)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@4 () T@PolymorphicMapType_34265)
(declare-fun k_8 () Int)
(set-info :boogie-vc-id insert)
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
 (=> (= (ControlFlow 0 0) 355) (let ((anon188_Then_correct  (=> (= (ControlFlow 0 347) (- 0 346)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15)))))))
(let ((anon191_Then_correct  (and (=> (= (ControlFlow 0 341) (- 0 343)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 341) (- 0 342)) (<= 0 (- k_24 1))) (=> (<= 0 (- k_24 1)) (=> (= (ControlFlow 0 341) (- 0 340)) (< (- k_24 1) (length_1 Heap@@45 this@@15)))))))))
(let ((anon190_Then_correct  (and (=> (= (ControlFlow 0 337) (- 0 339)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 337) (- 0 338)) (<= 0 k_24)) (=> (<= 0 k_24) (=> (= (ControlFlow 0 337) (- 0 336)) (< k_24 (length_1 PostHeap@0 this@@15)))))))))
(let ((anon25_correct true))
(let ((anon189_Then_correct  (=> (and (< j k_24) (< k_24 (length_1 PostHeap@0 this@@15))) (and (and (=> (= (ControlFlow 0 344) 337) anon190_Then_correct) (=> (= (ControlFlow 0 344) 341) anon191_Then_correct)) (=> (= (ControlFlow 0 344) 334) anon25_correct)))))
(let ((anon189_Else_correct  (=> (and (not (and (< j k_24) (< k_24 (length_1 PostHeap@0 this@@15)))) (= (ControlFlow 0 335) 334)) anon25_correct)))
(let ((anon187_Then_correct  (=> (< j k_24) (and (and (=> (= (ControlFlow 0 348) 347) anon188_Then_correct) (=> (= (ControlFlow 0 348) 344) anon189_Then_correct)) (=> (= (ControlFlow 0 348) 335) anon189_Else_correct)))))
(let ((anon187_Else_correct  (=> (<= k_24 j) (and (=> (= (ControlFlow 0 345) 344) anon189_Then_correct) (=> (= (ControlFlow 0 345) 335) anon189_Else_correct)))))
(let ((anon186_Else_correct true))
(let ((anon185_Else_correct  (=> (= (itemAt PostHeap@0 this@@15 j) elem_1) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 349) 333) anon186_Else_correct) (=> (= (ControlFlow 0 349) 348) anon187_Then_correct)) (=> (= (ControlFlow 0 349) 345) anon187_Else_correct))))))
(let ((anon185_Then_correct  (and (=> (= (ControlFlow 0 330) (- 0 332)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 330) (- 0 331)) (<= 0 j)) (=> (<= 0 j) (=> (= (ControlFlow 0 330) (- 0 329)) (< j (length_1 PostHeap@0 this@@15)))))))))
(let ((anon181_Else_correct  (=> (forall ((k_1 Int) ) (!  (=> (and (<= 0 k_1) (< k_1 j)) (= (itemAt PostHeap@0 this@@15 k_1) (itemAt Heap@@45 this@@15 k_1)))
 :qid |stdinbpl.1731:20|
 :skolemid |99|
 :pattern ( (|itemAt#frame| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@45) null (AList this@@15)) this@@15 k_1))
)) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 350) 330) anon185_Then_correct) (=> (= (ControlFlow 0 350) 349) anon185_Else_correct))))))
(let ((anon184_Then_correct  (and (=> (= (ControlFlow 0 325) (- 0 327)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 325) (- 0 326)) (<= 0 k_23)) (=> (<= 0 k_23) (=> (= (ControlFlow 0 325) (- 0 324)) (< k_23 (length_1 Heap@@45 this@@15)))))))))
(let ((anon183_Then_correct  (and (=> (= (ControlFlow 0 321) (- 0 323)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 321) (- 0 322)) (<= 0 k_23)) (=> (<= 0 k_23) (=> (= (ControlFlow 0 321) (- 0 320)) (< k_23 (length_1 PostHeap@0 this@@15)))))))))
(let ((anon13_correct true))
(let ((anon182_Then_correct  (=> (and (<= 0 k_23) (< k_23 j)) (and (and (=> (= (ControlFlow 0 328) 321) anon183_Then_correct) (=> (= (ControlFlow 0 328) 325) anon184_Then_correct)) (=> (= (ControlFlow 0 328) 318) anon13_correct)))))
(let ((anon182_Else_correct  (=> (and (not (and (<= 0 k_23) (< k_23 j))) (= (ControlFlow 0 319) 318)) anon13_correct)))
(let ((anon180_Else_correct  (=> (= (length_1 PostHeap@0 this@@15) (+ (length_1 Heap@@45 this@@15) 1)) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 351) 350) anon181_Else_correct) (=> (= (ControlFlow 0 351) 328) anon182_Then_correct)) (=> (= (ControlFlow 0 351) 319) anon182_Else_correct))))))
(let ((anon180_Then_correct  (=> (= (ControlFlow 0 317) (- 0 316)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))))))
(let ((anon179_Then_correct  (=> (= (ControlFlow 0 315) (- 0 314)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15)))))))
(let ((anon178_Else_correct  (=> (< j (length_1 PostHeap@0 this@@15)) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 352) 315) anon179_Then_correct) (=> (= (ControlFlow 0 352) 317) anon180_Then_correct)) (=> (= (ControlFlow 0 352) 351) anon180_Else_correct))))))
(let ((anon178_Then_correct  (=> (= (ControlFlow 0 313) (- 0 312)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| PostMask@0) null (AList this@@15)))))))
(let ((anon177_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= PostMask@0 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ZeroMask)))) (=> (and (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (<= 0 j) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 353) 313) anon178_Then_correct) (=> (= (ControlFlow 0 353) 352) anon178_Else_correct))))))
(let ((anon199_Then_correct  (and (=> (= (ControlFlow 0 292) (- 0 294)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@2) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@2) null (AList this@@15)))) (and (=> (= (ControlFlow 0 292) (- 0 293)) (<= 0 (- j@0 1))) (=> (<= 0 (- j@0 1)) (=> (= (ControlFlow 0 292) (- 0 291)) (< (- j@0 1) (length_1 ExhaleHeap@0 this@@15)))))))))
(let ((anon204_Then_correct  (=> (= (ControlFlow 0 286) (- 0 285)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@2) null (AList this@@15)))))))
(let ((anon207_Then_correct  (and (=> (= (ControlFlow 0 280) (- 0 282)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 280) (- 0 281)) (<= 0 k_21)) (=> (<= 0 k_21) (=> (= (ControlFlow 0 280) (- 0 279)) (< k_21 (length_1 Heap@@45 this@@15)))))))))
(let ((anon206_Then_correct  (and (=> (= (ControlFlow 0 276) (- 0 278)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@2) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@2) null (AList this@@15)))) (and (=> (= (ControlFlow 0 276) (- 0 277)) (<= 0 k_21)) (=> (<= 0 k_21) (=> (= (ControlFlow 0 276) (- 0 275)) (< k_21 (length_1 ExhaleHeap@0 this@@15)))))))))
(let ((anon55_correct true))
(let ((anon205_Then_correct  (=> (and (<= 0 k_21) (< k_21 (length_1 ExhaleHeap@0 this@@15))) (and (and (=> (= (ControlFlow 0 283) 276) anon206_Then_correct) (=> (= (ControlFlow 0 283) 280) anon207_Then_correct)) (=> (= (ControlFlow 0 283) 273) anon55_correct)))))
(let ((anon205_Else_correct  (=> (and (not (and (<= 0 k_21) (< k_21 (length_1 ExhaleHeap@0 this@@15)))) (= (ControlFlow 0 274) 273)) anon55_correct)))
(let ((anon203_Then_correct  (=> (<= 0 k_21) (and (and (=> (= (ControlFlow 0 287) 286) anon204_Then_correct) (=> (= (ControlFlow 0 287) 283) anon205_Then_correct)) (=> (= (ControlFlow 0 287) 274) anon205_Else_correct)))))
(let ((anon203_Else_correct  (=> (< k_21 0) (and (=> (= (ControlFlow 0 284) 283) anon205_Then_correct) (=> (= (ControlFlow 0 284) 274) anon205_Else_correct)))))
(let ((anon202_Else_correct true))
(let ((anon201_Else_correct  (=> (= (length_1 ExhaleHeap@0 this@@15) (length_1 Heap@@45 this@@15)) (=> (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (and (=> (= (ControlFlow 0 288) 272) anon202_Else_correct) (=> (= (ControlFlow 0 288) 287) anon203_Then_correct)) (=> (= (ControlFlow 0 288) 284) anon203_Else_correct))))))
(let ((anon201_Then_correct  (=> (= (ControlFlow 0 271) (- 0 270)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))))))
(let ((anon200_Then_correct  (=> (= (ControlFlow 0 269) (- 0 268)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@2) null (AList this@@15)))))))
(let ((anon42_correct  (=> (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (and (=> (= (ControlFlow 0 289) 269) anon200_Then_correct) (=> (= (ControlFlow 0 289) 271) anon201_Then_correct)) (=> (= (ControlFlow 0 289) 288) anon201_Else_correct)))))
(let ((anon199_Else_correct  (=> (and (<= (itemAt ExhaleHeap@0 this@@15 (- j@0 1)) elem_1) (= (ControlFlow 0 295) 289)) anon42_correct)))
(let ((anon198_Then_correct  (=> (and (> j@0 0) (state ExhaleHeap@0 Mask@2)) (and (=> (= (ControlFlow 0 296) 292) anon199_Then_correct) (=> (= (ControlFlow 0 296) 295) anon199_Else_correct)))))
(let ((anon198_Else_correct  (=> (and (>= 0 j@0) (= (ControlFlow 0 290) 289)) anon42_correct)))
(let ((anon197_Else_correct  (=> (and (<= j@0 (length_1 ExhaleHeap@0 this@@15)) (state ExhaleHeap@0 Mask@2)) (and (=> (= (ControlFlow 0 297) 296) anon198_Then_correct) (=> (= (ControlFlow 0 297) 290) anon198_Else_correct)))))
(let ((anon197_Then_correct  (=> (= (ControlFlow 0 267) (- 0 266)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@2) null (AList this@@15)))))))
(let ((anon196_Then_correct  (=> (= Mask@2 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@1) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@1) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@1))) (=> (and (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (<= 0 j@0) (state ExhaleHeap@0 Mask@2))) (and (=> (= (ControlFlow 0 298) 267) anon197_Then_correct) (=> (= (ControlFlow 0 298) 297) anon197_Else_correct))))))
(let ((anon212_Then_correct  (and (=> (= (ControlFlow 0 258) (- 0 260)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@3) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@3) null (AList this@@15)))) (and (=> (= (ControlFlow 0 258) (- 0 259)) (<= 0 j@0)) (=> (<= 0 j@0) (=> (= (ControlFlow 0 258) (- 0 257)) (< j@0 (length_1 ExhaleHeap@0 this@@15)))))))))
(let ((anon82_correct true))
(let ((anon221_Else_correct  (=> (and (not (and (<= 0 k_13) (< k_13 (length_1 Heap@20 this@@15)))) (= (ControlFlow 0 219) 216)) anon82_correct)))
(let ((anon221_Then_correct  (=> (and (<= 0 k_13) (< k_13 (length_1 Heap@20 this@@15))) (and (=> (= (ControlFlow 0 217) (- 0 218)) (= (itemAt Heap@20 this@@15 k_13) (itemAt Heap@@45 this@@15 k_13))) (=> (= (itemAt Heap@20 this@@15 k_13) (itemAt Heap@@45 this@@15 k_13)) (=> (= (ControlFlow 0 217) 216) anon82_correct))))))
(let ((anon220_Else_correct true))
(let ((anon79_correct  (and (=> (= (ControlFlow 0 220) (- 0 221)) (= (length_1 Heap@20 this@@15) (length_1 Heap@@45 this@@15))) (=> (= (length_1 Heap@20 this@@15) (length_1 Heap@@45 this@@15)) (and (and (=> (= (ControlFlow 0 220) 215) anon220_Else_correct) (=> (= (ControlFlow 0 220) 217) anon221_Then_correct)) (=> (= (ControlFlow 0 220) 219) anon221_Else_correct))))))
(let ((anon219_Else_correct  (=> (and (>= 0 j@1) (= (ControlFlow 0 224) 220)) anon79_correct)))
(let ((anon219_Then_correct  (=> (> j@1 0) (and (=> (= (ControlFlow 0 222) (- 0 223)) (<= (itemAt Heap@20 this@@15 (- j@1 1)) elem_1)) (=> (<= (itemAt Heap@20 this@@15 (- j@1 1)) elem_1) (=> (= (ControlFlow 0 222) 220) anon79_correct))))))
(let ((anon77_correct  (=> (= Mask@34 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@33) null (AList this@@15) (- (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@33) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@33) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@33))) (and (=> (= (ControlFlow 0 225) (- 0 227)) (<= 0 j@1)) (=> (<= 0 j@1) (and (=> (= (ControlFlow 0 225) (- 0 226)) (<= j@1 (length_1 Heap@20 this@@15))) (=> (<= j@1 (length_1 Heap@20 this@@15)) (and (=> (= (ControlFlow 0 225) 222) anon219_Then_correct) (=> (= (ControlFlow 0 225) 224) anon219_Else_correct)))))))))
(let ((anon218_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 230) 225)) anon77_correct)))
(let ((anon218_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 228) (- 0 229)) (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@33) null (AList this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@33) null (AList this@@15))) (=> (= (ControlFlow 0 228) 225) anon77_correct))))))
(let ((anon75_correct  (=> (and (= Heap@18 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@17) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15) (PolymorphicMapType_34793 (store (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) this@@15 elems_1 true) (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@17) null (|AList#sm| this@@15))))) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@17) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@17))) (= Heap@19 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@18) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15) (PolymorphicMapType_34793 (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (store (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) this@@15 size_3 true) (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@18) null (|AList#sm| this@@15))))) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@18) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@18)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_1 T@Ref) (f_10 T@Field_37891_37892) ) (!  (=> (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1 f_10) (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| newPMask@1) o_1 f_10))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| newPMask@1) o_1 f_10))
)) (forall ((o_1@@0 T@Ref) (f_10@@0 T@Field_37845_1759) ) (!  (=> (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@0 f_10@@0) (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@1) o_1@@0 f_10@@0))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@1) o_1@@0 f_10@@0))
))) (forall ((o_1@@1 T@Ref) (f_10@@1 T@Field_34304_53) ) (!  (=> (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@1 f_10@@1) (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| newPMask@1) o_1@@1 f_10@@1))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| newPMask@1) o_1@@1 f_10@@1))
))) (forall ((o_1@@2 T@Ref) (f_10@@2 T@Field_34317_34318) ) (!  (=> (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@2 f_10@@2) (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| newPMask@1) o_1@@2 f_10@@2))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| newPMask@1) o_1@@2 f_10@@2))
))) (forall ((o_1@@3 T@Ref) (f_10@@3 T@Field_19861_19964) ) (!  (=> (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@3 f_10@@3) (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| newPMask@1) o_1@@3 f_10@@3))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| newPMask@1) o_1@@3 f_10@@3))
))) (forall ((o_1@@4 T@Ref) (f_10@@4 T@Field_19861_41608) ) (!  (=> (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@4 f_10@@4) (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| newPMask@1) o_1@@4 f_10@@4))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| newPMask@1) o_1@@4 f_10@@4))
))) (forall ((o_1@@5 T@Ref) (f_10@@5 T@Field_19963_19859) ) (!  (=> (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@5 f_10@@5) (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| newPMask@1) o_1@@5 f_10@@5))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| newPMask@1) o_1@@5 f_10@@5))
))) (forall ((o_1@@6 T@Ref) (f_10@@6 T@Field_19963_1789) ) (!  (=> (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@6 f_10@@6) (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| newPMask@1) o_1@@6 f_10@@6))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| newPMask@1) o_1@@6 f_10@@6))
))) (forall ((o_1@@7 T@Ref) (f_10@@7 T@Field_19963_53) ) (!  (=> (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@7 f_10@@7) (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| newPMask@1) o_1@@7 f_10@@7))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| newPMask@1) o_1@@7 f_10@@7))
))) (forall ((o_1@@8 T@Ref) (f_10@@8 T@Field_19963_34318) ) (!  (=> (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@8 f_10@@8) (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| newPMask@1) o_1@@8 f_10@@8))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| newPMask@1) o_1@@8 f_10@@8))
))) (forall ((o_1@@9 T@Ref) (f_10@@9 T@Field_38264_38265) ) (!  (=> (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@9 f_10@@9) (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| newPMask@1) o_1@@9 f_10@@9))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| newPMask@1) o_1@@9 f_10@@9))
))) (forall ((o_1@@10 T@Ref) (f_10@@10 T@Field_41603_41608) ) (!  (=> (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15))) o_1@@10 f_10@@10) (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| newPMask@1) o_1@@10 f_10@@10))
 :qid |stdinbpl.2231:35|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| newPMask@1) o_1@@10 f_10@@10))
))) (and (and (forall ((i_2 Int) ) (!  (=> (and (<= 0 i_2) (< i_2 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@19) this@@15 elems_1)))) (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@19) this@@15 elems_1) i_2) val))
 :qid |stdinbpl.2235:28|
 :skolemid |117|
)) (= Heap@20 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@19) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@19) null (|AList#sm| this@@15) newPMask@1) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@19) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@19)))) (and (state Heap@20 Mask@33) (state Heap@20 Mask@33)))) (and (=> (= (ControlFlow 0 231) 228) anon218_Then_correct) (=> (= (ControlFlow 0 231) 230) anon218_Else_correct))))))
(let ((anon217_Else_correct  (=> (HasDirectPerm_19963_19964 Mask@33 null (AList this@@15)) (=> (and (= Heap@17 Heap@14) (= (ControlFlow 0 233) 231)) anon75_correct))))
(let ((anon217_Then_correct  (=> (not (HasDirectPerm_19963_19964 Mask@33 null (AList this@@15))) (=> (and (and (= Heap@15 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@14) null (|AList#sm| this@@15) ZeroPMask) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@14) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@14))) (= Heap@16 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@15) (store (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@15) null (AList this@@15) freshVersion@1) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@15) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@15)))) (and (= Heap@17 Heap@16) (= (ControlFlow 0 232) 231))) anon75_correct))))
(let ((anon73_correct  (=> (= Mask@32 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@31) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@31) this@@15 size_3 (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@31) this@@15 size_3) FullPerm)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@31) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@31))) (and (=> (= (ControlFlow 0 234) (- 0 239)) (<= 0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) this@@15 size_3))) (=> (<= 0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) this@@15 size_3)) (and (=> (= (ControlFlow 0 234) (- 0 238)) (<= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (=> (<= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))) (and (=> (= (ControlFlow 0 234) (- 0 237)) (< 0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (=> (< 0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))) (and (=> (= (ControlFlow 0 234) (- 0 236)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (and (<= 0 i_1_1) (< i_1_1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1_1))))
 :qid |stdinbpl.2182:25|
 :skolemid |110|
 :pattern ( (neverTriggered10 i_1) (neverTriggered10 i_1_1))
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1_1@@0))))
 :qid |stdinbpl.2182:25|
 :skolemid |110|
 :pattern ( (neverTriggered10 i_1@@0) (neverTriggered10 i_1_1@@0))
)) (and (=> (= (ControlFlow 0 234) (- 0 235)) (forall ((i_1@@1 Int) ) (!  (=> (and (<= 0 i_1@@1) (< i_1@@1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@32) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@1) val) FullPerm))
 :qid |stdinbpl.2189:25|
 :skolemid |111|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@1))
))) (=> (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@32) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@2) val) FullPerm))
 :qid |stdinbpl.2189:25|
 :skolemid |111|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@2))
)) (=> (forall ((i_1@@3 Int) ) (!  (=> (and (and (<= 0 i_1@@3) (< i_1@@3 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (< NoPerm FullPerm)) (and (qpRange10 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@3)) (= (invRecv10 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@3)) i_1@@3)))
 :qid |stdinbpl.2195:30|
 :skolemid |112|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@3))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_1@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv10 o_9)) (< (invRecv10 o_9) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (and (< NoPerm FullPerm) (qpRange10 o_9))) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) (invRecv10 o_9)) o_9))
 :qid |stdinbpl.2199:30|
 :skolemid |113|
 :pattern ( (invRecv10 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (and (< NoPerm FullPerm) (qpRange10 o_9@@0))) (and (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) (invRecv10 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@9) o_9@@0 val) (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@32) o_9@@0 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (and (< NoPerm FullPerm) (qpRange10 o_9@@0)))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@9) o_9@@0 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@32) o_9@@0 val))))
 :qid |stdinbpl.2205:30|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@9) o_9@@0 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@32) o_9@@1 f_5) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@9) o_9@@1 f_5)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@9) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@32) o_9@@2 f_5@@0) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@9) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@9) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_37845_1759) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@32) o_9@@3 f_5@@1) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@9) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@9) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@32) o_9@@4 f_5@@2) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@9) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@9) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@32) o_9@@5 f_5@@3) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@9) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@9) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@32) o_9@@6 f_5@@4) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@9) o_9@@6 f_5@@4)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@9) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@32) o_9@@7 f_5@@5) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@9) o_9@@7 f_5@@5)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@9) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@32) o_9@@8 f_5@@6) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@9) o_9@@8 f_5@@6)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@9) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@32) o_9@@9 f_5@@7) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@9) o_9@@9 f_5@@7)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@9) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@32) o_9@@10 f_5@@8) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@9) o_9@@10 f_5@@8)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@9) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@32) o_9@@11 f_5@@9) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@9) o_9@@11 f_5@@9)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@9) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@32) o_9@@12 f_5@@10) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@9) o_9@@12 f_5@@10)))
 :qid |stdinbpl.2211:37|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@9) o_9@@12 f_5@@10))
))) (= Mask@33 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@9) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@9) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@9) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@9)))) (and (and (state Heap@14 Mask@33) (state Heap@14 Mask@33)) (and (|AList#trigger_19963| Heap@14 (AList this@@15)) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@14) null (AList this@@15)) (CombineFrames (FrameFragment_19859 (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)) (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) this@@15 size_3)) (FrameFragment_1789 (|AList#condqp1| Heap@14 this@@15)))))))) (and (=> (= (ControlFlow 0 234) 232) anon217_Then_correct) (=> (= (ControlFlow 0 234) 233) anon217_Else_correct))))))))))))))))))
(let ((anon216_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 242) 234)) anon73_correct)))
(let ((anon216_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 240) (- 0 241)) (<= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@31) this@@15 size_3))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@31) this@@15 size_3)) (=> (= (ControlFlow 0 240) 234) anon73_correct))))))
(let ((anon71_correct  (=> (= Mask@31 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@8) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@8) this@@15 elems_1 (- (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@8) this@@15 elems_1) FullPerm)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@8) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@8))) (and (=> (= (ControlFlow 0 243) 240) anon216_Then_correct) (=> (= (ControlFlow 0 243) 242) anon216_Else_correct)))))
(let ((anon215_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 246) 243)) anon71_correct)))
(let ((anon215_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 244) (- 0 245)) (<= FullPerm (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@8) this@@15 elems_1))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@8) this@@15 elems_1)) (=> (= (ControlFlow 0 244) 243) anon71_correct))))))
(let ((anon69_correct  (=> (not (= this@@15 null)) (=> (and (and (and (= Mask@29 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@28) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@28) this@@15 elems_1 (+ (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@28) this@@15 elems_1) FullPerm)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@28) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@28))) (state Heap@14 Mask@29)) (and (not (= this@@15 null)) (= Mask@30 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@29) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@29) this@@15 size_3 (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@29) this@@15 size_3) FullPerm)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@29) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@29))))) (and (and (state Heap@14 Mask@30) (<= 0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) this@@15 size_3))) (and (<= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@14) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))) (< 0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))))) (and (=> (= (ControlFlow 0 247) (- 0 248)) (forall ((i@@0 Int) (i_22 Int) ) (!  (=> (and (and (and (and (not (= i@@0 i_22)) (and (<= 0 i@@0) (< i@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (and (<= 0 i_22) (< i_22 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_22))))
 :qid |stdinbpl.2115:23|
 :skolemid |104|
))) (=> (forall ((i@@1 Int) (i_22@@0 Int) ) (!  (=> (and (and (and (and (not (= i@@1 i_22@@0)) (and (<= 0 i@@1) (< i@@1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (and (<= 0 i_22@@0) (< i_22@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i_22@@0))))
 :qid |stdinbpl.2115:23|
 :skolemid |104|
)) (=> (and (and (forall ((i@@2 Int) ) (!  (=> (and (and (<= 0 i@@2) (< i@@2 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (< NoPerm FullPerm)) (and (qpRange9 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@2)) (= (invRecv9 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@2)) i@@2)))
 :qid |stdinbpl.2121:30|
 :skolemid |105|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@2))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_9@@13)) (< (invRecv9 o_9@@13) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange9 o_9@@13)) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) (invRecv9 o_9@@13)) o_9@@13))
 :qid |stdinbpl.2125:30|
 :skolemid |106|
 :pattern ( (invRecv9 o_9@@13))
))) (and (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@3) null)))
 :qid |stdinbpl.2131:30|
 :skolemid |107|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@3))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) i@@3))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_9@@14)) (< (invRecv9 o_9@@14) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange9 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1) (invRecv9 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@8) o_9@@14 val) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@30) o_9@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_9@@14)) (< (invRecv9 o_9@@14) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@14) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange9 o_9@@14))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@8) o_9@@14 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@30) o_9@@14 val))))
 :qid |stdinbpl.2137:30|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@8) o_9@@14 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@11 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@30) o_9@@15 f_5@@11) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@8) o_9@@15 f_5@@11)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@30) o_9@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@8) o_9@@15 f_5@@11))
)) (forall ((o_9@@16 T@Ref) (f_5@@12 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@30) o_9@@16 f_5@@12) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@8) o_9@@16 f_5@@12)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@30) o_9@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@8) o_9@@16 f_5@@12))
))) (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_37845_1759) ) (!  (=> (not (= f_5@@13 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@30) o_9@@17 f_5@@13) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@8) o_9@@17 f_5@@13)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@30) o_9@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@8) o_9@@17 f_5@@13))
))) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@30) o_9@@18 f_5@@14) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@8) o_9@@18 f_5@@14)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@30) o_9@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@8) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@30) o_9@@19 f_5@@15) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@8) o_9@@19 f_5@@15)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@30) o_9@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@8) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@30) o_9@@20 f_5@@16) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@8) o_9@@20 f_5@@16)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@30) o_9@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@8) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@30) o_9@@21 f_5@@17) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@8) o_9@@21 f_5@@17)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@30) o_9@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@8) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@30) o_9@@22 f_5@@18) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@8) o_9@@22 f_5@@18)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@30) o_9@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@8) o_9@@22 f_5@@18))
))) (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@30) o_9@@23 f_5@@19) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@8) o_9@@23 f_5@@19)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@30) o_9@@23 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@8) o_9@@23 f_5@@19))
))) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@30) o_9@@24 f_5@@20) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@8) o_9@@24 f_5@@20)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@30) o_9@@24 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@8) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@30) o_9@@25 f_5@@21) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@8) o_9@@25 f_5@@21)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@30) o_9@@25 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@8) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@30) o_9@@26 f_5@@22) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@8) o_9@@26 f_5@@22)))
 :qid |stdinbpl.2141:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@30) o_9@@26 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@8) o_9@@26 f_5@@22))
))) (state Heap@14 QPMask@8)) (and (and (state Heap@14 QPMask@8) (state Heap@14 QPMask@8)) (and (= j@1 (+ j@0 1)) (state Heap@14 QPMask@8)))) (and (=> (= (ControlFlow 0 247) 244) anon215_Then_correct) (=> (= (ControlFlow 0 247) 246) anon215_Else_correct))))))))))
(let ((anon214_Else_correct  (=> (HasDirectPerm_19963_19964 Mask@28 null (AList this@@15)) (=> (and (= Heap@14 ExhaleHeap@0) (= (ControlFlow 0 250) 247)) anon69_correct))))
(let ((anon214_Then_correct  (=> (and (and (not (HasDirectPerm_19963_19964 Mask@28 null (AList this@@15))) (= Heap@13 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@0) (store (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@0) null (AList this@@15) newVersion@1) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@0)))) (and (= Heap@14 Heap@13) (= (ControlFlow 0 249) 247))) anon69_correct)))
(let ((anon67_correct  (=> (= Mask@28 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@3) null (AList this@@15) (- (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@3) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@3) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@3))) (and (=> (= (ControlFlow 0 251) 249) anon214_Then_correct) (=> (= (ControlFlow 0 251) 250) anon214_Else_correct)))))
(let ((anon213_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 254) 251)) anon67_correct)))
(let ((anon213_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 252) (- 0 253)) (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@3) null (AList this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@3) null (AList this@@15))) (=> (= (ControlFlow 0 252) 251) anon67_correct))))))
(let ((anon65_correct  (=> (and (and (and (< j@0 (length_1 ExhaleHeap@0 this@@15)) (< (itemAt ExhaleHeap@0 this@@15 j@0) elem_1)) (state ExhaleHeap@0 Mask@3)) (and (|AList#trigger_19963| ExhaleHeap@0 (AList this@@15)) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@0) null (AList this@@15)) (CombineFrames (FrameFragment_19859 (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@0) this@@15 elems_1)) (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@0) this@@15 size_3)) (FrameFragment_1789 (|AList#condqp1| ExhaleHeap@0 this@@15))))))) (and (=> (= (ControlFlow 0 255) 252) anon213_Then_correct) (=> (= (ControlFlow 0 255) 254) anon213_Else_correct)))))
(let ((anon211_Then_correct  (=> (< j@0 (length_1 ExhaleHeap@0 this@@15)) (and (=> (= (ControlFlow 0 261) 258) anon212_Then_correct) (=> (= (ControlFlow 0 261) 255) anon65_correct)))))
(let ((anon211_Else_correct  (=> (and (<= (length_1 ExhaleHeap@0 this@@15) j@0) (= (ControlFlow 0 256) 255)) anon65_correct)))
(let ((anon210_Then_correct  (=> (= (ControlFlow 0 214) (- 0 213)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@3) null (AList this@@15)))))))
(let ((anon60_correct  (=> (state ExhaleHeap@0 Mask@3) (=> (and (and (= (length_1 ExhaleHeap@0 this@@15) (length_1 Heap@@45 this@@15)) (state ExhaleHeap@0 Mask@3)) (and (forall ((k_12 Int) ) (!  (=> (and (<= 0 k_12) (< k_12 (length_1 ExhaleHeap@0 this@@15))) (= (itemAt ExhaleHeap@0 this@@15 k_12) (itemAt Heap@@45 this@@15 k_12)))
 :qid |stdinbpl.2038:24|
 :skolemid |103|
 :pattern ( (|itemAt#frame| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@45) null (AList this@@15)) this@@15 k_12))
)) (state ExhaleHeap@0 Mask@3))) (and (and (=> (= (ControlFlow 0 262) 214) anon210_Then_correct) (=> (= (ControlFlow 0 262) 261) anon211_Then_correct)) (=> (= (ControlFlow 0 262) 256) anon211_Else_correct))))))
(let ((anon209_Else_correct  (=> (and (>= 0 j@0) (= (ControlFlow 0 264) 262)) anon60_correct)))
(let ((anon209_Then_correct  (=> (and (and (> j@0 0) (state ExhaleHeap@0 Mask@3)) (and (<= (itemAt ExhaleHeap@0 this@@15 (- j@0 1)) elem_1) (= (ControlFlow 0 263) 262))) anon60_correct)))
(let ((anon208_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (= Mask@3 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ZeroMask)))) (=> (and (and (state ExhaleHeap@0 Mask@3) (<= 0 j@0)) (and (state ExhaleHeap@0 Mask@3) (<= j@0 (length_1 ExhaleHeap@0 this@@15)))) (and (=> (= (ControlFlow 0 265) 263) anon209_Then_correct) (=> (= (ControlFlow 0 265) 264) anon209_Else_correct))))))
(let ((anon98_correct true))
(let ((anon229_Else_correct  (=> (and (not (and (<= 0 i_27) (< i_27 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1))))) (= (ControlFlow 0 191) 186)) anon98_correct)))
(let ((anon229_Then_correct  (=> (and (<= 0 i_27) (< i_27 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (and (=> (= (ControlFlow 0 187) (- 0 190)) (HasDirectPerm_19861_1789 QPMask@1 (loc a_2@@1 i_27) val)) (=> (HasDirectPerm_19861_1789 QPMask@1 (loc a_2@@1 i_27) val) (and (=> (= (ControlFlow 0 187) (- 0 189)) (HasDirectPerm_19858_19859 QPMask@1 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@1 this@@15 elems_1) (and (=> (= (ControlFlow 0 187) (- 0 188)) (HasDirectPerm_19861_1789 QPMask@1 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_27) val)) (=> (HasDirectPerm_19861_1789 QPMask@1 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_27) val) (=> (= (ControlFlow 0 187) 186) anon98_correct))))))))))
(let ((anon228_Else_correct  (=> (< i_27 0) (and (=> (= (ControlFlow 0 194) 187) anon229_Then_correct) (=> (= (ControlFlow 0 194) 191) anon229_Else_correct)))))
(let ((anon228_Then_correct  (=> (<= 0 i_27) (and (=> (= (ControlFlow 0 192) (- 0 193)) (HasDirectPerm_19858_19859 QPMask@1 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@1 this@@15 elems_1) (and (=> (= (ControlFlow 0 192) 187) anon229_Then_correct) (=> (= (ControlFlow 0 192) 191) anon229_Else_correct)))))))
(let ((anon226_Then_correct true))
(let ((anon253_Then_correct  (and (=> (= (ControlFlow 0 133) (- 0 135)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 133) (- 0 134)) (<= 0 (- i_51 1))) (=> (<= 0 (- i_51 1)) (=> (= (ControlFlow 0 133) (- 0 132)) (< (- i_51 1) (length_1 Heap@@45 this@@15)))))))))
(let ((anon140_correct true))
(let ((anon252_Then_correct  (=> (> i_51 t_2@1) (and (=> (= (ControlFlow 0 136) (- 0 138)) (HasDirectPerm_19858_19859 QPMask@7 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@7 this@@15 elems_1) (and (=> (= (ControlFlow 0 136) (- 0 137)) (HasDirectPerm_19861_1789 QPMask@7 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_51) val)) (=> (HasDirectPerm_19861_1789 QPMask@7 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_51) val) (and (=> (= (ControlFlow 0 136) 133) anon253_Then_correct) (=> (= (ControlFlow 0 136) 129) anon140_correct)))))))))
(let ((anon252_Else_correct  (=> (and (>= t_2@1 i_51) (= (ControlFlow 0 131) 129)) anon140_correct)))
(let ((anon251_Then_correct  (=> (and (< j@0 i_51) (<= i_51 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (and (=> (= (ControlFlow 0 139) 136) anon252_Then_correct) (=> (= (ControlFlow 0 139) 131) anon252_Else_correct)))))
(let ((anon251_Else_correct  (=> (and (not (and (< j@0 i_51) (<= i_51 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (= (ControlFlow 0 130) 129)) anon140_correct)))
(let ((anon250_Else_correct  (=> (<= i_51 j@0) (and (=> (= (ControlFlow 0 142) 139) anon251_Then_correct) (=> (= (ControlFlow 0 142) 130) anon251_Else_correct)))))
(let ((anon250_Then_correct  (=> (< j@0 i_51) (and (=> (= (ControlFlow 0 140) (- 0 141)) (HasDirectPerm_19861_1789 QPMask@7 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 QPMask@7 this@@15 size_3) (and (=> (= (ControlFlow 0 140) 139) anon251_Then_correct) (=> (= (ControlFlow 0 140) 130) anon251_Else_correct)))))))
(let ((anon249_Else_correct true))
(let ((anon244_Else_correct  (=> (forall ((i_16_1 Int) ) (!  (=> (and (<= j@0 i_16_1) (<= i_16_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (=> (< i_16_1 t_2@1) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_16_1) val) (itemAt Heap@@45 this@@15 i_16_1))))
 :qid |stdinbpl.2728:24|
 :skolemid |147|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_16_1))
)) (=> (and (state ExhaleHeap@1 QPMask@7) (state ExhaleHeap@1 QPMask@7)) (and (and (=> (= (ControlFlow 0 143) 128) anon249_Else_correct) (=> (= (ControlFlow 0 143) 140) anon250_Then_correct)) (=> (= (ControlFlow 0 143) 142) anon250_Else_correct))))))
(let ((anon248_Then_correct  (and (=> (= (ControlFlow 0 118) (- 0 120)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))) (and (=> (= (ControlFlow 0 118) (- 0 119)) (<= 0 i_42)) (=> (<= 0 i_42) (=> (= (ControlFlow 0 118) (- 0 117)) (< i_42 (length_1 Heap@@45 this@@15)))))))))
(let ((anon132_correct true))
(let ((anon247_Then_correct  (=> (< i_42 t_2@1) (and (=> (= (ControlFlow 0 121) (- 0 123)) (HasDirectPerm_19858_19859 QPMask@7 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@7 this@@15 elems_1) (and (=> (= (ControlFlow 0 121) (- 0 122)) (HasDirectPerm_19861_1789 QPMask@7 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_42) val)) (=> (HasDirectPerm_19861_1789 QPMask@7 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_42) val) (and (=> (= (ControlFlow 0 121) 118) anon248_Then_correct) (=> (= (ControlFlow 0 121) 114) anon132_correct)))))))))
(let ((anon247_Else_correct  (=> (and (<= t_2@1 i_42) (= (ControlFlow 0 116) 114)) anon132_correct)))
(let ((anon246_Then_correct  (=> (and (<= j@0 i_42) (<= i_42 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (and (=> (= (ControlFlow 0 124) 121) anon247_Then_correct) (=> (= (ControlFlow 0 124) 116) anon247_Else_correct)))))
(let ((anon246_Else_correct  (=> (and (not (and (<= j@0 i_42) (<= i_42 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (= (ControlFlow 0 115) 114)) anon132_correct)))
(let ((anon245_Else_correct  (=> (< i_42 j@0) (and (=> (= (ControlFlow 0 127) 124) anon246_Then_correct) (=> (= (ControlFlow 0 127) 115) anon246_Else_correct)))))
(let ((anon245_Then_correct  (=> (<= j@0 i_42) (and (=> (= (ControlFlow 0 125) (- 0 126)) (HasDirectPerm_19861_1789 QPMask@7 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 QPMask@7 this@@15 size_3) (and (=> (= (ControlFlow 0 125) 124) anon246_Then_correct) (=> (= (ControlFlow 0 125) 115) anon246_Else_correct)))))))
(let ((anon241_Else_correct  (and (=> (= (ControlFlow 0 144) (- 0 145)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (and (< j@0 i_14_1) (<= i_14_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (< j@0 i_14_2) (<= i_14_2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_2))))
 :qid |stdinbpl.2662:19|
 :skolemid |141|
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (and (< j@0 i_14_1@@0) (<= i_14_1@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (< j@0 i_14_2@@0) (<= i_14_2@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_2@@0))))
 :qid |stdinbpl.2662:19|
 :skolemid |141|
)) (=> (and (and (forall ((i_14_1@@1 Int) ) (!  (=> (and (and (< j@0 i_14_1@@1) (<= i_14_1@@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (and (qpRange14 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@1)) (= (invRecv14 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@1)) i_14_1@@1)))
 :qid |stdinbpl.2668:26|
 :skolemid |142|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (< j@0 (invRecv14 o_9@@27)) (<= (invRecv14 o_9@@27) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange14 o_9@@27)) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (invRecv14 o_9@@27)) o_9@@27))
 :qid |stdinbpl.2672:26|
 :skolemid |143|
 :pattern ( (invRecv14 o_9@@27))
))) (and (forall ((i_14_1@@2 Int) ) (!  (=> (and (< j@0 i_14_1@@2) (<= i_14_1@@2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@2) null)))
 :qid |stdinbpl.2678:26|
 :skolemid |144|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_14_1@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (< j@0 (invRecv14 o_9@@28)) (<= (invRecv14 o_9@@28) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange14 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (invRecv14 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@7) o_9@@28 val) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@14) o_9@@28 val) FullPerm)))) (=> (not (and (and (and (< j@0 (invRecv14 o_9@@28)) (<= (invRecv14 o_9@@28) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange14 o_9@@28))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@7) o_9@@28 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@14) o_9@@28 val))))
 :qid |stdinbpl.2684:26|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@7) o_9@@28 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@23 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@14) o_9@@29 f_5@@23) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@7) o_9@@29 f_5@@23)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@14) o_9@@29 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@7) o_9@@29 f_5@@23))
)) (forall ((o_9@@30 T@Ref) (f_5@@24 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@14) o_9@@30 f_5@@24) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@7) o_9@@30 f_5@@24)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@14) o_9@@30 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@7) o_9@@30 f_5@@24))
))) (forall ((o_9@@31 T@Ref) (f_5@@25 T@Field_37845_1759) ) (!  (=> (not (= f_5@@25 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@14) o_9@@31 f_5@@25) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@7) o_9@@31 f_5@@25)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@14) o_9@@31 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@7) o_9@@31 f_5@@25))
))) (forall ((o_9@@32 T@Ref) (f_5@@26 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@14) o_9@@32 f_5@@26) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@7) o_9@@32 f_5@@26)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@14) o_9@@32 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@7) o_9@@32 f_5@@26))
))) (forall ((o_9@@33 T@Ref) (f_5@@27 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@14) o_9@@33 f_5@@27) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@7) o_9@@33 f_5@@27)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@14) o_9@@33 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@7) o_9@@33 f_5@@27))
))) (forall ((o_9@@34 T@Ref) (f_5@@28 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@14) o_9@@34 f_5@@28) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@7) o_9@@34 f_5@@28)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@14) o_9@@34 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@7) o_9@@34 f_5@@28))
))) (forall ((o_9@@35 T@Ref) (f_5@@29 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@14) o_9@@35 f_5@@29) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@7) o_9@@35 f_5@@29)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@14) o_9@@35 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@7) o_9@@35 f_5@@29))
))) (forall ((o_9@@36 T@Ref) (f_5@@30 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@14) o_9@@36 f_5@@30) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@7) o_9@@36 f_5@@30)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@14) o_9@@36 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@7) o_9@@36 f_5@@30))
))) (forall ((o_9@@37 T@Ref) (f_5@@31 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@14) o_9@@37 f_5@@31) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@7) o_9@@37 f_5@@31)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@14) o_9@@37 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@7) o_9@@37 f_5@@31))
))) (forall ((o_9@@38 T@Ref) (f_5@@32 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@14) o_9@@38 f_5@@32) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@7) o_9@@38 f_5@@32)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@14) o_9@@38 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@7) o_9@@38 f_5@@32))
))) (forall ((o_9@@39 T@Ref) (f_5@@33 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@14) o_9@@39 f_5@@33) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@7) o_9@@39 f_5@@33)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@14) o_9@@39 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@7) o_9@@39 f_5@@33))
))) (forall ((o_9@@40 T@Ref) (f_5@@34 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@14) o_9@@40 f_5@@34) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@7) o_9@@40 f_5@@34)))
 :qid |stdinbpl.2688:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@14) o_9@@40 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@7) o_9@@40 f_5@@34))
))) (state ExhaleHeap@1 QPMask@7)) (and (state ExhaleHeap@1 QPMask@7) (state ExhaleHeap@1 QPMask@7))) (and (and (=> (= (ControlFlow 0 144) 143) anon244_Else_correct) (=> (= (ControlFlow 0 144) 125) anon245_Then_correct)) (=> (= (ControlFlow 0 144) 127) anon245_Else_correct))))))))
(let ((anon124_correct true))
(let ((anon243_Else_correct  (=> (and (not (and (< j@0 i_16) (<= i_16 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (= (ControlFlow 0 110) 107)) anon124_correct)))
(let ((anon243_Then_correct  (=> (and (< j@0 i_16) (<= i_16 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (and (=> (= (ControlFlow 0 108) (- 0 109)) (HasDirectPerm_19858_19859 Mask@14 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 Mask@14 this@@15 elems_1) (=> (= (ControlFlow 0 108) 107) anon124_correct))))))
(let ((anon242_Else_correct  (=> (<= i_16 j@0) (and (=> (= (ControlFlow 0 113) 108) anon243_Then_correct) (=> (= (ControlFlow 0 113) 110) anon243_Else_correct)))))
(let ((anon242_Then_correct  (=> (< j@0 i_16) (and (=> (= (ControlFlow 0 111) (- 0 112)) (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3) (and (=> (= (ControlFlow 0 111) 108) anon243_Then_correct) (=> (= (ControlFlow 0 111) 110) anon243_Else_correct)))))))
(let ((anon240_Else_correct  (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3) (length_1 Heap@@45 this@@15)) (=> (and (state ExhaleHeap@1 Mask@14) (<= (- 0 1) j@0)) (and (=> (= (ControlFlow 0 146) (- 0 148)) (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3) (and (=> (= (ControlFlow 0 146) (- 0 147)) (HasDirectPerm_19858_19859 Mask@14 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 Mask@14 this@@15 elems_1) (=> (and (< (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1))) (state ExhaleHeap@1 Mask@14)) (and (and (=> (= (ControlFlow 0 146) 144) anon241_Else_correct) (=> (= (ControlFlow 0 146) 111) anon242_Then_correct)) (=> (= (ControlFlow 0 146) 113) anon242_Else_correct)))))))))))
(let ((anon240_Then_correct  (=> (= (ControlFlow 0 106) (- 0 105)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))))))
(let ((anon239_Then_correct  (=> (= perm@3 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 149) (- 0 155)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (and (=> (> perm@3 NoPerm) (not (= this@@15 null))) (= Mask@12 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@2) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@2) this@@15 elems_1 (+ (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@2) this@@15 elems_1) perm@3)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@2)))) (and (state ExhaleHeap@1 Mask@12) (= perm@4 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 149) (- 0 154)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (=> (> perm@4 NoPerm) (not (= this@@15 null))) (=> (and (= Mask@13 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@12) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@12) this@@15 size_3 (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@12) this@@15 size_3) perm@4)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@12) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@12))) (state ExhaleHeap@1 Mask@13)) (and (=> (= (ControlFlow 0 149) (- 0 153)) (HasDirectPerm_19858_19859 Mask@13 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 Mask@13 this@@15 elems_1) (=> (= perm@5 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 149) (- 0 152)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (=> (> perm@5 NoPerm) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) null))) (=> (and (and (= Mask@14 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@13) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@13) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@13) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val) perm@5)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@13) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@13))) (state ExhaleHeap@1 Mask@14)) (and (state ExhaleHeap@1 Mask@14) (<= j@0 t_2@1))) (and (=> (= (ControlFlow 0 149) (- 0 151)) (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3) (=> (<= t_2@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)) (=> (and (state ExhaleHeap@1 Mask@14) (state ExhaleHeap@1 Mask@14)) (and (=> (= (ControlFlow 0 149) (- 0 150)) (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 Mask@14 this@@15 size_3) (and (=> (= (ControlFlow 0 149) 106) anon240_Then_correct) (=> (= (ControlFlow 0 149) 146) anon240_Else_correct)))))))))))))))))))))))))
(let ((anon158_correct true))
(let ((anon263_Else_correct  (=> (and (>= t_2@2 i_25_1) (= (ControlFlow 0 71) 67)) anon158_correct)))
(let ((anon263_Then_correct  (=> (> i_25_1 t_2@2) (and (=> (= (ControlFlow 0 69) (- 0 70)) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_25_1) val) (itemAt Heap@@45 this@@15 (- i_25_1 1)))) (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_25_1) val) (itemAt Heap@@45 this@@15 (- i_25_1 1))) (=> (= (ControlFlow 0 69) 67) anon158_correct))))))
(let ((anon262_Then_correct  (=> (and (< j@0 i_25_1) (<= i_25_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (and (=> (= (ControlFlow 0 72) 69) anon263_Then_correct) (=> (= (ControlFlow 0 72) 71) anon263_Else_correct)))))
(let ((anon262_Else_correct  (=> (and (not (and (< j@0 i_25_1) (<= i_25_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3)))) (= (ControlFlow 0 68) 67)) anon158_correct)))
(let ((anon261_Else_correct true))
(let ((anon258_Else_correct  (=> (forall ((i_24_1_1 Int) ) (!  (=> (and (<= j@0 i_24_1_1) (<= i_24_1_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (=> (< i_24_1_1 t_2@2) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_24_1_1) val) (itemAt Heap@@45 this@@15 i_24_1_1))))
 :qid |stdinbpl.2963:24|
 :skolemid |163|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_24_1_1))
)) (and (and (=> (= (ControlFlow 0 73) 66) anon261_Else_correct) (=> (= (ControlFlow 0 73) 72) anon262_Then_correct)) (=> (= (ControlFlow 0 73) 68) anon262_Else_correct)))))
(let ((anon153_correct true))
(let ((anon260_Else_correct  (=> (and (<= t_2@2 i_23_1) (= (ControlFlow 0 64) 60)) anon153_correct)))
(let ((anon260_Then_correct  (=> (< i_23_1 t_2@2) (and (=> (= (ControlFlow 0 62) (- 0 63)) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_23_1) val) (itemAt Heap@@45 this@@15 i_23_1))) (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_23_1) val) (itemAt Heap@@45 this@@15 i_23_1)) (=> (= (ControlFlow 0 62) 60) anon153_correct))))))
(let ((anon259_Then_correct  (=> (and (<= j@0 i_23_1) (<= i_23_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (and (=> (= (ControlFlow 0 65) 62) anon260_Then_correct) (=> (= (ControlFlow 0 65) 64) anon260_Else_correct)))))
(let ((anon259_Else_correct  (=> (and (not (and (<= j@0 i_23_1) (<= i_23_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3)))) (= (ControlFlow 0 61) 60)) anon153_correct)))
(let ((anon149_correct  (=> (= Mask@27 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@26) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@26) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) j@0) val (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@26) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) j@0) val) perm@14)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@26) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@26))) (and (=> (= (ControlFlow 0 74) (- 0 81)) (<= j@0 t_2@2)) (=> (<= j@0 t_2@2) (and (=> (= (ControlFlow 0 74) (- 0 80)) (<= t_2@2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (=> (<= t_2@2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3)) (and (=> (= (ControlFlow 0 74) (- 0 79)) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3) (length_1 Heap@@45 this@@15))) (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3) (length_1 Heap@@45 this@@15)) (and (=> (= (ControlFlow 0 74) (- 0 78)) (<= (- 0 1) j@0)) (=> (<= (- 0 1) j@0) (and (=> (= (ControlFlow 0 74) (- 0 77)) (< (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1)))) (=> (< (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1))) (and (=> (= (ControlFlow 0 74) (- 0 76)) (forall ((i_22_1 Int) (i_22_2 Int) ) (!  (=> (and (and (and (and (not (= i_22_1 i_22_2)) (and (< j@0 i_22_1) (<= i_22_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3)))) (and (< j@0 i_22_2) (<= i_22_2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_2))))
 :qid |stdinbpl.2920:21|
 :skolemid |157|
 :pattern ( (neverTriggered16 i_22_1) (neverTriggered16 i_22_2))
))) (=> (forall ((i_22_1@@0 Int) (i_22_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_22_1@@0 i_22_2@@0)) (and (< j@0 i_22_1@@0) (<= i_22_1@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3)))) (and (< j@0 i_22_2@@0) (<= i_22_2@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_2@@0))))
 :qid |stdinbpl.2920:21|
 :skolemid |157|
 :pattern ( (neverTriggered16 i_22_1@@0) (neverTriggered16 i_22_2@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((i_22_1@@1 Int) ) (!  (=> (and (< j@0 i_22_1@@1) (<= i_22_1@@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@27) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@1) val) FullPerm))
 :qid |stdinbpl.2927:21|
 :skolemid |158|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@1))
))) (=> (forall ((i_22_1@@2 Int) ) (!  (=> (and (< j@0 i_22_1@@2) (<= i_22_1@@2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@27) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@2) val) FullPerm))
 :qid |stdinbpl.2927:21|
 :skolemid |158|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@2))
)) (=> (forall ((i_22_1@@3 Int) ) (!  (=> (and (and (< j@0 i_22_1@@3) (<= i_22_1@@3 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (< NoPerm FullPerm)) (and (qpRange16 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@3)) (= (invRecv16 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@3)) i_22_1@@3)))
 :qid |stdinbpl.2933:26|
 :skolemid |159|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@3))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) i_22_1@@3))
)) (=> (and (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (< j@0 (invRecv16 o_9@@41)) (<= (invRecv16 o_9@@41) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (and (< NoPerm FullPerm) (qpRange16 o_9@@41))) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) (invRecv16 o_9@@41)) o_9@@41))
 :qid |stdinbpl.2937:26|
 :skolemid |160|
 :pattern ( (invRecv16 o_9@@41))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (< j@0 (invRecv16 o_9@@42)) (<= (invRecv16 o_9@@42) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (and (< NoPerm FullPerm) (qpRange16 o_9@@42))) (and (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) (invRecv16 o_9@@42)) o_9@@42) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@6) o_9@@42 val) (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@27) o_9@@42 val) FullPerm)))) (=> (not (and (and (< j@0 (invRecv16 o_9@@42)) (<= (invRecv16 o_9@@42) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@4) this@@15 size_3))) (and (< NoPerm FullPerm) (qpRange16 o_9@@42)))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@6) o_9@@42 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@27) o_9@@42 val))))
 :qid |stdinbpl.2943:26|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@6) o_9@@42 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@35 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@27) o_9@@43 f_5@@35) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@6) o_9@@43 f_5@@35)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@6) o_9@@43 f_5@@35))
)) (forall ((o_9@@44 T@Ref) (f_5@@36 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@27) o_9@@44 f_5@@36) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@6) o_9@@44 f_5@@36)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@6) o_9@@44 f_5@@36))
))) (forall ((o_9@@45 T@Ref) (f_5@@37 T@Field_37845_1759) ) (!  (=> (not (= f_5@@37 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@27) o_9@@45 f_5@@37) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@6) o_9@@45 f_5@@37)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@6) o_9@@45 f_5@@37))
))) (forall ((o_9@@46 T@Ref) (f_5@@38 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@27) o_9@@46 f_5@@38) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@6) o_9@@46 f_5@@38)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@6) o_9@@46 f_5@@38))
))) (forall ((o_9@@47 T@Ref) (f_5@@39 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@27) o_9@@47 f_5@@39) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@6) o_9@@47 f_5@@39)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@6) o_9@@47 f_5@@39))
))) (forall ((o_9@@48 T@Ref) (f_5@@40 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@27) o_9@@48 f_5@@40) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@6) o_9@@48 f_5@@40)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@6) o_9@@48 f_5@@40))
))) (forall ((o_9@@49 T@Ref) (f_5@@41 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@27) o_9@@49 f_5@@41) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@6) o_9@@49 f_5@@41)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@6) o_9@@49 f_5@@41))
))) (forall ((o_9@@50 T@Ref) (f_5@@42 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@27) o_9@@50 f_5@@42) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@6) o_9@@50 f_5@@42)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@6) o_9@@50 f_5@@42))
))) (forall ((o_9@@51 T@Ref) (f_5@@43 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@27) o_9@@51 f_5@@43) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@6) o_9@@51 f_5@@43)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@6) o_9@@51 f_5@@43))
))) (forall ((o_9@@52 T@Ref) (f_5@@44 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@27) o_9@@52 f_5@@44) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@6) o_9@@52 f_5@@44)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@6) o_9@@52 f_5@@44))
))) (forall ((o_9@@53 T@Ref) (f_5@@45 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@27) o_9@@53 f_5@@45) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@6) o_9@@53 f_5@@45)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@6) o_9@@53 f_5@@45))
))) (forall ((o_9@@54 T@Ref) (f_5@@46 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@27) o_9@@54 f_5@@46) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@6) o_9@@54 f_5@@46)))
 :qid |stdinbpl.2949:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@6) o_9@@54 f_5@@46))
))) (and (and (=> (= (ControlFlow 0 74) 73) anon258_Else_correct) (=> (= (ControlFlow 0 74) 65) anon259_Then_correct)) (=> (= (ControlFlow 0 74) 61) anon259_Else_correct))))))))))))))))))))))
(let ((anon257_Else_correct  (=> (and (= perm@14 NoPerm) (= (ControlFlow 0 84) 74)) anon149_correct)))
(let ((anon257_Then_correct  (=> (not (= perm@14 NoPerm)) (and (=> (= (ControlFlow 0 82) (- 0 83)) (<= perm@14 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@26) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) j@0) val))) (=> (<= perm@14 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@26) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@4) this@@15 elems_1) j@0) val)) (=> (= (ControlFlow 0 82) 74) anon149_correct))))))
(let ((anon147_correct  (=> (and (= Mask@26 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@25) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@25) this@@15 size_3 (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@25) this@@15 size_3) perm@13)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@25) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@25))) (= perm@14 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 85) (- 0 86)) (>= perm@14 NoPerm)) (=> (>= perm@14 NoPerm) (and (=> (= (ControlFlow 0 85) 82) anon257_Then_correct) (=> (= (ControlFlow 0 85) 84) anon257_Else_correct)))))))
(let ((anon256_Else_correct  (=> (and (= perm@13 NoPerm) (= (ControlFlow 0 89) 85)) anon147_correct)))
(let ((anon256_Then_correct  (=> (not (= perm@13 NoPerm)) (and (=> (= (ControlFlow 0 87) (- 0 88)) (<= perm@13 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@25) this@@15 size_3))) (=> (<= perm@13 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@25) this@@15 size_3)) (=> (= (ControlFlow 0 87) 85) anon147_correct))))))
(let ((anon145_correct  (=> (and (= Mask@25 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@3) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@3) this@@15 elems_1 (- (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@3) this@@15 elems_1) perm@9)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@3) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@3))) (= perm@13 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (>= perm@13 NoPerm)) (=> (>= perm@13 NoPerm) (and (=> (= (ControlFlow 0 90) 87) anon256_Then_correct) (=> (= (ControlFlow 0 90) 89) anon256_Else_correct)))))))
(let ((anon255_Else_correct  (=> (and (= perm@9 NoPerm) (= (ControlFlow 0 94) 90)) anon145_correct)))
(let ((anon255_Then_correct  (=> (not (= perm@9 NoPerm)) (and (=> (= (ControlFlow 0 92) (- 0 93)) (<= perm@9 (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@3) this@@15 elems_1))) (=> (<= perm@9 (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@3) this@@15 elems_1)) (=> (= (ControlFlow 0 92) 90) anon145_correct))))))
(let ((anon254_Then_correct  (=> (and (state ExhaleHeap@1 ZeroMask) (= perm@6 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 95) (- 0 104)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (and (and (=> (> perm@6 NoPerm) (not (= this@@15 null))) (= Mask@15 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) this@@15 elems_1 (+ (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) this@@15 elems_1) perm@6)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ZeroMask)))) (and (state ExhaleHeap@1 Mask@15) (= perm@7 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 95) (- 0 103)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (and (and (=> (> perm@7 NoPerm) (not (= this@@15 null))) (= Mask@16 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@15) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@15) this@@15 size_3 (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@15) this@@15 size_3) perm@7)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@15) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@15)))) (and (state ExhaleHeap@1 Mask@16) (= perm@8 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 95) (- 0 102)) (>= perm@8 NoPerm)) (=> (>= perm@8 NoPerm) (=> (=> (> perm@8 NoPerm) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) null))) (=> (and (and (and (= Mask@17 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@16) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@16) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@16) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val) perm@8)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@16) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@16))) (state ExhaleHeap@1 Mask@17)) (and (<= j@0 t_2@1) (<= t_2@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (and (state ExhaleHeap@1 Mask@17) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3) (length_1 Heap@@45 this@@15))) (and (<= (- 0 1) j@0) (< (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1)))))) (and (=> (= (ControlFlow 0 95) (- 0 101)) (forall ((i_19_1 Int) (i_19_2 Int) ) (!  (=> (and (and (and (and (not (= i_19_1 i_19_2)) (and (< j@0 i_19_1) (<= i_19_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (< j@0 i_19_2) (<= i_19_2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_2))))
 :qid |stdinbpl.2808:19|
 :skolemid |149|
))) (=> (forall ((i_19_1@@0 Int) (i_19_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@0 i_19_2@@0)) (and (< j@0 i_19_1@@0) (<= i_19_1@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (< j@0 i_19_2@@0) (<= i_19_2@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_2@@0))))
 :qid |stdinbpl.2808:19|
 :skolemid |149|
)) (=> (and (and (forall ((i_19_1@@1 Int) ) (!  (=> (and (and (< j@0 i_19_1@@1) (<= i_19_1@@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (and (qpRange15 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@1)) (= (invRecv15 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@1)) i_19_1@@1)))
 :qid |stdinbpl.2814:26|
 :skolemid |150|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@1))
)) (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (and (< j@0 (invRecv15 o_9@@55)) (<= (invRecv15 o_9@@55) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange15 o_9@@55)) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (invRecv15 o_9@@55)) o_9@@55))
 :qid |stdinbpl.2818:26|
 :skolemid |151|
 :pattern ( (invRecv15 o_9@@55))
))) (and (forall ((i_19_1@@2 Int) ) (!  (=> (and (< j@0 i_19_1@@2) (<= i_19_1@@2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@2) null)))
 :qid |stdinbpl.2824:26|
 :skolemid |152|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_19_1@@2))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (and (< j@0 (invRecv15 o_9@@56)) (<= (invRecv15 o_9@@56) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange15 o_9@@56)) (and (=> (< NoPerm FullPerm) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (invRecv15 o_9@@56)) o_9@@56)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) o_9@@56 val) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@17) o_9@@56 val) FullPerm)))) (=> (not (and (and (and (< j@0 (invRecv15 o_9@@56)) (<= (invRecv15 o_9@@56) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange15 o_9@@56))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) o_9@@56 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@17) o_9@@56 val))))
 :qid |stdinbpl.2830:26|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) o_9@@56 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@47 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@17) o_9@@57 f_5@@47) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@3) o_9@@57 f_5@@47)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@17) o_9@@57 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@3) o_9@@57 f_5@@47))
)) (forall ((o_9@@58 T@Ref) (f_5@@48 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@17) o_9@@58 f_5@@48) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@3) o_9@@58 f_5@@48)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@17) o_9@@58 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@3) o_9@@58 f_5@@48))
))) (forall ((o_9@@59 T@Ref) (f_5@@49 T@Field_37845_1759) ) (!  (=> (not (= f_5@@49 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@17) o_9@@59 f_5@@49) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) o_9@@59 f_5@@49)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@17) o_9@@59 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) o_9@@59 f_5@@49))
))) (forall ((o_9@@60 T@Ref) (f_5@@50 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@17) o_9@@60 f_5@@50) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@3) o_9@@60 f_5@@50)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@17) o_9@@60 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@3) o_9@@60 f_5@@50))
))) (forall ((o_9@@61 T@Ref) (f_5@@51 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@17) o_9@@61 f_5@@51) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@3) o_9@@61 f_5@@51)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@17) o_9@@61 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@3) o_9@@61 f_5@@51))
))) (forall ((o_9@@62 T@Ref) (f_5@@52 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@17) o_9@@62 f_5@@52) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@3) o_9@@62 f_5@@52)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@17) o_9@@62 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@3) o_9@@62 f_5@@52))
))) (forall ((o_9@@63 T@Ref) (f_5@@53 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@17) o_9@@63 f_5@@53) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@3) o_9@@63 f_5@@53)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@17) o_9@@63 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@3) o_9@@63 f_5@@53))
))) (forall ((o_9@@64 T@Ref) (f_5@@54 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@17) o_9@@64 f_5@@54) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@3) o_9@@64 f_5@@54)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@17) o_9@@64 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@3) o_9@@64 f_5@@54))
))) (forall ((o_9@@65 T@Ref) (f_5@@55 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@17) o_9@@65 f_5@@55) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@3) o_9@@65 f_5@@55)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@17) o_9@@65 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@3) o_9@@65 f_5@@55))
))) (forall ((o_9@@66 T@Ref) (f_5@@56 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@17) o_9@@66 f_5@@56) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@3) o_9@@66 f_5@@56)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@17) o_9@@66 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@3) o_9@@66 f_5@@56))
))) (forall ((o_9@@67 T@Ref) (f_5@@57 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@17) o_9@@67 f_5@@57) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@3) o_9@@67 f_5@@57)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@17) o_9@@67 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@3) o_9@@67 f_5@@57))
))) (forall ((o_9@@68 T@Ref) (f_5@@58 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@17) o_9@@68 f_5@@58) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@3) o_9@@68 f_5@@58)))
 :qid |stdinbpl.2834:33|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@17) o_9@@68 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@3) o_9@@68 f_5@@58))
))) (and (and (and (state ExhaleHeap@1 QPMask@3) (state ExhaleHeap@1 QPMask@3)) (and (forall ((i_20_2 Int) ) (!  (=> (and (<= j@0 i_20_2) (<= i_20_2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (=> (< i_20_2 t_2@1) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_20_2) val) (itemAt Heap@@45 this@@15 i_20_2))))
 :qid |stdinbpl.2841:24|
 :skolemid |155|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_20_2))
)) (state ExhaleHeap@1 QPMask@3))) (and (and (forall ((i_21_1 Int) ) (!  (=> (and (< j@0 i_21_1) (<= i_21_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (=> (> i_21_1 t_2@1) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_21_1) val) (itemAt Heap@@45 this@@15 (- i_21_1 1)))))
 :qid |stdinbpl.2846:24|
 :skolemid |156|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_21_1))
)) (state ExhaleHeap@1 QPMask@3)) (and (> t_2@1 j@0) (state ExhaleHeap@1 QPMask@3))))) (and (=> (= (ControlFlow 0 95) (- 0 100)) (HasDirectPerm_19858_19859 QPMask@3 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@3 this@@15 elems_1) (and (=> (= (ControlFlow 0 95) (- 0 99)) (HasDirectPerm_19858_19859 QPMask@3 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@3 this@@15 elems_1) (and (=> (= (ControlFlow 0 95) (- 0 98)) (HasDirectPerm_19861_1789 QPMask@3 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (- t_2@1 1)) val)) (=> (HasDirectPerm_19861_1789 QPMask@3 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (- t_2@1 1)) val) (and (=> (= (ControlFlow 0 95) (- 0 97)) (= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) t_2@1) val))) (=> (= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) t_2@1) val)) (=> (= Heap@4 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@1) (store (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) t_2@1) val (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (- t_2@1 1)) val)) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@1))) (=> (and (and (state Heap@4 QPMask@3) (= t_2@2 (- t_2@1 1))) (and (state Heap@4 QPMask@3) (= perm@9 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 95) (- 0 96)) (>= perm@9 NoPerm)) (=> (>= perm@9 NoPerm) (and (=> (= (ControlFlow 0 95) 92) anon255_Then_correct) (=> (= (ControlFlow 0 95) 94) anon255_Else_correct)))))))))))))))))))))))))))))))
(let ((anon175_correct true))
(let ((anon271_Else_correct  (=> (and (not (and (< j@0 k_6_2) (< k_6_2 (length_1 Heap@12 this@@15)))) (= (ControlFlow 0 25) 22)) anon175_correct)))
(let ((anon271_Then_correct  (=> (and (< j@0 k_6_2) (< k_6_2 (length_1 Heap@12 this@@15))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (= (itemAt Heap@12 this@@15 k_6_2) (itemAt Heap@@45 this@@15 (- k_6_2 1)))) (=> (= (itemAt Heap@12 this@@15 k_6_2) (itemAt Heap@@45 this@@15 (- k_6_2 1))) (=> (= (ControlFlow 0 23) 22) anon175_correct))))))
(let ((anon270_Else_correct true))
(let ((anon268_Else_correct  (=> (forall ((k_5_1_1 Int) ) (!  (=> (and (<= 0 k_5_1_1) (< k_5_1_1 j@0)) (= (itemAt Heap@12 this@@15 k_5_1_1) (itemAt Heap@@45 this@@15 k_5_1_1)))
 :qid |stdinbpl.3193:20|
 :skolemid |181|
 :pattern ( (|itemAt#frame| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@45) null (AList this@@15)) this@@15 k_5_1_1))
)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (= (itemAt Heap@12 this@@15 j@0) elem_1)) (=> (= (itemAt Heap@12 this@@15 j@0) elem_1) (and (and (=> (= (ControlFlow 0 26) 21) anon270_Else_correct) (=> (= (ControlFlow 0 26) 23) anon271_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon271_Else_correct)))))))
(let ((anon171_correct true))
(let ((anon269_Else_correct  (=> (and (not (and (<= 0 k_4_2) (< k_4_2 j@0))) (= (ControlFlow 0 20) 17)) anon171_correct)))
(let ((anon269_Then_correct  (=> (and (<= 0 k_4_2) (< k_4_2 j@0)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (itemAt Heap@12 this@@15 k_4_2) (itemAt Heap@@45 this@@15 k_4_2))) (=> (= (itemAt Heap@12 this@@15 k_4_2) (itemAt Heap@@45 this@@15 k_4_2)) (=> (= (ControlFlow 0 18) 17) anon171_correct))))))
(let ((anon168_correct  (=> (= Mask@24 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@23) null (AList this@@15) (- (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@23) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@23) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@23))) (and (=> (= (ControlFlow 0 28) (- 0 31)) (<= 0 j@0)) (=> (<= 0 j@0) (and (=> (= (ControlFlow 0 28) (- 0 30)) (< j@0 (length_1 Heap@12 this@@15))) (=> (< j@0 (length_1 Heap@12 this@@15)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= (length_1 Heap@12 this@@15) (+ (length_1 Heap@@45 this@@15) 1))) (=> (= (length_1 Heap@12 this@@15) (+ (length_1 Heap@@45 this@@15) 1)) (and (and (=> (= (ControlFlow 0 28) 26) anon268_Else_correct) (=> (= (ControlFlow 0 28) 18) anon269_Then_correct)) (=> (= (ControlFlow 0 28) 20) anon269_Else_correct)))))))))))
(let ((anon267_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 34) 28)) anon168_correct)))
(let ((anon267_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@23) null (AList this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@23) null (AList this@@15))) (=> (= (ControlFlow 0 32) 28) anon168_correct))))))
(let ((anon166_correct  (=> (and (= Heap@10 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@9) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15) (PolymorphicMapType_34793 (store (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) this@@15 elems_1 true) (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@9) null (|AList#sm| this@@15))))) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@9) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@9))) (= Heap@11 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@10) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15) (PolymorphicMapType_34793 (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (store (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) this@@15 size_3 true) (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@10) null (|AList#sm| this@@15))))) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@10) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@10)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_39 T@Ref) (f_19 T@Field_37891_37892) ) (!  (=> (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39 f_19) (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| newPMask@0) o_39 f_19))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| newPMask@0) o_39 f_19))
)) (forall ((o_39@@0 T@Ref) (f_19@@0 T@Field_37845_1759) ) (!  (=> (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@0 f_19@@0) (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@0) o_39@@0 f_19@@0))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@0) o_39@@0 f_19@@0))
))) (forall ((o_39@@1 T@Ref) (f_19@@1 T@Field_34304_53) ) (!  (=> (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@1 f_19@@1) (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| newPMask@0) o_39@@1 f_19@@1))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| newPMask@0) o_39@@1 f_19@@1))
))) (forall ((o_39@@2 T@Ref) (f_19@@2 T@Field_34317_34318) ) (!  (=> (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@2 f_19@@2) (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| newPMask@0) o_39@@2 f_19@@2))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| newPMask@0) o_39@@2 f_19@@2))
))) (forall ((o_39@@3 T@Ref) (f_19@@3 T@Field_19861_19964) ) (!  (=> (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@3 f_19@@3) (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| newPMask@0) o_39@@3 f_19@@3))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| newPMask@0) o_39@@3 f_19@@3))
))) (forall ((o_39@@4 T@Ref) (f_19@@4 T@Field_19861_41608) ) (!  (=> (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@4 f_19@@4) (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| newPMask@0) o_39@@4 f_19@@4))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| newPMask@0) o_39@@4 f_19@@4))
))) (forall ((o_39@@5 T@Ref) (f_19@@5 T@Field_19963_19859) ) (!  (=> (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@5 f_19@@5) (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| newPMask@0) o_39@@5 f_19@@5))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| newPMask@0) o_39@@5 f_19@@5))
))) (forall ((o_39@@6 T@Ref) (f_19@@6 T@Field_19963_1789) ) (!  (=> (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@6 f_19@@6) (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| newPMask@0) o_39@@6 f_19@@6))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| newPMask@0) o_39@@6 f_19@@6))
))) (forall ((o_39@@7 T@Ref) (f_19@@7 T@Field_19963_53) ) (!  (=> (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@7 f_19@@7) (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| newPMask@0) o_39@@7 f_19@@7))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| newPMask@0) o_39@@7 f_19@@7))
))) (forall ((o_39@@8 T@Ref) (f_19@@8 T@Field_19963_34318) ) (!  (=> (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@8 f_19@@8) (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| newPMask@0) o_39@@8 f_19@@8))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| newPMask@0) o_39@@8 f_19@@8))
))) (forall ((o_39@@9 T@Ref) (f_19@@9 T@Field_38264_38265) ) (!  (=> (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@9 f_19@@9) (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| newPMask@0) o_39@@9 f_19@@9))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| newPMask@0) o_39@@9 f_19@@9))
))) (forall ((o_39@@10 T@Ref) (f_19@@10 T@Field_41603_41608) ) (!  (=> (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15))) o_39@@10 f_19@@10) (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| newPMask@0) o_39@@10 f_19@@10))
 :qid |stdinbpl.3159:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| newPMask@0) o_39@@10 f_19@@10))
))) (and (and (forall ((i_31 Int) ) (!  (=> (and (<= 0 i_31) (< i_31 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@11) this@@15 elems_1)))) (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@11) this@@15 elems_1) i_31) val))
 :qid |stdinbpl.3163:20|
 :skolemid |180|
)) (= Heap@12 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@11) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@11) null (|AList#sm| this@@15) newPMask@0) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@11) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@11)))) (and (state Heap@12 Mask@23) (state Heap@12 Mask@23)))) (and (=> (= (ControlFlow 0 35) 32) anon267_Then_correct) (=> (= (ControlFlow 0 35) 34) anon267_Else_correct))))))
(let ((anon266_Else_correct  (=> (HasDirectPerm_19963_19964 Mask@23 null (AList this@@15)) (=> (and (= Heap@9 Heap@6) (= (ControlFlow 0 37) 35)) anon166_correct))))
(let ((anon266_Then_correct  (=> (not (HasDirectPerm_19963_19964 Mask@23 null (AList this@@15))) (=> (and (and (= Heap@7 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@6) null (|AList#sm| this@@15) ZeroPMask) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@6) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@6))) (= Heap@8 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@7) (store (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@7) null (AList this@@15) freshVersion@0) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@7) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@7)))) (and (= Heap@9 Heap@8) (= (ControlFlow 0 36) 35))) anon166_correct))))
(let ((anon164_correct  (=> (= Mask@22 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@21) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@21) this@@15 size_3 (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@21) this@@15 size_3) FullPerm)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@21) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@21))) (and (=> (= (ControlFlow 0 38) (- 0 43)) (<= 0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@6) this@@15 size_3))) (=> (<= 0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@6) this@@15 size_3)) (and (=> (= (ControlFlow 0 38) (- 0 42)) (<= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@6) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (=> (<= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@6) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1))) (and (=> (= (ControlFlow 0 38) (- 0 41)) (< 0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (=> (< 0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1))) (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((i_30 Int) (i_30_1 Int) ) (!  (=> (and (and (and (and (not (= i_30 i_30_1)) (and (<= 0 i_30) (< i_30 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1))))) (and (<= 0 i_30_1) (< i_30_1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30_1))))
 :qid |stdinbpl.3110:17|
 :skolemid |173|
 :pattern ( (neverTriggered18 i_30) (neverTriggered18 i_30_1))
))) (=> (forall ((i_30@@0 Int) (i_30_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_30@@0 i_30_1@@0)) (and (<= 0 i_30@@0) (< i_30@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1))))) (and (<= 0 i_30_1@@0) (< i_30_1@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30_1@@0))))
 :qid |stdinbpl.3110:17|
 :skolemid |173|
 :pattern ( (neverTriggered18 i_30@@0) (neverTriggered18 i_30_1@@0))
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((i_30@@1 Int) ) (!  (=> (and (<= 0 i_30@@1) (< i_30@@1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@22) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@1) val) FullPerm))
 :qid |stdinbpl.3117:17|
 :skolemid |174|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@1))
))) (=> (forall ((i_30@@2 Int) ) (!  (=> (and (<= 0 i_30@@2) (< i_30@@2 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@22) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@2) val) FullPerm))
 :qid |stdinbpl.3117:17|
 :skolemid |174|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@2))
)) (=> (forall ((i_30@@3 Int) ) (!  (=> (and (and (<= 0 i_30@@3) (< i_30@@3 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (< NoPerm FullPerm)) (and (qpRange18 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@3)) (= (invRecv18 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@3)) i_30@@3)))
 :qid |stdinbpl.3123:22|
 :skolemid |175|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@3))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) i_30@@3))
)) (=> (and (forall ((o_9@@69 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv18 o_9@@69)) (< (invRecv18 o_9@@69) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (and (< NoPerm FullPerm) (qpRange18 o_9@@69))) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) (invRecv18 o_9@@69)) o_9@@69))
 :qid |stdinbpl.3127:22|
 :skolemid |176|
 :pattern ( (invRecv18 o_9@@69))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv18 o_9@@70)) (< (invRecv18 o_9@@70) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (and (< NoPerm FullPerm) (qpRange18 o_9@@70))) (and (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1) (invRecv18 o_9@@70)) o_9@@70) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@5) o_9@@70 val) (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@22) o_9@@70 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv18 o_9@@70)) (< (invRecv18 o_9@@70) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)))) (and (< NoPerm FullPerm) (qpRange18 o_9@@70)))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@5) o_9@@70 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@22) o_9@@70 val))))
 :qid |stdinbpl.3133:22|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@5) o_9@@70 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@59 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@22) o_9@@71 f_5@@59) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@5) o_9@@71 f_5@@59)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@5) o_9@@71 f_5@@59))
)) (forall ((o_9@@72 T@Ref) (f_5@@60 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@22) o_9@@72 f_5@@60) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@5) o_9@@72 f_5@@60)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@5) o_9@@72 f_5@@60))
))) (forall ((o_9@@73 T@Ref) (f_5@@61 T@Field_37845_1759) ) (!  (=> (not (= f_5@@61 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@22) o_9@@73 f_5@@61) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@5) o_9@@73 f_5@@61)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@5) o_9@@73 f_5@@61))
))) (forall ((o_9@@74 T@Ref) (f_5@@62 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@22) o_9@@74 f_5@@62) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@5) o_9@@74 f_5@@62)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@5) o_9@@74 f_5@@62))
))) (forall ((o_9@@75 T@Ref) (f_5@@63 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@22) o_9@@75 f_5@@63) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@5) o_9@@75 f_5@@63)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@5) o_9@@75 f_5@@63))
))) (forall ((o_9@@76 T@Ref) (f_5@@64 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@22) o_9@@76 f_5@@64) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@5) o_9@@76 f_5@@64)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@5) o_9@@76 f_5@@64))
))) (forall ((o_9@@77 T@Ref) (f_5@@65 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@22) o_9@@77 f_5@@65) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@5) o_9@@77 f_5@@65)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@5) o_9@@77 f_5@@65))
))) (forall ((o_9@@78 T@Ref) (f_5@@66 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@22) o_9@@78 f_5@@66) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@5) o_9@@78 f_5@@66)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@5) o_9@@78 f_5@@66))
))) (forall ((o_9@@79 T@Ref) (f_5@@67 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@22) o_9@@79 f_5@@67) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@5) o_9@@79 f_5@@67)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@5) o_9@@79 f_5@@67))
))) (forall ((o_9@@80 T@Ref) (f_5@@68 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@22) o_9@@80 f_5@@68) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@5) o_9@@80 f_5@@68)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@5) o_9@@80 f_5@@68))
))) (forall ((o_9@@81 T@Ref) (f_5@@69 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@22) o_9@@81 f_5@@69) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@5) o_9@@81 f_5@@69)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@5) o_9@@81 f_5@@69))
))) (forall ((o_9@@82 T@Ref) (f_5@@70 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@22) o_9@@82 f_5@@70) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@5) o_9@@82 f_5@@70)))
 :qid |stdinbpl.3139:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@5) o_9@@82 f_5@@70))
))) (= Mask@23 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@5) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@5) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@5) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@5)))) (and (and (state Heap@6 Mask@23) (state Heap@6 Mask@23)) (and (|AList#trigger_19963| Heap@6 (AList this@@15)) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@6) null (AList this@@15)) (CombineFrames (FrameFragment_19859 (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@6) this@@15 elems_1)) (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@6) this@@15 size_3)) (FrameFragment_1789 (|AList#condqp1| Heap@6 this@@15)))))))) (and (=> (= (ControlFlow 0 38) 36) anon266_Then_correct) (=> (= (ControlFlow 0 38) 37) anon266_Else_correct))))))))))))))))))
(let ((anon265_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 46) 38)) anon164_correct)))
(let ((anon265_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (<= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@21) this@@15 size_3))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@21) this@@15 size_3)) (=> (= (ControlFlow 0 44) 38) anon164_correct))))))
(let ((anon162_correct  (=> (= Mask@21 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@4) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@4) this@@15 elems_1 (- (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@4) this@@15 elems_1) FullPerm)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@4) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@4))) (and (=> (= (ControlFlow 0 47) 44) anon265_Then_correct) (=> (= (ControlFlow 0 47) 46) anon265_Else_correct)))))
(let ((anon264_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 50) 47)) anon162_correct)))
(let ((anon264_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (<= FullPerm (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@4) this@@15 elems_1))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@4) this@@15 elems_1)) (=> (= (ControlFlow 0 48) 47) anon162_correct))))))
(let ((anon254_Else_correct  (=> (not (> t_2@1 j@0)) (=> (and (state ExhaleHeap@1 QPMask@2) (= perm@10 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 51) (- 0 59)) (>= perm@10 NoPerm)) (=> (>= perm@10 NoPerm) (=> (and (and (=> (> perm@10 NoPerm) (not (= this@@15 null))) (= Mask@18 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@2) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@2) this@@15 elems_1 (+ (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@2) this@@15 elems_1) perm@10)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@2) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@2)))) (and (state ExhaleHeap@1 Mask@18) (= perm@11 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 51) (- 0 58)) (>= perm@11 NoPerm)) (=> (>= perm@11 NoPerm) (=> (and (and (=> (> perm@11 NoPerm) (not (= this@@15 null))) (= Mask@19 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@18) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@18) this@@15 size_3 (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@18) this@@15 size_3) perm@11)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@18) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@18)))) (and (state ExhaleHeap@1 Mask@19) (= perm@12 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 51) (- 0 57)) (>= perm@12 NoPerm)) (=> (>= perm@12 NoPerm) (=> (=> (> perm@12 NoPerm) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) null))) (=> (and (and (and (= Mask@20 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@19) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@19) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@19) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val) perm@12)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@19) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@19))) (state ExhaleHeap@1 Mask@20)) (and (<= j@0 t_2@1) (<= t_2@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (and (state ExhaleHeap@1 Mask@20) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3) (length_1 Heap@@45 this@@15))) (and (<= (- 0 1) j@0) (< (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1)))))) (and (=> (= (ControlFlow 0 51) (- 0 56)) (forall ((i_27_2 Int) (i_27_3 Int) ) (!  (=> (and (and (and (and (not (= i_27_2 i_27_3)) (and (< j@0 i_27_2) (<= i_27_2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (< j@0 i_27_3) (<= i_27_3 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_3))))
 :qid |stdinbpl.3017:17|
 :skolemid |165|
))) (=> (forall ((i_27_2@@0 Int) (i_27_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_27_2@@0 i_27_3@@0)) (and (< j@0 i_27_2@@0) (<= i_27_2@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (and (< j@0 i_27_3@@0) (<= i_27_3@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_3@@0))))
 :qid |stdinbpl.3017:17|
 :skolemid |165|
)) (=> (and (and (forall ((i_27_2@@1 Int) ) (!  (=> (and (and (< j@0 i_27_2@@1) (<= i_27_2@@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (and (qpRange17 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@1)) (= (invRecv17 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@1)) i_27_2@@1)))
 :qid |stdinbpl.3023:24|
 :skolemid |166|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@1))
)) (forall ((o_9@@83 T@Ref) ) (!  (=> (and (and (and (< j@0 (invRecv17 o_9@@83)) (<= (invRecv17 o_9@@83) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange17 o_9@@83)) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (invRecv17 o_9@@83)) o_9@@83))
 :qid |stdinbpl.3027:24|
 :skolemid |167|
 :pattern ( (invRecv17 o_9@@83))
))) (and (forall ((i_27_2@@2 Int) ) (!  (=> (and (< j@0 i_27_2@@2) (<= i_27_2@@2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@2) null)))
 :qid |stdinbpl.3033:24|
 :skolemid |168|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_27_2@@2))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (and (and (< j@0 (invRecv17 o_9@@84)) (<= (invRecv17 o_9@@84) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange17 o_9@@84)) (and (=> (< NoPerm FullPerm) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) (invRecv17 o_9@@84)) o_9@@84)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) o_9@@84 val) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@20) o_9@@84 val) FullPerm)))) (=> (not (and (and (and (< j@0 (invRecv17 o_9@@84)) (<= (invRecv17 o_9@@84) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (< NoPerm FullPerm)) (qpRange17 o_9@@84))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) o_9@@84 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@20) o_9@@84 val))))
 :qid |stdinbpl.3039:24|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) o_9@@84 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@71 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@20) o_9@@85 f_5@@71) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@4) o_9@@85 f_5@@71)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@20) o_9@@85 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@4) o_9@@85 f_5@@71))
)) (forall ((o_9@@86 T@Ref) (f_5@@72 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@20) o_9@@86 f_5@@72) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@4) o_9@@86 f_5@@72)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@20) o_9@@86 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@4) o_9@@86 f_5@@72))
))) (forall ((o_9@@87 T@Ref) (f_5@@73 T@Field_37845_1759) ) (!  (=> (not (= f_5@@73 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@20) o_9@@87 f_5@@73) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) o_9@@87 f_5@@73)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@20) o_9@@87 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) o_9@@87 f_5@@73))
))) (forall ((o_9@@88 T@Ref) (f_5@@74 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@20) o_9@@88 f_5@@74) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@4) o_9@@88 f_5@@74)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@20) o_9@@88 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@4) o_9@@88 f_5@@74))
))) (forall ((o_9@@89 T@Ref) (f_5@@75 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@20) o_9@@89 f_5@@75) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@4) o_9@@89 f_5@@75)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@20) o_9@@89 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@4) o_9@@89 f_5@@75))
))) (forall ((o_9@@90 T@Ref) (f_5@@76 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@20) o_9@@90 f_5@@76) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@4) o_9@@90 f_5@@76)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@20) o_9@@90 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@4) o_9@@90 f_5@@76))
))) (forall ((o_9@@91 T@Ref) (f_5@@77 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@20) o_9@@91 f_5@@77) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@4) o_9@@91 f_5@@77)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@20) o_9@@91 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@4) o_9@@91 f_5@@77))
))) (forall ((o_9@@92 T@Ref) (f_5@@78 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@20) o_9@@92 f_5@@78) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@4) o_9@@92 f_5@@78)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@20) o_9@@92 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@4) o_9@@92 f_5@@78))
))) (forall ((o_9@@93 T@Ref) (f_5@@79 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@20) o_9@@93 f_5@@79) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@4) o_9@@93 f_5@@79)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@20) o_9@@93 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@4) o_9@@93 f_5@@79))
))) (forall ((o_9@@94 T@Ref) (f_5@@80 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@20) o_9@@94 f_5@@80) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@4) o_9@@94 f_5@@80)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@20) o_9@@94 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@4) o_9@@94 f_5@@80))
))) (forall ((o_9@@95 T@Ref) (f_5@@81 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@20) o_9@@95 f_5@@81) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@4) o_9@@95 f_5@@81)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@20) o_9@@95 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@4) o_9@@95 f_5@@81))
))) (forall ((o_9@@96 T@Ref) (f_5@@82 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@20) o_9@@96 f_5@@82) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@4) o_9@@96 f_5@@82)))
 :qid |stdinbpl.3043:31|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@20) o_9@@96 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@4) o_9@@96 f_5@@82))
))) (state ExhaleHeap@1 QPMask@4)) (and (state ExhaleHeap@1 QPMask@4) (forall ((i_28 Int) ) (!  (=> (and (<= j@0 i_28) (<= i_28 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (=> (< i_28 t_2@1) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_28) val) (itemAt Heap@@45 this@@15 i_28))))
 :qid |stdinbpl.3050:22|
 :skolemid |171|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_28))
)))) (and (and (state ExhaleHeap@1 QPMask@4) (forall ((i_29 Int) ) (!  (=> (and (< j@0 i_29) (<= i_29 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 size_3))) (=> (> i_29 t_2@1) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_29) val) (itemAt Heap@@45 this@@15 (- i_29 1)))))
 :qid |stdinbpl.3055:22|
 :skolemid |172|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) i_29))
))) (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4)))) (and (=> (= (ControlFlow 0 51) (- 0 55)) (HasDirectPerm_19858_19859 QPMask@4 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@4 this@@15 elems_1) (and (=> (= (ControlFlow 0 51) (- 0 54)) (= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val)) (=> (and (= Heap@5 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@1) (store (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) this@@15 elems_1) j@0) val elem_1) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@1) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@1))) (state Heap@5 QPMask@4)) (and (=> (= (ControlFlow 0 51) (- 0 53)) (HasDirectPerm_19861_1789 QPMask@4 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 QPMask@4 this@@15 size_3) (and (=> (= (ControlFlow 0 51) (- 0 52)) (= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) this@@15 size_3))) (=> (= FullPerm (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@4) this@@15 size_3)) (=> (and (= Heap@6 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@5) (store (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@5) this@@15 size_3 (+ (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@5) this@@15 size_3) 1)) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@5) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@5))) (state Heap@6 QPMask@4)) (and (=> (= (ControlFlow 0 51) 48) anon264_Then_correct) (=> (= (ControlFlow 0 51) 50) anon264_Else_correct))))))))))))))))))))))))))))))
(let ((anon236_Else_correct  (=> (and (forall ((i_12_1_1 Int) ) (!  (=> (and (< j@0 i_12_1_1) (<= i_12_1_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (=> (> i_12_1_1 t_2@0) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_12_1_1) val) (itemAt Heap@@45 this@@15 (- i_12_1_1 1)))))
 :qid |stdinbpl.2576:24|
 :skolemid |140|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_12_1_1))
)) (IdenticalOnKnownLocations Heap@3 ExhaleHeap@1 QPMask@2)) (and (and (=> (= (ControlFlow 0 156) 149) anon239_Then_correct) (=> (= (ControlFlow 0 156) 95) anon254_Then_correct)) (=> (= (ControlFlow 0 156) 51) anon254_Else_correct)))))
(let ((anon115_correct true))
(let ((anon238_Else_correct  (=> (and (>= t_2@0 i_11_1) (= (ControlFlow 0 15) 11)) anon115_correct)))
(let ((anon238_Then_correct  (=> (> i_11_1 t_2@0) (and (=> (= (ControlFlow 0 13) (- 0 14)) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_11_1) val) (itemAt Heap@@45 this@@15 (- i_11_1 1)))) (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_11_1) val) (itemAt Heap@@45 this@@15 (- i_11_1 1))) (=> (= (ControlFlow 0 13) 11) anon115_correct))))))
(let ((anon237_Then_correct  (=> (and (< j@0 i_11_1) (<= i_11_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (and (=> (= (ControlFlow 0 16) 13) anon238_Then_correct) (=> (= (ControlFlow 0 16) 15) anon238_Else_correct)))))
(let ((anon237_Else_correct  (=> (and (not (and (< j@0 i_11_1) (<= i_11_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)))) (= (ControlFlow 0 12) 11)) anon115_correct)))
(let ((anon233_Else_correct  (=> (forall ((i_10_1_1 Int) ) (!  (=> (and (<= j@0 i_10_1_1) (<= i_10_1_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (=> (< i_10_1_1 t_2@0) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_10_1_1) val) (itemAt Heap@@45 this@@15 i_10_1_1))))
 :qid |stdinbpl.2563:24|
 :skolemid |139|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_10_1_1))
)) (and (and (=> (= (ControlFlow 0 157) 156) anon236_Else_correct) (=> (= (ControlFlow 0 157) 16) anon237_Then_correct)) (=> (= (ControlFlow 0 157) 12) anon237_Else_correct)))))
(let ((anon110_correct true))
(let ((anon235_Else_correct  (=> (and (<= t_2@0 i_9_1) (= (ControlFlow 0 9) 5)) anon110_correct)))
(let ((anon235_Then_correct  (=> (< i_9_1 t_2@0) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_9_1) val) (itemAt Heap@@45 this@@15 i_9_1))) (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_9_1) val) (itemAt Heap@@45 this@@15 i_9_1)) (=> (= (ControlFlow 0 7) 5) anon110_correct))))))
(let ((anon234_Then_correct  (=> (and (<= j@0 i_9_1) (<= i_9_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (and (=> (= (ControlFlow 0 10) 7) anon235_Then_correct) (=> (= (ControlFlow 0 10) 9) anon235_Else_correct)))))
(let ((anon234_Else_correct  (=> (and (not (and (<= j@0 i_9_1) (<= i_9_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)))) (= (ControlFlow 0 6) 5)) anon110_correct)))
(let ((anon106_correct  (=> (= Mask@11 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@10) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@10) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) j@0) val (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@10) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) j@0) val) perm@2)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@10) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@10))) (and (=> (= (ControlFlow 0 158) (- 0 165)) (<= j@0 t_2@0)) (=> (<= j@0 t_2@0) (and (=> (= (ControlFlow 0 158) (- 0 164)) (<= t_2@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (=> (<= t_2@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)) (and (=> (= (ControlFlow 0 158) (- 0 163)) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3) (length_1 Heap@@45 this@@15))) (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3) (length_1 Heap@@45 this@@15)) (and (=> (= (ControlFlow 0 158) (- 0 162)) (<= (- 0 1) j@0)) (=> (<= (- 0 1) j@0) (and (=> (= (ControlFlow 0 158) (- 0 161)) (< (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1)))) (=> (< (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1))) (and (=> (= (ControlFlow 0 158) (- 0 160)) (forall ((i_8_1 Int) (i_8_2 Int) ) (!  (=> (and (and (and (and (not (= i_8_1 i_8_2)) (and (< j@0 i_8_1) (<= i_8_1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)))) (and (< j@0 i_8_2) (<= i_8_2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_2))))
 :qid |stdinbpl.2520:21|
 :skolemid |133|
 :pattern ( (neverTriggered13 i_8_1) (neverTriggered13 i_8_2))
))) (=> (forall ((i_8_1@@0 Int) (i_8_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_1@@0 i_8_2@@0)) (and (< j@0 i_8_1@@0) (<= i_8_1@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)))) (and (< j@0 i_8_2@@0) (<= i_8_2@@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_2@@0))))
 :qid |stdinbpl.2520:21|
 :skolemid |133|
 :pattern ( (neverTriggered13 i_8_1@@0) (neverTriggered13 i_8_2@@0))
)) (and (=> (= (ControlFlow 0 158) (- 0 159)) (forall ((i_8_1@@1 Int) ) (!  (=> (and (< j@0 i_8_1@@1) (<= i_8_1@@1 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@11) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@1) val) FullPerm))
 :qid |stdinbpl.2527:21|
 :skolemid |134|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@1))
))) (=> (forall ((i_8_1@@2 Int) ) (!  (=> (and (< j@0 i_8_1@@2) (<= i_8_1@@2 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (>= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@11) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@2) val) FullPerm))
 :qid |stdinbpl.2527:21|
 :skolemid |134|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@2))
)) (=> (forall ((i_8_1@@3 Int) ) (!  (=> (and (and (< j@0 i_8_1@@3) (<= i_8_1@@3 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (< NoPerm FullPerm)) (and (qpRange13 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@3)) (= (invRecv13 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@3)) i_8_1@@3)))
 :qid |stdinbpl.2533:26|
 :skolemid |135|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@3))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) i_8_1@@3))
)) (=> (and (forall ((o_9@@97 T@Ref) ) (!  (=> (and (and (< j@0 (invRecv13 o_9@@97)) (<= (invRecv13 o_9@@97) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (and (< NoPerm FullPerm) (qpRange13 o_9@@97))) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) (invRecv13 o_9@@97)) o_9@@97))
 :qid |stdinbpl.2537:26|
 :skolemid |136|
 :pattern ( (invRecv13 o_9@@97))
)) (forall ((o_9@@98 T@Ref) ) (!  (and (=> (and (and (< j@0 (invRecv13 o_9@@98)) (<= (invRecv13 o_9@@98) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (and (< NoPerm FullPerm) (qpRange13 o_9@@98))) (and (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) (invRecv13 o_9@@98)) o_9@@98) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@2) o_9@@98 val) (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@11) o_9@@98 val) FullPerm)))) (=> (not (and (and (< j@0 (invRecv13 o_9@@98)) (<= (invRecv13 o_9@@98) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3))) (and (< NoPerm FullPerm) (qpRange13 o_9@@98)))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@2) o_9@@98 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@11) o_9@@98 val))))
 :qid |stdinbpl.2543:26|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@2) o_9@@98 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@99 T@Ref) (f_5@@83 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@11) o_9@@99 f_5@@83) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@2) o_9@@99 f_5@@83)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@2) o_9@@99 f_5@@83))
)) (forall ((o_9@@100 T@Ref) (f_5@@84 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@11) o_9@@100 f_5@@84) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@2) o_9@@100 f_5@@84)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@2) o_9@@100 f_5@@84))
))) (forall ((o_9@@101 T@Ref) (f_5@@85 T@Field_37845_1759) ) (!  (=> (not (= f_5@@85 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@11) o_9@@101 f_5@@85) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@2) o_9@@101 f_5@@85)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@2) o_9@@101 f_5@@85))
))) (forall ((o_9@@102 T@Ref) (f_5@@86 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@11) o_9@@102 f_5@@86) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@2) o_9@@102 f_5@@86)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@2) o_9@@102 f_5@@86))
))) (forall ((o_9@@103 T@Ref) (f_5@@87 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@11) o_9@@103 f_5@@87) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@2) o_9@@103 f_5@@87)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@2) o_9@@103 f_5@@87))
))) (forall ((o_9@@104 T@Ref) (f_5@@88 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@11) o_9@@104 f_5@@88) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@2) o_9@@104 f_5@@88)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@2) o_9@@104 f_5@@88))
))) (forall ((o_9@@105 T@Ref) (f_5@@89 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@11) o_9@@105 f_5@@89) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@2) o_9@@105 f_5@@89)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@2) o_9@@105 f_5@@89))
))) (forall ((o_9@@106 T@Ref) (f_5@@90 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@11) o_9@@106 f_5@@90) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@2) o_9@@106 f_5@@90)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@2) o_9@@106 f_5@@90))
))) (forall ((o_9@@107 T@Ref) (f_5@@91 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@11) o_9@@107 f_5@@91) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@2) o_9@@107 f_5@@91)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@2) o_9@@107 f_5@@91))
))) (forall ((o_9@@108 T@Ref) (f_5@@92 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@11) o_9@@108 f_5@@92) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@2) o_9@@108 f_5@@92)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@2) o_9@@108 f_5@@92))
))) (forall ((o_9@@109 T@Ref) (f_5@@93 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@11) o_9@@109 f_5@@93) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@2) o_9@@109 f_5@@93)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@2) o_9@@109 f_5@@93))
))) (forall ((o_9@@110 T@Ref) (f_5@@94 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@11) o_9@@110 f_5@@94) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@2) o_9@@110 f_5@@94)))
 :qid |stdinbpl.2549:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@2) o_9@@110 f_5@@94))
))) (and (and (=> (= (ControlFlow 0 158) 157) anon233_Else_correct) (=> (= (ControlFlow 0 158) 10) anon234_Then_correct)) (=> (= (ControlFlow 0 158) 6) anon234_Else_correct))))))))))))))))))))))
(let ((anon232_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 168) 158)) anon106_correct)))
(let ((anon232_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 166) (- 0 167)) (<= perm@2 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@10) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) j@0) val))) (=> (<= perm@2 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@10) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@3) this@@15 elems_1) j@0) val)) (=> (= (ControlFlow 0 166) 158) anon106_correct))))))
(let ((anon104_correct  (=> (and (= Mask@10 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@9) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@9) this@@15 size_3 (- (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@9) this@@15 size_3) perm@1)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@9) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@9))) (= perm@2 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 169) (- 0 170)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 169) 166) anon232_Then_correct) (=> (= (ControlFlow 0 169) 168) anon232_Else_correct)))))))
(let ((anon231_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 173) 169)) anon104_correct)))
(let ((anon231_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 171) (- 0 172)) (<= perm@1 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@9) this@@15 size_3))) (=> (<= perm@1 (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@9) this@@15 size_3)) (=> (= (ControlFlow 0 171) 169) anon104_correct))))))
(let ((anon102_correct  (=> (and (= Mask@9 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@8) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@8) this@@15 elems_1 (- (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@8) this@@15 elems_1) perm@0)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@8) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@8))) (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 174) (- 0 175)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (and (=> (= (ControlFlow 0 174) 171) anon231_Then_correct) (=> (= (ControlFlow 0 174) 173) anon231_Else_correct)))))))
(let ((anon230_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 178) 174)) anon102_correct)))
(let ((anon230_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 176) (- 0 177)) (<= perm@0 (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@8) this@@15 elems_1))) (=> (<= perm@0 (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@8) this@@15 elems_1)) (=> (= (ControlFlow 0 176) 174) anon102_correct))))))
(let ((anon100_correct  (=> (state Heap@3 Mask@8) (and (=> (= (ControlFlow 0 179) (- 0 181)) (HasDirectPerm_19861_1789 Mask@8 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 Mask@8 this@@15 size_3) (=> (= t_2@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@3) this@@15 size_3)) (=> (and (state Heap@3 Mask@8) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 179) (- 0 180)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 179) 176) anon230_Then_correct) (=> (= (ControlFlow 0 179) 178) anon230_Else_correct)))))))))))
(let ((anon227_Else_correct  (=> (forall ((i_7_1 Int) ) (!  (=> (and (<= 0 i_7_1) (< i_7_1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) (loc a_2@@1 i_7_1) val) (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_7_1) val)))
 :qid |stdinbpl.2449:24|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) (loc a_2@@1 i_7_1) val))
)) (=> (and (state Heap@1 QPMask@1) (state Heap@1 QPMask@1)) (and (=> (= (ControlFlow 0 184) (- 0 185)) (= FullPerm (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@1) this@@15 elems_1))) (=> (= FullPerm (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@1) this@@15 elems_1)) (=> (= Heap@2 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@1) (store (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1 a_2@@1) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@1))) (=> (and (and (state Heap@2 QPMask@1) (= Mask@8 QPMask@1)) (and (= Heap@3 Heap@2) (= (ControlFlow 0 184) 179))) anon100_correct))))))))
(let ((anon226_Else_correct  (and (=> (= (ControlFlow 0 195) (- 0 196)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 (len a_2@@1)))) (and (<= 0 i_5_2) (< i_5_2 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_5_1) (loc a_2@@1 i_5_2))))
 :qid |stdinbpl.2393:19|
 :skolemid |126|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 (len a_2@@1)))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_5_1@@0) (loc a_2@@1 i_5_2@@0))))
 :qid |stdinbpl.2393:19|
 :skolemid |126|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (and (<= 0 i_5_1@@1) (< i_5_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange12 (loc a_2@@1 i_5_1@@1)) (= (invRecv12 (loc a_2@@1 i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.2399:26|
 :skolemid |127|
 :pattern ( (loc a_2@@1 i_5_1@@1))
 :pattern ( (loc a_2@@1 i_5_1@@1))
)) (forall ((o_9@@111 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv12 o_9@@111)) (< (invRecv12 o_9@@111) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange12 o_9@@111)) (= (loc a_2@@1 (invRecv12 o_9@@111)) o_9@@111))
 :qid |stdinbpl.2403:26|
 :skolemid |128|
 :pattern ( (invRecv12 o_9@@111))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (and (<= 0 i_5_1@@2) (< i_5_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 i_5_1@@2) null)))
 :qid |stdinbpl.2409:26|
 :skolemid |129|
 :pattern ( (loc a_2@@1 i_5_1@@2))
 :pattern ( (loc a_2@@1 i_5_1@@2))
)) (forall ((o_9@@112 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv12 o_9@@112)) (< (invRecv12 o_9@@112) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange12 o_9@@112)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv12 o_9@@112)) o_9@@112)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@1) o_9@@112 val) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@112 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv12 o_9@@112)) (< (invRecv12 o_9@@112) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange12 o_9@@112))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@1) o_9@@112 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@112 val))))
 :qid |stdinbpl.2415:26|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@1) o_9@@112 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@113 T@Ref) (f_5@@95 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@0) o_9@@113 f_5@@95) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@1) o_9@@113 f_5@@95)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@0) o_9@@113 f_5@@95))
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@1) o_9@@113 f_5@@95))
)) (forall ((o_9@@114 T@Ref) (f_5@@96 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@0) o_9@@114 f_5@@96) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@1) o_9@@114 f_5@@96)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@0) o_9@@114 f_5@@96))
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@1) o_9@@114 f_5@@96))
))) (forall ((o_9@@115 T@Ref) (f_5@@97 T@Field_37845_1759) ) (!  (=> (not (= f_5@@97 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@115 f_5@@97) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@1) o_9@@115 f_5@@97)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@115 f_5@@97))
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@1) o_9@@115 f_5@@97))
))) (forall ((o_9@@116 T@Ref) (f_5@@98 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@0) o_9@@116 f_5@@98) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@1) o_9@@116 f_5@@98)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@0) o_9@@116 f_5@@98))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@1) o_9@@116 f_5@@98))
))) (forall ((o_9@@117 T@Ref) (f_5@@99 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@0) o_9@@117 f_5@@99) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@1) o_9@@117 f_5@@99)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@0) o_9@@117 f_5@@99))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@1) o_9@@117 f_5@@99))
))) (forall ((o_9@@118 T@Ref) (f_5@@100 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@0) o_9@@118 f_5@@100) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@1) o_9@@118 f_5@@100)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@0) o_9@@118 f_5@@100))
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@1) o_9@@118 f_5@@100))
))) (forall ((o_9@@119 T@Ref) (f_5@@101 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@0) o_9@@119 f_5@@101) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@1) o_9@@119 f_5@@101)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@0) o_9@@119 f_5@@101))
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@1) o_9@@119 f_5@@101))
))) (forall ((o_9@@120 T@Ref) (f_5@@102 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@0) o_9@@120 f_5@@102) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@1) o_9@@120 f_5@@102)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@0) o_9@@120 f_5@@102))
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@1) o_9@@120 f_5@@102))
))) (forall ((o_9@@121 T@Ref) (f_5@@103 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@0) o_9@@121 f_5@@103) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@1) o_9@@121 f_5@@103)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@0) o_9@@121 f_5@@103))
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@1) o_9@@121 f_5@@103))
))) (forall ((o_9@@122 T@Ref) (f_5@@104 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@0) o_9@@122 f_5@@104) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@1) o_9@@122 f_5@@104)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@0) o_9@@122 f_5@@104))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@1) o_9@@122 f_5@@104))
))) (forall ((o_9@@123 T@Ref) (f_5@@105 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@0) o_9@@123 f_5@@105) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@1) o_9@@123 f_5@@105)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@0) o_9@@123 f_5@@105))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@1) o_9@@123 f_5@@105))
))) (forall ((o_9@@124 T@Ref) (f_5@@106 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@0) o_9@@124 f_5@@106) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@1) o_9@@124 f_5@@106)))
 :qid |stdinbpl.2419:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@0) o_9@@124 f_5@@106))
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@1) o_9@@124 f_5@@106))
))) (state Heap@1 QPMask@1)) (and (state Heap@1 QPMask@1) (state Heap@1 QPMask@1))) (and (and (=> (= (ControlFlow 0 195) 184) anon227_Else_correct) (=> (= (ControlFlow 0 195) 192) anon228_Then_correct)) (=> (= (ControlFlow 0 195) 194) anon228_Else_correct))))))))
(let ((anon225_Then_correct  (=> (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1))) (and (=> (= (ControlFlow 0 197) (- 0 198)) (HasDirectPerm_19858_19859 QPMask@0 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@0 this@@15 elems_1) (=> (= (len a_2@@1) (* (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)) 2)) (and (=> (= (ControlFlow 0 197) 183) anon226_Then_correct) (=> (= (ControlFlow 0 197) 195) anon226_Else_correct))))))))
(let ((anon225_Else_correct  (=> (and (and (not (= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (= Mask@8 QPMask@0)) (and (= Heap@3 Heap@1) (= (ControlFlow 0 182) 179))) anon100_correct)))
(let ((anon90_correct  (=> (not (= this@@15 null)) (=> (and (and (and (= Mask@6 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@5) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@5) this@@15 elems_1 (+ (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@5) this@@15 elems_1) FullPerm)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@5) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@5))) (state Heap@1 Mask@6)) (and (not (= this@@15 null)) (= Mask@7 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@6) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@6) this@@15 size_3 (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@6) this@@15 size_3) FullPerm)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@6) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@6))))) (and (and (state Heap@1 Mask@7) (<= 0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) this@@15 size_3))) (and (<= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1))) (< 0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))))) (and (=> (= (ControlFlow 0 199) (- 0 202)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1))))) (and (<= 0 i_3_3) (< i_3_3 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_3))))
 :qid |stdinbpl.2333:15|
 :skolemid |120|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1))))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_3@@0))))
 :qid |stdinbpl.2333:15|
 :skolemid |120|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (< NoPerm FullPerm)) (and (qpRange11 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@1)) (= (invRecv11 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.2339:22|
 :skolemid |121|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@1))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@1))
)) (forall ((o_9@@125 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv11 o_9@@125)) (< (invRecv11 o_9@@125) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange11 o_9@@125)) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) (invRecv11 o_9@@125)) o_9@@125))
 :qid |stdinbpl.2343:22|
 :skolemid |122|
 :pattern ( (invRecv11 o_9@@125))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@2) null)))
 :qid |stdinbpl.2349:22|
 :skolemid |123|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_3_2@@2))
)) (forall ((o_9@@126 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv11 o_9@@126)) (< (invRecv11 o_9@@126) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange11 o_9@@126)) (and (=> (< NoPerm FullPerm) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) (invRecv11 o_9@@126)) o_9@@126)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@126 val) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@7) o_9@@126 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv11 o_9@@126)) (< (invRecv11 o_9@@126) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange11 o_9@@126))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@126 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@7) o_9@@126 val))))
 :qid |stdinbpl.2355:22|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@126 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@127 T@Ref) (f_5@@107 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@7) o_9@@127 f_5@@107) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@0) o_9@@127 f_5@@107)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@7) o_9@@127 f_5@@107))
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@0) o_9@@127 f_5@@107))
)) (forall ((o_9@@128 T@Ref) (f_5@@108 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@7) o_9@@128 f_5@@108) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@0) o_9@@128 f_5@@108)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@7) o_9@@128 f_5@@108))
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@0) o_9@@128 f_5@@108))
))) (forall ((o_9@@129 T@Ref) (f_5@@109 T@Field_37845_1759) ) (!  (=> (not (= f_5@@109 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@7) o_9@@129 f_5@@109) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@129 f_5@@109)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@7) o_9@@129 f_5@@109))
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@129 f_5@@109))
))) (forall ((o_9@@130 T@Ref) (f_5@@110 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@7) o_9@@130 f_5@@110) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@0) o_9@@130 f_5@@110)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@7) o_9@@130 f_5@@110))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@0) o_9@@130 f_5@@110))
))) (forall ((o_9@@131 T@Ref) (f_5@@111 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@7) o_9@@131 f_5@@111) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@0) o_9@@131 f_5@@111)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@7) o_9@@131 f_5@@111))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@0) o_9@@131 f_5@@111))
))) (forall ((o_9@@132 T@Ref) (f_5@@112 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@7) o_9@@132 f_5@@112) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@0) o_9@@132 f_5@@112)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@7) o_9@@132 f_5@@112))
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@0) o_9@@132 f_5@@112))
))) (forall ((o_9@@133 T@Ref) (f_5@@113 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@7) o_9@@133 f_5@@113) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@0) o_9@@133 f_5@@113)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@7) o_9@@133 f_5@@113))
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@0) o_9@@133 f_5@@113))
))) (forall ((o_9@@134 T@Ref) (f_5@@114 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@7) o_9@@134 f_5@@114) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@0) o_9@@134 f_5@@114)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@7) o_9@@134 f_5@@114))
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@0) o_9@@134 f_5@@114))
))) (forall ((o_9@@135 T@Ref) (f_5@@115 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@7) o_9@@135 f_5@@115) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@0) o_9@@135 f_5@@115)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@7) o_9@@135 f_5@@115))
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@0) o_9@@135 f_5@@115))
))) (forall ((o_9@@136 T@Ref) (f_5@@116 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@7) o_9@@136 f_5@@116) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@0) o_9@@136 f_5@@116)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@7) o_9@@136 f_5@@116))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@0) o_9@@136 f_5@@116))
))) (forall ((o_9@@137 T@Ref) (f_5@@117 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@7) o_9@@137 f_5@@117) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@0) o_9@@137 f_5@@117)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@7) o_9@@137 f_5@@117))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@0) o_9@@137 f_5@@117))
))) (forall ((o_9@@138 T@Ref) (f_5@@118 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@7) o_9@@138 f_5@@118) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@0) o_9@@138 f_5@@118)))
 :qid |stdinbpl.2359:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@7) o_9@@138 f_5@@118))
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@0) o_9@@138 f_5@@118))
))) (state Heap@1 QPMask@0)) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0))) (and (=> (= (ControlFlow 0 199) (- 0 201)) (HasDirectPerm_19861_1789 QPMask@0 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 QPMask@0 this@@15 size_3) (and (=> (= (ControlFlow 0 199) (- 0 200)) (HasDirectPerm_19858_19859 QPMask@0 this@@15 elems_1)) (=> (HasDirectPerm_19858_19859 QPMask@0 this@@15 elems_1) (and (=> (= (ControlFlow 0 199) 197) anon225_Then_correct) (=> (= (ControlFlow 0 199) 182) anon225_Else_correct))))))))))))))
(let ((anon224_Else_correct  (=> (HasDirectPerm_19963_19964 Mask@5 null (AList this@@15)) (=> (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 204) 199)) anon90_correct))))
(let ((anon224_Then_correct  (=> (and (and (not (HasDirectPerm_19963_19964 Mask@5 null (AList this@@15))) (= Heap@0 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@0) (store (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@0) null (AList this@@15) newVersion@0) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| ExhaleHeap@0) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| ExhaleHeap@0)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 203) 199))) anon90_correct)))
(let ((anon88_correct  (=> (= Mask@5 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@4) null (AList this@@15) (- (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@4) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@4) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@4))) (and (=> (= (ControlFlow 0 205) 203) anon224_Then_correct) (=> (= (ControlFlow 0 205) 204) anon224_Else_correct)))))
(let ((anon223_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 208) 205)) anon88_correct)))
(let ((anon223_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 206) (- 0 207)) (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@4) null (AList this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@4) null (AList this@@15))) (=> (= (ControlFlow 0 206) 205) anon88_correct))))))
(let ((anon86_correct  (=> (and (and (and (state ExhaleHeap@0 Mask@4) (= (length_1 ExhaleHeap@0 this@@15) (length_1 Heap@@45 this@@15))) (and (state ExhaleHeap@0 Mask@4) (forall ((k_15 Int) ) (!  (=> (and (<= 0 k_15) (< k_15 (length_1 ExhaleHeap@0 this@@15))) (= (itemAt ExhaleHeap@0 this@@15 k_15) (itemAt Heap@@45 this@@15 k_15)))
 :qid |stdinbpl.2296:22|
 :skolemid |119|
 :pattern ( (|itemAt#frame| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@45) null (AList this@@15)) this@@15 k_15))
)))) (and (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4)) (and (|AList#trigger_19963| ExhaleHeap@0 (AList this@@15)) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| ExhaleHeap@0) null (AList this@@15)) (CombineFrames (FrameFragment_19859 (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| ExhaleHeap@0) this@@15 elems_1)) (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| ExhaleHeap@0) this@@15 size_3)) (FrameFragment_1789 (|AList#condqp1| ExhaleHeap@0 this@@15)))))))) (and (=> (= (ControlFlow 0 209) 206) anon223_Then_correct) (=> (= (ControlFlow 0 209) 208) anon223_Else_correct)))))
(let ((anon222_Else_correct  (=> (and (>= 0 j@0) (= (ControlFlow 0 211) 209)) anon86_correct)))
(let ((anon222_Then_correct  (=> (and (and (> j@0 0) (state ExhaleHeap@0 Mask@4)) (and (<= (itemAt ExhaleHeap@0 this@@15 (- j@0 1)) elem_1) (= (ControlFlow 0 210) 209))) anon86_correct)))
(let ((anon208_Else_correct  (=> (not (and (< j@0 (length_1 ExhaleHeap@0 this@@15)) (< (itemAt ExhaleHeap@0 this@@15 j@0) elem_1))) (=> (and (state ExhaleHeap@0 Mask@1) (= Mask@4 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@1) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@1) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@1) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@1)))) (=> (and (and (state ExhaleHeap@0 Mask@4) (<= 0 j@0)) (and (state ExhaleHeap@0 Mask@4) (<= j@0 (length_1 ExhaleHeap@0 this@@15)))) (and (=> (= (ControlFlow 0 212) 210) anon222_Then_correct) (=> (= (ControlFlow 0 212) 211) anon222_Else_correct)))))))
(let ((anon194_Else_correct  (=> (and (forall ((k_9_1_1 Int) ) (!  (=> (and (<= 0 k_9_1_1) (< k_9_1_1 (length_1 Heap@@45 this@@15))) (= (itemAt Heap@@45 this@@15 k_9_1_1) (itemAt Heap@@45 this@@15 k_9_1_1)))
 :qid |stdinbpl.1859:24|
 :skolemid |101|
 :pattern ( (|itemAt#frame| (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@45) null (AList this@@15)) this@@15 k_9_1_1))
)) (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@0 Mask@1)) (and (and (=> (= (ControlFlow 0 299) 298) anon196_Then_correct) (=> (= (ControlFlow 0 299) 265) anon208_Then_correct)) (=> (= (ControlFlow 0 299) 212) anon208_Else_correct)))))
(let ((anon34_correct true))
(let ((anon195_Else_correct  (=> (and (not (and (<= 0 k_8) (< k_8 (length_1 Heap@@45 this@@15)))) (= (ControlFlow 0 4) 1)) anon34_correct)))
(let ((anon195_Then_correct  (=> (and (<= 0 k_8) (< k_8 (length_1 Heap@@45 this@@15))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (itemAt Heap@@45 this@@15 k_8) (itemAt Heap@@45 this@@15 k_8))) (=> (= (itemAt Heap@@45 this@@15 k_8) (itemAt Heap@@45 this@@15 k_8)) (=> (= (ControlFlow 0 2) 1) anon34_correct))))))
(let ((anon31_correct  (and (=> (= (ControlFlow 0 300) (- 0 301)) (= (length_1 Heap@@45 this@@15) (length_1 Heap@@45 this@@15))) (=> (= (length_1 Heap@@45 this@@15) (length_1 Heap@@45 this@@15)) (and (and (=> (= (ControlFlow 0 300) 299) anon194_Else_correct) (=> (= (ControlFlow 0 300) 2) anon195_Then_correct)) (=> (= (ControlFlow 0 300) 4) anon195_Else_correct))))))
(let ((anon193_Else_correct  (=> (and (>= 0 0) (= (ControlFlow 0 304) 300)) anon31_correct)))
(let ((anon193_Then_correct  (=> (> 0 0) (and (=> (= (ControlFlow 0 302) (- 0 303)) (<= (itemAt Heap@@45 this@@15 (- 0 1)) elem_1)) (=> (<= (itemAt Heap@@45 this@@15 (- 0 1)) elem_1) (=> (= (ControlFlow 0 302) 300) anon31_correct))))))
(let ((anon29_correct  (=> (= Mask@1 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15) (- (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@0))) (and (=> (= (ControlFlow 0 305) (- 0 307)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 305) (- 0 306)) (<= 0 (length_1 Heap@@45 this@@15))) (=> (<= 0 (length_1 Heap@@45 this@@15)) (and (=> (= (ControlFlow 0 305) 302) anon193_Then_correct) (=> (= (ControlFlow 0 305) 304) anon193_Else_correct)))))))))
(let ((anon192_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 310) 305)) anon29_correct)))
(let ((anon192_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 308) (- 0 309)) (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15))) (=> (= (ControlFlow 0 308) 305) anon29_correct))))))
(let ((anon177_Else_correct  (=> (state Heap@@45 Mask@0) (and (=> (= (ControlFlow 0 311) 308) anon192_Then_correct) (=> (= (ControlFlow 0 311) 310) anon192_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@45 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@45) this@@15 $allocated) (= Mask@0 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ZeroMask)))) (and (state Heap@@45 Mask@0) (state Heap@@45 Mask@0))) (and (=> (= (ControlFlow 0 354) 353) anon177_Then_correct) (=> (= (ControlFlow 0 354) 311) anon177_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 355) 354) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
