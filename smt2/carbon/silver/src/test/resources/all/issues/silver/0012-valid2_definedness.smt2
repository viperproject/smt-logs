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
(declare-sort T@Field_3464_53 0)
(declare-sort T@Field_3477_3478 0)
(declare-sort T@Field_1911_6843 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_1911_6860 0)
(declare-sort T@Field_6842_1912 0)
(declare-sort T@Field_6842_53 0)
(declare-sort T@Field_6842_6843 0)
(declare-sort T@Field_6855_6860 0)
(declare-sort T@Field_8096_1912 0)
(declare-sort T@Field_8096_53 0)
(declare-sort T@Field_8096_8097 0)
(declare-sort T@Field_8109_8114 0)
(declare-datatypes ((T@PolymorphicMapType_3425 0)) (((PolymorphicMapType_3425 (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| (Array T@Ref T@Field_3477_3478 Real)) (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| (Array T@Ref T@Field_3464_53 Real)) (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| (Array T@Ref T@Field_1911_6843 Real)) (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| (Array T@Ref T@Field_1911_6860 Real)) (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| (Array T@Ref T@Field_6842_1912 Real)) (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| (Array T@Ref T@Field_6842_53 Real)) (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| (Array T@Ref T@Field_6842_6843 Real)) (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| (Array T@Ref T@Field_6855_6860 Real)) (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| (Array T@Ref T@Field_8096_1912 Real)) (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| (Array T@Ref T@Field_8096_53 Real)) (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| (Array T@Ref T@Field_8096_8097 Real)) (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| (Array T@Ref T@Field_8109_8114 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3953 0)) (((PolymorphicMapType_3953 (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| (Array T@Ref T@Field_3464_53 Bool)) (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| (Array T@Ref T@Field_3477_3478 Bool)) (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| (Array T@Ref T@Field_1911_6843 Bool)) (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| (Array T@Ref T@Field_1911_6860 Bool)) (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| (Array T@Ref T@Field_6842_53 Bool)) (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| (Array T@Ref T@Field_6842_1912 Bool)) (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| (Array T@Ref T@Field_6842_6843 Bool)) (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| (Array T@Ref T@Field_6855_6860 Bool)) (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| (Array T@Ref T@Field_8096_53 Bool)) (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| (Array T@Ref T@Field_8096_1912 Bool)) (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| (Array T@Ref T@Field_8096_8097 Bool)) (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| (Array T@Ref T@Field_8109_8114 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3404 0)) (((PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| (Array T@Ref T@Field_3464_53 Bool)) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| (Array T@Ref T@Field_3477_3478 T@Ref)) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| (Array T@Ref T@Field_1911_6843 T@FrameType)) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| (Array T@Ref T@Field_1911_6860 T@PolymorphicMapType_3953)) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| (Array T@Ref T@Field_6842_1912 T@Ref)) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| (Array T@Ref T@Field_6842_53 Bool)) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| (Array T@Ref T@Field_6842_6843 T@FrameType)) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| (Array T@Ref T@Field_6855_6860 T@PolymorphicMapType_3953)) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| (Array T@Ref T@Field_8096_1912 T@Ref)) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| (Array T@Ref T@Field_8096_53 Bool)) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| (Array T@Ref T@Field_8096_8097 T@FrameType)) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| (Array T@Ref T@Field_8109_8114 T@PolymorphicMapType_3953)) ) ) ))
(declare-fun $allocated () T@Field_3464_53)
(declare-fun root_1 () T@Field_3477_3478)
(declare-fun succHeap (T@PolymorphicMapType_3404 T@PolymorphicMapType_3404) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3404 T@PolymorphicMapType_3404) Bool)
(declare-fun state (T@PolymorphicMapType_3404 T@PolymorphicMapType_3425) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3425) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3953)
(declare-fun valid1 (T@Ref) T@Field_6842_6843)
(declare-fun IsPredicateField_1915_1916 (T@Field_6842_6843) Bool)
(declare-fun valid2 (T@Ref) T@Field_8096_8097)
(declare-fun IsPredicateField_1940_1941 (T@Field_8096_8097) Bool)
(declare-fun |valid1#trigger_1915| (T@PolymorphicMapType_3404 T@Field_6842_6843) Bool)
(declare-fun |valid1#everUsed_1915| (T@Field_6842_6843) Bool)
(declare-fun |valid2#trigger_1940| (T@PolymorphicMapType_3404 T@Field_8096_8097) Bool)
(declare-fun |valid2#everUsed_1940| (T@Field_8096_8097) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3404 T@PolymorphicMapType_3404 T@PolymorphicMapType_3425) Bool)
(declare-fun HasDirectPerm_8096_6843 (T@PolymorphicMapType_3425 T@Ref T@Field_8096_8097) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1940 (T@Field_8096_8097) T@Field_8109_8114)
(declare-fun HasDirectPerm_6842_6843 (T@PolymorphicMapType_3425 T@Ref T@Field_6842_6843) Bool)
(declare-fun PredicateMaskField_1915 (T@Field_6842_6843) T@Field_6855_6860)
(declare-fun IsPredicateField_1911_12236 (T@Field_1911_6843) Bool)
(declare-fun HasDirectPerm_1911_6843 (T@PolymorphicMapType_3425 T@Ref T@Field_1911_6843) Bool)
(declare-fun PredicateMaskField_1911 (T@Field_1911_6843) T@Field_1911_6860)
(declare-fun IsWandField_8096_17350 (T@Field_8096_8097) Bool)
(declare-fun WandMaskField_8096 (T@Field_8096_8097) T@Field_8109_8114)
(declare-fun IsWandField_6842_16993 (T@Field_6842_6843) Bool)
(declare-fun WandMaskField_6842 (T@Field_6842_6843) T@Field_6855_6860)
(declare-fun IsWandField_1911_16636 (T@Field_1911_6843) Bool)
(declare-fun WandMaskField_1911 (T@Field_1911_6843) T@Field_1911_6860)
(declare-fun |valid1#sm| (T@Ref) T@Field_6855_6860)
(declare-fun |valid2#sm| (T@Ref) T@Field_8109_8114)
(declare-fun dummyHeap () T@PolymorphicMapType_3404)
(declare-fun ZeroMask () T@PolymorphicMapType_3425)
(declare-fun InsidePredicate_8096_8096 (T@Field_8096_8097 T@FrameType T@Field_8096_8097 T@FrameType) Bool)
(declare-fun InsidePredicate_6842_6842 (T@Field_6842_6843 T@FrameType T@Field_6842_6843 T@FrameType) Bool)
(declare-fun InsidePredicate_3464_3464 (T@Field_1911_6843 T@FrameType T@Field_1911_6843 T@FrameType) Bool)
(declare-fun IsPredicateField_1911_1912 (T@Field_3477_3478) Bool)
(declare-fun IsWandField_1911_1912 (T@Field_3477_3478) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8096_25868 (T@Field_8109_8114) Bool)
(declare-fun IsWandField_8096_25884 (T@Field_8109_8114) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8096_53 (T@Field_8096_53) Bool)
(declare-fun IsWandField_8096_53 (T@Field_8096_53) Bool)
(declare-fun IsPredicateField_8096_1912 (T@Field_8096_1912) Bool)
(declare-fun IsWandField_8096_1912 (T@Field_8096_1912) Bool)
(declare-fun IsPredicateField_6842_25205 (T@Field_6855_6860) Bool)
(declare-fun IsWandField_6842_25221 (T@Field_6855_6860) Bool)
(declare-fun IsPredicateField_6842_53 (T@Field_6842_53) Bool)
(declare-fun IsWandField_6842_53 (T@Field_6842_53) Bool)
(declare-fun IsPredicateField_6842_1912 (T@Field_6842_1912) Bool)
(declare-fun IsWandField_6842_1912 (T@Field_6842_1912) Bool)
(declare-fun IsPredicateField_1911_24542 (T@Field_1911_6860) Bool)
(declare-fun IsWandField_1911_24558 (T@Field_1911_6860) Bool)
(declare-fun IsPredicateField_1911_53 (T@Field_3464_53) Bool)
(declare-fun IsWandField_1911_53 (T@Field_3464_53) Bool)
(declare-fun HasDirectPerm_8096_11948 (T@PolymorphicMapType_3425 T@Ref T@Field_8109_8114) Bool)
(declare-fun HasDirectPerm_8096_53 (T@PolymorphicMapType_3425 T@Ref T@Field_8096_53) Bool)
(declare-fun HasDirectPerm_8096_1912 (T@PolymorphicMapType_3425 T@Ref T@Field_8096_1912) Bool)
(declare-fun HasDirectPerm_6842_10991 (T@PolymorphicMapType_3425 T@Ref T@Field_6855_6860) Bool)
(declare-fun HasDirectPerm_6842_53 (T@PolymorphicMapType_3425 T@Ref T@Field_6842_53) Bool)
(declare-fun HasDirectPerm_6842_1912 (T@PolymorphicMapType_3425 T@Ref T@Field_6842_1912) Bool)
(declare-fun HasDirectPerm_1911_10034 (T@PolymorphicMapType_3425 T@Ref T@Field_1911_6860) Bool)
(declare-fun HasDirectPerm_1911_53 (T@PolymorphicMapType_3425 T@Ref T@Field_3464_53) Bool)
(declare-fun HasDirectPerm_1911_1912 (T@PolymorphicMapType_3425 T@Ref T@Field_3477_3478) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3425 T@PolymorphicMapType_3425 T@PolymorphicMapType_3425) Bool)
(declare-fun getPredWandId_1915_1916 (T@Field_6842_6843) Int)
(declare-fun getPredWandId_1940_1941 (T@Field_8096_8097) Int)
(declare-fun InsidePredicate_8096_6842 (T@Field_8096_8097 T@FrameType T@Field_6842_6843 T@FrameType) Bool)
(declare-fun InsidePredicate_8096_3464 (T@Field_8096_8097 T@FrameType T@Field_1911_6843 T@FrameType) Bool)
(declare-fun InsidePredicate_6842_8096 (T@Field_6842_6843 T@FrameType T@Field_8096_8097 T@FrameType) Bool)
(declare-fun InsidePredicate_6842_3464 (T@Field_6842_6843 T@FrameType T@Field_1911_6843 T@FrameType) Bool)
(declare-fun InsidePredicate_3464_8096 (T@Field_1911_6843 T@FrameType T@Field_8096_8097 T@FrameType) Bool)
(declare-fun InsidePredicate_3464_6842 (T@Field_1911_6843 T@FrameType T@Field_6842_6843 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3404) (Heap1 T@PolymorphicMapType_3404) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3404) (Mask T@PolymorphicMapType_3425) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3404) (Heap1@@0 T@PolymorphicMapType_3404) (Heap2 T@PolymorphicMapType_3404) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8109_8114) ) (!  (not (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8096_8097) ) (!  (not (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8096_1912) ) (!  (not (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8096_53) ) (!  (not (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6855_6860) ) (!  (not (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6842_6843) ) (!  (not (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6842_1912) ) (!  (not (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6842_53) ) (!  (not (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_1911_6860) ) (!  (not (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_1911_6843) ) (!  (not (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3477_3478) ) (!  (not (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3464_53) ) (!  (not (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_1915_1916 (valid1 this))
 :qid |stdinbpl.195:15|
 :skolemid |23|
 :pattern ( (valid1 this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_1940_1941 (valid2 this@@0))
 :qid |stdinbpl.259:15|
 :skolemid |29|
 :pattern ( (valid2 this@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3404) (this@@1 T@Ref) ) (! (|valid1#everUsed_1915| (valid1 this@@1))
 :qid |stdinbpl.214:15|
 :skolemid |27|
 :pattern ( (|valid1#trigger_1915| Heap@@0 (valid1 this@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3404) (this@@2 T@Ref) ) (! (|valid2#everUsed_1940| (valid2 this@@2))
 :qid |stdinbpl.278:15|
 :skolemid |33|
 :pattern ( (|valid2#trigger_1940| Heap@@1 (valid2 this@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3404) (ExhaleHeap T@PolymorphicMapType_3404) (Mask@@0 T@PolymorphicMapType_3425) (pm_f T@Field_8096_8097) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8096_6843 Mask@@0 null pm_f) (IsPredicateField_1940_1941 pm_f)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3464_53) ) (!  (=> (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@2) o2 f_2) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3477_3478) ) (!  (=> (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_1911_6843) ) (!  (=> (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_1911_6860) ) (!  (=> (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6842_53) ) (!  (=> (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@2) o2@@3 f_2@@3) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6842_1912) ) (!  (=> (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@2) o2@@4 f_2@@4) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6842_6843) ) (!  (=> (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@2) o2@@5 f_2@@5) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6855_6860) ) (!  (=> (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@2) o2@@6 f_2@@6) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_8096_53) ) (!  (=> (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@2) o2@@7 f_2@@7) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_8096_1912) ) (!  (=> (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@2) o2@@8 f_2@@8) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_8096_8097) ) (!  (=> (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@2) o2@@9 f_2@@9) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_8109_8114) ) (!  (=> (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) null (PredicateMaskField_1940 pm_f))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@2) o2@@10 f_2@@10) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap) o2@@10 f_2@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_1940_1941 pm_f))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3404) (ExhaleHeap@@0 T@PolymorphicMapType_3404) (Mask@@1 T@PolymorphicMapType_3425) (pm_f@@0 T@Field_6842_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6842_6843 Mask@@1 null pm_f@@0) (IsPredicateField_1915_1916 pm_f@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_3464_53) ) (!  (=> (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@3) o2@@11 f_2@@11) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@11 f_2@@11))
)) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_3477_3478) ) (!  (=> (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@3) o2@@12 f_2@@12) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_1911_6843) ) (!  (=> (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@3) o2@@13 f_2@@13) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_1911_6860) ) (!  (=> (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@3) o2@@14 f_2@@14) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_6842_53) ) (!  (=> (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@3) o2@@15 f_2@@15) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_6842_1912) ) (!  (=> (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@3) o2@@16 f_2@@16) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_6842_6843) ) (!  (=> (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@3) o2@@17 f_2@@17) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_6855_6860) ) (!  (=> (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) o2@@18 f_2@@18) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_8096_53) ) (!  (=> (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@3) o2@@19 f_2@@19) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_8096_1912) ) (!  (=> (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@3) o2@@20 f_2@@20) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_8096_8097) ) (!  (=> (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@3) o2@@21 f_2@@21) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_8109_8114) ) (!  (=> (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@3) null (PredicateMaskField_1915 pm_f@@0))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@3) o2@@22 f_2@@22) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@0) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_1915_1916 pm_f@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3404) (ExhaleHeap@@1 T@PolymorphicMapType_3404) (Mask@@2 T@PolymorphicMapType_3425) (pm_f@@1 T@Field_1911_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_1911_6843 Mask@@2 null pm_f@@1) (IsPredicateField_1911_12236 pm_f@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_3464_53) ) (!  (=> (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@4) o2@@23 f_2@@23) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@23 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_3477_3478) ) (!  (=> (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@4) o2@@24 f_2@@24) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@24 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_1911_6843) ) (!  (=> (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@4) o2@@25 f_2@@25) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@25 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_1911_6860) ) (!  (=> (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) o2@@26 f_2@@26) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@26 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_6842_53) ) (!  (=> (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@4) o2@@27 f_2@@27) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@27 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_6842_1912) ) (!  (=> (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@4) o2@@28 f_2@@28) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@28 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_6842_6843) ) (!  (=> (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@4) o2@@29 f_2@@29) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@29 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_6855_6860) ) (!  (=> (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@4) o2@@30 f_2@@30) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@30 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_8096_53) ) (!  (=> (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@4) o2@@31 f_2@@31) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@31 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_8096_1912) ) (!  (=> (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@4) o2@@32 f_2@@32) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@32 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_8096_8097) ) (!  (=> (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@4) o2@@33 f_2@@33) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@33 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_8109_8114) ) (!  (=> (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@4) null (PredicateMaskField_1911 pm_f@@1))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@4) o2@@34 f_2@@34) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@34 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@1) o2@@34 f_2@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_1911_12236 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3404) (ExhaleHeap@@2 T@PolymorphicMapType_3404) (Mask@@3 T@PolymorphicMapType_3425) (pm_f@@2 T@Field_8096_8097) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8096_6843 Mask@@3 null pm_f@@2) (IsWandField_8096_17350 pm_f@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_3464_53) ) (!  (=> (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@5) o2@@35 f_2@@35) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@35 f_2@@35))
)) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_3477_3478) ) (!  (=> (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@5) o2@@36 f_2@@36) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_1911_6843) ) (!  (=> (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@5) o2@@37 f_2@@37) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_1911_6860) ) (!  (=> (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@5) o2@@38 f_2@@38) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@38 f_2@@38))
))) (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_6842_53) ) (!  (=> (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@5) o2@@39 f_2@@39) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@39 f_2@@39)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@39 f_2@@39))
))) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_6842_1912) ) (!  (=> (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@5) o2@@40 f_2@@40) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@40 f_2@@40)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_6842_6843) ) (!  (=> (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@5) o2@@41 f_2@@41) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@41 f_2@@41)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_6855_6860) ) (!  (=> (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@5) o2@@42 f_2@@42) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@42 f_2@@42)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_8096_53) ) (!  (=> (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@5) o2@@43 f_2@@43) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@43 f_2@@43)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_8096_1912) ) (!  (=> (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@5) o2@@44 f_2@@44) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@44 f_2@@44)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_8096_8097) ) (!  (=> (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@5) o2@@45 f_2@@45) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@45 f_2@@45)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_8109_8114) ) (!  (=> (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) null (WandMaskField_8096 pm_f@@2))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@5) o2@@46 f_2@@46) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@46 f_2@@46)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@2) o2@@46 f_2@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_8096_17350 pm_f@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3404) (ExhaleHeap@@3 T@PolymorphicMapType_3404) (Mask@@4 T@PolymorphicMapType_3425) (pm_f@@3 T@Field_6842_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6842_6843 Mask@@4 null pm_f@@3) (IsWandField_6842_16993 pm_f@@3)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@47 T@Ref) (f_2@@47 T@Field_3464_53) ) (!  (=> (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@47 f_2@@47) (= (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@6) o2@@47 f_2@@47) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@47 f_2@@47)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@47 f_2@@47))
)) (forall ((o2@@48 T@Ref) (f_2@@48 T@Field_3477_3478) ) (!  (=> (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@48 f_2@@48) (= (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@6) o2@@48 f_2@@48) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@48 f_2@@48)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@48 f_2@@48))
))) (forall ((o2@@49 T@Ref) (f_2@@49 T@Field_1911_6843) ) (!  (=> (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@49 f_2@@49) (= (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@6) o2@@49 f_2@@49) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@49 f_2@@49)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@49 f_2@@49))
))) (forall ((o2@@50 T@Ref) (f_2@@50 T@Field_1911_6860) ) (!  (=> (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@50 f_2@@50) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@6) o2@@50 f_2@@50) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@50 f_2@@50)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@50 f_2@@50))
))) (forall ((o2@@51 T@Ref) (f_2@@51 T@Field_6842_53) ) (!  (=> (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@51 f_2@@51) (= (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@6) o2@@51 f_2@@51) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@51 f_2@@51)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@51 f_2@@51))
))) (forall ((o2@@52 T@Ref) (f_2@@52 T@Field_6842_1912) ) (!  (=> (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@52 f_2@@52) (= (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@6) o2@@52 f_2@@52) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@52 f_2@@52)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@52 f_2@@52))
))) (forall ((o2@@53 T@Ref) (f_2@@53 T@Field_6842_6843) ) (!  (=> (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@53 f_2@@53) (= (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@6) o2@@53 f_2@@53) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@53 f_2@@53)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@53 f_2@@53))
))) (forall ((o2@@54 T@Ref) (f_2@@54 T@Field_6855_6860) ) (!  (=> (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@54 f_2@@54) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) o2@@54 f_2@@54) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@54 f_2@@54)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@54 f_2@@54))
))) (forall ((o2@@55 T@Ref) (f_2@@55 T@Field_8096_53) ) (!  (=> (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@55 f_2@@55) (= (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@6) o2@@55 f_2@@55) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@55 f_2@@55)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@55 f_2@@55))
))) (forall ((o2@@56 T@Ref) (f_2@@56 T@Field_8096_1912) ) (!  (=> (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@56 f_2@@56) (= (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@6) o2@@56 f_2@@56) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@56 f_2@@56)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@56 f_2@@56))
))) (forall ((o2@@57 T@Ref) (f_2@@57 T@Field_8096_8097) ) (!  (=> (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@57 f_2@@57) (= (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@6) o2@@57 f_2@@57) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@57 f_2@@57)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@57 f_2@@57))
))) (forall ((o2@@58 T@Ref) (f_2@@58 T@Field_8109_8114) ) (!  (=> (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@6) null (WandMaskField_6842 pm_f@@3))) o2@@58 f_2@@58) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@6) o2@@58 f_2@@58) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@58 f_2@@58)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@3) o2@@58 f_2@@58))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_6842_16993 pm_f@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3404) (ExhaleHeap@@4 T@PolymorphicMapType_3404) (Mask@@5 T@PolymorphicMapType_3425) (pm_f@@4 T@Field_1911_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_1911_6843 Mask@@5 null pm_f@@4) (IsWandField_1911_16636 pm_f@@4)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@59 T@Field_3464_53) ) (!  (=> (select (|PolymorphicMapType_3953_3464_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@59 f_2@@59) (= (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@7) o2@@59 f_2@@59) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@59 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@59 f_2@@59))
)) (forall ((o2@@60 T@Ref) (f_2@@60 T@Field_3477_3478) ) (!  (=> (select (|PolymorphicMapType_3953_3464_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@60 f_2@@60) (= (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@7) o2@@60 f_2@@60) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@60 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@60 f_2@@60))
))) (forall ((o2@@61 T@Ref) (f_2@@61 T@Field_1911_6843) ) (!  (=> (select (|PolymorphicMapType_3953_3464_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@61 f_2@@61) (= (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@7) o2@@61 f_2@@61) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@61 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@61 f_2@@61))
))) (forall ((o2@@62 T@Ref) (f_2@@62 T@Field_1911_6860) ) (!  (=> (select (|PolymorphicMapType_3953_3464_13847#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@62 f_2@@62) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) o2@@62 f_2@@62) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@62 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@62 f_2@@62))
))) (forall ((o2@@63 T@Ref) (f_2@@63 T@Field_6842_53) ) (!  (=> (select (|PolymorphicMapType_3953_6842_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@63 f_2@@63) (= (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@7) o2@@63 f_2@@63) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@63 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@63 f_2@@63))
))) (forall ((o2@@64 T@Ref) (f_2@@64 T@Field_6842_1912) ) (!  (=> (select (|PolymorphicMapType_3953_6842_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@64 f_2@@64) (= (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@7) o2@@64 f_2@@64) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@64 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@64 f_2@@64))
))) (forall ((o2@@65 T@Ref) (f_2@@65 T@Field_6842_6843) ) (!  (=> (select (|PolymorphicMapType_3953_6842_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@65 f_2@@65) (= (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@7) o2@@65 f_2@@65) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@65 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@65 f_2@@65))
))) (forall ((o2@@66 T@Ref) (f_2@@66 T@Field_6855_6860) ) (!  (=> (select (|PolymorphicMapType_3953_6842_14697#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@66 f_2@@66) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@7) o2@@66 f_2@@66) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@66 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@66 f_2@@66))
))) (forall ((o2@@67 T@Ref) (f_2@@67 T@Field_8096_53) ) (!  (=> (select (|PolymorphicMapType_3953_8096_53#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@67 f_2@@67) (= (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@7) o2@@67 f_2@@67) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@67 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@67 f_2@@67))
))) (forall ((o2@@68 T@Ref) (f_2@@68 T@Field_8096_1912) ) (!  (=> (select (|PolymorphicMapType_3953_8096_3478#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@68 f_2@@68) (= (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@7) o2@@68 f_2@@68) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@68 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@68 f_2@@68))
))) (forall ((o2@@69 T@Ref) (f_2@@69 T@Field_8096_8097) ) (!  (=> (select (|PolymorphicMapType_3953_8096_6843#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@69 f_2@@69) (= (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@7) o2@@69 f_2@@69) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@69 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@69 f_2@@69))
))) (forall ((o2@@70 T@Ref) (f_2@@70 T@Field_8109_8114) ) (!  (=> (select (|PolymorphicMapType_3953_8096_15547#PolymorphicMapType_3953| (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@7) null (WandMaskField_1911 pm_f@@4))) o2@@70 f_2@@70) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@7) o2@@70 f_2@@70) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@70 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@4) o2@@70 f_2@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_1911_16636 pm_f@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3404) (ExhaleHeap@@5 T@PolymorphicMapType_3404) (Mask@@6 T@PolymorphicMapType_3425) (pm_f@@5 T@Field_8096_8097) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8096_6843 Mask@@6 null pm_f@@5) (IsPredicateField_1940_1941 pm_f@@5)) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@8) null (PredicateMaskField_1940 pm_f@@5)) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@5) null (PredicateMaskField_1940 pm_f@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsPredicateField_1940_1941 pm_f@@5) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@5) null (PredicateMaskField_1940 pm_f@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3404) (ExhaleHeap@@6 T@PolymorphicMapType_3404) (Mask@@7 T@PolymorphicMapType_3425) (pm_f@@6 T@Field_6842_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6842_6843 Mask@@7 null pm_f@@6) (IsPredicateField_1915_1916 pm_f@@6)) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@9) null (PredicateMaskField_1915 pm_f@@6)) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@6) null (PredicateMaskField_1915 pm_f@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsPredicateField_1915_1916 pm_f@@6) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@6) null (PredicateMaskField_1915 pm_f@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3404) (ExhaleHeap@@7 T@PolymorphicMapType_3404) (Mask@@8 T@PolymorphicMapType_3425) (pm_f@@7 T@Field_1911_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_1911_6843 Mask@@8 null pm_f@@7) (IsPredicateField_1911_12236 pm_f@@7)) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@10) null (PredicateMaskField_1911 pm_f@@7)) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@7) null (PredicateMaskField_1911 pm_f@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_1911_12236 pm_f@@7) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@7) null (PredicateMaskField_1911 pm_f@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3404) (ExhaleHeap@@8 T@PolymorphicMapType_3404) (Mask@@9 T@PolymorphicMapType_3425) (pm_f@@8 T@Field_8096_8097) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_8096_6843 Mask@@9 null pm_f@@8) (IsWandField_8096_17350 pm_f@@8)) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@11) null (WandMaskField_8096 pm_f@@8)) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@8) null (WandMaskField_8096 pm_f@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_8096_17350 pm_f@@8) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@8) null (WandMaskField_8096 pm_f@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3404) (ExhaleHeap@@9 T@PolymorphicMapType_3404) (Mask@@10 T@PolymorphicMapType_3425) (pm_f@@9 T@Field_6842_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_6842_6843 Mask@@10 null pm_f@@9) (IsWandField_6842_16993 pm_f@@9)) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@12) null (WandMaskField_6842 pm_f@@9)) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@9) null (WandMaskField_6842 pm_f@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_6842_16993 pm_f@@9) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@9) null (WandMaskField_6842 pm_f@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3404) (ExhaleHeap@@10 T@PolymorphicMapType_3404) (Mask@@11 T@PolymorphicMapType_3425) (pm_f@@10 T@Field_1911_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_1911_6843 Mask@@11 null pm_f@@10) (IsWandField_1911_16636 pm_f@@10)) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@13) null (WandMaskField_1911 pm_f@@10)) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@10) null (WandMaskField_1911 pm_f@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_1911_16636 pm_f@@10) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@10) null (WandMaskField_1911 pm_f@@10)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid1 this@@3) (valid1 this2)) (= this@@3 this2))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (valid1 this@@3) (valid1 this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid1#sm| this@@4) (|valid1#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.209:15|
 :skolemid |26|
 :pattern ( (|valid1#sm| this@@4) (|valid1#sm| this2@@0))
)))
(assert (forall ((this@@5 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (valid2 this@@5) (valid2 this2@@1)) (= this@@5 this2@@1))
 :qid |stdinbpl.269:15|
 :skolemid |31|
 :pattern ( (valid2 this@@5) (valid2 this2@@1))
)))
(assert (forall ((this@@6 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|valid2#sm| this@@6) (|valid2#sm| this2@@2)) (= this@@6 this2@@2))
 :qid |stdinbpl.273:15|
 :skolemid |32|
 :pattern ( (|valid2#sm| this@@6) (|valid2#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3404) (ExhaleHeap@@11 T@PolymorphicMapType_3404) (Mask@@12 T@PolymorphicMapType_3425) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@11) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@11) o_1 $allocated))
)))
(assert (forall ((p T@Field_8096_8097) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8096_8096 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8096_8096 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6842_6843) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6842_6842 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6842_6842 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_1911_6843) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_3464_3464 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3464_3464 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_1911_1912 root_1)))
(assert  (not (IsWandField_1911_1912 root_1)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3404) (ExhaleHeap@@12 T@PolymorphicMapType_3404) (Mask@@13 T@PolymorphicMapType_3425) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3425) (o_2@@11 T@Ref) (f_4@@11 T@Field_8109_8114) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8096_25868 f_4@@11))) (not (IsWandField_8096_25884 f_4@@11))) (<= (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3425) (o_2@@12 T@Ref) (f_4@@12 T@Field_8096_8097) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_1940_1941 f_4@@12))) (not (IsWandField_8096_17350 f_4@@12))) (<= (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3425) (o_2@@13 T@Ref) (f_4@@13 T@Field_8096_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8096_53 f_4@@13))) (not (IsWandField_8096_53 f_4@@13))) (<= (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3425) (o_2@@14 T@Ref) (f_4@@14 T@Field_8096_1912) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8096_1912 f_4@@14))) (not (IsWandField_8096_1912 f_4@@14))) (<= (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3425) (o_2@@15 T@Ref) (f_4@@15 T@Field_6855_6860) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6842_25205 f_4@@15))) (not (IsWandField_6842_25221 f_4@@15))) (<= (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3425) (o_2@@16 T@Ref) (f_4@@16 T@Field_6842_6843) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_1915_1916 f_4@@16))) (not (IsWandField_6842_16993 f_4@@16))) (<= (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3425) (o_2@@17 T@Ref) (f_4@@17 T@Field_6842_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6842_53 f_4@@17))) (not (IsWandField_6842_53 f_4@@17))) (<= (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3425) (o_2@@18 T@Ref) (f_4@@18 T@Field_6842_1912) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6842_1912 f_4@@18))) (not (IsWandField_6842_1912 f_4@@18))) (<= (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3425) (o_2@@19 T@Ref) (f_4@@19 T@Field_1911_6860) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| Mask@@22) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_1911_24542 f_4@@19))) (not (IsWandField_1911_24558 f_4@@19))) (<= (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| Mask@@22) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| Mask@@22) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3425) (o_2@@20 T@Ref) (f_4@@20 T@Field_1911_6843) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| Mask@@23) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_1911_12236 f_4@@20))) (not (IsWandField_1911_16636 f_4@@20))) (<= (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| Mask@@23) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| Mask@@23) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3425) (o_2@@21 T@Ref) (f_4@@21 T@Field_3464_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| Mask@@24) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_1911_53 f_4@@21))) (not (IsWandField_1911_53 f_4@@21))) (<= (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| Mask@@24) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| Mask@@24) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3425) (o_2@@22 T@Ref) (f_4@@22 T@Field_3477_3478) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| Mask@@25) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_1911_1912 f_4@@22))) (not (IsWandField_1911_1912 f_4@@22))) (<= (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| Mask@@25) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| Mask@@25) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_3425) (o_2@@23 T@Ref) (f_4@@23 T@Field_8109_8114) ) (! (= (HasDirectPerm_8096_11948 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8096_11948 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_3425) (o_2@@24 T@Ref) (f_4@@24 T@Field_8096_8097) ) (! (= (HasDirectPerm_8096_6843 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8096_6843 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_3425) (o_2@@25 T@Ref) (f_4@@25 T@Field_8096_53) ) (! (= (HasDirectPerm_8096_53 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8096_53 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_3425) (o_2@@26 T@Ref) (f_4@@26 T@Field_8096_1912) ) (! (= (HasDirectPerm_8096_1912 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8096_1912 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_3425) (o_2@@27 T@Ref) (f_4@@27 T@Field_6855_6860) ) (! (= (HasDirectPerm_6842_10991 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6842_10991 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_3425) (o_2@@28 T@Ref) (f_4@@28 T@Field_6842_6843) ) (! (= (HasDirectPerm_6842_6843 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6842_6843 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_3425) (o_2@@29 T@Ref) (f_4@@29 T@Field_6842_53) ) (! (= (HasDirectPerm_6842_53 Mask@@32 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| Mask@@32) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6842_53 Mask@@32 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_3425) (o_2@@30 T@Ref) (f_4@@30 T@Field_6842_1912) ) (! (= (HasDirectPerm_6842_1912 Mask@@33 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| Mask@@33) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6842_1912 Mask@@33 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_3425) (o_2@@31 T@Ref) (f_4@@31 T@Field_1911_6860) ) (! (= (HasDirectPerm_1911_10034 Mask@@34 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| Mask@@34) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1911_10034 Mask@@34 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_3425) (o_2@@32 T@Ref) (f_4@@32 T@Field_1911_6843) ) (! (= (HasDirectPerm_1911_6843 Mask@@35 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| Mask@@35) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1911_6843 Mask@@35 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_3425) (o_2@@33 T@Ref) (f_4@@33 T@Field_3464_53) ) (! (= (HasDirectPerm_1911_53 Mask@@36 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| Mask@@36) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1911_53 Mask@@36 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_3425) (o_2@@34 T@Ref) (f_4@@34 T@Field_3477_3478) ) (! (= (HasDirectPerm_1911_1912 Mask@@37 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| Mask@@37) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1911_1912 Mask@@37 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3404) (ExhaleHeap@@13 T@PolymorphicMapType_3404) (Mask@@38 T@PolymorphicMapType_3425) (o_1@@0 T@Ref) (f_2@@71 T@Field_8109_8114) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_8096_11948 Mask@@38 o_1@@0 f_2@@71) (= (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@16) o_1@@0 f_2@@71) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@13) o_1@@0 f_2@@71))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| ExhaleHeap@@13) o_1@@0 f_2@@71))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3404) (ExhaleHeap@@14 T@PolymorphicMapType_3404) (Mask@@39 T@PolymorphicMapType_3425) (o_1@@1 T@Ref) (f_2@@72 T@Field_8096_8097) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_8096_6843 Mask@@39 o_1@@1 f_2@@72) (= (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@17) o_1@@1 f_2@@72) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@14) o_1@@1 f_2@@72))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| ExhaleHeap@@14) o_1@@1 f_2@@72))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3404) (ExhaleHeap@@15 T@PolymorphicMapType_3404) (Mask@@40 T@PolymorphicMapType_3425) (o_1@@2 T@Ref) (f_2@@73 T@Field_8096_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_8096_53 Mask@@40 o_1@@2 f_2@@73) (= (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@18) o_1@@2 f_2@@73) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@15) o_1@@2 f_2@@73))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| ExhaleHeap@@15) o_1@@2 f_2@@73))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3404) (ExhaleHeap@@16 T@PolymorphicMapType_3404) (Mask@@41 T@PolymorphicMapType_3425) (o_1@@3 T@Ref) (f_2@@74 T@Field_8096_1912) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_8096_1912 Mask@@41 o_1@@3 f_2@@74) (= (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@19) o_1@@3 f_2@@74) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@16) o_1@@3 f_2@@74))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| ExhaleHeap@@16) o_1@@3 f_2@@74))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3404) (ExhaleHeap@@17 T@PolymorphicMapType_3404) (Mask@@42 T@PolymorphicMapType_3425) (o_1@@4 T@Ref) (f_2@@75 T@Field_6855_6860) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_6842_10991 Mask@@42 o_1@@4 f_2@@75) (= (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@20) o_1@@4 f_2@@75) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@17) o_1@@4 f_2@@75))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| ExhaleHeap@@17) o_1@@4 f_2@@75))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3404) (ExhaleHeap@@18 T@PolymorphicMapType_3404) (Mask@@43 T@PolymorphicMapType_3425) (o_1@@5 T@Ref) (f_2@@76 T@Field_6842_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_6842_6843 Mask@@43 o_1@@5 f_2@@76) (= (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@21) o_1@@5 f_2@@76) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@18) o_1@@5 f_2@@76))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| ExhaleHeap@@18) o_1@@5 f_2@@76))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3404) (ExhaleHeap@@19 T@PolymorphicMapType_3404) (Mask@@44 T@PolymorphicMapType_3425) (o_1@@6 T@Ref) (f_2@@77 T@Field_6842_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_6842_53 Mask@@44 o_1@@6 f_2@@77) (= (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@22) o_1@@6 f_2@@77) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@19) o_1@@6 f_2@@77))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| ExhaleHeap@@19) o_1@@6 f_2@@77))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3404) (ExhaleHeap@@20 T@PolymorphicMapType_3404) (Mask@@45 T@PolymorphicMapType_3425) (o_1@@7 T@Ref) (f_2@@78 T@Field_6842_1912) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_6842_1912 Mask@@45 o_1@@7 f_2@@78) (= (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@23) o_1@@7 f_2@@78) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@20) o_1@@7 f_2@@78))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| ExhaleHeap@@20) o_1@@7 f_2@@78))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3404) (ExhaleHeap@@21 T@PolymorphicMapType_3404) (Mask@@46 T@PolymorphicMapType_3425) (o_1@@8 T@Ref) (f_2@@79 T@Field_1911_6860) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@46) (=> (HasDirectPerm_1911_10034 Mask@@46 o_1@@8 f_2@@79) (= (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@24) o_1@@8 f_2@@79) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@21) o_1@@8 f_2@@79))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@46) (select (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| ExhaleHeap@@21) o_1@@8 f_2@@79))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3404) (ExhaleHeap@@22 T@PolymorphicMapType_3404) (Mask@@47 T@PolymorphicMapType_3425) (o_1@@9 T@Ref) (f_2@@80 T@Field_1911_6843) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@47) (=> (HasDirectPerm_1911_6843 Mask@@47 o_1@@9 f_2@@80) (= (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@25) o_1@@9 f_2@@80) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@22) o_1@@9 f_2@@80))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@47) (select (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| ExhaleHeap@@22) o_1@@9 f_2@@80))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3404) (ExhaleHeap@@23 T@PolymorphicMapType_3404) (Mask@@48 T@PolymorphicMapType_3425) (o_1@@10 T@Ref) (f_2@@81 T@Field_3464_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@48) (=> (HasDirectPerm_1911_53 Mask@@48 o_1@@10 f_2@@81) (= (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@26) o_1@@10 f_2@@81) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@23) o_1@@10 f_2@@81))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@48) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| ExhaleHeap@@23) o_1@@10 f_2@@81))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_3404) (ExhaleHeap@@24 T@PolymorphicMapType_3404) (Mask@@49 T@PolymorphicMapType_3425) (o_1@@11 T@Ref) (f_2@@82 T@Field_3477_3478) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@49) (=> (HasDirectPerm_1911_1912 Mask@@49 o_1@@11 f_2@@82) (= (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@27) o_1@@11 f_2@@82) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@24) o_1@@11 f_2@@82))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@49) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| ExhaleHeap@@24) o_1@@11 f_2@@82))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8109_8114) ) (! (= (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8096_8097) ) (! (= (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8096_53) ) (! (= (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8096_1912) ) (! (= (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_6855_6860) ) (! (= (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_6842_6843) ) (! (= (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_6842_53) ) (! (= (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_6842_1912) ) (! (= (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_1911_6860) ) (! (= (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_1911_6843) ) (! (= (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_3464_53) ) (! (= (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_3477_3478) ) (! (= (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3425) (SummandMask1 T@PolymorphicMapType_3425) (SummandMask2 T@PolymorphicMapType_3425) (o_2@@47 T@Ref) (f_4@@47 T@Field_8109_8114) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3425) (SummandMask1@@0 T@PolymorphicMapType_3425) (SummandMask2@@0 T@PolymorphicMapType_3425) (o_2@@48 T@Ref) (f_4@@48 T@Field_8096_8097) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3425) (SummandMask1@@1 T@PolymorphicMapType_3425) (SummandMask2@@1 T@PolymorphicMapType_3425) (o_2@@49 T@Ref) (f_4@@49 T@Field_8096_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3425) (SummandMask1@@2 T@PolymorphicMapType_3425) (SummandMask2@@2 T@PolymorphicMapType_3425) (o_2@@50 T@Ref) (f_4@@50 T@Field_8096_1912) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3425) (SummandMask1@@3 T@PolymorphicMapType_3425) (SummandMask2@@3 T@PolymorphicMapType_3425) (o_2@@51 T@Ref) (f_4@@51 T@Field_6855_6860) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3425) (SummandMask1@@4 T@PolymorphicMapType_3425) (SummandMask2@@4 T@PolymorphicMapType_3425) (o_2@@52 T@Ref) (f_4@@52 T@Field_6842_6843) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3425) (SummandMask1@@5 T@PolymorphicMapType_3425) (SummandMask2@@5 T@PolymorphicMapType_3425) (o_2@@53 T@Ref) (f_4@@53 T@Field_6842_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3425) (SummandMask1@@6 T@PolymorphicMapType_3425) (SummandMask2@@6 T@PolymorphicMapType_3425) (o_2@@54 T@Ref) (f_4@@54 T@Field_6842_1912) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_3425) (SummandMask1@@7 T@PolymorphicMapType_3425) (SummandMask2@@7 T@PolymorphicMapType_3425) (o_2@@55 T@Ref) (f_4@@55 T@Field_1911_6860) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_3425) (SummandMask1@@8 T@PolymorphicMapType_3425) (SummandMask2@@8 T@PolymorphicMapType_3425) (o_2@@56 T@Ref) (f_4@@56 T@Field_1911_6843) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_3425) (SummandMask1@@9 T@PolymorphicMapType_3425) (SummandMask2@@9 T@PolymorphicMapType_3425) (o_2@@57 T@Ref) (f_4@@57 T@Field_3464_53) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_3425) (SummandMask1@@10 T@PolymorphicMapType_3425) (SummandMask2@@10 T@PolymorphicMapType_3425) (o_2@@58 T@Ref) (f_4@@58 T@Field_3477_3478) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_1915_1916 (valid1 this@@7)) 0)
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (valid1 this@@7))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (getPredWandId_1940_1941 (valid2 this@@8)) 1)
 :qid |stdinbpl.263:15|
 :skolemid |30|
 :pattern ( (valid2 this@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_3404) (o T@Ref) (f_3 T@Field_8109_8114) (v T@PolymorphicMapType_3953) ) (! (succHeap Heap@@28 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@28) (store (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@28) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@28) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@28) (store (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@28) o f_3 v)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_3404) (o@@0 T@Ref) (f_3@@0 T@Field_8096_8097) (v@@0 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@29) (store (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@29) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@29) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@29) (store (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@29) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_3404) (o@@1 T@Ref) (f_3@@1 T@Field_8096_1912) (v@@1 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@30) (store (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@30) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@30) (store (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@30) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@30) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_3404) (o@@2 T@Ref) (f_3@@2 T@Field_8096_53) (v@@2 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@31) (store (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@31) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@31) (store (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@31) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@31) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_3404) (o@@3 T@Ref) (f_3@@3 T@Field_6855_6860) (v@@3 T@PolymorphicMapType_3953) ) (! (succHeap Heap@@32 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@32) (store (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@32) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@32) (store (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@32) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@32) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_3404) (o@@4 T@Ref) (f_3@@4 T@Field_6842_6843) (v@@4 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@33) (store (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@33) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@33) (store (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@33) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@33) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_3404) (o@@5 T@Ref) (f_3@@5 T@Field_6842_1912) (v@@5 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@34) (store (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@34) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@34) (store (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@34) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@34) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_3404) (o@@6 T@Ref) (f_3@@6 T@Field_6842_53) (v@@6 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@35) (store (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@35) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@35) (store (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@35) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@35) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_3404) (o@@7 T@Ref) (f_3@@7 T@Field_1911_6860) (v@@7 T@PolymorphicMapType_3953) ) (! (succHeap Heap@@36 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@36) (store (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@36) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@36) (store (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@36) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@36) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_3404) (o@@8 T@Ref) (f_3@@8 T@Field_1911_6843) (v@@8 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@37) (store (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@37) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@37) (store (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@37) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@37) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_3404) (o@@9 T@Ref) (f_3@@9 T@Field_3477_3478) (v@@9 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@38) (store (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@38) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@38) (store (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@38) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@38) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_3404) (o@@10 T@Ref) (f_3@@10 T@Field_3464_53) (v@@10 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_3404 (store (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@39) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3404 (store (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@39) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_1911_6843#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_1911_10076#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_1912#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_53#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_6843#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_6842_11033#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_1912#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_53#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_6843#PolymorphicMapType_3404| Heap@@39) (|PolymorphicMapType_3404_8096_11990#PolymorphicMapType_3404| Heap@@39)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_1915 (valid1 this@@9)) (|valid1#sm| this@@9))
 :qid |stdinbpl.191:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_1915 (valid1 this@@9)))
)))
(assert (forall ((this@@10 T@Ref) ) (! (= (PredicateMaskField_1940 (valid2 this@@10)) (|valid2#sm| this@@10))
 :qid |stdinbpl.255:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_1940 (valid2 this@@10)))
)))
(assert (forall ((o@@11 T@Ref) (f T@Field_3477_3478) (Heap@@40 T@PolymorphicMapType_3404) ) (!  (=> (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@40) o@@11 $allocated) (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@40) (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@40) o@@11 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3404_1786_1787#PolymorphicMapType_3404| Heap@@40) o@@11 f))
)))
(assert (forall ((p@@3 T@Field_8096_8097) (v_1@@2 T@FrameType) (q T@Field_8096_8097) (w@@2 T@FrameType) (r T@Field_8096_8097) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8096_8096 p@@3 v_1@@2 q w@@2) (InsidePredicate_8096_8096 q w@@2 r u)) (InsidePredicate_8096_8096 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_8096 p@@3 v_1@@2 q w@@2) (InsidePredicate_8096_8096 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_8096_8097) (v_1@@3 T@FrameType) (q@@0 T@Field_8096_8097) (w@@3 T@FrameType) (r@@0 T@Field_6842_6843) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_8096 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8096_6842 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_8096_6842 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_8096 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8096_6842 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_8096_8097) (v_1@@4 T@FrameType) (q@@1 T@Field_8096_8097) (w@@4 T@FrameType) (r@@1 T@Field_1911_6843) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_8096 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8096_3464 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_8096_3464 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_8096 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8096_3464 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_8096_8097) (v_1@@5 T@FrameType) (q@@2 T@Field_6842_6843) (w@@5 T@FrameType) (r@@2 T@Field_8096_8097) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_6842 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_6842_8096 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_8096_8096 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_6842 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_6842_8096 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_8096_8097) (v_1@@6 T@FrameType) (q@@3 T@Field_6842_6843) (w@@6 T@FrameType) (r@@3 T@Field_6842_6843) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_6842 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_6842_6842 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_8096_6842 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_6842 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_6842_6842 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_8096_8097) (v_1@@7 T@FrameType) (q@@4 T@Field_6842_6843) (w@@7 T@FrameType) (r@@4 T@Field_1911_6843) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_6842 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_6842_3464 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_8096_3464 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_6842 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_6842_3464 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_8096_8097) (v_1@@8 T@FrameType) (q@@5 T@Field_1911_6843) (w@@8 T@FrameType) (r@@5 T@Field_8096_8097) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_3464 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3464_8096 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_8096_8096 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_3464 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3464_8096 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_8096_8097) (v_1@@9 T@FrameType) (q@@6 T@Field_1911_6843) (w@@9 T@FrameType) (r@@6 T@Field_6842_6843) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_3464 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3464_6842 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_8096_6842 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_3464 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3464_6842 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_8096_8097) (v_1@@10 T@FrameType) (q@@7 T@Field_1911_6843) (w@@10 T@FrameType) (r@@7 T@Field_1911_6843) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_8096_3464 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3464_3464 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_8096_3464 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8096_3464 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3464_3464 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_6842_6843) (v_1@@11 T@FrameType) (q@@8 T@Field_8096_8097) (w@@11 T@FrameType) (r@@8 T@Field_8096_8097) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_8096 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8096_8096 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_6842_8096 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_8096 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8096_8096 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_6842_6843) (v_1@@12 T@FrameType) (q@@9 T@Field_8096_8097) (w@@12 T@FrameType) (r@@9 T@Field_6842_6843) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_8096 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8096_6842 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_6842_6842 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_8096 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8096_6842 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_6842_6843) (v_1@@13 T@FrameType) (q@@10 T@Field_8096_8097) (w@@13 T@FrameType) (r@@10 T@Field_1911_6843) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_8096 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8096_3464 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_6842_3464 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_8096 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8096_3464 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_6842_6843) (v_1@@14 T@FrameType) (q@@11 T@Field_6842_6843) (w@@14 T@FrameType) (r@@11 T@Field_8096_8097) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_6842 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_6842_8096 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_6842_8096 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_6842 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_6842_8096 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_6842_6843) (v_1@@15 T@FrameType) (q@@12 T@Field_6842_6843) (w@@15 T@FrameType) (r@@12 T@Field_6842_6843) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_6842 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_6842_6842 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_6842_6842 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_6842 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_6842_6842 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_6842_6843) (v_1@@16 T@FrameType) (q@@13 T@Field_6842_6843) (w@@16 T@FrameType) (r@@13 T@Field_1911_6843) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_6842 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_6842_3464 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_6842_3464 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_6842 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_6842_3464 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_6842_6843) (v_1@@17 T@FrameType) (q@@14 T@Field_1911_6843) (w@@17 T@FrameType) (r@@14 T@Field_8096_8097) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_3464 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3464_8096 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_6842_8096 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_3464 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3464_8096 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_6842_6843) (v_1@@18 T@FrameType) (q@@15 T@Field_1911_6843) (w@@18 T@FrameType) (r@@15 T@Field_6842_6843) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_3464 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3464_6842 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_6842_6842 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_3464 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3464_6842 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_6842_6843) (v_1@@19 T@FrameType) (q@@16 T@Field_1911_6843) (w@@19 T@FrameType) (r@@16 T@Field_1911_6843) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_6842_3464 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3464_3464 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_6842_3464 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6842_3464 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3464_3464 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_1911_6843) (v_1@@20 T@FrameType) (q@@17 T@Field_8096_8097) (w@@20 T@FrameType) (r@@17 T@Field_8096_8097) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_8096 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8096_8096 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_3464_8096 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_8096 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8096_8096 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_1911_6843) (v_1@@21 T@FrameType) (q@@18 T@Field_8096_8097) (w@@21 T@FrameType) (r@@18 T@Field_6842_6843) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_8096 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8096_6842 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_3464_6842 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_8096 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8096_6842 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_1911_6843) (v_1@@22 T@FrameType) (q@@19 T@Field_8096_8097) (w@@22 T@FrameType) (r@@19 T@Field_1911_6843) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_8096 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8096_3464 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_3464_3464 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_8096 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8096_3464 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_1911_6843) (v_1@@23 T@FrameType) (q@@20 T@Field_6842_6843) (w@@23 T@FrameType) (r@@20 T@Field_8096_8097) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_6842 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_6842_8096 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_3464_8096 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_6842 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_6842_8096 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_1911_6843) (v_1@@24 T@FrameType) (q@@21 T@Field_6842_6843) (w@@24 T@FrameType) (r@@21 T@Field_6842_6843) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_6842 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_6842_6842 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_3464_6842 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_6842 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_6842_6842 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_1911_6843) (v_1@@25 T@FrameType) (q@@22 T@Field_6842_6843) (w@@25 T@FrameType) (r@@22 T@Field_1911_6843) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_6842 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_6842_3464 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_3464_3464 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_6842 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_6842_3464 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_1911_6843) (v_1@@26 T@FrameType) (q@@23 T@Field_1911_6843) (w@@26 T@FrameType) (r@@23 T@Field_8096_8097) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_3464 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3464_8096 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_3464_8096 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_3464 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3464_8096 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_1911_6843) (v_1@@27 T@FrameType) (q@@24 T@Field_1911_6843) (w@@27 T@FrameType) (r@@24 T@Field_6842_6843) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_3464 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3464_6842 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_3464_6842 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_3464 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3464_6842 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_1911_6843) (v_1@@28 T@FrameType) (q@@25 T@Field_1911_6843) (w@@28 T@FrameType) (r@@25 T@Field_1911_6843) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_3464_3464 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3464_3464 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_3464_3464 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3464_3464 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3464_3464 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_3404)
(declare-fun this@@11 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_3425)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id |valid2#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_3404_1783_53#PolymorphicMapType_3404| Heap@@41) this@@11 $allocated) (not (= this@@11 null))) (and (= Mask@0 (PolymorphicMapType_3425 (store (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| ZeroMask) this@@11 root_1 (+ (select (|PolymorphicMapType_3425_1911_1912#PolymorphicMapType_3425| ZeroMask) this@@11 root_1) FullPerm)) (|PolymorphicMapType_3425_1911_53#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_1911_6843#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_1911_22423#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_6842_1912#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_6842_53#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_6842_6843#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_6842_22769#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_8096_1912#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_8096_53#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_8096_6843#PolymorphicMapType_3425| ZeroMask) (|PolymorphicMapType_3425_8096_23115#PolymorphicMapType_3425| ZeroMask))) (state Heap@@41 Mask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_1911_1912 Mask@0 this@@11 root_1)) (=> (HasDirectPerm_1911_1912 Mask@0 this@@11 root_1) (=> (and (= perm@0 (/ (to_real 1) (to_real 2))) (= (ControlFlow 0 2) (- 0 1))) (>= perm@0 NoPerm))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
