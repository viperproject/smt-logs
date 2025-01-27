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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@45 () T@PolymorphicMapType_34244)
(declare-fun this@@15 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_34265)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_19859 (T@ArrayDomainType) T@FrameType)
(declare-fun FrameFragment_1789 (Int) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_34265)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_34265)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_34265)
(declare-fun Heap@0 () T@PolymorphicMapType_34244)
(declare-fun Heap@1 () T@PolymorphicMapType_34244)
(declare-fun newPMask@0 () T@PolymorphicMapType_34793)
(declare-fun Heap@2 () T@PolymorphicMapType_34244)
(declare-fun Result@0 () Int)
(set-info :boogie-vc-id |length#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (state Heap@@45 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@45) this@@15 $allocated)) (and (= AssumeFunctionsAbove 1) (= Mask@0 (PolymorphicMapType_34265 (store (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15) (+ (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| ZeroMask) null (AList this@@15)) FullPerm)) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| ZeroMask) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| ZeroMask))))) (and (and (state Heap@@45 Mask@0) (state Heap@@45 Mask@0)) (and (|AList#trigger_19963| Heap@@45 (AList this@@15)) (= (select (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@45) null (AList this@@15)) (CombineFrames (FrameFragment_19859 (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1)) (CombineFrames (FrameFragment_1789 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@45) this@@15 size_3)) (FrameFragment_1789 (|AList#condqp1| Heap@@45 this@@15)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) null (AList this@@15)))) (=> (not (= this@@15 null)) (=> (and (and (and (= UnfoldingMask@0 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| Mask@0) (store (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@0) this@@15 elems_1 (+ (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| Mask@0) this@@15 elems_1) FullPerm)) (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| Mask@0) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| Mask@0))) (state Heap@@45 UnfoldingMask@0)) (and (not (= this@@15 null)) (= UnfoldingMask@1 (PolymorphicMapType_34265 (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| UnfoldingMask@0) (store (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| UnfoldingMask@0) this@@15 size_3 (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| UnfoldingMask@0) this@@15 size_3) FullPerm)) (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| UnfoldingMask@0) (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| UnfoldingMask@0))))) (and (and (state Heap@@45 UnfoldingMask@1) (<= 0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@45) this@@15 size_3))) (and (<= (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@45) this@@15 size_3) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1))) (< 0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((i@@0 Int) (i_22 Int) ) (!  (=> (and (and (and (and (not (= i@@0 i_22)) (and (<= 0 i@@0) (< i@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1))))) (and (<= 0 i_22) (< i_22 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i_22))))
 :qid |stdinbpl.392:17|
 :skolemid |29|
))) (=> (forall ((i@@1 Int) (i_22@@0 Int) ) (!  (=> (and (and (and (and (not (= i@@1 i_22@@0)) (and (<= 0 i@@1) (< i@@1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1))))) (and (<= 0 i_22@@0) (< i_22@@0 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@1) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i_22@@0))))
 :qid |stdinbpl.392:17|
 :skolemid |29|
)) (=> (and (and (forall ((i@@2 Int) ) (!  (=> (and (and (<= 0 i@@2) (< i@@2 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1)))) (< NoPerm FullPerm)) (and (qpRange1 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@2)) (= (invRecv1 (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@2)) i@@2)))
 :qid |stdinbpl.398:24|
 :skolemid |30|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@2))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@2))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_9)) (< (invRecv1 o_9) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) (invRecv1 o_9)) o_9))
 :qid |stdinbpl.402:24|
 :skolemid |31|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1)))) (not (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@3) null)))
 :qid |stdinbpl.408:24|
 :skolemid |32|
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@3))
 :pattern ( (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) i@@3))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_9@@0)) (< (invRecv1 o_9@@0) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1) (invRecv1 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@0 val) (+ (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_9@@0)) (< (invRecv1 o_9@@0) (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) this@@15 elems_1)))) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@0 val) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@0 val))))
 :qid |stdinbpl.414:24|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_34304_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_34265_19858_53#PolymorphicMapType_34265| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_34317_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_34265_19858_34318#PolymorphicMapType_34265| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_37845_1759) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_34265_19861_1789#PolymorphicMapType_34265| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_37891_37892) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19859#PolymorphicMapType_34265| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_19861_19964) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@5 f_5@@3) (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_34265_19858_19964#PolymorphicMapType_34265| QPMask@0) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_19861_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@6 f_5@@4) (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@0) o_9@@6 f_5@@4)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_34265_19858_127161#PolymorphicMapType_34265| QPMask@0) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_19963_53) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@7 f_5@@5) (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@0) o_9@@7 f_5@@5)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_34265_19963_53#PolymorphicMapType_34265| QPMask@0) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_19963_34318) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@8 f_5@@6) (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@0) o_9@@8 f_5@@6)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_34265_19963_34318#PolymorphicMapType_34265| QPMask@0) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_19963_1789) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@9 f_5@@7) (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@0) o_9@@9 f_5@@7)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_34265_19963_1789#PolymorphicMapType_34265| QPMask@0) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_19963_19859) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@10 f_5@@8) (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@0) o_9@@10 f_5@@8)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19859#PolymorphicMapType_34265| QPMask@0) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_38264_38265) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@11 f_5@@9) (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@0) o_9@@11 f_5@@9)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_34265_19963_19964#PolymorphicMapType_34265| QPMask@0) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_41603_41608) ) (!  (=> true (= (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@12 f_5@@10) (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@0) o_9@@12 f_5@@10)))
 :qid |stdinbpl.418:31|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| UnfoldingMask@1) o_9@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_34265_19963_126679#PolymorphicMapType_34265| QPMask@0) o_9@@12 f_5@@10))
))) (and (state Heap@@45 QPMask@0) (state Heap@@45 QPMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_19861_1789 QPMask@0 this@@15 size_3)) (=> (HasDirectPerm_19861_1789 QPMask@0 this@@15 size_3) (=> (and (= Heap@0 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@@45) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15) (PolymorphicMapType_34793 (store (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) this@@15 elems_1 true) (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@@45) null (|AList#sm| this@@15))))) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@@45) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@@45))) (= Heap@1 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@0) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15) (PolymorphicMapType_34793 (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (store (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) this@@15 size_3 true) (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))) (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@0) null (|AList#sm| this@@15))))) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@0) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@0)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_37891_37892) ) (!  (=> (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5 f_11) (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| newPMask@0) o_5 f_11))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_19858_19859#PolymorphicMapType_34793| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_37845_1759) ) (!  (=> (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_34304_53) ) (!  (=> (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_19858_53#PolymorphicMapType_34793| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_34317_34318) ) (!  (=> (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_19858_34318#PolymorphicMapType_34793| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_19861_19964) ) (!  (=> (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_19858_38265#PolymorphicMapType_34793| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_19861_41608) ) (!  (=> (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_19858_119353#PolymorphicMapType_34793| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_19963_19859) ) (!  (=> (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_38264_19859#PolymorphicMapType_34793| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_19963_1789) ) (!  (=> (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_38264_1789#PolymorphicMapType_34793| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_19963_53) ) (!  (=> (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_38264_53#PolymorphicMapType_34793| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_19963_34318) ) (!  (=> (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_38264_34318#PolymorphicMapType_34793| newPMask@0) o_5@@8 f_11@@8))
))) (forall ((o_5@@9 T@Ref) (f_11@@9 T@Field_38264_38265) ) (!  (=> (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@9 f_11@@9) (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| newPMask@0) o_5@@9 f_11@@9))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_38264_38265#PolymorphicMapType_34793| newPMask@0) o_5@@9 f_11@@9))
))) (forall ((o_5@@10 T@Ref) (f_11@@10 T@Field_41603_41608) ) (!  (=> (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| (select (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15))) o_5@@10 f_11@@10) (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| newPMask@0) o_5@@10 f_11@@10))
 :qid |stdinbpl.433:31|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_34793_38264_120605#PolymorphicMapType_34793| newPMask@0) o_5@@10 f_11@@10))
))) (forall ((i_1 Int) ) (!  (=> (and (<= 0 i_1) (< i_1 (len (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1)))) (select (|PolymorphicMapType_34793_19861_1789#PolymorphicMapType_34793| newPMask@0) (loc (select (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) this@@15 elems_1) i_1) val))
 :qid |stdinbpl.437:24|
 :skolemid |36|
))) (and (and (= Heap@2 (PolymorphicMapType_34244 (|PolymorphicMapType_34244_19674_53#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19677_19678#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_19964#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19858_19859#PolymorphicMapType_34244| Heap@1) (store (|PolymorphicMapType_34244_19967_41695#PolymorphicMapType_34244| Heap@1) null (|AList#sm| this@@15) newPMask@0) (|PolymorphicMapType_34244_19861_19964#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19861_116119#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_1789#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_19859#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_53#PolymorphicMapType_34244| Heap@1) (|PolymorphicMapType_34244_19963_34318#PolymorphicMapType_34244| Heap@1))) (state Heap@2 Mask@0)) (and (= Result@0 (select (|PolymorphicMapType_34244_19861_1789#PolymorphicMapType_34244| Heap@2) this@@15 size_3)) (= (ControlFlow 0 2) (- 0 1))))) (>= Result@0 0)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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

