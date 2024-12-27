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
(declare-sort T@Field_6901_53 0)
(declare-sort T@Field_6914_6915 0)
(declare-sort T@Field_11157_11158 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_10246_10251 0)
(declare-sort T@Field_11170_11175 0)
(declare-sort T@Field_4034_1215 0)
(declare-sort T@Field_4034_10251 0)
(declare-sort T@Field_4034_10265 0)
(declare-sort T@Field_10231_4035 0)
(declare-sort T@Field_10231_53 0)
(declare-sort T@Field_10231_1215 0)
(declare-sort T@Field_10264_10265 0)
(declare-sort T@Field_11157_4035 0)
(declare-sort T@Field_11157_53 0)
(declare-sort T@Field_11157_1215 0)
(declare-datatypes ((T@PolymorphicMapType_6862 0)) (((PolymorphicMapType_6862 (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| (Array T@Ref T@Field_6914_6915 Real)) (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| (Array T@Ref T@Field_11157_11158 Real)) (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| (Array T@Ref T@Field_10231_1215 Real)) (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| (Array T@Ref T@Field_4034_10265 Real)) (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| (Array T@Ref T@Field_4034_1215 Real)) (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| (Array T@Ref T@Field_6901_53 Real)) (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| (Array T@Ref T@Field_4034_10251 Real)) (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| (Array T@Ref T@Field_11157_4035 Real)) (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| (Array T@Ref T@Field_11157_1215 Real)) (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| (Array T@Ref T@Field_11157_53 Real)) (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| (Array T@Ref T@Field_11170_11175 Real)) (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| (Array T@Ref T@Field_10231_4035 Real)) (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| (Array T@Ref T@Field_10264_10265 Real)) (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| (Array T@Ref T@Field_10231_53 Real)) (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| (Array T@Ref T@Field_10246_10251 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7390 0)) (((PolymorphicMapType_7390 (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| (Array T@Ref T@Field_6914_6915 Bool)) (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| (Array T@Ref T@Field_6901_53 Bool)) (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| (Array T@Ref T@Field_4034_1215 Bool)) (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| (Array T@Ref T@Field_4034_10251 Bool)) (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| (Array T@Ref T@Field_4034_10265 Bool)) (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| (Array T@Ref T@Field_10231_4035 Bool)) (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| (Array T@Ref T@Field_10231_53 Bool)) (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| (Array T@Ref T@Field_10231_1215 Bool)) (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| (Array T@Ref T@Field_10246_10251 Bool)) (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| (Array T@Ref T@Field_10264_10265 Bool)) (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| (Array T@Ref T@Field_11157_4035 Bool)) (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| (Array T@Ref T@Field_11157_53 Bool)) (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| (Array T@Ref T@Field_11157_1215 Bool)) (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| (Array T@Ref T@Field_11170_11175 Bool)) (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| (Array T@Ref T@Field_11157_11158 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6841 0)) (((PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| (Array T@Ref T@Field_6901_53 Bool)) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| (Array T@Ref T@Field_6914_6915 T@Ref)) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| (Array T@Ref T@Field_11157_11158 T@FrameType)) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| (Array T@Ref T@Field_10246_10251 T@PolymorphicMapType_7390)) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| (Array T@Ref T@Field_11170_11175 T@PolymorphicMapType_7390)) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| (Array T@Ref T@Field_4034_1215 Int)) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| (Array T@Ref T@Field_4034_10251 T@PolymorphicMapType_7390)) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| (Array T@Ref T@Field_4034_10265 T@FrameType)) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| (Array T@Ref T@Field_10231_4035 T@Ref)) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| (Array T@Ref T@Field_10231_53 Bool)) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| (Array T@Ref T@Field_10231_1215 Int)) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| (Array T@Ref T@Field_10264_10265 T@FrameType)) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| (Array T@Ref T@Field_11157_4035 T@Ref)) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| (Array T@Ref T@Field_11157_53 Bool)) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| (Array T@Ref T@Field_11157_1215 Int)) ) ) ))
(declare-fun $allocated () T@Field_6901_53)
(declare-fun f_7 () T@Field_6914_6915)
(declare-fun succHeap (T@PolymorphicMapType_6841 T@PolymorphicMapType_6841) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6841 T@PolymorphicMapType_6841) Bool)
(declare-fun state (T@PolymorphicMapType_6841 T@PolymorphicMapType_6862) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6862) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7390)
(declare-fun Cell (T@Ref) T@Field_11157_11158)
(declare-fun IsPredicateField_4038_4039 (T@Field_11157_11158) Bool)
(declare-fun |Cell#trigger_4038| (T@PolymorphicMapType_6841 T@Field_11157_11158) Bool)
(declare-fun |Cell#everUsed_4038| (T@Field_11157_11158) Bool)
(declare-fun wand (T@Ref Real T@Ref T@Ref Real T@Ref Real) T@Field_10231_1215)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6841 T@PolymorphicMapType_6841 T@PolymorphicMapType_6862) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4038 (T@Field_11157_11158) T@Field_11170_11175)
(declare-fun HasDirectPerm_11157_10265 (T@PolymorphicMapType_6862 T@Ref T@Field_11157_11158) Bool)
(declare-fun IsPredicateField_3975_3976 (T@Field_10264_10265) Bool)
(declare-fun PredicateMaskField_10231 (T@Field_10264_10265) T@Field_10246_10251)
(declare-fun HasDirectPerm_10231_10265 (T@PolymorphicMapType_6862 T@Ref T@Field_10264_10265) Bool)
(declare-fun IsPredicateField_4034_23746 (T@Field_4034_10265) Bool)
(declare-fun PredicateMaskField_4034 (T@Field_4034_10265) T@Field_4034_10251)
(declare-fun HasDirectPerm_4034_10265 (T@PolymorphicMapType_6862 T@Ref T@Field_4034_10265) Bool)
(declare-fun IsWandField_11157_29432 (T@Field_11157_11158) Bool)
(declare-fun WandMaskField_11157 (T@Field_11157_11158) T@Field_11170_11175)
(declare-fun IsWandField_3975_3976 (T@Field_10264_10265) Bool)
(declare-fun WandMaskField_3975 (T@Field_10264_10265) T@Field_10246_10251)
(declare-fun IsWandField_4034_28750 (T@Field_4034_10265) Bool)
(declare-fun WandMaskField_4034 (T@Field_4034_10265) T@Field_4034_10251)
(declare-fun |Cell#sm| (T@Ref) T@Field_11170_11175)
(declare-fun dummyHeap () T@PolymorphicMapType_6841)
(declare-fun ZeroMask () T@PolymorphicMapType_6862)
(declare-fun InsidePredicate_11157_11157 (T@Field_11157_11158 T@FrameType T@Field_11157_11158 T@FrameType) Bool)
(declare-fun InsidePredicate_10231_10231 (T@Field_10264_10265 T@FrameType T@Field_10264_10265 T@FrameType) Bool)
(declare-fun InsidePredicate_6901_6901 (T@Field_4034_10265 T@FrameType T@Field_4034_10265 T@FrameType) Bool)
(declare-fun IsPredicateField_4034_4035 (T@Field_6914_6915) Bool)
(declare-fun IsWandField_4034_4035 (T@Field_6914_6915) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3956_39736 (T@Field_10246_10251) Bool)
(declare-fun IsWandField_3956_39752 (T@Field_10246_10251) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3956_53 (T@Field_10231_53) Bool)
(declare-fun IsWandField_3956_53 (T@Field_10231_53) Bool)
(declare-fun IsPredicateField_3956_1215 (T@Field_10231_1215) Bool)
(declare-fun IsWandField_3956_1215 (T@Field_10231_1215) Bool)
(declare-fun IsPredicateField_3956_4035 (T@Field_10231_4035) Bool)
(declare-fun IsWandField_3956_4035 (T@Field_10231_4035) Bool)
(declare-fun IsPredicateField_4038_38919 (T@Field_11170_11175) Bool)
(declare-fun IsWandField_4038_38935 (T@Field_11170_11175) Bool)
(declare-fun IsPredicateField_4038_53 (T@Field_11157_53) Bool)
(declare-fun IsWandField_4038_53 (T@Field_11157_53) Bool)
(declare-fun IsPredicateField_4038_1215 (T@Field_11157_1215) Bool)
(declare-fun IsWandField_4038_1215 (T@Field_11157_1215) Bool)
(declare-fun IsPredicateField_4038_4035 (T@Field_11157_4035) Bool)
(declare-fun IsWandField_4038_4035 (T@Field_11157_4035) Bool)
(declare-fun IsPredicateField_4034_38088 (T@Field_4034_10251) Bool)
(declare-fun IsWandField_4034_38104 (T@Field_4034_10251) Bool)
(declare-fun IsPredicateField_4034_53 (T@Field_6901_53) Bool)
(declare-fun IsWandField_4034_53 (T@Field_6901_53) Bool)
(declare-fun IsPredicateField_4034_1215 (T@Field_4034_1215) Bool)
(declare-fun IsWandField_4034_1215 (T@Field_4034_1215) Bool)
(declare-fun HasDirectPerm_11157_23290 (T@PolymorphicMapType_6862 T@Ref T@Field_11170_11175) Bool)
(declare-fun HasDirectPerm_11157_1215 (T@PolymorphicMapType_6862 T@Ref T@Field_11157_1215) Bool)
(declare-fun HasDirectPerm_11157_53 (T@PolymorphicMapType_6862 T@Ref T@Field_11157_53) Bool)
(declare-fun HasDirectPerm_11157_4035 (T@PolymorphicMapType_6862 T@Ref T@Field_11157_4035) Bool)
(declare-fun HasDirectPerm_10231_22155 (T@PolymorphicMapType_6862 T@Ref T@Field_10246_10251) Bool)
(declare-fun HasDirectPerm_10231_1215 (T@PolymorphicMapType_6862 T@Ref T@Field_10231_1215) Bool)
(declare-fun HasDirectPerm_10231_53 (T@PolymorphicMapType_6862 T@Ref T@Field_10231_53) Bool)
(declare-fun HasDirectPerm_10231_4035 (T@PolymorphicMapType_6862 T@Ref T@Field_10231_4035) Bool)
(declare-fun HasDirectPerm_4034_20977 (T@PolymorphicMapType_6862 T@Ref T@Field_4034_10251) Bool)
(declare-fun HasDirectPerm_4034_1215 (T@PolymorphicMapType_6862 T@Ref T@Field_4034_1215) Bool)
(declare-fun HasDirectPerm_4034_53 (T@PolymorphicMapType_6862 T@Ref T@Field_6901_53) Bool)
(declare-fun HasDirectPerm_4034_4035 (T@PolymorphicMapType_6862 T@Ref T@Field_6914_6915) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6862 T@PolymorphicMapType_6862 T@PolymorphicMapType_6862) Bool)
(declare-fun getPredWandId_4038_4039 (T@Field_11157_11158) Int)
(declare-fun |wand#ft| (T@Ref Real T@Ref T@Ref Real T@Ref Real) T@Field_10264_10265)
(declare-fun |wand#sm| (T@Ref Real T@Ref T@Ref Real T@Ref Real) T@Field_10246_10251)
(declare-fun InsidePredicate_11157_10231 (T@Field_11157_11158 T@FrameType T@Field_10264_10265 T@FrameType) Bool)
(declare-fun InsidePredicate_11157_6901 (T@Field_11157_11158 T@FrameType T@Field_4034_10265 T@FrameType) Bool)
(declare-fun InsidePredicate_10231_11157 (T@Field_10264_10265 T@FrameType T@Field_11157_11158 T@FrameType) Bool)
(declare-fun InsidePredicate_10231_6901 (T@Field_10264_10265 T@FrameType T@Field_4034_10265 T@FrameType) Bool)
(declare-fun InsidePredicate_6901_11157 (T@Field_4034_10265 T@FrameType T@Field_11157_11158 T@FrameType) Bool)
(declare-fun InsidePredicate_6901_10231 (T@Field_4034_10265 T@FrameType T@Field_10264_10265 T@FrameType) Bool)
(declare-fun getPredWandId_3956_1215 (T@Field_10231_1215) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6841) (Heap1 T@PolymorphicMapType_6841) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6841) (Mask T@PolymorphicMapType_6862) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6841) (Heap1@@0 T@PolymorphicMapType_6841) (Heap2 T@PolymorphicMapType_6841) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11157_11158) ) (!  (not (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11170_11175) ) (!  (not (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11157_1215) ) (!  (not (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11157_53) ) (!  (not (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11157_4035) ) (!  (not (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_10264_10265) ) (!  (not (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_10246_10251) ) (!  (not (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10231_1215) ) (!  (not (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10231_53) ) (!  (not (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10231_4035) ) (!  (not (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4034_10265) ) (!  (not (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_4034_10251) ) (!  (not (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4034_1215) ) (!  (not (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6901_53) ) (!  (not (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6914_6915) ) (!  (not (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_4038_4039 (Cell x))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (Cell x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6841) (x@@0 T@Ref) ) (! (|Cell#everUsed_4038| (Cell x@@0))
 :qid |stdinbpl.251:15|
 :skolemid |34|
 :pattern ( (|Cell#trigger_4038| Heap@@0 (Cell x@@0)))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 T@Ref) (arg5 Real) (arg6 T@Ref) (arg7 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) (arg7_2 Real) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6841) (ExhaleHeap T@PolymorphicMapType_6841) (Mask@@0 T@PolymorphicMapType_6862) (pm_f_5 T@Field_11157_11158) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11157_10265 Mask@@0 null pm_f_5) (IsPredicateField_4038_4039 pm_f_5)) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@1) null (PredicateMaskField_4038 pm_f_5)) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap) null (PredicateMaskField_4038 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4038_4039 pm_f_5) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap) null (PredicateMaskField_4038 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6841) (ExhaleHeap@@0 T@PolymorphicMapType_6841) (Mask@@1 T@PolymorphicMapType_6862) (pm_f_5@@0 T@Field_10264_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10231_10265 Mask@@1 null pm_f_5@@0) (IsPredicateField_3975_3976 pm_f_5@@0)) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@2) null (PredicateMaskField_10231 pm_f_5@@0)) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@0) null (PredicateMaskField_10231 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3975_3976 pm_f_5@@0) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@0) null (PredicateMaskField_10231 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6841) (ExhaleHeap@@1 T@PolymorphicMapType_6841) (Mask@@2 T@PolymorphicMapType_6862) (pm_f_5@@1 T@Field_4034_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4034_10265 Mask@@2 null pm_f_5@@1) (IsPredicateField_4034_23746 pm_f_5@@1)) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@3) null (PredicateMaskField_4034 pm_f_5@@1)) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@1) null (PredicateMaskField_4034 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4034_23746 pm_f_5@@1) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@1) null (PredicateMaskField_4034 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6841) (ExhaleHeap@@2 T@PolymorphicMapType_6841) (Mask@@3 T@PolymorphicMapType_6862) (pm_f_5@@2 T@Field_11157_11158) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11157_10265 Mask@@3 null pm_f_5@@2) (IsWandField_11157_29432 pm_f_5@@2)) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@4) null (WandMaskField_11157 pm_f_5@@2)) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@2) null (WandMaskField_11157 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_11157_29432 pm_f_5@@2) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@2) null (WandMaskField_11157 pm_f_5@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6841) (ExhaleHeap@@3 T@PolymorphicMapType_6841) (Mask@@4 T@PolymorphicMapType_6862) (pm_f_5@@3 T@Field_10264_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10231_10265 Mask@@4 null pm_f_5@@3) (IsWandField_3975_3976 pm_f_5@@3)) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@5) null (WandMaskField_3975 pm_f_5@@3)) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@3) null (WandMaskField_3975 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_3975_3976 pm_f_5@@3) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@3) null (WandMaskField_3975 pm_f_5@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6841) (ExhaleHeap@@4 T@PolymorphicMapType_6841) (Mask@@5 T@PolymorphicMapType_6862) (pm_f_5@@4 T@Field_4034_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4034_10265 Mask@@5 null pm_f_5@@4) (IsWandField_4034_28750 pm_f_5@@4)) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@6) null (WandMaskField_4034 pm_f_5@@4)) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@4) null (WandMaskField_4034 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_4034_28750 pm_f_5@@4) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@4) null (WandMaskField_4034 pm_f_5@@4)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (Cell x@@1) (Cell x2)) (= x@@1 x2))
 :qid |stdinbpl.242:15|
 :skolemid |32|
 :pattern ( (Cell x@@1) (Cell x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|Cell#sm| x@@2) (|Cell#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.246:15|
 :skolemid |33|
 :pattern ( (|Cell#sm| x@@2) (|Cell#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6841) (ExhaleHeap@@5 T@PolymorphicMapType_6841) (Mask@@6 T@PolymorphicMapType_6862) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@7) o_12 $allocated) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@5) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@5) o_12 $allocated))
)))
(assert (forall ((p T@Field_11157_11158) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11157_11157 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11157_11157 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10264_10265) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10231_10231 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10231_10231 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_4034_10265) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_6901_6901 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6901_6901 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_4034_4035 f_7)))
(assert  (not (IsWandField_4034_4035 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6841) (ExhaleHeap@@6 T@PolymorphicMapType_6841) (Mask@@7 T@PolymorphicMapType_6862) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6862) (o_2@@14 T@Ref) (f_4@@14 T@Field_10246_10251) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3956_39736 f_4@@14))) (not (IsWandField_3956_39752 f_4@@14))) (<= (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6862) (o_2@@15 T@Ref) (f_4@@15 T@Field_10231_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3956_53 f_4@@15))) (not (IsWandField_3956_53 f_4@@15))) (<= (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6862) (o_2@@16 T@Ref) (f_4@@16 T@Field_10231_1215) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3956_1215 f_4@@16))) (not (IsWandField_3956_1215 f_4@@16))) (<= (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6862) (o_2@@17 T@Ref) (f_4@@17 T@Field_10264_10265) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3975_3976 f_4@@17))) (not (IsWandField_3975_3976 f_4@@17))) (<= (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6862) (o_2@@18 T@Ref) (f_4@@18 T@Field_10231_4035) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3956_4035 f_4@@18))) (not (IsWandField_3956_4035 f_4@@18))) (<= (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6862) (o_2@@19 T@Ref) (f_4@@19 T@Field_11170_11175) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4038_38919 f_4@@19))) (not (IsWandField_4038_38935 f_4@@19))) (<= (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6862) (o_2@@20 T@Ref) (f_4@@20 T@Field_11157_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4038_53 f_4@@20))) (not (IsWandField_4038_53 f_4@@20))) (<= (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6862) (o_2@@21 T@Ref) (f_4@@21 T@Field_11157_1215) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4038_1215 f_4@@21))) (not (IsWandField_4038_1215 f_4@@21))) (<= (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6862) (o_2@@22 T@Ref) (f_4@@22 T@Field_11157_11158) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4038_4039 f_4@@22))) (not (IsWandField_11157_29432 f_4@@22))) (<= (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6862) (o_2@@23 T@Ref) (f_4@@23 T@Field_11157_4035) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4038_4035 f_4@@23))) (not (IsWandField_4038_4035 f_4@@23))) (<= (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6862) (o_2@@24 T@Ref) (f_4@@24 T@Field_4034_10251) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4034_38088 f_4@@24))) (not (IsWandField_4034_38104 f_4@@24))) (<= (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6862) (o_2@@25 T@Ref) (f_4@@25 T@Field_6901_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4034_53 f_4@@25))) (not (IsWandField_4034_53 f_4@@25))) (<= (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6862) (o_2@@26 T@Ref) (f_4@@26 T@Field_4034_1215) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4034_1215 f_4@@26))) (not (IsWandField_4034_1215 f_4@@26))) (<= (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6862) (o_2@@27 T@Ref) (f_4@@27 T@Field_4034_10265) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4034_23746 f_4@@27))) (not (IsWandField_4034_28750 f_4@@27))) (<= (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6862) (o_2@@28 T@Ref) (f_4@@28 T@Field_6914_6915) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4034_4035 f_4@@28))) (not (IsWandField_4034_4035 f_4@@28))) (<= (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6862) (o_2@@29 T@Ref) (f_4@@29 T@Field_11157_11158) ) (! (= (HasDirectPerm_11157_10265 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11157_10265 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6862) (o_2@@30 T@Ref) (f_4@@30 T@Field_11170_11175) ) (! (= (HasDirectPerm_11157_23290 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11157_23290 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6862) (o_2@@31 T@Ref) (f_4@@31 T@Field_11157_1215) ) (! (= (HasDirectPerm_11157_1215 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11157_1215 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6862) (o_2@@32 T@Ref) (f_4@@32 T@Field_11157_53) ) (! (= (HasDirectPerm_11157_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11157_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6862) (o_2@@33 T@Ref) (f_4@@33 T@Field_11157_4035) ) (! (= (HasDirectPerm_11157_4035 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11157_4035 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6862) (o_2@@34 T@Ref) (f_4@@34 T@Field_10264_10265) ) (! (= (HasDirectPerm_10231_10265 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10231_10265 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6862) (o_2@@35 T@Ref) (f_4@@35 T@Field_10246_10251) ) (! (= (HasDirectPerm_10231_22155 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10231_22155 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6862) (o_2@@36 T@Ref) (f_4@@36 T@Field_10231_1215) ) (! (= (HasDirectPerm_10231_1215 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10231_1215 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_6862) (o_2@@37 T@Ref) (f_4@@37 T@Field_10231_53) ) (! (= (HasDirectPerm_10231_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10231_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_6862) (o_2@@38 T@Ref) (f_4@@38 T@Field_10231_4035) ) (! (= (HasDirectPerm_10231_4035 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10231_4035 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_6862) (o_2@@39 T@Ref) (f_4@@39 T@Field_4034_10265) ) (! (= (HasDirectPerm_4034_10265 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4034_10265 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_6862) (o_2@@40 T@Ref) (f_4@@40 T@Field_4034_10251) ) (! (= (HasDirectPerm_4034_20977 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4034_20977 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_6862) (o_2@@41 T@Ref) (f_4@@41 T@Field_4034_1215) ) (! (= (HasDirectPerm_4034_1215 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4034_1215 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_6862) (o_2@@42 T@Ref) (f_4@@42 T@Field_6901_53) ) (! (= (HasDirectPerm_4034_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4034_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_6862) (o_2@@43 T@Ref) (f_4@@43 T@Field_6914_6915) ) (! (= (HasDirectPerm_4034_4035 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4034_4035 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6841) (ExhaleHeap@@7 T@PolymorphicMapType_6841) (Mask@@38 T@PolymorphicMapType_6862) (o_12@@0 T@Ref) (f_16 T@Field_11157_11158) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_11157_10265 Mask@@38 o_12@@0 f_16) (= (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@9) o_12@@0 f_16) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@7) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@7) o_12@@0 f_16))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6841) (ExhaleHeap@@8 T@PolymorphicMapType_6841) (Mask@@39 T@PolymorphicMapType_6862) (o_12@@1 T@Ref) (f_16@@0 T@Field_11170_11175) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_11157_23290 Mask@@39 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@10) o_12@@1 f_16@@0) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@8) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@8) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6841) (ExhaleHeap@@9 T@PolymorphicMapType_6841) (Mask@@40 T@PolymorphicMapType_6862) (o_12@@2 T@Ref) (f_16@@1 T@Field_11157_1215) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_11157_1215 Mask@@40 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@11) o_12@@2 f_16@@1) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@9) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@9) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6841) (ExhaleHeap@@10 T@PolymorphicMapType_6841) (Mask@@41 T@PolymorphicMapType_6862) (o_12@@3 T@Ref) (f_16@@2 T@Field_11157_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_11157_53 Mask@@41 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@12) o_12@@3 f_16@@2) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@10) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@10) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6841) (ExhaleHeap@@11 T@PolymorphicMapType_6841) (Mask@@42 T@PolymorphicMapType_6862) (o_12@@4 T@Ref) (f_16@@3 T@Field_11157_4035) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_11157_4035 Mask@@42 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@13) o_12@@4 f_16@@3) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@11) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@11) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6841) (ExhaleHeap@@12 T@PolymorphicMapType_6841) (Mask@@43 T@PolymorphicMapType_6862) (o_12@@5 T@Ref) (f_16@@4 T@Field_10264_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_10231_10265 Mask@@43 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@14) o_12@@5 f_16@@4) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@12) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@12) o_12@@5 f_16@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6841) (ExhaleHeap@@13 T@PolymorphicMapType_6841) (Mask@@44 T@PolymorphicMapType_6862) (o_12@@6 T@Ref) (f_16@@5 T@Field_10246_10251) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_10231_22155 Mask@@44 o_12@@6 f_16@@5) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@15) o_12@@6 f_16@@5) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@13) o_12@@6 f_16@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@13) o_12@@6 f_16@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6841) (ExhaleHeap@@14 T@PolymorphicMapType_6841) (Mask@@45 T@PolymorphicMapType_6862) (o_12@@7 T@Ref) (f_16@@6 T@Field_10231_1215) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_10231_1215 Mask@@45 o_12@@7 f_16@@6) (= (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@16) o_12@@7 f_16@@6) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@14) o_12@@7 f_16@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@14) o_12@@7 f_16@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6841) (ExhaleHeap@@15 T@PolymorphicMapType_6841) (Mask@@46 T@PolymorphicMapType_6862) (o_12@@8 T@Ref) (f_16@@7 T@Field_10231_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_10231_53 Mask@@46 o_12@@8 f_16@@7) (= (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@17) o_12@@8 f_16@@7) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@15) o_12@@8 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@15) o_12@@8 f_16@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6841) (ExhaleHeap@@16 T@PolymorphicMapType_6841) (Mask@@47 T@PolymorphicMapType_6862) (o_12@@9 T@Ref) (f_16@@8 T@Field_10231_4035) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_10231_4035 Mask@@47 o_12@@9 f_16@@8) (= (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@18) o_12@@9 f_16@@8) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@16) o_12@@9 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@16) o_12@@9 f_16@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6841) (ExhaleHeap@@17 T@PolymorphicMapType_6841) (Mask@@48 T@PolymorphicMapType_6862) (o_12@@10 T@Ref) (f_16@@9 T@Field_4034_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_4034_10265 Mask@@48 o_12@@10 f_16@@9) (= (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@19) o_12@@10 f_16@@9) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@17) o_12@@10 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@17) o_12@@10 f_16@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6841) (ExhaleHeap@@18 T@PolymorphicMapType_6841) (Mask@@49 T@PolymorphicMapType_6862) (o_12@@11 T@Ref) (f_16@@10 T@Field_4034_10251) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_4034_20977 Mask@@49 o_12@@11 f_16@@10) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@20) o_12@@11 f_16@@10) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@18) o_12@@11 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@18) o_12@@11 f_16@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6841) (ExhaleHeap@@19 T@PolymorphicMapType_6841) (Mask@@50 T@PolymorphicMapType_6862) (o_12@@12 T@Ref) (f_16@@11 T@Field_4034_1215) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_4034_1215 Mask@@50 o_12@@12 f_16@@11) (= (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@21) o_12@@12 f_16@@11) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@19) o_12@@12 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@19) o_12@@12 f_16@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6841) (ExhaleHeap@@20 T@PolymorphicMapType_6841) (Mask@@51 T@PolymorphicMapType_6862) (o_12@@13 T@Ref) (f_16@@12 T@Field_6901_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_4034_53 Mask@@51 o_12@@13 f_16@@12) (= (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@22) o_12@@13 f_16@@12) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@20) o_12@@13 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@20) o_12@@13 f_16@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6841) (ExhaleHeap@@21 T@PolymorphicMapType_6841) (Mask@@52 T@PolymorphicMapType_6862) (o_12@@14 T@Ref) (f_16@@13 T@Field_6914_6915) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_4034_4035 Mask@@52 o_12@@14 f_16@@13) (= (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@23) o_12@@14 f_16@@13) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@21) o_12@@14 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@21) o_12@@14 f_16@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_10246_10251) ) (! (= (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_10231_53) ) (! (= (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_10231_1215) ) (! (= (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_10264_10265) ) (! (= (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_10231_4035) ) (! (= (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_11170_11175) ) (! (= (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_11157_53) ) (! (= (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_11157_1215) ) (! (= (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_11157_11158) ) (! (= (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_11157_4035) ) (! (= (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_4034_10251) ) (! (= (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_6901_53) ) (! (= (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_4034_1215) ) (! (= (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_4034_10265) ) (! (= (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_6914_6915) ) (! (= (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6862) (SummandMask1 T@PolymorphicMapType_6862) (SummandMask2 T@PolymorphicMapType_6862) (o_2@@59 T@Ref) (f_4@@59 T@Field_10246_10251) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6862_3956_36295#PolymorphicMapType_6862| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6862) (SummandMask1@@0 T@PolymorphicMapType_6862) (SummandMask2@@0 T@PolymorphicMapType_6862) (o_2@@60 T@Ref) (f_4@@60 T@Field_10231_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6862_3956_53#PolymorphicMapType_6862| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6862) (SummandMask1@@1 T@PolymorphicMapType_6862) (SummandMask2@@1 T@PolymorphicMapType_6862) (o_2@@61 T@Ref) (f_4@@61 T@Field_10231_1215) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6862_3956_1215#PolymorphicMapType_6862| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6862) (SummandMask1@@2 T@PolymorphicMapType_6862) (SummandMask2@@2 T@PolymorphicMapType_6862) (o_2@@62 T@Ref) (f_4@@62 T@Field_10264_10265) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6862_3956_4039#PolymorphicMapType_6862| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6862) (SummandMask1@@3 T@PolymorphicMapType_6862) (SummandMask2@@3 T@PolymorphicMapType_6862) (o_2@@63 T@Ref) (f_4@@63 T@Field_10231_4035) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6862_3956_4035#PolymorphicMapType_6862| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6862) (SummandMask1@@4 T@PolymorphicMapType_6862) (SummandMask2@@4 T@PolymorphicMapType_6862) (o_2@@64 T@Ref) (f_4@@64 T@Field_11170_11175) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6862_4038_35881#PolymorphicMapType_6862| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6862) (SummandMask1@@5 T@PolymorphicMapType_6862) (SummandMask2@@5 T@PolymorphicMapType_6862) (o_2@@65 T@Ref) (f_4@@65 T@Field_11157_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6862_4038_53#PolymorphicMapType_6862| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6862) (SummandMask1@@6 T@PolymorphicMapType_6862) (SummandMask2@@6 T@PolymorphicMapType_6862) (o_2@@66 T@Ref) (f_4@@66 T@Field_11157_1215) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6862_4038_1215#PolymorphicMapType_6862| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6862) (SummandMask1@@7 T@PolymorphicMapType_6862) (SummandMask2@@7 T@PolymorphicMapType_6862) (o_2@@67 T@Ref) (f_4@@67 T@Field_11157_11158) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6862_4038_4039#PolymorphicMapType_6862| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6862) (SummandMask1@@8 T@PolymorphicMapType_6862) (SummandMask2@@8 T@PolymorphicMapType_6862) (o_2@@68 T@Ref) (f_4@@68 T@Field_11157_4035) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6862_4038_4035#PolymorphicMapType_6862| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_6862) (SummandMask1@@9 T@PolymorphicMapType_6862) (SummandMask2@@9 T@PolymorphicMapType_6862) (o_2@@69 T@Ref) (f_4@@69 T@Field_4034_10251) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6862_4034_35470#PolymorphicMapType_6862| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_6862) (SummandMask1@@10 T@PolymorphicMapType_6862) (SummandMask2@@10 T@PolymorphicMapType_6862) (o_2@@70 T@Ref) (f_4@@70 T@Field_6901_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6862_4034_53#PolymorphicMapType_6862| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_6862) (SummandMask1@@11 T@PolymorphicMapType_6862) (SummandMask2@@11 T@PolymorphicMapType_6862) (o_2@@71 T@Ref) (f_4@@71 T@Field_4034_1215) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6862_4034_1215#PolymorphicMapType_6862| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_6862) (SummandMask1@@12 T@PolymorphicMapType_6862) (SummandMask2@@12 T@PolymorphicMapType_6862) (o_2@@72 T@Ref) (f_4@@72 T@Field_4034_10265) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6862_4034_4039#PolymorphicMapType_6862| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_6862) (SummandMask1@@13 T@PolymorphicMapType_6862) (SummandMask2@@13 T@PolymorphicMapType_6862) (o_2@@73 T@Ref) (f_4@@73 T@Field_6914_6915) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6862_4034_4035#PolymorphicMapType_6862| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6841) (ExhaleHeap@@22 T@PolymorphicMapType_6841) (Mask@@53 T@PolymorphicMapType_6862) (pm_f_5@@5 T@Field_11157_11158) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_11157_10265 Mask@@53 null pm_f_5@@5) (IsPredicateField_4038_4039 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@14 T@Field_6914_6915) ) (!  (=> (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5 f_16@@14) (= (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@24) o2_5 f_16@@14) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5 f_16@@14))
)) (forall ((o2_5@@0 T@Ref) (f_16@@15 T@Field_6901_53) ) (!  (=> (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@0 f_16@@15) (= (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@24) o2_5@@0 f_16@@15) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@0 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@0 f_16@@15))
))) (forall ((o2_5@@1 T@Ref) (f_16@@16 T@Field_4034_1215) ) (!  (=> (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@1 f_16@@16) (= (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@24) o2_5@@1 f_16@@16) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@1 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@1 f_16@@16))
))) (forall ((o2_5@@2 T@Ref) (f_16@@17 T@Field_4034_10251) ) (!  (=> (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@2 f_16@@17) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@24) o2_5@@2 f_16@@17) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@2 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@2 f_16@@17))
))) (forall ((o2_5@@3 T@Ref) (f_16@@18 T@Field_4034_10265) ) (!  (=> (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@3 f_16@@18) (= (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@24) o2_5@@3 f_16@@18) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@3 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@3 f_16@@18))
))) (forall ((o2_5@@4 T@Ref) (f_16@@19 T@Field_10231_4035) ) (!  (=> (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@4 f_16@@19) (= (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@24) o2_5@@4 f_16@@19) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@4 f_16@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@4 f_16@@19))
))) (forall ((o2_5@@5 T@Ref) (f_16@@20 T@Field_10231_53) ) (!  (=> (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@5 f_16@@20) (= (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@24) o2_5@@5 f_16@@20) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@5 f_16@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@5 f_16@@20))
))) (forall ((o2_5@@6 T@Ref) (f_16@@21 T@Field_10231_1215) ) (!  (=> (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@6 f_16@@21) (= (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@24) o2_5@@6 f_16@@21) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@6 f_16@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@6 f_16@@21))
))) (forall ((o2_5@@7 T@Ref) (f_16@@22 T@Field_10246_10251) ) (!  (=> (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@7 f_16@@22) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@24) o2_5@@7 f_16@@22) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@7 f_16@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@7 f_16@@22))
))) (forall ((o2_5@@8 T@Ref) (f_16@@23 T@Field_10264_10265) ) (!  (=> (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@8 f_16@@23) (= (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@24) o2_5@@8 f_16@@23) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@8 f_16@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@8 f_16@@23))
))) (forall ((o2_5@@9 T@Ref) (f_16@@24 T@Field_11157_4035) ) (!  (=> (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@9 f_16@@24) (= (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@24) o2_5@@9 f_16@@24) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@9 f_16@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@9 f_16@@24))
))) (forall ((o2_5@@10 T@Ref) (f_16@@25 T@Field_11157_53) ) (!  (=> (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@10 f_16@@25) (= (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@24) o2_5@@10 f_16@@25) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@10 f_16@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@10 f_16@@25))
))) (forall ((o2_5@@11 T@Ref) (f_16@@26 T@Field_11157_1215) ) (!  (=> (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@11 f_16@@26) (= (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@24) o2_5@@11 f_16@@26) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@11 f_16@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@11 f_16@@26))
))) (forall ((o2_5@@12 T@Ref) (f_16@@27 T@Field_11170_11175) ) (!  (=> (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@12 f_16@@27) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) o2_5@@12 f_16@@27) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@12 f_16@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@12 f_16@@27))
))) (forall ((o2_5@@13 T@Ref) (f_16@@28 T@Field_11157_11158) ) (!  (=> (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@24) null (PredicateMaskField_4038 pm_f_5@@5))) o2_5@@13 f_16@@28) (= (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@24) o2_5@@13 f_16@@28) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@13 f_16@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@22) o2_5@@13 f_16@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_4038_4039 pm_f_5@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6841) (ExhaleHeap@@23 T@PolymorphicMapType_6841) (Mask@@54 T@PolymorphicMapType_6862) (pm_f_5@@6 T@Field_10264_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_10231_10265 Mask@@54 null pm_f_5@@6) (IsPredicateField_3975_3976 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_16@@29 T@Field_6914_6915) ) (!  (=> (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@14 f_16@@29) (= (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@25) o2_5@@14 f_16@@29) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@14 f_16@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@14 f_16@@29))
)) (forall ((o2_5@@15 T@Ref) (f_16@@30 T@Field_6901_53) ) (!  (=> (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@15 f_16@@30) (= (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@25) o2_5@@15 f_16@@30) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@15 f_16@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@15 f_16@@30))
))) (forall ((o2_5@@16 T@Ref) (f_16@@31 T@Field_4034_1215) ) (!  (=> (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@16 f_16@@31) (= (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@25) o2_5@@16 f_16@@31) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@16 f_16@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@16 f_16@@31))
))) (forall ((o2_5@@17 T@Ref) (f_16@@32 T@Field_4034_10251) ) (!  (=> (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@17 f_16@@32) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@25) o2_5@@17 f_16@@32) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@17 f_16@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@17 f_16@@32))
))) (forall ((o2_5@@18 T@Ref) (f_16@@33 T@Field_4034_10265) ) (!  (=> (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@18 f_16@@33) (= (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@25) o2_5@@18 f_16@@33) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@18 f_16@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@18 f_16@@33))
))) (forall ((o2_5@@19 T@Ref) (f_16@@34 T@Field_10231_4035) ) (!  (=> (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@19 f_16@@34) (= (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@25) o2_5@@19 f_16@@34) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@19 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@19 f_16@@34))
))) (forall ((o2_5@@20 T@Ref) (f_16@@35 T@Field_10231_53) ) (!  (=> (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@20 f_16@@35) (= (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@25) o2_5@@20 f_16@@35) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@20 f_16@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@20 f_16@@35))
))) (forall ((o2_5@@21 T@Ref) (f_16@@36 T@Field_10231_1215) ) (!  (=> (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@21 f_16@@36) (= (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@25) o2_5@@21 f_16@@36) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@21 f_16@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@21 f_16@@36))
))) (forall ((o2_5@@22 T@Ref) (f_16@@37 T@Field_10246_10251) ) (!  (=> (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@22 f_16@@37) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) o2_5@@22 f_16@@37) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@22 f_16@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@22 f_16@@37))
))) (forall ((o2_5@@23 T@Ref) (f_16@@38 T@Field_10264_10265) ) (!  (=> (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@23 f_16@@38) (= (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@25) o2_5@@23 f_16@@38) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@23 f_16@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@23 f_16@@38))
))) (forall ((o2_5@@24 T@Ref) (f_16@@39 T@Field_11157_4035) ) (!  (=> (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@24 f_16@@39) (= (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@25) o2_5@@24 f_16@@39) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@24 f_16@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@24 f_16@@39))
))) (forall ((o2_5@@25 T@Ref) (f_16@@40 T@Field_11157_53) ) (!  (=> (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@25 f_16@@40) (= (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@25) o2_5@@25 f_16@@40) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@25 f_16@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@25 f_16@@40))
))) (forall ((o2_5@@26 T@Ref) (f_16@@41 T@Field_11157_1215) ) (!  (=> (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@26 f_16@@41) (= (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@25) o2_5@@26 f_16@@41) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@26 f_16@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@26 f_16@@41))
))) (forall ((o2_5@@27 T@Ref) (f_16@@42 T@Field_11170_11175) ) (!  (=> (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@27 f_16@@42) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@25) o2_5@@27 f_16@@42) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@27 f_16@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@27 f_16@@42))
))) (forall ((o2_5@@28 T@Ref) (f_16@@43 T@Field_11157_11158) ) (!  (=> (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@25) null (PredicateMaskField_10231 pm_f_5@@6))) o2_5@@28 f_16@@43) (= (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@25) o2_5@@28 f_16@@43) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@28 f_16@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@23) o2_5@@28 f_16@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_3975_3976 pm_f_5@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6841) (ExhaleHeap@@24 T@PolymorphicMapType_6841) (Mask@@55 T@PolymorphicMapType_6862) (pm_f_5@@7 T@Field_4034_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_4034_10265 Mask@@55 null pm_f_5@@7) (IsPredicateField_4034_23746 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@44 T@Field_6914_6915) ) (!  (=> (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@29 f_16@@44) (= (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@26) o2_5@@29 f_16@@44) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@29 f_16@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@29 f_16@@44))
)) (forall ((o2_5@@30 T@Ref) (f_16@@45 T@Field_6901_53) ) (!  (=> (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@30 f_16@@45) (= (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@26) o2_5@@30 f_16@@45) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@30 f_16@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@30 f_16@@45))
))) (forall ((o2_5@@31 T@Ref) (f_16@@46 T@Field_4034_1215) ) (!  (=> (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@31 f_16@@46) (= (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@26) o2_5@@31 f_16@@46) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@31 f_16@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@31 f_16@@46))
))) (forall ((o2_5@@32 T@Ref) (f_16@@47 T@Field_4034_10251) ) (!  (=> (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@32 f_16@@47) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) o2_5@@32 f_16@@47) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@32 f_16@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@32 f_16@@47))
))) (forall ((o2_5@@33 T@Ref) (f_16@@48 T@Field_4034_10265) ) (!  (=> (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@33 f_16@@48) (= (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@26) o2_5@@33 f_16@@48) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@33 f_16@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@33 f_16@@48))
))) (forall ((o2_5@@34 T@Ref) (f_16@@49 T@Field_10231_4035) ) (!  (=> (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@34 f_16@@49) (= (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@26) o2_5@@34 f_16@@49) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@34 f_16@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@34 f_16@@49))
))) (forall ((o2_5@@35 T@Ref) (f_16@@50 T@Field_10231_53) ) (!  (=> (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@35 f_16@@50) (= (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@26) o2_5@@35 f_16@@50) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@35 f_16@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@35 f_16@@50))
))) (forall ((o2_5@@36 T@Ref) (f_16@@51 T@Field_10231_1215) ) (!  (=> (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@36 f_16@@51) (= (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@26) o2_5@@36 f_16@@51) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@36 f_16@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@36 f_16@@51))
))) (forall ((o2_5@@37 T@Ref) (f_16@@52 T@Field_10246_10251) ) (!  (=> (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@37 f_16@@52) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@26) o2_5@@37 f_16@@52) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@37 f_16@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@37 f_16@@52))
))) (forall ((o2_5@@38 T@Ref) (f_16@@53 T@Field_10264_10265) ) (!  (=> (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@38 f_16@@53) (= (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@26) o2_5@@38 f_16@@53) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@38 f_16@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@38 f_16@@53))
))) (forall ((o2_5@@39 T@Ref) (f_16@@54 T@Field_11157_4035) ) (!  (=> (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@39 f_16@@54) (= (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@26) o2_5@@39 f_16@@54) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@39 f_16@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@39 f_16@@54))
))) (forall ((o2_5@@40 T@Ref) (f_16@@55 T@Field_11157_53) ) (!  (=> (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@40 f_16@@55) (= (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@26) o2_5@@40 f_16@@55) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@40 f_16@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@40 f_16@@55))
))) (forall ((o2_5@@41 T@Ref) (f_16@@56 T@Field_11157_1215) ) (!  (=> (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@41 f_16@@56) (= (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@26) o2_5@@41 f_16@@56) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@41 f_16@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@41 f_16@@56))
))) (forall ((o2_5@@42 T@Ref) (f_16@@57 T@Field_11170_11175) ) (!  (=> (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@42 f_16@@57) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@26) o2_5@@42 f_16@@57) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@42 f_16@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@42 f_16@@57))
))) (forall ((o2_5@@43 T@Ref) (f_16@@58 T@Field_11157_11158) ) (!  (=> (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@26) null (PredicateMaskField_4034 pm_f_5@@7))) o2_5@@43 f_16@@58) (= (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@26) o2_5@@43 f_16@@58) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@43 f_16@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@24) o2_5@@43 f_16@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_4034_23746 pm_f_5@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6841) (ExhaleHeap@@25 T@PolymorphicMapType_6841) (Mask@@56 T@PolymorphicMapType_6862) (pm_f_5@@8 T@Field_11157_11158) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_11157_10265 Mask@@56 null pm_f_5@@8) (IsWandField_11157_29432 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_16@@59 T@Field_6914_6915) ) (!  (=> (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@44 f_16@@59) (= (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@27) o2_5@@44 f_16@@59) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@44 f_16@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@44 f_16@@59))
)) (forall ((o2_5@@45 T@Ref) (f_16@@60 T@Field_6901_53) ) (!  (=> (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@45 f_16@@60) (= (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@27) o2_5@@45 f_16@@60) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@45 f_16@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@45 f_16@@60))
))) (forall ((o2_5@@46 T@Ref) (f_16@@61 T@Field_4034_1215) ) (!  (=> (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@46 f_16@@61) (= (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@27) o2_5@@46 f_16@@61) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@46 f_16@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@46 f_16@@61))
))) (forall ((o2_5@@47 T@Ref) (f_16@@62 T@Field_4034_10251) ) (!  (=> (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@47 f_16@@62) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@27) o2_5@@47 f_16@@62) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@47 f_16@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@47 f_16@@62))
))) (forall ((o2_5@@48 T@Ref) (f_16@@63 T@Field_4034_10265) ) (!  (=> (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@48 f_16@@63) (= (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@27) o2_5@@48 f_16@@63) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@48 f_16@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@48 f_16@@63))
))) (forall ((o2_5@@49 T@Ref) (f_16@@64 T@Field_10231_4035) ) (!  (=> (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@49 f_16@@64) (= (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@27) o2_5@@49 f_16@@64) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@49 f_16@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@49 f_16@@64))
))) (forall ((o2_5@@50 T@Ref) (f_16@@65 T@Field_10231_53) ) (!  (=> (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@50 f_16@@65) (= (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@27) o2_5@@50 f_16@@65) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@50 f_16@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@50 f_16@@65))
))) (forall ((o2_5@@51 T@Ref) (f_16@@66 T@Field_10231_1215) ) (!  (=> (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@51 f_16@@66) (= (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@27) o2_5@@51 f_16@@66) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@51 f_16@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@51 f_16@@66))
))) (forall ((o2_5@@52 T@Ref) (f_16@@67 T@Field_10246_10251) ) (!  (=> (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@52 f_16@@67) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@27) o2_5@@52 f_16@@67) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@52 f_16@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@52 f_16@@67))
))) (forall ((o2_5@@53 T@Ref) (f_16@@68 T@Field_10264_10265) ) (!  (=> (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@53 f_16@@68) (= (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@27) o2_5@@53 f_16@@68) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@53 f_16@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@53 f_16@@68))
))) (forall ((o2_5@@54 T@Ref) (f_16@@69 T@Field_11157_4035) ) (!  (=> (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@54 f_16@@69) (= (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@27) o2_5@@54 f_16@@69) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@54 f_16@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@54 f_16@@69))
))) (forall ((o2_5@@55 T@Ref) (f_16@@70 T@Field_11157_53) ) (!  (=> (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@55 f_16@@70) (= (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@27) o2_5@@55 f_16@@70) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@55 f_16@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@55 f_16@@70))
))) (forall ((o2_5@@56 T@Ref) (f_16@@71 T@Field_11157_1215) ) (!  (=> (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@56 f_16@@71) (= (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@27) o2_5@@56 f_16@@71) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@56 f_16@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@56 f_16@@71))
))) (forall ((o2_5@@57 T@Ref) (f_16@@72 T@Field_11170_11175) ) (!  (=> (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@57 f_16@@72) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) o2_5@@57 f_16@@72) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@57 f_16@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@57 f_16@@72))
))) (forall ((o2_5@@58 T@Ref) (f_16@@73 T@Field_11157_11158) ) (!  (=> (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@27) null (WandMaskField_11157 pm_f_5@@8))) o2_5@@58 f_16@@73) (= (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@27) o2_5@@58 f_16@@73) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@58 f_16@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@25) o2_5@@58 f_16@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_11157_29432 pm_f_5@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6841) (ExhaleHeap@@26 T@PolymorphicMapType_6841) (Mask@@57 T@PolymorphicMapType_6862) (pm_f_5@@9 T@Field_10264_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_10231_10265 Mask@@57 null pm_f_5@@9) (IsWandField_3975_3976 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_16@@74 T@Field_6914_6915) ) (!  (=> (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@59 f_16@@74) (= (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@28) o2_5@@59 f_16@@74) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@59 f_16@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@59 f_16@@74))
)) (forall ((o2_5@@60 T@Ref) (f_16@@75 T@Field_6901_53) ) (!  (=> (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@60 f_16@@75) (= (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@28) o2_5@@60 f_16@@75) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@60 f_16@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@60 f_16@@75))
))) (forall ((o2_5@@61 T@Ref) (f_16@@76 T@Field_4034_1215) ) (!  (=> (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@61 f_16@@76) (= (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@28) o2_5@@61 f_16@@76) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@61 f_16@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@61 f_16@@76))
))) (forall ((o2_5@@62 T@Ref) (f_16@@77 T@Field_4034_10251) ) (!  (=> (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@62 f_16@@77) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@28) o2_5@@62 f_16@@77) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@62 f_16@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@62 f_16@@77))
))) (forall ((o2_5@@63 T@Ref) (f_16@@78 T@Field_4034_10265) ) (!  (=> (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@63 f_16@@78) (= (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@28) o2_5@@63 f_16@@78) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@63 f_16@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@63 f_16@@78))
))) (forall ((o2_5@@64 T@Ref) (f_16@@79 T@Field_10231_4035) ) (!  (=> (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@64 f_16@@79) (= (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@28) o2_5@@64 f_16@@79) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@64 f_16@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@64 f_16@@79))
))) (forall ((o2_5@@65 T@Ref) (f_16@@80 T@Field_10231_53) ) (!  (=> (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@65 f_16@@80) (= (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@28) o2_5@@65 f_16@@80) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@65 f_16@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@65 f_16@@80))
))) (forall ((o2_5@@66 T@Ref) (f_16@@81 T@Field_10231_1215) ) (!  (=> (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@66 f_16@@81) (= (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@28) o2_5@@66 f_16@@81) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@66 f_16@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@66 f_16@@81))
))) (forall ((o2_5@@67 T@Ref) (f_16@@82 T@Field_10246_10251) ) (!  (=> (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@67 f_16@@82) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) o2_5@@67 f_16@@82) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@67 f_16@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@67 f_16@@82))
))) (forall ((o2_5@@68 T@Ref) (f_16@@83 T@Field_10264_10265) ) (!  (=> (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@68 f_16@@83) (= (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@28) o2_5@@68 f_16@@83) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@68 f_16@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@68 f_16@@83))
))) (forall ((o2_5@@69 T@Ref) (f_16@@84 T@Field_11157_4035) ) (!  (=> (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@69 f_16@@84) (= (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@28) o2_5@@69 f_16@@84) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@69 f_16@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@69 f_16@@84))
))) (forall ((o2_5@@70 T@Ref) (f_16@@85 T@Field_11157_53) ) (!  (=> (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@70 f_16@@85) (= (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@28) o2_5@@70 f_16@@85) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@70 f_16@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@70 f_16@@85))
))) (forall ((o2_5@@71 T@Ref) (f_16@@86 T@Field_11157_1215) ) (!  (=> (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@71 f_16@@86) (= (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@28) o2_5@@71 f_16@@86) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@71 f_16@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@71 f_16@@86))
))) (forall ((o2_5@@72 T@Ref) (f_16@@87 T@Field_11170_11175) ) (!  (=> (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@72 f_16@@87) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@28) o2_5@@72 f_16@@87) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@72 f_16@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@72 f_16@@87))
))) (forall ((o2_5@@73 T@Ref) (f_16@@88 T@Field_11157_11158) ) (!  (=> (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@28) null (WandMaskField_3975 pm_f_5@@9))) o2_5@@73 f_16@@88) (= (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@28) o2_5@@73 f_16@@88) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@73 f_16@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@26) o2_5@@73 f_16@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_3975_3976 pm_f_5@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6841) (ExhaleHeap@@27 T@PolymorphicMapType_6841) (Mask@@58 T@PolymorphicMapType_6862) (pm_f_5@@10 T@Field_4034_10265) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_4034_10265 Mask@@58 null pm_f_5@@10) (IsWandField_4034_28750 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_16@@89 T@Field_6914_6915) ) (!  (=> (select (|PolymorphicMapType_7390_4034_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@74 f_16@@89) (= (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@29) o2_5@@74 f_16@@89) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@74 f_16@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@74 f_16@@89))
)) (forall ((o2_5@@75 T@Ref) (f_16@@90 T@Field_6901_53) ) (!  (=> (select (|PolymorphicMapType_7390_4034_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@75 f_16@@90) (= (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@29) o2_5@@75 f_16@@90) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@75 f_16@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@75 f_16@@90))
))) (forall ((o2_5@@76 T@Ref) (f_16@@91 T@Field_4034_1215) ) (!  (=> (select (|PolymorphicMapType_7390_4034_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@76 f_16@@91) (= (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@29) o2_5@@76 f_16@@91) (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@76 f_16@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@76 f_16@@91))
))) (forall ((o2_5@@77 T@Ref) (f_16@@92 T@Field_4034_10251) ) (!  (=> (select (|PolymorphicMapType_7390_4034_25361#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@77 f_16@@92) (= (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) o2_5@@77 f_16@@92) (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@77 f_16@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@77 f_16@@92))
))) (forall ((o2_5@@78 T@Ref) (f_16@@93 T@Field_4034_10265) ) (!  (=> (select (|PolymorphicMapType_7390_4034_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@78 f_16@@93) (= (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@29) o2_5@@78 f_16@@93) (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@78 f_16@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@78 f_16@@93))
))) (forall ((o2_5@@79 T@Ref) (f_16@@94 T@Field_10231_4035) ) (!  (=> (select (|PolymorphicMapType_7390_10231_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@79 f_16@@94) (= (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@29) o2_5@@79 f_16@@94) (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@79 f_16@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@79 f_16@@94))
))) (forall ((o2_5@@80 T@Ref) (f_16@@95 T@Field_10231_53) ) (!  (=> (select (|PolymorphicMapType_7390_10231_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@80 f_16@@95) (= (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@29) o2_5@@80 f_16@@95) (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@80 f_16@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@80 f_16@@95))
))) (forall ((o2_5@@81 T@Ref) (f_16@@96 T@Field_10231_1215) ) (!  (=> (select (|PolymorphicMapType_7390_10231_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@81 f_16@@96) (= (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@29) o2_5@@81 f_16@@96) (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@81 f_16@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@81 f_16@@96))
))) (forall ((o2_5@@82 T@Ref) (f_16@@97 T@Field_10246_10251) ) (!  (=> (select (|PolymorphicMapType_7390_10231_26409#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@82 f_16@@97) (= (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@29) o2_5@@82 f_16@@97) (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@82 f_16@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@82 f_16@@97))
))) (forall ((o2_5@@83 T@Ref) (f_16@@98 T@Field_10264_10265) ) (!  (=> (select (|PolymorphicMapType_7390_10231_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@83 f_16@@98) (= (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@29) o2_5@@83 f_16@@98) (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@83 f_16@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@83 f_16@@98))
))) (forall ((o2_5@@84 T@Ref) (f_16@@99 T@Field_11157_4035) ) (!  (=> (select (|PolymorphicMapType_7390_11157_4035#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@84 f_16@@99) (= (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@29) o2_5@@84 f_16@@99) (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@84 f_16@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@84 f_16@@99))
))) (forall ((o2_5@@85 T@Ref) (f_16@@100 T@Field_11157_53) ) (!  (=> (select (|PolymorphicMapType_7390_11157_53#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@85 f_16@@100) (= (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@29) o2_5@@85 f_16@@100) (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@85 f_16@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@85 f_16@@100))
))) (forall ((o2_5@@86 T@Ref) (f_16@@101 T@Field_11157_1215) ) (!  (=> (select (|PolymorphicMapType_7390_11157_1215#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@86 f_16@@101) (= (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@29) o2_5@@86 f_16@@101) (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@86 f_16@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@86 f_16@@101))
))) (forall ((o2_5@@87 T@Ref) (f_16@@102 T@Field_11170_11175) ) (!  (=> (select (|PolymorphicMapType_7390_11157_27457#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@87 f_16@@102) (= (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@29) o2_5@@87 f_16@@102) (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@87 f_16@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@87 f_16@@102))
))) (forall ((o2_5@@88 T@Ref) (f_16@@103 T@Field_11157_11158) ) (!  (=> (select (|PolymorphicMapType_7390_11157_10265#PolymorphicMapType_7390| (select (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@29) null (WandMaskField_4034 pm_f_5@@10))) o2_5@@88 f_16@@103) (= (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@29) o2_5@@88 f_16@@103) (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@88 f_16@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| ExhaleHeap@@27) o2_5@@88 f_16@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_4034_28750 pm_f_5@@10))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_4038_4039 (Cell x@@3)) 0)
 :qid |stdinbpl.236:15|
 :skolemid |31|
 :pattern ( (Cell x@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6841) (o_11 T@Ref) (f_17 T@Field_10231_1215) (v Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@30) (store (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@30) o_11 f_17 v) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@30) (store (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@30) o_11 f_17 v) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@30) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6841) (o_11@@0 T@Ref) (f_17@@0 T@Field_10246_10251) (v@@0 T@PolymorphicMapType_7390) ) (! (succHeap Heap@@31 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@31) (store (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@31) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@31) (store (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@31) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@31) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6841) (o_11@@1 T@Ref) (f_17@@1 T@Field_10264_10265) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@32) (store (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@32) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@32) (store (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@32) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@32) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6841) (o_11@@2 T@Ref) (f_17@@2 T@Field_10231_4035) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@33) (store (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@33) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@33) (store (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@33) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@33) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6841) (o_11@@3 T@Ref) (f_17@@3 T@Field_10231_53) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@34) (store (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@34) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@34) (store (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@34) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@34) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6841) (o_11@@4 T@Ref) (f_17@@4 T@Field_11157_1215) (v@@4 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@35) (store (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@35) o_11@@4 f_17@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@35) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@35) (store (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@35) o_11@@4 f_17@@4 v@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6841) (o_11@@5 T@Ref) (f_17@@5 T@Field_11170_11175) (v@@5 T@PolymorphicMapType_7390) ) (! (succHeap Heap@@36 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@36) (store (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@36) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@36) (store (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@36) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@36) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6841) (o_11@@6 T@Ref) (f_17@@6 T@Field_11157_11158) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@37) (store (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@37) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@37) (store (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@37) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@37) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6841) (o_11@@7 T@Ref) (f_17@@7 T@Field_11157_4035) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@38) (store (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@38) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@38) (store (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@38) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@38) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6841) (o_11@@8 T@Ref) (f_17@@8 T@Field_11157_53) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@39) (store (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@39) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@39) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@39) (store (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@39) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6841) (o_11@@9 T@Ref) (f_17@@9 T@Field_4034_1215) (v@@9 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@40) (store (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@40) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@40) (store (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@40) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@40) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6841) (o_11@@10 T@Ref) (f_17@@10 T@Field_4034_10251) (v@@10 T@PolymorphicMapType_7390) ) (! (succHeap Heap@@41 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@41) (store (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@41) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@41) (store (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@41) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@41) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6841) (o_11@@11 T@Ref) (f_17@@11 T@Field_4034_10265) (v@@11 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@42) (store (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@42) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@42) (store (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@42) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@42) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6841) (o_11@@12 T@Ref) (f_17@@12 T@Field_6914_6915) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@43) (store (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@43) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@43) (store (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@43) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@43) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6841) (o_11@@13 T@Ref) (f_17@@13 T@Field_6901_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_6841 (store (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@44) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6841 (store (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@44) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4038_4039#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_3965_15419#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4042_15570#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4034_1215#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4034_21019#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_4034_10265#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_4035#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_53#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_1215#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_10231_10265#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_11157_4035#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_11157_53#PolymorphicMapType_6841| Heap@@44) (|PolymorphicMapType_6841_11157_1215#PolymorphicMapType_6841| Heap@@44)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_4038 (Cell x@@4)) (|Cell#sm| x@@4))
 :qid |stdinbpl.228:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_4038 (Cell x@@4)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 Real) ) (! (= (|wand#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_3975 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_3975 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((o_11@@14 T@Ref) (f_10 T@Field_6914_6915) (Heap@@45 T@PolymorphicMapType_6841) ) (!  (=> (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@45) o_11@@14 $allocated) (select (|PolymorphicMapType_6841_3821_53#PolymorphicMapType_6841| Heap@@45) (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@45) o_11@@14 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6841_3824_3825#PolymorphicMapType_6841| Heap@@45) o_11@@14 f_10))
)))
(assert (forall ((p@@3 T@Field_11157_11158) (v_1@@2 T@FrameType) (q T@Field_11157_11158) (w@@2 T@FrameType) (r T@Field_11157_11158) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11157_11157 p@@3 v_1@@2 q w@@2) (InsidePredicate_11157_11157 q w@@2 r u)) (InsidePredicate_11157_11157 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_11157 p@@3 v_1@@2 q w@@2) (InsidePredicate_11157_11157 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_11157_11158) (v_1@@3 T@FrameType) (q@@0 T@Field_11157_11158) (w@@3 T@FrameType) (r@@0 T@Field_10264_10265) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_11157 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_11157_10231 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_11157_10231 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_11157 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_11157_10231 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_11157_11158) (v_1@@4 T@FrameType) (q@@1 T@Field_11157_11158) (w@@4 T@FrameType) (r@@1 T@Field_4034_10265) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_11157 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_11157_6901 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_11157_6901 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_11157 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_11157_6901 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_11157_11158) (v_1@@5 T@FrameType) (q@@2 T@Field_10264_10265) (w@@5 T@FrameType) (r@@2 T@Field_11157_11158) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_10231 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_10231_11157 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_11157_11157 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_10231 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_10231_11157 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_11157_11158) (v_1@@6 T@FrameType) (q@@3 T@Field_10264_10265) (w@@6 T@FrameType) (r@@3 T@Field_10264_10265) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_10231 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_10231_10231 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_11157_10231 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_10231 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_10231_10231 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_11157_11158) (v_1@@7 T@FrameType) (q@@4 T@Field_10264_10265) (w@@7 T@FrameType) (r@@4 T@Field_4034_10265) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_10231 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_10231_6901 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_11157_6901 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_10231 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_10231_6901 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_11157_11158) (v_1@@8 T@FrameType) (q@@5 T@Field_4034_10265) (w@@8 T@FrameType) (r@@5 T@Field_11157_11158) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_6901 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6901_11157 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_11157_11157 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_6901 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6901_11157 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_11157_11158) (v_1@@9 T@FrameType) (q@@6 T@Field_4034_10265) (w@@9 T@FrameType) (r@@6 T@Field_10264_10265) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_6901 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6901_10231 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_11157_10231 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_6901 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6901_10231 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_11157_11158) (v_1@@10 T@FrameType) (q@@7 T@Field_4034_10265) (w@@10 T@FrameType) (r@@7 T@Field_4034_10265) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_11157_6901 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6901_6901 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_11157_6901 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11157_6901 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6901_6901 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_10264_10265) (v_1@@11 T@FrameType) (q@@8 T@Field_11157_11158) (w@@11 T@FrameType) (r@@8 T@Field_11157_11158) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_11157 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_11157_11157 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_10231_11157 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_11157 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_11157_11157 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_10264_10265) (v_1@@12 T@FrameType) (q@@9 T@Field_11157_11158) (w@@12 T@FrameType) (r@@9 T@Field_10264_10265) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_11157 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_11157_10231 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_10231_10231 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_11157 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_11157_10231 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_10264_10265) (v_1@@13 T@FrameType) (q@@10 T@Field_11157_11158) (w@@13 T@FrameType) (r@@10 T@Field_4034_10265) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_11157 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_11157_6901 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_10231_6901 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_11157 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_11157_6901 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_10264_10265) (v_1@@14 T@FrameType) (q@@11 T@Field_10264_10265) (w@@14 T@FrameType) (r@@11 T@Field_11157_11158) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_10231 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_10231_11157 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_10231_11157 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_10231 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_10231_11157 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_10264_10265) (v_1@@15 T@FrameType) (q@@12 T@Field_10264_10265) (w@@15 T@FrameType) (r@@12 T@Field_10264_10265) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_10231 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_10231_10231 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_10231_10231 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_10231 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_10231_10231 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_10264_10265) (v_1@@16 T@FrameType) (q@@13 T@Field_10264_10265) (w@@16 T@FrameType) (r@@13 T@Field_4034_10265) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_10231 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_10231_6901 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_10231_6901 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_10231 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_10231_6901 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_10264_10265) (v_1@@17 T@FrameType) (q@@14 T@Field_4034_10265) (w@@17 T@FrameType) (r@@14 T@Field_11157_11158) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_6901 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6901_11157 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_10231_11157 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_6901 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6901_11157 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_10264_10265) (v_1@@18 T@FrameType) (q@@15 T@Field_4034_10265) (w@@18 T@FrameType) (r@@15 T@Field_10264_10265) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_6901 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6901_10231 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_10231_10231 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_6901 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6901_10231 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_10264_10265) (v_1@@19 T@FrameType) (q@@16 T@Field_4034_10265) (w@@19 T@FrameType) (r@@16 T@Field_4034_10265) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_10231_6901 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6901_6901 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_10231_6901 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10231_6901 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6901_6901 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_4034_10265) (v_1@@20 T@FrameType) (q@@17 T@Field_11157_11158) (w@@20 T@FrameType) (r@@17 T@Field_11157_11158) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_11157 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_11157_11157 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_6901_11157 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_11157 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_11157_11157 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_4034_10265) (v_1@@21 T@FrameType) (q@@18 T@Field_11157_11158) (w@@21 T@FrameType) (r@@18 T@Field_10264_10265) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_11157 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_11157_10231 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_6901_10231 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_11157 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_11157_10231 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_4034_10265) (v_1@@22 T@FrameType) (q@@19 T@Field_11157_11158) (w@@22 T@FrameType) (r@@19 T@Field_4034_10265) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_11157 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_11157_6901 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_6901_6901 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_11157 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_11157_6901 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_4034_10265) (v_1@@23 T@FrameType) (q@@20 T@Field_10264_10265) (w@@23 T@FrameType) (r@@20 T@Field_11157_11158) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_10231 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_10231_11157 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_6901_11157 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_10231 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_10231_11157 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_4034_10265) (v_1@@24 T@FrameType) (q@@21 T@Field_10264_10265) (w@@24 T@FrameType) (r@@21 T@Field_10264_10265) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_10231 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_10231_10231 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_6901_10231 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_10231 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_10231_10231 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_4034_10265) (v_1@@25 T@FrameType) (q@@22 T@Field_10264_10265) (w@@25 T@FrameType) (r@@22 T@Field_4034_10265) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_10231 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_10231_6901 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_6901_6901 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_10231 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_10231_6901 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_4034_10265) (v_1@@26 T@FrameType) (q@@23 T@Field_4034_10265) (w@@26 T@FrameType) (r@@23 T@Field_11157_11158) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_6901 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6901_11157 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_6901_11157 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_6901 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6901_11157 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_4034_10265) (v_1@@27 T@FrameType) (q@@24 T@Field_4034_10265) (w@@27 T@FrameType) (r@@24 T@Field_10264_10265) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_6901 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6901_10231 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_6901_10231 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_6901 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6901_10231 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_4034_10265) (v_1@@28 T@FrameType) (q@@25 T@Field_4034_10265) (w@@28 T@FrameType) (r@@25 T@Field_4034_10265) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_6901_6901 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6901_6901 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_6901_6901 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6901_6901 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6901_6901 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 Real) ) (! (IsWandField_3956_1215 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 Real) ) (! (IsWandField_3975_3976 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 Real) ) (!  (not (IsPredicateField_3956_1215 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 Real) ) (!  (not (IsPredicateField_3975_3976 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) (arg7@@5 Real) ) (! (= (getPredWandId_3956_1215 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |Cell#definedness|)
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