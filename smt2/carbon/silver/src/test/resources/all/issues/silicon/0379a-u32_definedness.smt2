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
(declare-sort T@Field_12703_53 0)
(declare-sort T@Field_12716_12717 0)
(declare-sort T@Field_16116_1219 0)
(declare-sort T@Field_16634_16635 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17633_17634 0)
(declare-sort T@Field_20666_20671 0)
(declare-sort T@Field_21030_21035 0)
(declare-sort T@Field_6142_16635 0)
(declare-sort T@Field_6142_20671 0)
(declare-sort T@Field_16634_6143 0)
(declare-sort T@Field_16634_1219 0)
(declare-sort T@Field_16634_53 0)
(declare-sort T@Field_17633_6143 0)
(declare-sort T@Field_17633_1219 0)
(declare-sort T@Field_17633_53 0)
(declare-datatypes ((T@PolymorphicMapType_12664 0)) (((PolymorphicMapType_12664 (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| (Array T@Ref T@Field_16634_16635 Real)) (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| (Array T@Ref T@Field_12716_12717 Real)) (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| (Array T@Ref T@Field_17633_17634 Real)) (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| (Array T@Ref T@Field_16116_1219 Real)) (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| (Array T@Ref T@Field_16634_6143 Real)) (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| (Array T@Ref T@Field_16634_1219 Real)) (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| (Array T@Ref T@Field_16634_53 Real)) (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| (Array T@Ref T@Field_21030_21035 Real)) (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| (Array T@Ref T@Field_6142_16635 Real)) (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| (Array T@Ref T@Field_12703_53 Real)) (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| (Array T@Ref T@Field_6142_20671 Real)) (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| (Array T@Ref T@Field_17633_6143 Real)) (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| (Array T@Ref T@Field_17633_1219 Real)) (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| (Array T@Ref T@Field_17633_53 Real)) (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| (Array T@Ref T@Field_20666_20671 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13192 0)) (((PolymorphicMapType_13192 (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| (Array T@Ref T@Field_16116_1219 Bool)) (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| (Array T@Ref T@Field_12716_12717 Bool)) (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| (Array T@Ref T@Field_12703_53 Bool)) (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| (Array T@Ref T@Field_6142_16635 Bool)) (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| (Array T@Ref T@Field_6142_20671 Bool)) (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| (Array T@Ref T@Field_16634_1219 Bool)) (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| (Array T@Ref T@Field_16634_6143 Bool)) (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| (Array T@Ref T@Field_16634_53 Bool)) (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| (Array T@Ref T@Field_16634_16635 Bool)) (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| (Array T@Ref T@Field_21030_21035 Bool)) (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| (Array T@Ref T@Field_17633_1219 Bool)) (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| (Array T@Ref T@Field_17633_6143 Bool)) (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| (Array T@Ref T@Field_17633_53 Bool)) (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| (Array T@Ref T@Field_17633_17634 Bool)) (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| (Array T@Ref T@Field_20666_20671 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12643 0)) (((PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| (Array T@Ref T@Field_12703_53 Bool)) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| (Array T@Ref T@Field_12716_12717 T@Ref)) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| (Array T@Ref T@Field_16116_1219 Int)) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| (Array T@Ref T@Field_16634_16635 T@FrameType)) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| (Array T@Ref T@Field_17633_17634 T@FrameType)) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| (Array T@Ref T@Field_20666_20671 T@PolymorphicMapType_13192)) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| (Array T@Ref T@Field_21030_21035 T@PolymorphicMapType_13192)) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| (Array T@Ref T@Field_6142_16635 T@FrameType)) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| (Array T@Ref T@Field_6142_20671 T@PolymorphicMapType_13192)) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| (Array T@Ref T@Field_16634_6143 T@Ref)) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| (Array T@Ref T@Field_16634_1219 Int)) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| (Array T@Ref T@Field_16634_53 Bool)) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| (Array T@Ref T@Field_17633_6143 T@Ref)) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| (Array T@Ref T@Field_17633_1219 Int)) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| (Array T@Ref T@Field_17633_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_12703_53)
(declare-fun f$m2 () T@Field_12716_12717)
(declare-fun f$m5 () T@Field_12716_12717)
(declare-fun val_int () T@Field_16116_1219)
(declare-fun val_ref () T@Field_12716_12717)
(declare-fun succHeap (T@PolymorphicMapType_12643 T@PolymorphicMapType_12643) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12643 T@PolymorphicMapType_12643) Bool)
(declare-fun state (T@PolymorphicMapType_12643 T@PolymorphicMapType_12664) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12664) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13192)
(declare-fun P (T@Ref) T@Field_16634_16635)
(declare-fun IsPredicateField_6239_6240 (T@Field_16634_16635) Bool)
(declare-fun u32 (T@Ref) T@Field_17633_17634)
(declare-fun IsPredicateField_6264_6265 (T@Field_17633_17634) Bool)
(declare-fun |f'| (T@PolymorphicMapType_12643 T@Ref) Bool)
(declare-fun dummyFunction_1472 (Bool) Bool)
(declare-fun |f#triggerStateless| (T@Ref) Bool)
(declare-fun |P#trigger_6239| (T@PolymorphicMapType_12643 T@Field_16634_16635) Bool)
(declare-fun |P#everUsed_6239| (T@Field_16634_16635) Bool)
(declare-fun |u32#trigger_6264| (T@PolymorphicMapType_12643 T@Field_17633_17634) Bool)
(declare-fun |u32#everUsed_6264| (T@Field_17633_17634) Bool)
(declare-fun |read$'| (T@PolymorphicMapType_12643) Real)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |read$#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun NoPerm () Real)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12643 T@PolymorphicMapType_12643 T@PolymorphicMapType_12664) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6264 (T@Field_17633_17634) T@Field_20666_20671)
(declare-fun HasDirectPerm_17633_16635 (T@PolymorphicMapType_12664 T@Ref T@Field_17633_17634) Bool)
(declare-fun PredicateMaskField_6239 (T@Field_16634_16635) T@Field_21030_21035)
(declare-fun HasDirectPerm_16634_16635 (T@PolymorphicMapType_12664 T@Ref T@Field_16634_16635) Bool)
(declare-fun IsPredicateField_6142_49781 (T@Field_6142_16635) Bool)
(declare-fun PredicateMaskField_6142 (T@Field_6142_16635) T@Field_6142_20671)
(declare-fun HasDirectPerm_6142_16635 (T@PolymorphicMapType_12664 T@Ref T@Field_6142_16635) Bool)
(declare-fun IsWandField_17633_55462 (T@Field_17633_17634) Bool)
(declare-fun WandMaskField_17633 (T@Field_17633_17634) T@Field_20666_20671)
(declare-fun IsWandField_16634_55105 (T@Field_16634_16635) Bool)
(declare-fun WandMaskField_16634 (T@Field_16634_16635) T@Field_21030_21035)
(declare-fun IsWandField_6142_54748 (T@Field_6142_16635) Bool)
(declare-fun WandMaskField_6142 (T@Field_6142_16635) T@Field_6142_20671)
(declare-fun |P#sm| (T@Ref) T@Field_21030_21035)
(declare-fun |u32#sm| (T@Ref) T@Field_20666_20671)
(declare-fun dummyHeap () T@PolymorphicMapType_12643)
(declare-fun ZeroMask () T@PolymorphicMapType_12664)
(declare-fun InsidePredicate_12703_12703 (T@Field_6142_16635 T@FrameType T@Field_6142_16635 T@FrameType) Bool)
(declare-fun InsidePredicate_6264_6264 (T@Field_17633_17634 T@FrameType T@Field_17633_17634 T@FrameType) Bool)
(declare-fun InsidePredicate_6239_16634 (T@Field_16634_16635 T@FrameType T@Field_16634_16635 T@FrameType) Bool)
(declare-fun f_6 (T@PolymorphicMapType_12643 T@Ref) Bool)
(declare-fun IsPredicateField_6142_6143 (T@Field_12716_12717) Bool)
(declare-fun IsWandField_6142_6143 (T@Field_12716_12717) Bool)
(declare-fun IsPredicateField_6148_1219 (T@Field_16116_1219) Bool)
(declare-fun IsWandField_6148_1219 (T@Field_16116_1219) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6264_65751 (T@Field_20666_20671) Bool)
(declare-fun IsWandField_6264_65767 (T@Field_20666_20671) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6264_53 (T@Field_17633_53) Bool)
(declare-fun IsWandField_6264_53 (T@Field_17633_53) Bool)
(declare-fun IsPredicateField_6264_1219 (T@Field_17633_1219) Bool)
(declare-fun IsWandField_6264_1219 (T@Field_17633_1219) Bool)
(declare-fun IsPredicateField_6264_6143 (T@Field_17633_6143) Bool)
(declare-fun IsWandField_6264_6143 (T@Field_17633_6143) Bool)
(declare-fun IsPredicateField_6142_64920 (T@Field_6142_20671) Bool)
(declare-fun IsWandField_6142_64936 (T@Field_6142_20671) Bool)
(declare-fun IsPredicateField_6142_53 (T@Field_12703_53) Bool)
(declare-fun IsWandField_6142_53 (T@Field_12703_53) Bool)
(declare-fun IsPredicateField_6239_64117 (T@Field_21030_21035) Bool)
(declare-fun IsWandField_6239_64133 (T@Field_21030_21035) Bool)
(declare-fun IsPredicateField_6239_53 (T@Field_16634_53) Bool)
(declare-fun IsWandField_6239_53 (T@Field_16634_53) Bool)
(declare-fun IsPredicateField_6239_1219 (T@Field_16634_1219) Bool)
(declare-fun IsWandField_6239_1219 (T@Field_16634_1219) Bool)
(declare-fun IsPredicateField_6239_6143 (T@Field_16634_6143) Bool)
(declare-fun IsWandField_6239_6143 (T@Field_16634_6143) Bool)
(declare-fun HasDirectPerm_17633_49536 (T@PolymorphicMapType_12664 T@Ref T@Field_20666_20671) Bool)
(declare-fun HasDirectPerm_17633_53 (T@PolymorphicMapType_12664 T@Ref T@Field_17633_53) Bool)
(declare-fun HasDirectPerm_17633_1219 (T@PolymorphicMapType_12664 T@Ref T@Field_17633_1219) Bool)
(declare-fun HasDirectPerm_17633_6143 (T@PolymorphicMapType_12664 T@Ref T@Field_17633_6143) Bool)
(declare-fun HasDirectPerm_16634_48418 (T@PolymorphicMapType_12664 T@Ref T@Field_21030_21035) Bool)
(declare-fun HasDirectPerm_16634_53 (T@PolymorphicMapType_12664 T@Ref T@Field_16634_53) Bool)
(declare-fun HasDirectPerm_16634_1219 (T@PolymorphicMapType_12664 T@Ref T@Field_16634_1219) Bool)
(declare-fun HasDirectPerm_16634_6143 (T@PolymorphicMapType_12664 T@Ref T@Field_16634_6143) Bool)
(declare-fun HasDirectPerm_6142_47257 (T@PolymorphicMapType_12664 T@Ref T@Field_6142_20671) Bool)
(declare-fun HasDirectPerm_6142_53 (T@PolymorphicMapType_12664 T@Ref T@Field_12703_53) Bool)
(declare-fun HasDirectPerm_6148_1219 (T@PolymorphicMapType_12664 T@Ref T@Field_16116_1219) Bool)
(declare-fun HasDirectPerm_6142_6143 (T@PolymorphicMapType_12664 T@Ref T@Field_12716_12717) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun read$ (T@PolymorphicMapType_12643) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |read$#triggerStateless| () Real)
(declare-fun sumMask (T@PolymorphicMapType_12664 T@PolymorphicMapType_12664 T@PolymorphicMapType_12664) Bool)
(declare-fun getPredWandId_6239_6240 (T@Field_16634_16635) Int)
(declare-fun getPredWandId_6264_6265 (T@Field_17633_17634) Int)
(declare-fun |f#frame| (T@FrameType T@Ref) Bool)
(declare-fun |read$#frame| (T@FrameType) Real)
(declare-fun InsidePredicate_6264_12703 (T@Field_17633_17634 T@FrameType T@Field_6142_16635 T@FrameType) Bool)
(declare-fun InsidePredicate_12703_16634 (T@Field_6142_16635 T@FrameType T@Field_16634_16635 T@FrameType) Bool)
(declare-fun InsidePredicate_6264_16634 (T@Field_17633_17634 T@FrameType T@Field_16634_16635 T@FrameType) Bool)
(declare-fun InsidePredicate_12703_6264 (T@Field_6142_16635 T@FrameType T@Field_17633_17634 T@FrameType) Bool)
(declare-fun InsidePredicate_6239_12703 (T@Field_16634_16635 T@FrameType T@Field_6142_16635 T@FrameType) Bool)
(declare-fun InsidePredicate_6239_6264 (T@Field_16634_16635 T@FrameType T@Field_17633_17634 T@FrameType) Bool)
(assert (distinct f$m2 f$m5 val_ref)
)
(assert (forall ((Heap0 T@PolymorphicMapType_12643) (Heap1 T@PolymorphicMapType_12643) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12643) (Mask T@PolymorphicMapType_12664) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12643) (Heap1@@0 T@PolymorphicMapType_12643) (Heap2 T@PolymorphicMapType_12643) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20666_20671) ) (!  (not (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17633_17634) ) (!  (not (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17633_53) ) (!  (not (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17633_6143) ) (!  (not (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17633_1219) ) (!  (not (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_21030_21035) ) (!  (not (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16634_16635) ) (!  (not (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16634_53) ) (!  (not (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16634_6143) ) (!  (not (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16634_1219) ) (!  (not (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_6142_20671) ) (!  (not (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_6142_16635) ) (!  (not (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_12703_53) ) (!  (not (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_12716_12717) ) (!  (not (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_16116_1219) ) (!  (not (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_6239_6240 (P self))
 :qid |stdinbpl.785:15|
 :skolemid |51|
 :pattern ( (P self))
)))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_6264_6265 (u32 self@@0))
 :qid |stdinbpl.858:15|
 :skolemid |57|
 :pattern ( (u32 self@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12643) (_pure_1 T@Ref) ) (! (dummyFunction_1472 (|f#triggerStateless| _pure_1))
 :qid |stdinbpl.208:15|
 :skolemid |23|
 :pattern ( (|f'| Heap@@0 _pure_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12643) (self@@1 T@Ref) ) (! (|P#everUsed_6239| (P self@@1))
 :qid |stdinbpl.804:15|
 :skolemid |55|
 :pattern ( (|P#trigger_6239| Heap@@1 (P self@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12643) (self@@2 T@Ref) ) (! (|u32#everUsed_6264| (u32 self@@2))
 :qid |stdinbpl.877:15|
 :skolemid |61|
 :pattern ( (|u32#trigger_6264| Heap@@2 (u32 self@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12643) (Mask@@0 T@PolymorphicMapType_12664) ) (!  (=> (and (state Heap@@3 Mask@@0) (or (< AssumeFunctionsAbove 1) (|read$#trigger| EmptyFrame))) (< NoPerm (|read$'| Heap@@3)))
 :qid |stdinbpl.747:15|
 :skolemid |49|
 :pattern ( (state Heap@@3 Mask@@0) (|read$'| Heap@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12643) (ExhaleHeap T@PolymorphicMapType_12643) (Mask@@1 T@PolymorphicMapType_12664) (pm_f_33 T@Field_17633_17634) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_17633_16635 Mask@@1 null pm_f_33) (IsPredicateField_6264_6265 pm_f_33)) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@4) null (PredicateMaskField_6264 pm_f_33)) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap) null (PredicateMaskField_6264 pm_f_33)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_6264_6265 pm_f_33) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap) null (PredicateMaskField_6264 pm_f_33)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12643) (ExhaleHeap@@0 T@PolymorphicMapType_12643) (Mask@@2 T@PolymorphicMapType_12664) (pm_f_33@@0 T@Field_16634_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_16634_16635 Mask@@2 null pm_f_33@@0) (IsPredicateField_6239_6240 pm_f_33@@0)) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@5) null (PredicateMaskField_6239 pm_f_33@@0)) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@0) null (PredicateMaskField_6239 pm_f_33@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_6239_6240 pm_f_33@@0) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@0) null (PredicateMaskField_6239 pm_f_33@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12643) (ExhaleHeap@@1 T@PolymorphicMapType_12643) (Mask@@3 T@PolymorphicMapType_12664) (pm_f_33@@1 T@Field_6142_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_6142_16635 Mask@@3 null pm_f_33@@1) (IsPredicateField_6142_49781 pm_f_33@@1)) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@6) null (PredicateMaskField_6142 pm_f_33@@1)) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@1) null (PredicateMaskField_6142 pm_f_33@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsPredicateField_6142_49781 pm_f_33@@1) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@1) null (PredicateMaskField_6142 pm_f_33@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12643) (ExhaleHeap@@2 T@PolymorphicMapType_12643) (Mask@@4 T@PolymorphicMapType_12664) (pm_f_33@@2 T@Field_17633_17634) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_17633_16635 Mask@@4 null pm_f_33@@2) (IsWandField_17633_55462 pm_f_33@@2)) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@7) null (WandMaskField_17633 pm_f_33@@2)) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@2) null (WandMaskField_17633 pm_f_33@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_17633_55462 pm_f_33@@2) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@2) null (WandMaskField_17633 pm_f_33@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12643) (ExhaleHeap@@3 T@PolymorphicMapType_12643) (Mask@@5 T@PolymorphicMapType_12664) (pm_f_33@@3 T@Field_16634_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_16634_16635 Mask@@5 null pm_f_33@@3) (IsWandField_16634_55105 pm_f_33@@3)) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@8) null (WandMaskField_16634 pm_f_33@@3)) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@3) null (WandMaskField_16634 pm_f_33@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsWandField_16634_55105 pm_f_33@@3) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@3) null (WandMaskField_16634 pm_f_33@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12643) (ExhaleHeap@@4 T@PolymorphicMapType_12643) (Mask@@6 T@PolymorphicMapType_12664) (pm_f_33@@4 T@Field_6142_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_6142_16635 Mask@@6 null pm_f_33@@4) (IsWandField_6142_54748 pm_f_33@@4)) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@9) null (WandMaskField_6142 pm_f_33@@4)) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@4) null (WandMaskField_6142 pm_f_33@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsWandField_6142_54748 pm_f_33@@4) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@4) null (WandMaskField_6142 pm_f_33@@4)))
)))
(assert (forall ((self@@3 T@Ref) (self2 T@Ref) ) (!  (=> (= (P self@@3) (P self2)) (= self@@3 self2))
 :qid |stdinbpl.795:15|
 :skolemid |53|
 :pattern ( (P self@@3) (P self2))
)))
(assert (forall ((self@@4 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|P#sm| self@@4) (|P#sm| self2@@0)) (= self@@4 self2@@0))
 :qid |stdinbpl.799:15|
 :skolemid |54|
 :pattern ( (|P#sm| self@@4) (|P#sm| self2@@0))
)))
(assert (forall ((self@@5 T@Ref) (self2@@1 T@Ref) ) (!  (=> (= (u32 self@@5) (u32 self2@@1)) (= self@@5 self2@@1))
 :qid |stdinbpl.868:15|
 :skolemid |59|
 :pattern ( (u32 self@@5) (u32 self2@@1))
)))
(assert (forall ((self@@6 T@Ref) (self2@@2 T@Ref) ) (!  (=> (= (|u32#sm| self@@6) (|u32#sm| self2@@2)) (= self@@6 self2@@2))
 :qid |stdinbpl.872:15|
 :skolemid |60|
 :pattern ( (|u32#sm| self@@6) (|u32#sm| self2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12643) (ExhaleHeap@@5 T@PolymorphicMapType_12643) (Mask@@7 T@PolymorphicMapType_12664) (o_63 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@10) o_63 $allocated) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@5) o_63 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@5) o_63 $allocated))
)))
(assert (forall ((p T@Field_6142_16635) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12703_12703 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12703_12703 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17633_17634) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6264_6264 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6264_6264 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_16634_16635) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_6239_16634 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6239_16634 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12643) (Mask@@8 T@PolymorphicMapType_12664) (_pure_1@@0 T@Ref) ) (!  (=> (and (state Heap@@11 Mask@@8) (< AssumeFunctionsAbove 0)) (= (f_6 Heap@@11 _pure_1@@0) (= (ite  (or (>= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@11) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@11) _pure_1@@0 f$m2) val_int) 0) (= (mod (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@11) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@11) _pure_1@@0 f$m2) val_int) 2) 0)) (mod (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@11) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@11) _pure_1@@0 f$m2) val_int) 2) 0) 0)))
 :qid |stdinbpl.214:15|
 :skolemid |24|
 :pattern ( (state Heap@@11 Mask@@8) (f_6 Heap@@11 _pure_1@@0))
 :pattern ( (state Heap@@11 Mask@@8) (|f#triggerStateless| _pure_1@@0) (|P#trigger_6239| Heap@@11 (P _pure_1@@0)))
)))
(assert  (not (IsPredicateField_6142_6143 f$m2)))
(assert  (not (IsWandField_6142_6143 f$m2)))
(assert  (not (IsPredicateField_6142_6143 f$m5)))
(assert  (not (IsWandField_6142_6143 f$m5)))
(assert  (not (IsPredicateField_6148_1219 val_int)))
(assert  (not (IsWandField_6148_1219 val_int)))
(assert  (not (IsPredicateField_6142_6143 val_ref)))
(assert  (not (IsWandField_6142_6143 val_ref)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12643) (ExhaleHeap@@6 T@PolymorphicMapType_12643) (Mask@@9 T@PolymorphicMapType_12664) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12664) (o_2@@14 T@Ref) (f_4@@14 T@Field_20666_20671) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| Mask@@10) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6264_65751 f_4@@14))) (not (IsWandField_6264_65767 f_4@@14))) (<= (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| Mask@@10) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| Mask@@10) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12664) (o_2@@15 T@Ref) (f_4@@15 T@Field_17633_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| Mask@@11) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6264_53 f_4@@15))) (not (IsWandField_6264_53 f_4@@15))) (<= (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| Mask@@11) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| Mask@@11) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12664) (o_2@@16 T@Ref) (f_4@@16 T@Field_17633_1219) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| Mask@@12) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6264_1219 f_4@@16))) (not (IsWandField_6264_1219 f_4@@16))) (<= (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| Mask@@12) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| Mask@@12) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12664) (o_2@@17 T@Ref) (f_4@@17 T@Field_17633_6143) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| Mask@@13) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6264_6143 f_4@@17))) (not (IsWandField_6264_6143 f_4@@17))) (<= (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| Mask@@13) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| Mask@@13) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12664) (o_2@@18 T@Ref) (f_4@@18 T@Field_17633_17634) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| Mask@@14) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6264_6265 f_4@@18))) (not (IsWandField_17633_55462 f_4@@18))) (<= (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| Mask@@14) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| Mask@@14) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12664) (o_2@@19 T@Ref) (f_4@@19 T@Field_6142_20671) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| Mask@@15) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6142_64920 f_4@@19))) (not (IsWandField_6142_64936 f_4@@19))) (<= (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| Mask@@15) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| Mask@@15) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12664) (o_2@@20 T@Ref) (f_4@@20 T@Field_12703_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| Mask@@16) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6142_53 f_4@@20))) (not (IsWandField_6142_53 f_4@@20))) (<= (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| Mask@@16) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| Mask@@16) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12664) (o_2@@21 T@Ref) (f_4@@21 T@Field_16116_1219) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| Mask@@17) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6148_1219 f_4@@21))) (not (IsWandField_6148_1219 f_4@@21))) (<= (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| Mask@@17) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| Mask@@17) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12664) (o_2@@22 T@Ref) (f_4@@22 T@Field_12716_12717) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| Mask@@18) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6142_6143 f_4@@22))) (not (IsWandField_6142_6143 f_4@@22))) (<= (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| Mask@@18) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| Mask@@18) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12664) (o_2@@23 T@Ref) (f_4@@23 T@Field_6142_16635) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| Mask@@19) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6142_49781 f_4@@23))) (not (IsWandField_6142_54748 f_4@@23))) (<= (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| Mask@@19) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| Mask@@19) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12664) (o_2@@24 T@Ref) (f_4@@24 T@Field_21030_21035) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| Mask@@20) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6239_64117 f_4@@24))) (not (IsWandField_6239_64133 f_4@@24))) (<= (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| Mask@@20) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| Mask@@20) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12664) (o_2@@25 T@Ref) (f_4@@25 T@Field_16634_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| Mask@@21) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6239_53 f_4@@25))) (not (IsWandField_6239_53 f_4@@25))) (<= (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| Mask@@21) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| Mask@@21) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12664) (o_2@@26 T@Ref) (f_4@@26 T@Field_16634_1219) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| Mask@@22) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6239_1219 f_4@@26))) (not (IsWandField_6239_1219 f_4@@26))) (<= (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| Mask@@22) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| Mask@@22) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12664) (o_2@@27 T@Ref) (f_4@@27 T@Field_16634_6143) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| Mask@@23) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6239_6143 f_4@@27))) (not (IsWandField_6239_6143 f_4@@27))) (<= (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| Mask@@23) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| Mask@@23) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12664) (o_2@@28 T@Ref) (f_4@@28 T@Field_16634_16635) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| Mask@@24) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6239_6240 f_4@@28))) (not (IsWandField_16634_55105 f_4@@28))) (<= (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| Mask@@24) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| Mask@@24) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12664) (o_2@@29 T@Ref) (f_4@@29 T@Field_20666_20671) ) (! (= (HasDirectPerm_17633_49536 Mask@@25 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| Mask@@25) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17633_49536 Mask@@25 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12664) (o_2@@30 T@Ref) (f_4@@30 T@Field_17633_17634) ) (! (= (HasDirectPerm_17633_16635 Mask@@26 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| Mask@@26) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17633_16635 Mask@@26 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12664) (o_2@@31 T@Ref) (f_4@@31 T@Field_17633_53) ) (! (= (HasDirectPerm_17633_53 Mask@@27 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| Mask@@27) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17633_53 Mask@@27 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12664) (o_2@@32 T@Ref) (f_4@@32 T@Field_17633_1219) ) (! (= (HasDirectPerm_17633_1219 Mask@@28 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| Mask@@28) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17633_1219 Mask@@28 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12664) (o_2@@33 T@Ref) (f_4@@33 T@Field_17633_6143) ) (! (= (HasDirectPerm_17633_6143 Mask@@29 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| Mask@@29) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17633_6143 Mask@@29 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12664) (o_2@@34 T@Ref) (f_4@@34 T@Field_21030_21035) ) (! (= (HasDirectPerm_16634_48418 Mask@@30 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| Mask@@30) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16634_48418 Mask@@30 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12664) (o_2@@35 T@Ref) (f_4@@35 T@Field_16634_16635) ) (! (= (HasDirectPerm_16634_16635 Mask@@31 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| Mask@@31) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16634_16635 Mask@@31 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_12664) (o_2@@36 T@Ref) (f_4@@36 T@Field_16634_53) ) (! (= (HasDirectPerm_16634_53 Mask@@32 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| Mask@@32) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16634_53 Mask@@32 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_12664) (o_2@@37 T@Ref) (f_4@@37 T@Field_16634_1219) ) (! (= (HasDirectPerm_16634_1219 Mask@@33 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| Mask@@33) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16634_1219 Mask@@33 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_12664) (o_2@@38 T@Ref) (f_4@@38 T@Field_16634_6143) ) (! (= (HasDirectPerm_16634_6143 Mask@@34 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| Mask@@34) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16634_6143 Mask@@34 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_12664) (o_2@@39 T@Ref) (f_4@@39 T@Field_6142_20671) ) (! (= (HasDirectPerm_6142_47257 Mask@@35 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| Mask@@35) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6142_47257 Mask@@35 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_12664) (o_2@@40 T@Ref) (f_4@@40 T@Field_6142_16635) ) (! (= (HasDirectPerm_6142_16635 Mask@@36 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| Mask@@36) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6142_16635 Mask@@36 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_12664) (o_2@@41 T@Ref) (f_4@@41 T@Field_12703_53) ) (! (= (HasDirectPerm_6142_53 Mask@@37 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| Mask@@37) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6142_53 Mask@@37 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_12664) (o_2@@42 T@Ref) (f_4@@42 T@Field_16116_1219) ) (! (= (HasDirectPerm_6148_1219 Mask@@38 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| Mask@@38) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_1219 Mask@@38 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_12664) (o_2@@43 T@Ref) (f_4@@43 T@Field_12716_12717) ) (! (= (HasDirectPerm_6142_6143 Mask@@39 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| Mask@@39) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6142_6143 Mask@@39 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6@@0) (ite (> p@@2 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12643) (ExhaleHeap@@7 T@PolymorphicMapType_12643) (Mask@@40 T@PolymorphicMapType_12664) (o_63@@0 T@Ref) (f_65 T@Field_20666_20671) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@40) (=> (HasDirectPerm_17633_49536 Mask@@40 o_63@@0 f_65) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@13) o_63@@0 f_65) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@7) o_63@@0 f_65))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@40) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@7) o_63@@0 f_65))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12643) (ExhaleHeap@@8 T@PolymorphicMapType_12643) (Mask@@41 T@PolymorphicMapType_12664) (o_63@@1 T@Ref) (f_65@@0 T@Field_17633_17634) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@41) (=> (HasDirectPerm_17633_16635 Mask@@41 o_63@@1 f_65@@0) (= (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@14) o_63@@1 f_65@@0) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@8) o_63@@1 f_65@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@41) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@8) o_63@@1 f_65@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12643) (ExhaleHeap@@9 T@PolymorphicMapType_12643) (Mask@@42 T@PolymorphicMapType_12664) (o_63@@2 T@Ref) (f_65@@1 T@Field_17633_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@42) (=> (HasDirectPerm_17633_53 Mask@@42 o_63@@2 f_65@@1) (= (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@15) o_63@@2 f_65@@1) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@9) o_63@@2 f_65@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@42) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@9) o_63@@2 f_65@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12643) (ExhaleHeap@@10 T@PolymorphicMapType_12643) (Mask@@43 T@PolymorphicMapType_12664) (o_63@@3 T@Ref) (f_65@@2 T@Field_17633_1219) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@43) (=> (HasDirectPerm_17633_1219 Mask@@43 o_63@@3 f_65@@2) (= (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@16) o_63@@3 f_65@@2) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@10) o_63@@3 f_65@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@43) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@10) o_63@@3 f_65@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12643) (ExhaleHeap@@11 T@PolymorphicMapType_12643) (Mask@@44 T@PolymorphicMapType_12664) (o_63@@4 T@Ref) (f_65@@3 T@Field_17633_6143) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@44) (=> (HasDirectPerm_17633_6143 Mask@@44 o_63@@4 f_65@@3) (= (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@17) o_63@@4 f_65@@3) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@11) o_63@@4 f_65@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@44) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@11) o_63@@4 f_65@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12643) (ExhaleHeap@@12 T@PolymorphicMapType_12643) (Mask@@45 T@PolymorphicMapType_12664) (o_63@@5 T@Ref) (f_65@@4 T@Field_21030_21035) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@45) (=> (HasDirectPerm_16634_48418 Mask@@45 o_63@@5 f_65@@4) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@18) o_63@@5 f_65@@4) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@12) o_63@@5 f_65@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@45) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@12) o_63@@5 f_65@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12643) (ExhaleHeap@@13 T@PolymorphicMapType_12643) (Mask@@46 T@PolymorphicMapType_12664) (o_63@@6 T@Ref) (f_65@@5 T@Field_16634_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@46) (=> (HasDirectPerm_16634_16635 Mask@@46 o_63@@6 f_65@@5) (= (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@19) o_63@@6 f_65@@5) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@13) o_63@@6 f_65@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@46) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@13) o_63@@6 f_65@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12643) (ExhaleHeap@@14 T@PolymorphicMapType_12643) (Mask@@47 T@PolymorphicMapType_12664) (o_63@@7 T@Ref) (f_65@@6 T@Field_16634_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@47) (=> (HasDirectPerm_16634_53 Mask@@47 o_63@@7 f_65@@6) (= (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@20) o_63@@7 f_65@@6) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@14) o_63@@7 f_65@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@47) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@14) o_63@@7 f_65@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12643) (ExhaleHeap@@15 T@PolymorphicMapType_12643) (Mask@@48 T@PolymorphicMapType_12664) (o_63@@8 T@Ref) (f_65@@7 T@Field_16634_1219) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@48) (=> (HasDirectPerm_16634_1219 Mask@@48 o_63@@8 f_65@@7) (= (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@21) o_63@@8 f_65@@7) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@15) o_63@@8 f_65@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@48) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@15) o_63@@8 f_65@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12643) (ExhaleHeap@@16 T@PolymorphicMapType_12643) (Mask@@49 T@PolymorphicMapType_12664) (o_63@@9 T@Ref) (f_65@@8 T@Field_16634_6143) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@49) (=> (HasDirectPerm_16634_6143 Mask@@49 o_63@@9 f_65@@8) (= (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@22) o_63@@9 f_65@@8) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@16) o_63@@9 f_65@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@49) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@16) o_63@@9 f_65@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12643) (ExhaleHeap@@17 T@PolymorphicMapType_12643) (Mask@@50 T@PolymorphicMapType_12664) (o_63@@10 T@Ref) (f_65@@9 T@Field_6142_20671) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@50) (=> (HasDirectPerm_6142_47257 Mask@@50 o_63@@10 f_65@@9) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@23) o_63@@10 f_65@@9) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@17) o_63@@10 f_65@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@50) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@17) o_63@@10 f_65@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12643) (ExhaleHeap@@18 T@PolymorphicMapType_12643) (Mask@@51 T@PolymorphicMapType_12664) (o_63@@11 T@Ref) (f_65@@10 T@Field_6142_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@51) (=> (HasDirectPerm_6142_16635 Mask@@51 o_63@@11 f_65@@10) (= (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@24) o_63@@11 f_65@@10) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@18) o_63@@11 f_65@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@51) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@18) o_63@@11 f_65@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12643) (ExhaleHeap@@19 T@PolymorphicMapType_12643) (Mask@@52 T@PolymorphicMapType_12664) (o_63@@12 T@Ref) (f_65@@11 T@Field_12703_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@52) (=> (HasDirectPerm_6142_53 Mask@@52 o_63@@12 f_65@@11) (= (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@25) o_63@@12 f_65@@11) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@19) o_63@@12 f_65@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@52) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@19) o_63@@12 f_65@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12643) (ExhaleHeap@@20 T@PolymorphicMapType_12643) (Mask@@53 T@PolymorphicMapType_12664) (o_63@@13 T@Ref) (f_65@@12 T@Field_16116_1219) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@53) (=> (HasDirectPerm_6148_1219 Mask@@53 o_63@@13 f_65@@12) (= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@26) o_63@@13 f_65@@12) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@20) o_63@@13 f_65@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@53) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@20) o_63@@13 f_65@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12643) (ExhaleHeap@@21 T@PolymorphicMapType_12643) (Mask@@54 T@PolymorphicMapType_12664) (o_63@@14 T@Ref) (f_65@@13 T@Field_12716_12717) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@54) (=> (HasDirectPerm_6142_6143 Mask@@54 o_63@@14 f_65@@13) (= (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@27) o_63@@14 f_65@@13) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@21) o_63@@14 f_65@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@54) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@21) o_63@@14 f_65@@13))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12643) ) (!  (and (= (read$ Heap@@28) (|read$'| Heap@@28)) (dummyFunction_645 |read$#triggerStateless|))
 :qid |stdinbpl.730:15|
 :skolemid |46|
 :pattern ( (read$ Heap@@28))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_20666_20671) ) (! (= (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_17633_53) ) (! (= (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_17633_1219) ) (! (= (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_17633_6143) ) (! (= (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_17633_17634) ) (! (= (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_6142_20671) ) (! (= (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_12703_53) ) (! (= (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_16116_1219) ) (! (= (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_12716_12717) ) (! (= (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_6142_16635) ) (! (= (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_21030_21035) ) (! (= (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_16634_53) ) (! (= (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_16634_1219) ) (! (= (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_16634_6143) ) (! (= (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_16634_16635) ) (! (= (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12664) (SummandMask1 T@PolymorphicMapType_12664) (SummandMask2 T@PolymorphicMapType_12664) (o_2@@59 T@Ref) (f_4@@59 T@Field_20666_20671) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12664) (SummandMask1@@0 T@PolymorphicMapType_12664) (SummandMask2@@0 T@PolymorphicMapType_12664) (o_2@@60 T@Ref) (f_4@@60 T@Field_17633_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12664) (SummandMask1@@1 T@PolymorphicMapType_12664) (SummandMask2@@1 T@PolymorphicMapType_12664) (o_2@@61 T@Ref) (f_4@@61 T@Field_17633_1219) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12664) (SummandMask1@@2 T@PolymorphicMapType_12664) (SummandMask2@@2 T@PolymorphicMapType_12664) (o_2@@62 T@Ref) (f_4@@62 T@Field_17633_6143) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12664) (SummandMask1@@3 T@PolymorphicMapType_12664) (SummandMask2@@3 T@PolymorphicMapType_12664) (o_2@@63 T@Ref) (f_4@@63 T@Field_17633_17634) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12664) (SummandMask1@@4 T@PolymorphicMapType_12664) (SummandMask2@@4 T@PolymorphicMapType_12664) (o_2@@64 T@Ref) (f_4@@64 T@Field_6142_20671) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12664) (SummandMask1@@5 T@PolymorphicMapType_12664) (SummandMask2@@5 T@PolymorphicMapType_12664) (o_2@@65 T@Ref) (f_4@@65 T@Field_12703_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12664) (SummandMask1@@6 T@PolymorphicMapType_12664) (SummandMask2@@6 T@PolymorphicMapType_12664) (o_2@@66 T@Ref) (f_4@@66 T@Field_16116_1219) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12664) (SummandMask1@@7 T@PolymorphicMapType_12664) (SummandMask2@@7 T@PolymorphicMapType_12664) (o_2@@67 T@Ref) (f_4@@67 T@Field_12716_12717) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12664) (SummandMask1@@8 T@PolymorphicMapType_12664) (SummandMask2@@8 T@PolymorphicMapType_12664) (o_2@@68 T@Ref) (f_4@@68 T@Field_6142_16635) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_12664) (SummandMask1@@9 T@PolymorphicMapType_12664) (SummandMask2@@9 T@PolymorphicMapType_12664) (o_2@@69 T@Ref) (f_4@@69 T@Field_21030_21035) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_12664) (SummandMask1@@10 T@PolymorphicMapType_12664) (SummandMask2@@10 T@PolymorphicMapType_12664) (o_2@@70 T@Ref) (f_4@@70 T@Field_16634_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_12664) (SummandMask1@@11 T@PolymorphicMapType_12664) (SummandMask2@@11 T@PolymorphicMapType_12664) (o_2@@71 T@Ref) (f_4@@71 T@Field_16634_1219) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_12664) (SummandMask1@@12 T@PolymorphicMapType_12664) (SummandMask2@@12 T@PolymorphicMapType_12664) (o_2@@72 T@Ref) (f_4@@72 T@Field_16634_6143) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_12664) (SummandMask1@@13 T@PolymorphicMapType_12664) (SummandMask2@@13 T@PolymorphicMapType_12664) (o_2@@73 T@Ref) (f_4@@73 T@Field_16634_16635) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12643) (ExhaleHeap@@22 T@PolymorphicMapType_12643) (Mask@@55 T@PolymorphicMapType_12664) (pm_f_33@@5 T@Field_17633_17634) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@55) (=> (and (HasDirectPerm_17633_16635 Mask@@55 null pm_f_33@@5) (IsPredicateField_6264_6265 pm_f_33@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33 T@Ref) (f_65@@14 T@Field_16116_1219) ) (!  (=> (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33 f_65@@14) (= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@29) o2_33 f_65@@14) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33 f_65@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33 f_65@@14))
)) (forall ((o2_33@@0 T@Ref) (f_65@@15 T@Field_12716_12717) ) (!  (=> (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@0 f_65@@15) (= (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@29) o2_33@@0 f_65@@15) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@0 f_65@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@0 f_65@@15))
))) (forall ((o2_33@@1 T@Ref) (f_65@@16 T@Field_12703_53) ) (!  (=> (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@1 f_65@@16) (= (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@29) o2_33@@1 f_65@@16) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@1 f_65@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@1 f_65@@16))
))) (forall ((o2_33@@2 T@Ref) (f_65@@17 T@Field_6142_16635) ) (!  (=> (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@2 f_65@@17) (= (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@29) o2_33@@2 f_65@@17) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@2 f_65@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@2 f_65@@17))
))) (forall ((o2_33@@3 T@Ref) (f_65@@18 T@Field_6142_20671) ) (!  (=> (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@3 f_65@@18) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@29) o2_33@@3 f_65@@18) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@3 f_65@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@3 f_65@@18))
))) (forall ((o2_33@@4 T@Ref) (f_65@@19 T@Field_16634_1219) ) (!  (=> (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@4 f_65@@19) (= (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@29) o2_33@@4 f_65@@19) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@4 f_65@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@4 f_65@@19))
))) (forall ((o2_33@@5 T@Ref) (f_65@@20 T@Field_16634_6143) ) (!  (=> (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@5 f_65@@20) (= (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@29) o2_33@@5 f_65@@20) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@5 f_65@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@5 f_65@@20))
))) (forall ((o2_33@@6 T@Ref) (f_65@@21 T@Field_16634_53) ) (!  (=> (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@6 f_65@@21) (= (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@29) o2_33@@6 f_65@@21) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@6 f_65@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@6 f_65@@21))
))) (forall ((o2_33@@7 T@Ref) (f_65@@22 T@Field_16634_16635) ) (!  (=> (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@7 f_65@@22) (= (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@29) o2_33@@7 f_65@@22) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@7 f_65@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@7 f_65@@22))
))) (forall ((o2_33@@8 T@Ref) (f_65@@23 T@Field_21030_21035) ) (!  (=> (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@8 f_65@@23) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@29) o2_33@@8 f_65@@23) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@8 f_65@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@8 f_65@@23))
))) (forall ((o2_33@@9 T@Ref) (f_65@@24 T@Field_17633_1219) ) (!  (=> (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@9 f_65@@24) (= (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@29) o2_33@@9 f_65@@24) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@9 f_65@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@9 f_65@@24))
))) (forall ((o2_33@@10 T@Ref) (f_65@@25 T@Field_17633_6143) ) (!  (=> (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@10 f_65@@25) (= (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@29) o2_33@@10 f_65@@25) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@10 f_65@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@10 f_65@@25))
))) (forall ((o2_33@@11 T@Ref) (f_65@@26 T@Field_17633_53) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@11 f_65@@26) (= (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@29) o2_33@@11 f_65@@26) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@11 f_65@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@11 f_65@@26))
))) (forall ((o2_33@@12 T@Ref) (f_65@@27 T@Field_17633_17634) ) (!  (=> (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@12 f_65@@27) (= (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@29) o2_33@@12 f_65@@27) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@12 f_65@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@12 f_65@@27))
))) (forall ((o2_33@@13 T@Ref) (f_65@@28 T@Field_20666_20671) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) null (PredicateMaskField_6264 pm_f_33@@5))) o2_33@@13 f_65@@28) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@29) o2_33@@13 f_65@@28) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@13 f_65@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@22) o2_33@@13 f_65@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@55) (IsPredicateField_6264_6265 pm_f_33@@5))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12643) (ExhaleHeap@@23 T@PolymorphicMapType_12643) (Mask@@56 T@PolymorphicMapType_12664) (pm_f_33@@6 T@Field_16634_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@56) (=> (and (HasDirectPerm_16634_16635 Mask@@56 null pm_f_33@@6) (IsPredicateField_6239_6240 pm_f_33@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@14 T@Ref) (f_65@@29 T@Field_16116_1219) ) (!  (=> (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@14 f_65@@29) (= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@30) o2_33@@14 f_65@@29) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@14 f_65@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@14 f_65@@29))
)) (forall ((o2_33@@15 T@Ref) (f_65@@30 T@Field_12716_12717) ) (!  (=> (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@15 f_65@@30) (= (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@30) o2_33@@15 f_65@@30) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@15 f_65@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@15 f_65@@30))
))) (forall ((o2_33@@16 T@Ref) (f_65@@31 T@Field_12703_53) ) (!  (=> (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@16 f_65@@31) (= (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@30) o2_33@@16 f_65@@31) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@16 f_65@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@16 f_65@@31))
))) (forall ((o2_33@@17 T@Ref) (f_65@@32 T@Field_6142_16635) ) (!  (=> (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@17 f_65@@32) (= (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@30) o2_33@@17 f_65@@32) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@17 f_65@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@17 f_65@@32))
))) (forall ((o2_33@@18 T@Ref) (f_65@@33 T@Field_6142_20671) ) (!  (=> (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@18 f_65@@33) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@30) o2_33@@18 f_65@@33) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@18 f_65@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@18 f_65@@33))
))) (forall ((o2_33@@19 T@Ref) (f_65@@34 T@Field_16634_1219) ) (!  (=> (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@19 f_65@@34) (= (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@30) o2_33@@19 f_65@@34) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@19 f_65@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@19 f_65@@34))
))) (forall ((o2_33@@20 T@Ref) (f_65@@35 T@Field_16634_6143) ) (!  (=> (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@20 f_65@@35) (= (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@30) o2_33@@20 f_65@@35) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@20 f_65@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@20 f_65@@35))
))) (forall ((o2_33@@21 T@Ref) (f_65@@36 T@Field_16634_53) ) (!  (=> (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@21 f_65@@36) (= (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@30) o2_33@@21 f_65@@36) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@21 f_65@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@21 f_65@@36))
))) (forall ((o2_33@@22 T@Ref) (f_65@@37 T@Field_16634_16635) ) (!  (=> (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@22 f_65@@37) (= (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@30) o2_33@@22 f_65@@37) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@22 f_65@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@22 f_65@@37))
))) (forall ((o2_33@@23 T@Ref) (f_65@@38 T@Field_21030_21035) ) (!  (=> (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@23 f_65@@38) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) o2_33@@23 f_65@@38) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@23 f_65@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@23 f_65@@38))
))) (forall ((o2_33@@24 T@Ref) (f_65@@39 T@Field_17633_1219) ) (!  (=> (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@24 f_65@@39) (= (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@30) o2_33@@24 f_65@@39) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@24 f_65@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@24 f_65@@39))
))) (forall ((o2_33@@25 T@Ref) (f_65@@40 T@Field_17633_6143) ) (!  (=> (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@25 f_65@@40) (= (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@30) o2_33@@25 f_65@@40) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@25 f_65@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@25 f_65@@40))
))) (forall ((o2_33@@26 T@Ref) (f_65@@41 T@Field_17633_53) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@26 f_65@@41) (= (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@30) o2_33@@26 f_65@@41) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@26 f_65@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@26 f_65@@41))
))) (forall ((o2_33@@27 T@Ref) (f_65@@42 T@Field_17633_17634) ) (!  (=> (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@27 f_65@@42) (= (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@30) o2_33@@27 f_65@@42) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@27 f_65@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@27 f_65@@42))
))) (forall ((o2_33@@28 T@Ref) (f_65@@43 T@Field_20666_20671) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@30) null (PredicateMaskField_6239 pm_f_33@@6))) o2_33@@28 f_65@@43) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@30) o2_33@@28 f_65@@43) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@28 f_65@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@23) o2_33@@28 f_65@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@56) (IsPredicateField_6239_6240 pm_f_33@@6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12643) (ExhaleHeap@@24 T@PolymorphicMapType_12643) (Mask@@57 T@PolymorphicMapType_12664) (pm_f_33@@7 T@Field_6142_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@57) (=> (and (HasDirectPerm_6142_16635 Mask@@57 null pm_f_33@@7) (IsPredicateField_6142_49781 pm_f_33@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@29 T@Ref) (f_65@@44 T@Field_16116_1219) ) (!  (=> (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@29 f_65@@44) (= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@31) o2_33@@29 f_65@@44) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@29 f_65@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@29 f_65@@44))
)) (forall ((o2_33@@30 T@Ref) (f_65@@45 T@Field_12716_12717) ) (!  (=> (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@30 f_65@@45) (= (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@31) o2_33@@30 f_65@@45) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@30 f_65@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@30 f_65@@45))
))) (forall ((o2_33@@31 T@Ref) (f_65@@46 T@Field_12703_53) ) (!  (=> (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@31 f_65@@46) (= (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@31) o2_33@@31 f_65@@46) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@31 f_65@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@31 f_65@@46))
))) (forall ((o2_33@@32 T@Ref) (f_65@@47 T@Field_6142_16635) ) (!  (=> (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@32 f_65@@47) (= (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@31) o2_33@@32 f_65@@47) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@32 f_65@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@32 f_65@@47))
))) (forall ((o2_33@@33 T@Ref) (f_65@@48 T@Field_6142_20671) ) (!  (=> (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@33 f_65@@48) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) o2_33@@33 f_65@@48) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@33 f_65@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@33 f_65@@48))
))) (forall ((o2_33@@34 T@Ref) (f_65@@49 T@Field_16634_1219) ) (!  (=> (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@34 f_65@@49) (= (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@31) o2_33@@34 f_65@@49) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@34 f_65@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@34 f_65@@49))
))) (forall ((o2_33@@35 T@Ref) (f_65@@50 T@Field_16634_6143) ) (!  (=> (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@35 f_65@@50) (= (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@31) o2_33@@35 f_65@@50) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@35 f_65@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@35 f_65@@50))
))) (forall ((o2_33@@36 T@Ref) (f_65@@51 T@Field_16634_53) ) (!  (=> (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@36 f_65@@51) (= (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@31) o2_33@@36 f_65@@51) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@36 f_65@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@36 f_65@@51))
))) (forall ((o2_33@@37 T@Ref) (f_65@@52 T@Field_16634_16635) ) (!  (=> (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@37 f_65@@52) (= (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@31) o2_33@@37 f_65@@52) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@37 f_65@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@37 f_65@@52))
))) (forall ((o2_33@@38 T@Ref) (f_65@@53 T@Field_21030_21035) ) (!  (=> (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@38 f_65@@53) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@31) o2_33@@38 f_65@@53) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@38 f_65@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@38 f_65@@53))
))) (forall ((o2_33@@39 T@Ref) (f_65@@54 T@Field_17633_1219) ) (!  (=> (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@39 f_65@@54) (= (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@31) o2_33@@39 f_65@@54) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@39 f_65@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@39 f_65@@54))
))) (forall ((o2_33@@40 T@Ref) (f_65@@55 T@Field_17633_6143) ) (!  (=> (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@40 f_65@@55) (= (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@31) o2_33@@40 f_65@@55) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@40 f_65@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@40 f_65@@55))
))) (forall ((o2_33@@41 T@Ref) (f_65@@56 T@Field_17633_53) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@41 f_65@@56) (= (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@31) o2_33@@41 f_65@@56) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@41 f_65@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@41 f_65@@56))
))) (forall ((o2_33@@42 T@Ref) (f_65@@57 T@Field_17633_17634) ) (!  (=> (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@42 f_65@@57) (= (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@31) o2_33@@42 f_65@@57) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@42 f_65@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@42 f_65@@57))
))) (forall ((o2_33@@43 T@Ref) (f_65@@58 T@Field_20666_20671) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@31) null (PredicateMaskField_6142 pm_f_33@@7))) o2_33@@43 f_65@@58) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@31) o2_33@@43 f_65@@58) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@43 f_65@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@24) o2_33@@43 f_65@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@57) (IsPredicateField_6142_49781 pm_f_33@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12643) (ExhaleHeap@@25 T@PolymorphicMapType_12643) (Mask@@58 T@PolymorphicMapType_12664) (pm_f_33@@8 T@Field_17633_17634) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@58) (=> (and (HasDirectPerm_17633_16635 Mask@@58 null pm_f_33@@8) (IsWandField_17633_55462 pm_f_33@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@44 T@Ref) (f_65@@59 T@Field_16116_1219) ) (!  (=> (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@44 f_65@@59) (= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@32) o2_33@@44 f_65@@59) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@44 f_65@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@44 f_65@@59))
)) (forall ((o2_33@@45 T@Ref) (f_65@@60 T@Field_12716_12717) ) (!  (=> (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@45 f_65@@60) (= (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@32) o2_33@@45 f_65@@60) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@45 f_65@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@45 f_65@@60))
))) (forall ((o2_33@@46 T@Ref) (f_65@@61 T@Field_12703_53) ) (!  (=> (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@46 f_65@@61) (= (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@32) o2_33@@46 f_65@@61) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@46 f_65@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@46 f_65@@61))
))) (forall ((o2_33@@47 T@Ref) (f_65@@62 T@Field_6142_16635) ) (!  (=> (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@47 f_65@@62) (= (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@32) o2_33@@47 f_65@@62) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@47 f_65@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@47 f_65@@62))
))) (forall ((o2_33@@48 T@Ref) (f_65@@63 T@Field_6142_20671) ) (!  (=> (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@48 f_65@@63) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@32) o2_33@@48 f_65@@63) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@48 f_65@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@48 f_65@@63))
))) (forall ((o2_33@@49 T@Ref) (f_65@@64 T@Field_16634_1219) ) (!  (=> (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@49 f_65@@64) (= (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@32) o2_33@@49 f_65@@64) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@49 f_65@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@49 f_65@@64))
))) (forall ((o2_33@@50 T@Ref) (f_65@@65 T@Field_16634_6143) ) (!  (=> (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@50 f_65@@65) (= (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@32) o2_33@@50 f_65@@65) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@50 f_65@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@50 f_65@@65))
))) (forall ((o2_33@@51 T@Ref) (f_65@@66 T@Field_16634_53) ) (!  (=> (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@51 f_65@@66) (= (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@32) o2_33@@51 f_65@@66) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@51 f_65@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@51 f_65@@66))
))) (forall ((o2_33@@52 T@Ref) (f_65@@67 T@Field_16634_16635) ) (!  (=> (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@52 f_65@@67) (= (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@32) o2_33@@52 f_65@@67) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@52 f_65@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@52 f_65@@67))
))) (forall ((o2_33@@53 T@Ref) (f_65@@68 T@Field_21030_21035) ) (!  (=> (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@53 f_65@@68) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@32) o2_33@@53 f_65@@68) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@53 f_65@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@53 f_65@@68))
))) (forall ((o2_33@@54 T@Ref) (f_65@@69 T@Field_17633_1219) ) (!  (=> (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@54 f_65@@69) (= (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@32) o2_33@@54 f_65@@69) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@54 f_65@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@54 f_65@@69))
))) (forall ((o2_33@@55 T@Ref) (f_65@@70 T@Field_17633_6143) ) (!  (=> (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@55 f_65@@70) (= (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@32) o2_33@@55 f_65@@70) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@55 f_65@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@55 f_65@@70))
))) (forall ((o2_33@@56 T@Ref) (f_65@@71 T@Field_17633_53) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@56 f_65@@71) (= (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@32) o2_33@@56 f_65@@71) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@56 f_65@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@56 f_65@@71))
))) (forall ((o2_33@@57 T@Ref) (f_65@@72 T@Field_17633_17634) ) (!  (=> (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@57 f_65@@72) (= (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@32) o2_33@@57 f_65@@72) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@57 f_65@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@57 f_65@@72))
))) (forall ((o2_33@@58 T@Ref) (f_65@@73 T@Field_20666_20671) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) null (WandMaskField_17633 pm_f_33@@8))) o2_33@@58 f_65@@73) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@32) o2_33@@58 f_65@@73) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@58 f_65@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@25) o2_33@@58 f_65@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@58) (IsWandField_17633_55462 pm_f_33@@8))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12643) (ExhaleHeap@@26 T@PolymorphicMapType_12643) (Mask@@59 T@PolymorphicMapType_12664) (pm_f_33@@9 T@Field_16634_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@59) (=> (and (HasDirectPerm_16634_16635 Mask@@59 null pm_f_33@@9) (IsWandField_16634_55105 pm_f_33@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@59 T@Ref) (f_65@@74 T@Field_16116_1219) ) (!  (=> (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@59 f_65@@74) (= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@33) o2_33@@59 f_65@@74) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@59 f_65@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@59 f_65@@74))
)) (forall ((o2_33@@60 T@Ref) (f_65@@75 T@Field_12716_12717) ) (!  (=> (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@60 f_65@@75) (= (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@33) o2_33@@60 f_65@@75) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@60 f_65@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@60 f_65@@75))
))) (forall ((o2_33@@61 T@Ref) (f_65@@76 T@Field_12703_53) ) (!  (=> (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@61 f_65@@76) (= (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@33) o2_33@@61 f_65@@76) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@61 f_65@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@61 f_65@@76))
))) (forall ((o2_33@@62 T@Ref) (f_65@@77 T@Field_6142_16635) ) (!  (=> (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@62 f_65@@77) (= (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@33) o2_33@@62 f_65@@77) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@62 f_65@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@62 f_65@@77))
))) (forall ((o2_33@@63 T@Ref) (f_65@@78 T@Field_6142_20671) ) (!  (=> (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@63 f_65@@78) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@33) o2_33@@63 f_65@@78) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@63 f_65@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@63 f_65@@78))
))) (forall ((o2_33@@64 T@Ref) (f_65@@79 T@Field_16634_1219) ) (!  (=> (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@64 f_65@@79) (= (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@33) o2_33@@64 f_65@@79) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@64 f_65@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@64 f_65@@79))
))) (forall ((o2_33@@65 T@Ref) (f_65@@80 T@Field_16634_6143) ) (!  (=> (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@65 f_65@@80) (= (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@33) o2_33@@65 f_65@@80) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@65 f_65@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@65 f_65@@80))
))) (forall ((o2_33@@66 T@Ref) (f_65@@81 T@Field_16634_53) ) (!  (=> (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@66 f_65@@81) (= (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@33) o2_33@@66 f_65@@81) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@66 f_65@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@66 f_65@@81))
))) (forall ((o2_33@@67 T@Ref) (f_65@@82 T@Field_16634_16635) ) (!  (=> (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@67 f_65@@82) (= (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@33) o2_33@@67 f_65@@82) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@67 f_65@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@67 f_65@@82))
))) (forall ((o2_33@@68 T@Ref) (f_65@@83 T@Field_21030_21035) ) (!  (=> (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@68 f_65@@83) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) o2_33@@68 f_65@@83) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@68 f_65@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@68 f_65@@83))
))) (forall ((o2_33@@69 T@Ref) (f_65@@84 T@Field_17633_1219) ) (!  (=> (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@69 f_65@@84) (= (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@33) o2_33@@69 f_65@@84) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@69 f_65@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@69 f_65@@84))
))) (forall ((o2_33@@70 T@Ref) (f_65@@85 T@Field_17633_6143) ) (!  (=> (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@70 f_65@@85) (= (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@33) o2_33@@70 f_65@@85) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@70 f_65@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@70 f_65@@85))
))) (forall ((o2_33@@71 T@Ref) (f_65@@86 T@Field_17633_53) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@71 f_65@@86) (= (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@33) o2_33@@71 f_65@@86) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@71 f_65@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@71 f_65@@86))
))) (forall ((o2_33@@72 T@Ref) (f_65@@87 T@Field_17633_17634) ) (!  (=> (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@72 f_65@@87) (= (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@33) o2_33@@72 f_65@@87) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@72 f_65@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@72 f_65@@87))
))) (forall ((o2_33@@73 T@Ref) (f_65@@88 T@Field_20666_20671) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@33) null (WandMaskField_16634 pm_f_33@@9))) o2_33@@73 f_65@@88) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@33) o2_33@@73 f_65@@88) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@73 f_65@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@26) o2_33@@73 f_65@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@59) (IsWandField_16634_55105 pm_f_33@@9))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12643) (ExhaleHeap@@27 T@PolymorphicMapType_12643) (Mask@@60 T@PolymorphicMapType_12664) (pm_f_33@@10 T@Field_6142_16635) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@60) (=> (and (HasDirectPerm_6142_16635 Mask@@60 null pm_f_33@@10) (IsWandField_6142_54748 pm_f_33@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@74 T@Ref) (f_65@@89 T@Field_16116_1219) ) (!  (=> (select (|PolymorphicMapType_13192_6148_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@74 f_65@@89) (= (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@34) o2_33@@74 f_65@@89) (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@74 f_65@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@74 f_65@@89))
)) (forall ((o2_33@@75 T@Ref) (f_65@@90 T@Field_12716_12717) ) (!  (=> (select (|PolymorphicMapType_13192_6142_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@75 f_65@@90) (= (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@34) o2_33@@75 f_65@@90) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@75 f_65@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@75 f_65@@90))
))) (forall ((o2_33@@76 T@Ref) (f_65@@91 T@Field_12703_53) ) (!  (=> (select (|PolymorphicMapType_13192_6148_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@76 f_65@@91) (= (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@34) o2_33@@76 f_65@@91) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@76 f_65@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@76 f_65@@91))
))) (forall ((o2_33@@77 T@Ref) (f_65@@92 T@Field_6142_16635) ) (!  (=> (select (|PolymorphicMapType_13192_6148_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@77 f_65@@92) (= (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@34) o2_33@@77 f_65@@92) (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@77 f_65@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@77 f_65@@92))
))) (forall ((o2_33@@78 T@Ref) (f_65@@93 T@Field_6142_20671) ) (!  (=> (select (|PolymorphicMapType_13192_6148_51563#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@78 f_65@@93) (= (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) o2_33@@78 f_65@@93) (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@78 f_65@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@78 f_65@@93))
))) (forall ((o2_33@@79 T@Ref) (f_65@@94 T@Field_16634_1219) ) (!  (=> (select (|PolymorphicMapType_13192_16634_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@79 f_65@@94) (= (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@34) o2_33@@79 f_65@@94) (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@79 f_65@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@79 f_65@@94))
))) (forall ((o2_33@@80 T@Ref) (f_65@@95 T@Field_16634_6143) ) (!  (=> (select (|PolymorphicMapType_13192_16634_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@80 f_65@@95) (= (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@34) o2_33@@80 f_65@@95) (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@80 f_65@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@80 f_65@@95))
))) (forall ((o2_33@@81 T@Ref) (f_65@@96 T@Field_16634_53) ) (!  (=> (select (|PolymorphicMapType_13192_16634_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@81 f_65@@96) (= (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@34) o2_33@@81 f_65@@96) (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@81 f_65@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@81 f_65@@96))
))) (forall ((o2_33@@82 T@Ref) (f_65@@97 T@Field_16634_16635) ) (!  (=> (select (|PolymorphicMapType_13192_16634_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@82 f_65@@97) (= (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@34) o2_33@@82 f_65@@97) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@82 f_65@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@82 f_65@@97))
))) (forall ((o2_33@@83 T@Ref) (f_65@@98 T@Field_21030_21035) ) (!  (=> (select (|PolymorphicMapType_13192_16634_52611#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@83 f_65@@98) (= (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@34) o2_33@@83 f_65@@98) (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@83 f_65@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@83 f_65@@98))
))) (forall ((o2_33@@84 T@Ref) (f_65@@99 T@Field_17633_1219) ) (!  (=> (select (|PolymorphicMapType_13192_17633_1219#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@84 f_65@@99) (= (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@34) o2_33@@84 f_65@@99) (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@84 f_65@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@84 f_65@@99))
))) (forall ((o2_33@@85 T@Ref) (f_65@@100 T@Field_17633_6143) ) (!  (=> (select (|PolymorphicMapType_13192_17633_6143#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@85 f_65@@100) (= (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@34) o2_33@@85 f_65@@100) (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@85 f_65@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@85 f_65@@100))
))) (forall ((o2_33@@86 T@Ref) (f_65@@101 T@Field_17633_53) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@86 f_65@@101) (= (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@34) o2_33@@86 f_65@@101) (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@86 f_65@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@86 f_65@@101))
))) (forall ((o2_33@@87 T@Ref) (f_65@@102 T@Field_17633_17634) ) (!  (=> (select (|PolymorphicMapType_13192_17633_16635#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@87 f_65@@102) (= (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@34) o2_33@@87 f_65@@102) (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@87 f_65@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@87 f_65@@102))
))) (forall ((o2_33@@88 T@Ref) (f_65@@103 T@Field_20666_20671) ) (!  (=> (select (|PolymorphicMapType_13192_17633_53659#PolymorphicMapType_13192| (select (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@34) null (WandMaskField_6142 pm_f_33@@10))) o2_33@@88 f_65@@103) (= (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@34) o2_33@@88 f_65@@103) (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@88 f_65@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| ExhaleHeap@@27) o2_33@@88 f_65@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@60) (IsWandField_6142_54748 pm_f_33@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12643) (_pure_1@@1 T@Ref) ) (!  (and (= (f_6 Heap@@35 _pure_1@@1) (|f'| Heap@@35 _pure_1@@1)) (dummyFunction_1472 (|f#triggerStateless| _pure_1@@1)))
 :qid |stdinbpl.204:15|
 :skolemid |22|
 :pattern ( (f_6 Heap@@35 _pure_1@@1))
)))
(assert (forall ((self@@7 T@Ref) ) (! (= (getPredWandId_6239_6240 (P self@@7)) 0)
 :qid |stdinbpl.789:15|
 :skolemid |52|
 :pattern ( (P self@@7))
)))
(assert (forall ((self@@8 T@Ref) ) (! (= (getPredWandId_6264_6265 (u32 self@@8)) 1)
 :qid |stdinbpl.862:15|
 :skolemid |58|
 :pattern ( (u32 self@@8))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12643) (Mask@@61 T@PolymorphicMapType_12664) (_pure_1@@2 T@Ref) ) (!  (=> (state Heap@@36 Mask@@61) (= (|f'| Heap@@36 _pure_1@@2) (|f#frame| (ConditionalFrame (read$ Heap@@36) (select (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@36) null (P _pure_1@@2))) _pure_1@@2)))
 :qid |stdinbpl.221:15|
 :skolemid |25|
 :pattern ( (state Heap@@36 Mask@@61) (|f'| Heap@@36 _pure_1@@2))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12643) ) (! (dummyFunction_645 |read$#triggerStateless|)
 :qid |stdinbpl.734:15|
 :skolemid |47|
 :pattern ( (|read$'| Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12643) (Mask@@62 T@PolymorphicMapType_12664) ) (!  (=> (state Heap@@38 Mask@@62) (= (|read$'| Heap@@38) (|read$#frame| EmptyFrame)))
 :qid |stdinbpl.741:15|
 :skolemid |48|
 :pattern ( (state Heap@@38 Mask@@62) (|read$'| Heap@@38))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12643) (o_29 T@Ref) (f_52 T@Field_20666_20671) (v T@PolymorphicMapType_13192) ) (! (succHeap Heap@@39 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@39) (store (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@39) o_29 f_52 v) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@39) (store (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@39) o_29 f_52 v) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@39) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12643) (o_29@@0 T@Ref) (f_52@@0 T@Field_17633_17634) (v@@0 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@40) (store (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@40) o_29@@0 f_52@@0 v@@0) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@40) (store (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@40) o_29@@0 f_52@@0 v@@0) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@40) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12643) (o_29@@1 T@Ref) (f_52@@1 T@Field_17633_1219) (v@@1 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@41) (store (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@41) o_29@@1 f_52@@1 v@@1) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@41) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@41) (store (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@41) o_29@@1 f_52@@1 v@@1) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12643) (o_29@@2 T@Ref) (f_52@@2 T@Field_17633_6143) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@42) (store (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@42) o_29@@2 f_52@@2 v@@2) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@42) (store (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@42) o_29@@2 f_52@@2 v@@2) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@42) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12643) (o_29@@3 T@Ref) (f_52@@3 T@Field_17633_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@43) (store (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@43) o_29@@3 f_52@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@43) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@43) (store (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@43) o_29@@3 f_52@@3 v@@3)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12643) (o_29@@4 T@Ref) (f_52@@4 T@Field_21030_21035) (v@@4 T@PolymorphicMapType_13192) ) (! (succHeap Heap@@44 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@44) (store (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@44) o_29@@4 f_52@@4 v@@4) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@44) (store (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@44) o_29@@4 f_52@@4 v@@4) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@44) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_12643) (o_29@@5 T@Ref) (f_52@@5 T@Field_16634_16635) (v@@5 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@45) (store (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@45) o_29@@5 f_52@@5 v@@5) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@45) (store (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@45) o_29@@5 f_52@@5 v@@5) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@45) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12643) (o_29@@6 T@Ref) (f_52@@6 T@Field_16634_1219) (v@@6 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@46) (store (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@46) o_29@@6 f_52@@6 v@@6) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@46) (store (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@46) o_29@@6 f_52@@6 v@@6) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@46) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12643) (o_29@@7 T@Ref) (f_52@@7 T@Field_16634_6143) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@47) (store (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@47) o_29@@7 f_52@@7 v@@7) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@47) (store (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@47) o_29@@7 f_52@@7 v@@7) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@47) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12643) (o_29@@8 T@Ref) (f_52@@8 T@Field_16634_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@48) (store (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@48) o_29@@8 f_52@@8 v@@8) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@48) (store (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@48) o_29@@8 f_52@@8 v@@8) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@48) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12643) (o_29@@9 T@Ref) (f_52@@9 T@Field_6142_20671) (v@@9 T@PolymorphicMapType_13192) ) (! (succHeap Heap@@49 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@49) (store (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@49) o_29@@9 f_52@@9 v@@9) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@49) (store (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@49) o_29@@9 f_52@@9 v@@9) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@49) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12643) (o_29@@10 T@Ref) (f_52@@10 T@Field_6142_16635) (v@@10 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@50) (store (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@50) o_29@@10 f_52@@10 v@@10) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@50) (store (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@50) o_29@@10 f_52@@10 v@@10) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@50) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12643) (o_29@@11 T@Ref) (f_52@@11 T@Field_16116_1219) (v@@11 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@51) (store (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@51) o_29@@11 f_52@@11 v@@11) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@51) (store (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@51) o_29@@11 f_52@@11 v@@11) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@51) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12643) (o_29@@12 T@Ref) (f_52@@12 T@Field_12716_12717) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@52) (store (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@52) o_29@@12 f_52@@12 v@@12) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@52) (store (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@52) o_29@@12 f_52@@12 v@@12) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@52) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12643) (o_29@@13 T@Ref) (f_52@@13 T@Field_12703_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_12643 (store (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@53) o_29@@13 f_52@@13 v@@13) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12643 (store (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@53) o_29@@13 f_52@@13 v@@13) (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6148_1219#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6239_6240#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6264_6265#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6268_20790#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6243_21122#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6142_16635#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_6142_47299#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_16634_6143#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_16634_1219#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_16634_53#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_17633_6143#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_17633_1219#PolymorphicMapType_12643| Heap@@53) (|PolymorphicMapType_12643_17633_53#PolymorphicMapType_12643| Heap@@53)))
)))
(assert (forall ((self@@9 T@Ref) ) (! (= (PredicateMaskField_6239 (P self@@9)) (|P#sm| self@@9))
 :qid |stdinbpl.781:15|
 :skolemid |50|
 :pattern ( (PredicateMaskField_6239 (P self@@9)))
)))
(assert (forall ((self@@10 T@Ref) ) (! (= (PredicateMaskField_6264 (u32 self@@10)) (|u32#sm| self@@10))
 :qid |stdinbpl.854:15|
 :skolemid |56|
 :pattern ( (PredicateMaskField_6264 (u32 self@@10)))
)))
(assert (forall ((o_29@@14 T@Ref) (f_33 T@Field_12716_12717) (Heap@@54 T@PolymorphicMapType_12643) ) (!  (=> (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@54) o_29@@14 $allocated) (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@54) (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@54) o_29@@14 f_33) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12643_6017_6018#PolymorphicMapType_12643| Heap@@54) o_29@@14 f_33))
)))
(assert (forall ((p@@3 T@Field_17633_17634) (v_1@@2 T@FrameType) (q T@Field_6142_16635) (w@@2 T@FrameType) (r T@Field_16634_16635) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6264_12703 p@@3 v_1@@2 q w@@2) (InsidePredicate_12703_16634 q w@@2 r u)) (InsidePredicate_6264_16634 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_12703 p@@3 v_1@@2 q w@@2) (InsidePredicate_12703_16634 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_17633_17634) (v_1@@3 T@FrameType) (q@@0 T@Field_6142_16635) (w@@3 T@FrameType) (r@@0 T@Field_6142_16635) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_12703 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12703_12703 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_6264_12703 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_12703 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12703_12703 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_17633_17634) (v_1@@4 T@FrameType) (q@@1 T@Field_6142_16635) (w@@4 T@FrameType) (r@@1 T@Field_17633_17634) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_12703 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12703_6264 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_6264_6264 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_12703 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12703_6264 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_17633_17634) (v_1@@5 T@FrameType) (q@@2 T@Field_16634_16635) (w@@5 T@FrameType) (r@@2 T@Field_16634_16635) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_16634 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_6239_16634 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_6264_16634 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_16634 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_6239_16634 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_17633_17634) (v_1@@6 T@FrameType) (q@@3 T@Field_16634_16635) (w@@6 T@FrameType) (r@@3 T@Field_6142_16635) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_16634 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_6239_12703 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_6264_12703 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_16634 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_6239_12703 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_17633_17634) (v_1@@7 T@FrameType) (q@@4 T@Field_16634_16635) (w@@7 T@FrameType) (r@@4 T@Field_17633_17634) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_16634 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_6239_6264 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_6264_6264 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_16634 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_6239_6264 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_17633_17634) (v_1@@8 T@FrameType) (q@@5 T@Field_17633_17634) (w@@8 T@FrameType) (r@@5 T@Field_16634_16635) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_6264 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6264_16634 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_6264_16634 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_6264 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6264_16634 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_17633_17634) (v_1@@9 T@FrameType) (q@@6 T@Field_17633_17634) (w@@9 T@FrameType) (r@@6 T@Field_6142_16635) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_6264 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6264_12703 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_6264_12703 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_6264 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6264_12703 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_17633_17634) (v_1@@10 T@FrameType) (q@@7 T@Field_17633_17634) (w@@10 T@FrameType) (r@@7 T@Field_17633_17634) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_6264_6264 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6264_6264 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_6264_6264 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6264_6264 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6264_6264 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_6142_16635) (v_1@@11 T@FrameType) (q@@8 T@Field_6142_16635) (w@@11 T@FrameType) (r@@8 T@Field_16634_16635) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_12703 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12703_16634 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_12703_16634 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_12703 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12703_16634 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_6142_16635) (v_1@@12 T@FrameType) (q@@9 T@Field_6142_16635) (w@@12 T@FrameType) (r@@9 T@Field_6142_16635) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_12703 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12703_12703 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_12703_12703 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_12703 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12703_12703 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_6142_16635) (v_1@@13 T@FrameType) (q@@10 T@Field_6142_16635) (w@@13 T@FrameType) (r@@10 T@Field_17633_17634) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_12703 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12703_6264 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_12703_6264 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_12703 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12703_6264 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_6142_16635) (v_1@@14 T@FrameType) (q@@11 T@Field_16634_16635) (w@@14 T@FrameType) (r@@11 T@Field_16634_16635) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_16634 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_6239_16634 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_12703_16634 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_16634 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_6239_16634 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_6142_16635) (v_1@@15 T@FrameType) (q@@12 T@Field_16634_16635) (w@@15 T@FrameType) (r@@12 T@Field_6142_16635) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_16634 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_6239_12703 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_12703_12703 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_16634 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_6239_12703 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_6142_16635) (v_1@@16 T@FrameType) (q@@13 T@Field_16634_16635) (w@@16 T@FrameType) (r@@13 T@Field_17633_17634) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_16634 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_6239_6264 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_12703_6264 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_16634 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_6239_6264 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_6142_16635) (v_1@@17 T@FrameType) (q@@14 T@Field_17633_17634) (w@@17 T@FrameType) (r@@14 T@Field_16634_16635) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_6264 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6264_16634 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_12703_16634 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_6264 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6264_16634 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_6142_16635) (v_1@@18 T@FrameType) (q@@15 T@Field_17633_17634) (w@@18 T@FrameType) (r@@15 T@Field_6142_16635) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_6264 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6264_12703 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_12703_12703 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_6264 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6264_12703 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_6142_16635) (v_1@@19 T@FrameType) (q@@16 T@Field_17633_17634) (w@@19 T@FrameType) (r@@16 T@Field_17633_17634) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_12703_6264 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6264_6264 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_12703_6264 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12703_6264 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6264_6264 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_16634_16635) (v_1@@20 T@FrameType) (q@@17 T@Field_6142_16635) (w@@20 T@FrameType) (r@@17 T@Field_16634_16635) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_12703 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12703_16634 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_6239_16634 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_12703 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12703_16634 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_16634_16635) (v_1@@21 T@FrameType) (q@@18 T@Field_6142_16635) (w@@21 T@FrameType) (r@@18 T@Field_6142_16635) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_12703 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12703_12703 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_6239_12703 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_12703 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12703_12703 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_16634_16635) (v_1@@22 T@FrameType) (q@@19 T@Field_6142_16635) (w@@22 T@FrameType) (r@@19 T@Field_17633_17634) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_12703 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12703_6264 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_6239_6264 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_12703 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12703_6264 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_16634_16635) (v_1@@23 T@FrameType) (q@@20 T@Field_16634_16635) (w@@23 T@FrameType) (r@@20 T@Field_16634_16635) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_16634 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_6239_16634 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_6239_16634 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_16634 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_6239_16634 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_16634_16635) (v_1@@24 T@FrameType) (q@@21 T@Field_16634_16635) (w@@24 T@FrameType) (r@@21 T@Field_6142_16635) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_16634 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_6239_12703 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_6239_12703 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_16634 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_6239_12703 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_16634_16635) (v_1@@25 T@FrameType) (q@@22 T@Field_16634_16635) (w@@25 T@FrameType) (r@@22 T@Field_17633_17634) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_16634 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_6239_6264 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_6239_6264 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_16634 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_6239_6264 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_16634_16635) (v_1@@26 T@FrameType) (q@@23 T@Field_17633_17634) (w@@26 T@FrameType) (r@@23 T@Field_16634_16635) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_6264 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6264_16634 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_6239_16634 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_6264 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6264_16634 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_16634_16635) (v_1@@27 T@FrameType) (q@@24 T@Field_17633_17634) (w@@27 T@FrameType) (r@@24 T@Field_6142_16635) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_6264 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6264_12703 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_6239_12703 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_6264 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6264_12703 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_16634_16635) (v_1@@28 T@FrameType) (q@@25 T@Field_17633_17634) (w@@28 T@FrameType) (r@@25 T@Field_17633_17634) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_6239_6264 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6264_6264 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_6239_6264 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6239_6264 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6264_6264 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@55 () T@PolymorphicMapType_12643)
(declare-fun self@@11 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_12664)
(set-info :boogie-vc-id |u32#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (and (state Heap@@55 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_12643_6014_53#PolymorphicMapType_12643| Heap@@55) self@@11 $allocated))) (and (and (not (= self@@11 null)) (= Mask@0 (PolymorphicMapType_12664 (|PolymorphicMapType_12664_6239_6240#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6142_6143#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6264_6265#PolymorphicMapType_12664| ZeroMask) (store (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| ZeroMask) self@@11 val_int (+ (select (|PolymorphicMapType_12664_6148_1219#PolymorphicMapType_12664| ZeroMask) self@@11 val_int) FullPerm)) (|PolymorphicMapType_12664_6239_6143#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6239_1219#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6239_53#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6239_61500#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6142_6240#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6142_53#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6142_61899#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6264_6143#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6264_1219#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6264_53#PolymorphicMapType_12664| ZeroMask) (|PolymorphicMapType_12664_6264_62310#PolymorphicMapType_12664| ZeroMask)))) (and (state Heap@@55 Mask@0) (= (ControlFlow 0 2) (- 0 1))))) (HasDirectPerm_6148_1219 Mask@0 self@@11 val_int))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
