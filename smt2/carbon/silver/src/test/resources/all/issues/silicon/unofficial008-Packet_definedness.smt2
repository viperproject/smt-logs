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
(declare-sort T@Field_6218_53 0)
(declare-sort T@Field_6231_6232 0)
(declare-sort T@Field_9931_9932 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11094_11095 0)
(declare-sort T@Field_12425_12430 0)
(declare-sort T@Field_12856_12861 0)
(declare-sort T@Field_3255_9932 0)
(declare-sort T@Field_3255_12430 0)
(declare-sort T@Field_9931_3256 0)
(declare-sort T@Field_9931_53 0)
(declare-sort T@Field_11094_3256 0)
(declare-sort T@Field_11094_53 0)
(declare-datatypes ((T@PolymorphicMapType_6179 0)) (((PolymorphicMapType_6179 (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| (Array T@Ref T@Field_9931_9932 Real)) (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| (Array T@Ref T@Field_6231_6232 Real)) (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| (Array T@Ref T@Field_11094_11095 Real)) (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| (Array T@Ref T@Field_9931_3256 Real)) (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| (Array T@Ref T@Field_9931_53 Real)) (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| (Array T@Ref T@Field_12425_12430 Real)) (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| (Array T@Ref T@Field_3255_9932 Real)) (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| (Array T@Ref T@Field_6218_53 Real)) (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| (Array T@Ref T@Field_3255_12430 Real)) (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| (Array T@Ref T@Field_11094_3256 Real)) (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| (Array T@Ref T@Field_11094_53 Real)) (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| (Array T@Ref T@Field_12856_12861 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6707 0)) (((PolymorphicMapType_6707 (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| (Array T@Ref T@Field_6231_6232 Bool)) (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| (Array T@Ref T@Field_6218_53 Bool)) (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| (Array T@Ref T@Field_3255_9932 Bool)) (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| (Array T@Ref T@Field_3255_12430 Bool)) (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| (Array T@Ref T@Field_9931_3256 Bool)) (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| (Array T@Ref T@Field_9931_53 Bool)) (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| (Array T@Ref T@Field_9931_9932 Bool)) (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| (Array T@Ref T@Field_12425_12430 Bool)) (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| (Array T@Ref T@Field_11094_3256 Bool)) (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| (Array T@Ref T@Field_11094_53 Bool)) (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| (Array T@Ref T@Field_11094_11095 Bool)) (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| (Array T@Ref T@Field_12856_12861 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6158 0)) (((PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| (Array T@Ref T@Field_6218_53 Bool)) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| (Array T@Ref T@Field_6231_6232 T@Ref)) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| (Array T@Ref T@Field_9931_9932 T@FrameType)) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| (Array T@Ref T@Field_11094_11095 T@FrameType)) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| (Array T@Ref T@Field_12425_12430 T@PolymorphicMapType_6707)) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| (Array T@Ref T@Field_12856_12861 T@PolymorphicMapType_6707)) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| (Array T@Ref T@Field_3255_9932 T@FrameType)) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| (Array T@Ref T@Field_3255_12430 T@PolymorphicMapType_6707)) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| (Array T@Ref T@Field_9931_3256 T@Ref)) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| (Array T@Ref T@Field_9931_53 Bool)) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| (Array T@Ref T@Field_11094_3256 T@Ref)) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| (Array T@Ref T@Field_11094_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_6218_53)
(declare-fun path () T@Field_6231_6232)
(declare-fun idx_1 () T@Field_6231_6232)
(declare-fun succHeap (T@PolymorphicMapType_6158 T@PolymorphicMapType_6158) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6158 T@PolymorphicMapType_6158) Bool)
(declare-fun state (T@PolymorphicMapType_6158 T@PolymorphicMapType_6179) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6179) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6707)
(declare-fun Packet (T@Ref) T@Field_9931_9932)
(declare-fun IsPredicateField_3336_3337 (T@Field_9931_9932) Bool)
(declare-fun Path (T@Ref) T@Field_11094_11095)
(declare-fun IsPredicateField_3361_3362 (T@Field_11094_11095) Bool)
(declare-fun |get_idx'| (T@PolymorphicMapType_6158 T@Ref) T@Ref)
(declare-fun dummyFunction_3286 (T@Ref) Bool)
(declare-fun |get_idx#triggerStateless| (T@Ref) T@Ref)
(declare-fun |get_idx_1'| (T@PolymorphicMapType_6158 T@Ref) T@Ref)
(declare-fun |get_idx_1#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Packet#trigger_3336| (T@PolymorphicMapType_6158 T@Field_9931_9932) Bool)
(declare-fun |Packet#everUsed_3336| (T@Field_9931_9932) Bool)
(declare-fun |Path#trigger_3361| (T@PolymorphicMapType_6158 T@Field_11094_11095) Bool)
(declare-fun |Path#everUsed_3361| (T@Field_11094_11095) Bool)
(declare-fun get_idx (T@PolymorphicMapType_6158 T@Ref) T@Ref)
(declare-fun get_idx_1 (T@PolymorphicMapType_6158 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6158 T@PolymorphicMapType_6158 T@PolymorphicMapType_6179) Bool)
(declare-fun HasDirectPerm_11094_9932 (T@PolymorphicMapType_6179 T@Ref T@Field_11094_11095) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3361 (T@Field_11094_11095) T@Field_12856_12861)
(declare-fun HasDirectPerm_9931_9932 (T@PolymorphicMapType_6179 T@Ref T@Field_9931_9932) Bool)
(declare-fun PredicateMaskField_3336 (T@Field_9931_9932) T@Field_12425_12430)
(declare-fun IsPredicateField_3255_21418 (T@Field_3255_9932) Bool)
(declare-fun HasDirectPerm_3255_9932 (T@PolymorphicMapType_6179 T@Ref T@Field_3255_9932) Bool)
(declare-fun PredicateMaskField_3255 (T@Field_3255_9932) T@Field_3255_12430)
(declare-fun IsWandField_11094_26517 (T@Field_11094_11095) Bool)
(declare-fun WandMaskField_11094 (T@Field_11094_11095) T@Field_12856_12861)
(declare-fun IsWandField_9931_26160 (T@Field_9931_9932) Bool)
(declare-fun WandMaskField_9931 (T@Field_9931_9932) T@Field_12425_12430)
(declare-fun IsWandField_3255_25803 (T@Field_3255_9932) Bool)
(declare-fun WandMaskField_3255 (T@Field_3255_9932) T@Field_3255_12430)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |get_idx#trigger| (T@FrameType T@Ref) Bool)
(declare-fun isInt (T@Ref) Bool)
(declare-fun |get_idx_1#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3256 (T@Ref) T@FrameType)
(declare-fun |Packet#sm| (T@Ref) T@Field_12425_12430)
(declare-fun |Path#sm| (T@Ref) T@Field_12856_12861)
(declare-fun dummyHeap () T@PolymorphicMapType_6158)
(declare-fun ZeroMask () T@PolymorphicMapType_6179)
(declare-fun InsidePredicate_6218_6218 (T@Field_3255_9932 T@FrameType T@Field_3255_9932 T@FrameType) Bool)
(declare-fun InsidePredicate_3361_3361 (T@Field_11094_11095 T@FrameType T@Field_11094_11095 T@FrameType) Bool)
(declare-fun InsidePredicate_3336_9931 (T@Field_9931_9932 T@FrameType T@Field_9931_9932 T@FrameType) Bool)
(declare-fun IsPredicateField_3255_3256 (T@Field_6231_6232) Bool)
(declare-fun IsWandField_3255_3256 (T@Field_6231_6232) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3361_35005 (T@Field_12856_12861) Bool)
(declare-fun IsWandField_3361_35021 (T@Field_12856_12861) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3361_53 (T@Field_11094_53) Bool)
(declare-fun IsWandField_3361_53 (T@Field_11094_53) Bool)
(declare-fun IsPredicateField_3361_3256 (T@Field_11094_3256) Bool)
(declare-fun IsWandField_3361_3256 (T@Field_11094_3256) Bool)
(declare-fun IsPredicateField_3255_34342 (T@Field_3255_12430) Bool)
(declare-fun IsWandField_3255_34358 (T@Field_3255_12430) Bool)
(declare-fun IsPredicateField_3255_53 (T@Field_6218_53) Bool)
(declare-fun IsWandField_3255_53 (T@Field_6218_53) Bool)
(declare-fun IsPredicateField_3336_33693 (T@Field_12425_12430) Bool)
(declare-fun IsWandField_3336_33709 (T@Field_12425_12430) Bool)
(declare-fun IsPredicateField_3336_53 (T@Field_9931_53) Bool)
(declare-fun IsWandField_3336_53 (T@Field_9931_53) Bool)
(declare-fun IsPredicateField_3336_3256 (T@Field_9931_3256) Bool)
(declare-fun IsWandField_3336_3256 (T@Field_9931_3256) Bool)
(declare-fun HasDirectPerm_11094_21173 (T@PolymorphicMapType_6179 T@Ref T@Field_12856_12861) Bool)
(declare-fun HasDirectPerm_11094_53 (T@PolymorphicMapType_6179 T@Ref T@Field_11094_53) Bool)
(declare-fun HasDirectPerm_11094_3256 (T@PolymorphicMapType_6179 T@Ref T@Field_11094_3256) Bool)
(declare-fun HasDirectPerm_9931_20276 (T@PolymorphicMapType_6179 T@Ref T@Field_12425_12430) Bool)
(declare-fun HasDirectPerm_9931_53 (T@PolymorphicMapType_6179 T@Ref T@Field_9931_53) Bool)
(declare-fun HasDirectPerm_9931_3256 (T@PolymorphicMapType_6179 T@Ref T@Field_9931_3256) Bool)
(declare-fun HasDirectPerm_3255_19336 (T@PolymorphicMapType_6179 T@Ref T@Field_3255_12430) Bool)
(declare-fun HasDirectPerm_3255_53 (T@PolymorphicMapType_6179 T@Ref T@Field_6218_53) Bool)
(declare-fun HasDirectPerm_3255_3256 (T@PolymorphicMapType_6179 T@Ref T@Field_6231_6232) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |get_idx_1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun sumMask (T@PolymorphicMapType_6179 T@PolymorphicMapType_6179 T@PolymorphicMapType_6179) Bool)
(declare-fun |get_idx#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_3336_3337 (T@Field_9931_9932) Int)
(declare-fun getPredWandId_3361_3362 (T@Field_11094_11095) Int)
(declare-fun InsidePredicate_3361_6218 (T@Field_11094_11095 T@FrameType T@Field_3255_9932 T@FrameType) Bool)
(declare-fun InsidePredicate_6218_9931 (T@Field_3255_9932 T@FrameType T@Field_9931_9932 T@FrameType) Bool)
(declare-fun InsidePredicate_3361_9931 (T@Field_11094_11095 T@FrameType T@Field_9931_9932 T@FrameType) Bool)
(declare-fun InsidePredicate_6218_3361 (T@Field_3255_9932 T@FrameType T@Field_11094_11095 T@FrameType) Bool)
(declare-fun InsidePredicate_3336_6218 (T@Field_9931_9932 T@FrameType T@Field_3255_9932 T@FrameType) Bool)
(declare-fun InsidePredicate_3336_3361 (T@Field_9931_9932 T@FrameType T@Field_11094_11095 T@FrameType) Bool)
(assert (distinct path idx_1)
)
(assert (forall ((Heap0 T@PolymorphicMapType_6158) (Heap1 T@PolymorphicMapType_6158) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6158) (Mask T@PolymorphicMapType_6179) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6158) (Heap1@@0 T@PolymorphicMapType_6158) (Heap2 T@PolymorphicMapType_6158) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12856_12861) ) (!  (not (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11094_11095) ) (!  (not (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11094_53) ) (!  (not (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11094_3256) ) (!  (not (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12425_12430) ) (!  (not (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9931_9932) ) (!  (not (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9931_53) ) (!  (not (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9931_3256) ) (!  (not (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_3255_12430) ) (!  (not (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_3255_9932) ) (!  (not (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_6218_53) ) (!  (not (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_6231_6232) ) (!  (not (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_3336_3337 (Packet self))
 :qid |stdinbpl.456:15|
 :skolemid |34|
 :pattern ( (Packet self))
)))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_3361_3362 (Path self@@0))
 :qid |stdinbpl.529:15|
 :skolemid |40|
 :pattern ( (Path self@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6158) (self@@1 T@Ref) ) (! (dummyFunction_3286 (|get_idx#triggerStateless| self@@1))
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (|get_idx'| Heap@@0 self@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6158) (self@@2 T@Ref) ) (! (dummyFunction_3286 (|get_idx_1#triggerStateless| self@@2))
 :qid |stdinbpl.344:15|
 :skolemid |29|
 :pattern ( (|get_idx_1'| Heap@@1 self@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6158) (self@@3 T@Ref) ) (! (|Packet#everUsed_3336| (Packet self@@3))
 :qid |stdinbpl.475:15|
 :skolemid |38|
 :pattern ( (|Packet#trigger_3336| Heap@@2 (Packet self@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6158) (self@@4 T@Ref) ) (! (|Path#everUsed_3361| (Path self@@4))
 :qid |stdinbpl.548:15|
 :skolemid |44|
 :pattern ( (|Path#trigger_3361| Heap@@3 (Path self@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6158) (self@@5 T@Ref) ) (!  (and (= (get_idx Heap@@4 self@@5) (|get_idx'| Heap@@4 self@@5)) (dummyFunction_3286 (|get_idx#triggerStateless| self@@5)))
 :qid |stdinbpl.208:15|
 :skolemid |22|
 :pattern ( (get_idx Heap@@4 self@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6158) (self@@6 T@Ref) ) (!  (and (= (get_idx_1 Heap@@5 self@@6) (|get_idx_1'| Heap@@5 self@@6)) (dummyFunction_3286 (|get_idx_1#triggerStateless| self@@6)))
 :qid |stdinbpl.340:15|
 :skolemid |28|
 :pattern ( (get_idx_1 Heap@@5 self@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6158) (ExhaleHeap T@PolymorphicMapType_6158) (Mask@@0 T@PolymorphicMapType_6179) (pm_f_5 T@Field_11094_11095) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11094_9932 Mask@@0 null pm_f_5) (IsPredicateField_3361_3362 pm_f_5)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_6231_6232) ) (!  (=> (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5 f_23) (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@6) o2_5 f_23) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_6218_53) ) (!  (=> (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@6) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_3255_9932) ) (!  (=> (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@6) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_3255_12430) ) (!  (=> (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@6) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_9931_3256) ) (!  (=> (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@6) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_9931_53) ) (!  (=> (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@6) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_9931_9932) ) (!  (=> (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@6) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_12425_12430) ) (!  (=> (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@6) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_11094_3256) ) (!  (=> (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@6) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_11094_53) ) (!  (=> (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@6) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap) o2_5@@8 f_23@@8))
))) (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_11094_11095) ) (!  (=> (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@6) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap) o2_5@@9 f_23@@9))
))) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_12856_12861) ) (!  (=> (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) null (PredicateMaskField_3361 pm_f_5))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@6) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap) o2_5@@10 f_23@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_3361_3362 pm_f_5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6158) (ExhaleHeap@@0 T@PolymorphicMapType_6158) (Mask@@1 T@PolymorphicMapType_6179) (pm_f_5@@0 T@Field_9931_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9931_9932 Mask@@1 null pm_f_5@@0) (IsPredicateField_3336_3337 pm_f_5@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_6231_6232) ) (!  (=> (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@7) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@11 f_23@@11))
)) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_6218_53) ) (!  (=> (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@7) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_3255_9932) ) (!  (=> (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@7) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_3255_12430) ) (!  (=> (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@7) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@14 f_23@@14))
))) (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_9931_3256) ) (!  (=> (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@7) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@15 f_23@@15))
))) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_9931_53) ) (!  (=> (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@7) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_9931_9932) ) (!  (=> (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@7) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_12425_12430) ) (!  (=> (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@18 f_23@@18))
))) (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_11094_3256) ) (!  (=> (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@7) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@19 f_23@@19))
))) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_11094_53) ) (!  (=> (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@7) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_11094_11095) ) (!  (=> (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@7) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_12856_12861) ) (!  (=> (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@7) null (PredicateMaskField_3336 pm_f_5@@0))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@7) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@0) o2_5@@22 f_23@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3336_3337 pm_f_5@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6158) (ExhaleHeap@@1 T@PolymorphicMapType_6158) (Mask@@2 T@PolymorphicMapType_6179) (pm_f_5@@1 T@Field_3255_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3255_9932 Mask@@2 null pm_f_5@@1) (IsPredicateField_3255_21418 pm_f_5@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_6231_6232) ) (!  (=> (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@8) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@23 f_23@@23))
)) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_6218_53) ) (!  (=> (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@8) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_3255_9932) ) (!  (=> (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@8) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_3255_12430) ) (!  (=> (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_9931_3256) ) (!  (=> (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@8) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_9931_53) ) (!  (=> (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@8) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@28 f_23@@28))
))) (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_9931_9932) ) (!  (=> (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@8) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@29 f_23@@29))
))) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_12425_12430) ) (!  (=> (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@8) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@30 f_23@@30))
))) (forall ((o2_5@@31 T@Ref) (f_23@@31 T@Field_11094_3256) ) (!  (=> (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@31 f_23@@31) (= (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@8) o2_5@@31 f_23@@31) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@31 f_23@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@31 f_23@@31))
))) (forall ((o2_5@@32 T@Ref) (f_23@@32 T@Field_11094_53) ) (!  (=> (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@32 f_23@@32) (= (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@8) o2_5@@32 f_23@@32) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@32 f_23@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@32 f_23@@32))
))) (forall ((o2_5@@33 T@Ref) (f_23@@33 T@Field_11094_11095) ) (!  (=> (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@33 f_23@@33) (= (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@8) o2_5@@33 f_23@@33) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@33 f_23@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@33 f_23@@33))
))) (forall ((o2_5@@34 T@Ref) (f_23@@34 T@Field_12856_12861) ) (!  (=> (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@8) null (PredicateMaskField_3255 pm_f_5@@1))) o2_5@@34 f_23@@34) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@8) o2_5@@34 f_23@@34) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@34 f_23@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@1) o2_5@@34 f_23@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3255_21418 pm_f_5@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6158) (ExhaleHeap@@2 T@PolymorphicMapType_6158) (Mask@@3 T@PolymorphicMapType_6179) (pm_f_5@@2 T@Field_11094_11095) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11094_9932 Mask@@3 null pm_f_5@@2) (IsWandField_11094_26517 pm_f_5@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@35 T@Ref) (f_23@@35 T@Field_6231_6232) ) (!  (=> (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@35 f_23@@35) (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@9) o2_5@@35 f_23@@35) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@35 f_23@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@35 f_23@@35))
)) (forall ((o2_5@@36 T@Ref) (f_23@@36 T@Field_6218_53) ) (!  (=> (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@36 f_23@@36) (= (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@9) o2_5@@36 f_23@@36) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@36 f_23@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@36 f_23@@36))
))) (forall ((o2_5@@37 T@Ref) (f_23@@37 T@Field_3255_9932) ) (!  (=> (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@37 f_23@@37) (= (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@9) o2_5@@37 f_23@@37) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@37 f_23@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@37 f_23@@37))
))) (forall ((o2_5@@38 T@Ref) (f_23@@38 T@Field_3255_12430) ) (!  (=> (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@38 f_23@@38) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@9) o2_5@@38 f_23@@38) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@38 f_23@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@38 f_23@@38))
))) (forall ((o2_5@@39 T@Ref) (f_23@@39 T@Field_9931_3256) ) (!  (=> (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@39 f_23@@39) (= (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@9) o2_5@@39 f_23@@39) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@39 f_23@@39)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@39 f_23@@39))
))) (forall ((o2_5@@40 T@Ref) (f_23@@40 T@Field_9931_53) ) (!  (=> (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@40 f_23@@40) (= (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@9) o2_5@@40 f_23@@40) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@40 f_23@@40)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@40 f_23@@40))
))) (forall ((o2_5@@41 T@Ref) (f_23@@41 T@Field_9931_9932) ) (!  (=> (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@41 f_23@@41) (= (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@9) o2_5@@41 f_23@@41) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@41 f_23@@41)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@41 f_23@@41))
))) (forall ((o2_5@@42 T@Ref) (f_23@@42 T@Field_12425_12430) ) (!  (=> (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@42 f_23@@42) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@9) o2_5@@42 f_23@@42) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@42 f_23@@42)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@42 f_23@@42))
))) (forall ((o2_5@@43 T@Ref) (f_23@@43 T@Field_11094_3256) ) (!  (=> (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@43 f_23@@43) (= (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@9) o2_5@@43 f_23@@43) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@43 f_23@@43)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@43 f_23@@43))
))) (forall ((o2_5@@44 T@Ref) (f_23@@44 T@Field_11094_53) ) (!  (=> (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@44 f_23@@44) (= (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@9) o2_5@@44 f_23@@44) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@44 f_23@@44)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@44 f_23@@44))
))) (forall ((o2_5@@45 T@Ref) (f_23@@45 T@Field_11094_11095) ) (!  (=> (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@45 f_23@@45) (= (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@9) o2_5@@45 f_23@@45) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@45 f_23@@45)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@45 f_23@@45))
))) (forall ((o2_5@@46 T@Ref) (f_23@@46 T@Field_12856_12861) ) (!  (=> (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) null (WandMaskField_11094 pm_f_5@@2))) o2_5@@46 f_23@@46) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@9) o2_5@@46 f_23@@46) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@46 f_23@@46)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@2) o2_5@@46 f_23@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsWandField_11094_26517 pm_f_5@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6158) (ExhaleHeap@@3 T@PolymorphicMapType_6158) (Mask@@4 T@PolymorphicMapType_6179) (pm_f_5@@3 T@Field_9931_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9931_9932 Mask@@4 null pm_f_5@@3) (IsWandField_9931_26160 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@47 T@Ref) (f_23@@47 T@Field_6231_6232) ) (!  (=> (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@47 f_23@@47) (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@10) o2_5@@47 f_23@@47) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@47 f_23@@47)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@47 f_23@@47))
)) (forall ((o2_5@@48 T@Ref) (f_23@@48 T@Field_6218_53) ) (!  (=> (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@48 f_23@@48) (= (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@10) o2_5@@48 f_23@@48) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@48 f_23@@48)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@48 f_23@@48))
))) (forall ((o2_5@@49 T@Ref) (f_23@@49 T@Field_3255_9932) ) (!  (=> (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@49 f_23@@49) (= (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@10) o2_5@@49 f_23@@49) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@49 f_23@@49)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@49 f_23@@49))
))) (forall ((o2_5@@50 T@Ref) (f_23@@50 T@Field_3255_12430) ) (!  (=> (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@50 f_23@@50) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@10) o2_5@@50 f_23@@50) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@50 f_23@@50)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@50 f_23@@50))
))) (forall ((o2_5@@51 T@Ref) (f_23@@51 T@Field_9931_3256) ) (!  (=> (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@51 f_23@@51) (= (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@10) o2_5@@51 f_23@@51) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@51 f_23@@51)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@51 f_23@@51))
))) (forall ((o2_5@@52 T@Ref) (f_23@@52 T@Field_9931_53) ) (!  (=> (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@52 f_23@@52) (= (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@10) o2_5@@52 f_23@@52) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@52 f_23@@52)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@52 f_23@@52))
))) (forall ((o2_5@@53 T@Ref) (f_23@@53 T@Field_9931_9932) ) (!  (=> (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@53 f_23@@53) (= (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@10) o2_5@@53 f_23@@53) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@53 f_23@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@53 f_23@@53))
))) (forall ((o2_5@@54 T@Ref) (f_23@@54 T@Field_12425_12430) ) (!  (=> (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@54 f_23@@54) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) o2_5@@54 f_23@@54) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@54 f_23@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@54 f_23@@54))
))) (forall ((o2_5@@55 T@Ref) (f_23@@55 T@Field_11094_3256) ) (!  (=> (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@55 f_23@@55) (= (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@10) o2_5@@55 f_23@@55) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@55 f_23@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@55 f_23@@55))
))) (forall ((o2_5@@56 T@Ref) (f_23@@56 T@Field_11094_53) ) (!  (=> (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@56 f_23@@56) (= (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@10) o2_5@@56 f_23@@56) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@56 f_23@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@56 f_23@@56))
))) (forall ((o2_5@@57 T@Ref) (f_23@@57 T@Field_11094_11095) ) (!  (=> (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@57 f_23@@57) (= (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@10) o2_5@@57 f_23@@57) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@57 f_23@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@57 f_23@@57))
))) (forall ((o2_5@@58 T@Ref) (f_23@@58 T@Field_12856_12861) ) (!  (=> (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@10) null (WandMaskField_9931 pm_f_5@@3))) o2_5@@58 f_23@@58) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@10) o2_5@@58 f_23@@58) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@58 f_23@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@3) o2_5@@58 f_23@@58))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsWandField_9931_26160 pm_f_5@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6158) (ExhaleHeap@@4 T@PolymorphicMapType_6158) (Mask@@5 T@PolymorphicMapType_6179) (pm_f_5@@4 T@Field_3255_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3255_9932 Mask@@5 null pm_f_5@@4) (IsWandField_3255_25803 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_23@@59 T@Field_6231_6232) ) (!  (=> (select (|PolymorphicMapType_6707_3255_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@59 f_23@@59) (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@11) o2_5@@59 f_23@@59) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@59 f_23@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@59 f_23@@59))
)) (forall ((o2_5@@60 T@Ref) (f_23@@60 T@Field_6218_53) ) (!  (=> (select (|PolymorphicMapType_6707_3255_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@60 f_23@@60) (= (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@11) o2_5@@60 f_23@@60) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@60 f_23@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@60 f_23@@60))
))) (forall ((o2_5@@61 T@Ref) (f_23@@61 T@Field_3255_9932) ) (!  (=> (select (|PolymorphicMapType_6707_3255_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@61 f_23@@61) (= (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@11) o2_5@@61 f_23@@61) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@61 f_23@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@61 f_23@@61))
))) (forall ((o2_5@@62 T@Ref) (f_23@@62 T@Field_3255_12430) ) (!  (=> (select (|PolymorphicMapType_6707_3255_23014#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@62 f_23@@62) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) o2_5@@62 f_23@@62) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@62 f_23@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@62 f_23@@62))
))) (forall ((o2_5@@63 T@Ref) (f_23@@63 T@Field_9931_3256) ) (!  (=> (select (|PolymorphicMapType_6707_9931_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@63 f_23@@63) (= (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@11) o2_5@@63 f_23@@63) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@63 f_23@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@63 f_23@@63))
))) (forall ((o2_5@@64 T@Ref) (f_23@@64 T@Field_9931_53) ) (!  (=> (select (|PolymorphicMapType_6707_9931_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@64 f_23@@64) (= (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@11) o2_5@@64 f_23@@64) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@64 f_23@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@64 f_23@@64))
))) (forall ((o2_5@@65 T@Ref) (f_23@@65 T@Field_9931_9932) ) (!  (=> (select (|PolymorphicMapType_6707_9931_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@65 f_23@@65) (= (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@11) o2_5@@65 f_23@@65) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@65 f_23@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@65 f_23@@65))
))) (forall ((o2_5@@66 T@Ref) (f_23@@66 T@Field_12425_12430) ) (!  (=> (select (|PolymorphicMapType_6707_9931_23864#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@66 f_23@@66) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@11) o2_5@@66 f_23@@66) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@66 f_23@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@66 f_23@@66))
))) (forall ((o2_5@@67 T@Ref) (f_23@@67 T@Field_11094_3256) ) (!  (=> (select (|PolymorphicMapType_6707_11094_3256#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@67 f_23@@67) (= (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@11) o2_5@@67 f_23@@67) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@67 f_23@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@67 f_23@@67))
))) (forall ((o2_5@@68 T@Ref) (f_23@@68 T@Field_11094_53) ) (!  (=> (select (|PolymorphicMapType_6707_11094_53#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@68 f_23@@68) (= (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@11) o2_5@@68 f_23@@68) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@68 f_23@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@68 f_23@@68))
))) (forall ((o2_5@@69 T@Ref) (f_23@@69 T@Field_11094_11095) ) (!  (=> (select (|PolymorphicMapType_6707_11094_9932#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@69 f_23@@69) (= (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@11) o2_5@@69 f_23@@69) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@69 f_23@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@69 f_23@@69))
))) (forall ((o2_5@@70 T@Ref) (f_23@@70 T@Field_12856_12861) ) (!  (=> (select (|PolymorphicMapType_6707_11094_24714#PolymorphicMapType_6707| (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@11) null (WandMaskField_3255 pm_f_5@@4))) o2_5@@70 f_23@@70) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@11) o2_5@@70 f_23@@70) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@70 f_23@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@4) o2_5@@70 f_23@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_3255_25803 pm_f_5@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6158) (ExhaleHeap@@5 T@PolymorphicMapType_6158) (Mask@@6 T@PolymorphicMapType_6179) (pm_f_5@@5 T@Field_11094_11095) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11094_9932 Mask@@6 null pm_f_5@@5) (IsPredicateField_3361_3362 pm_f_5@@5)) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@12) null (PredicateMaskField_3361 pm_f_5@@5)) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@5) null (PredicateMaskField_3361 pm_f_5@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (IsPredicateField_3361_3362 pm_f_5@@5) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@5) null (PredicateMaskField_3361 pm_f_5@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6158) (ExhaleHeap@@6 T@PolymorphicMapType_6158) (Mask@@7 T@PolymorphicMapType_6179) (pm_f_5@@6 T@Field_9931_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_9931_9932 Mask@@7 null pm_f_5@@6) (IsPredicateField_3336_3337 pm_f_5@@6)) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@13) null (PredicateMaskField_3336 pm_f_5@@6)) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@6) null (PredicateMaskField_3336 pm_f_5@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (IsPredicateField_3336_3337 pm_f_5@@6) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@6) null (PredicateMaskField_3336 pm_f_5@@6)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6158) (ExhaleHeap@@7 T@PolymorphicMapType_6158) (Mask@@8 T@PolymorphicMapType_6179) (pm_f_5@@7 T@Field_3255_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_3255_9932 Mask@@8 null pm_f_5@@7) (IsPredicateField_3255_21418 pm_f_5@@7)) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@14) null (PredicateMaskField_3255 pm_f_5@@7)) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@7) null (PredicateMaskField_3255 pm_f_5@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (IsPredicateField_3255_21418 pm_f_5@@7) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@7) null (PredicateMaskField_3255 pm_f_5@@7)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6158) (ExhaleHeap@@8 T@PolymorphicMapType_6158) (Mask@@9 T@PolymorphicMapType_6179) (pm_f_5@@8 T@Field_11094_11095) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11094_9932 Mask@@9 null pm_f_5@@8) (IsWandField_11094_26517 pm_f_5@@8)) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@15) null (WandMaskField_11094 pm_f_5@@8)) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@8) null (WandMaskField_11094 pm_f_5@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (IsWandField_11094_26517 pm_f_5@@8) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@8) null (WandMaskField_11094 pm_f_5@@8)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6158) (ExhaleHeap@@9 T@PolymorphicMapType_6158) (Mask@@10 T@PolymorphicMapType_6179) (pm_f_5@@9 T@Field_9931_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_9931_9932 Mask@@10 null pm_f_5@@9) (IsWandField_9931_26160 pm_f_5@@9)) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@16) null (WandMaskField_9931 pm_f_5@@9)) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@9) null (WandMaskField_9931 pm_f_5@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@10) (IsWandField_9931_26160 pm_f_5@@9) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@9) null (WandMaskField_9931 pm_f_5@@9)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6158) (ExhaleHeap@@10 T@PolymorphicMapType_6158) (Mask@@11 T@PolymorphicMapType_6179) (pm_f_5@@10 T@Field_3255_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_3255_9932 Mask@@11 null pm_f_5@@10) (IsWandField_3255_25803 pm_f_5@@10)) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@17) null (WandMaskField_3255 pm_f_5@@10)) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@10) null (WandMaskField_3255 pm_f_5@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@11) (IsWandField_3255_25803 pm_f_5@@10) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@10) null (WandMaskField_3255 pm_f_5@@10)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6158) (Mask@@12 T@PolymorphicMapType_6179) (self@@7 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@12) (or (< AssumeFunctionsAbove 0) (|get_idx#trigger| (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@18) null (Packet self@@7)) self@@7))) (isInt (|get_idx'| Heap@@18 self@@7)))
 :qid |stdinbpl.231:15|
 :skolemid |26|
 :pattern ( (state Heap@@18 Mask@@12) (|get_idx'| Heap@@18 self@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6158) (Mask@@13 T@PolymorphicMapType_6179) (self@@8 T@Ref) ) (!  (=> (state Heap@@19 Mask@@13) (= (|get_idx_1'| Heap@@19 self@@8) (|get_idx_1#frame| (CombineFrames (FrameFragment_3256 (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@19) self@@8 path)) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@19) null (Path (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@19) self@@8 path)))) self@@8)))
 :qid |stdinbpl.357:15|
 :skolemid |31|
 :pattern ( (state Heap@@19 Mask@@13) (|get_idx_1'| Heap@@19 self@@8))
)))
(assert (forall ((self@@9 T@Ref) (self2 T@Ref) ) (!  (=> (= (Packet self@@9) (Packet self2)) (= self@@9 self2))
 :qid |stdinbpl.466:15|
 :skolemid |36|
 :pattern ( (Packet self@@9) (Packet self2))
)))
(assert (forall ((self@@10 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|Packet#sm| self@@10) (|Packet#sm| self2@@0)) (= self@@10 self2@@0))
 :qid |stdinbpl.470:15|
 :skolemid |37|
 :pattern ( (|Packet#sm| self@@10) (|Packet#sm| self2@@0))
)))
(assert (forall ((self@@11 T@Ref) (self2@@1 T@Ref) ) (!  (=> (= (Path self@@11) (Path self2@@1)) (= self@@11 self2@@1))
 :qid |stdinbpl.539:15|
 :skolemid |42|
 :pattern ( (Path self@@11) (Path self2@@1))
)))
(assert (forall ((self@@12 T@Ref) (self2@@2 T@Ref) ) (!  (=> (= (|Path#sm| self@@12) (|Path#sm| self2@@2)) (= self@@12 self2@@2))
 :qid |stdinbpl.543:15|
 :skolemid |43|
 :pattern ( (|Path#sm| self@@12) (|Path#sm| self2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6158) (ExhaleHeap@@11 T@PolymorphicMapType_6158) (Mask@@14 T@PolymorphicMapType_6179) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@14) (=> (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@20) o_15 $allocated) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@11) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@14) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@11) o_15 $allocated))
)))
(assert (forall ((p T@Field_3255_9932) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6218_6218 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6218_6218 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11094_11095) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3361_3361 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3361_3361 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_9931_9932) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_3336_9931 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3336_9931 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_3255_3256 path)))
(assert  (not (IsWandField_3255_3256 path)))
(assert  (not (IsPredicateField_3255_3256 idx_1)))
(assert  (not (IsWandField_3255_3256 idx_1)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6158) (ExhaleHeap@@12 T@PolymorphicMapType_6158) (Mask@@15 T@PolymorphicMapType_6179) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@15) (succHeap Heap@@21 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6179) (o_2@@11 T@Ref) (f_4@@11 T@Field_12856_12861) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| Mask@@16) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3361_35005 f_4@@11))) (not (IsWandField_3361_35021 f_4@@11))) (<= (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| Mask@@16) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| Mask@@16) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6179) (o_2@@12 T@Ref) (f_4@@12 T@Field_11094_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| Mask@@17) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3361_53 f_4@@12))) (not (IsWandField_3361_53 f_4@@12))) (<= (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| Mask@@17) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| Mask@@17) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6179) (o_2@@13 T@Ref) (f_4@@13 T@Field_11094_3256) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| Mask@@18) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3361_3256 f_4@@13))) (not (IsWandField_3361_3256 f_4@@13))) (<= (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| Mask@@18) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| Mask@@18) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6179) (o_2@@14 T@Ref) (f_4@@14 T@Field_11094_11095) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| Mask@@19) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3361_3362 f_4@@14))) (not (IsWandField_11094_26517 f_4@@14))) (<= (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| Mask@@19) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| Mask@@19) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6179) (o_2@@15 T@Ref) (f_4@@15 T@Field_3255_12430) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| Mask@@20) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3255_34342 f_4@@15))) (not (IsWandField_3255_34358 f_4@@15))) (<= (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| Mask@@20) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| Mask@@20) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6179) (o_2@@16 T@Ref) (f_4@@16 T@Field_6218_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| Mask@@21) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3255_53 f_4@@16))) (not (IsWandField_3255_53 f_4@@16))) (<= (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| Mask@@21) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| Mask@@21) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6179) (o_2@@17 T@Ref) (f_4@@17 T@Field_6231_6232) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| Mask@@22) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3255_3256 f_4@@17))) (not (IsWandField_3255_3256 f_4@@17))) (<= (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| Mask@@22) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| Mask@@22) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6179) (o_2@@18 T@Ref) (f_4@@18 T@Field_3255_9932) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| Mask@@23) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_3255_21418 f_4@@18))) (not (IsWandField_3255_25803 f_4@@18))) (<= (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| Mask@@23) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| Mask@@23) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6179) (o_2@@19 T@Ref) (f_4@@19 T@Field_12425_12430) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| Mask@@24) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_3336_33693 f_4@@19))) (not (IsWandField_3336_33709 f_4@@19))) (<= (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| Mask@@24) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| Mask@@24) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6179) (o_2@@20 T@Ref) (f_4@@20 T@Field_9931_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| Mask@@25) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_3336_53 f_4@@20))) (not (IsWandField_3336_53 f_4@@20))) (<= (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| Mask@@25) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| Mask@@25) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6179) (o_2@@21 T@Ref) (f_4@@21 T@Field_9931_3256) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| Mask@@26) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_3336_3256 f_4@@21))) (not (IsWandField_3336_3256 f_4@@21))) (<= (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| Mask@@26) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| Mask@@26) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6179) (o_2@@22 T@Ref) (f_4@@22 T@Field_9931_9932) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| Mask@@27) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_3336_3337 f_4@@22))) (not (IsWandField_9931_26160 f_4@@22))) (<= (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| Mask@@27) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| Mask@@27) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6179) (o_2@@23 T@Ref) (f_4@@23 T@Field_12856_12861) ) (! (= (HasDirectPerm_11094_21173 Mask@@28 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| Mask@@28) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11094_21173 Mask@@28 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6179) (o_2@@24 T@Ref) (f_4@@24 T@Field_11094_11095) ) (! (= (HasDirectPerm_11094_9932 Mask@@29 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| Mask@@29) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11094_9932 Mask@@29 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6179) (o_2@@25 T@Ref) (f_4@@25 T@Field_11094_53) ) (! (= (HasDirectPerm_11094_53 Mask@@30 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| Mask@@30) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11094_53 Mask@@30 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_6179) (o_2@@26 T@Ref) (f_4@@26 T@Field_11094_3256) ) (! (= (HasDirectPerm_11094_3256 Mask@@31 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| Mask@@31) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11094_3256 Mask@@31 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_6179) (o_2@@27 T@Ref) (f_4@@27 T@Field_12425_12430) ) (! (= (HasDirectPerm_9931_20276 Mask@@32 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| Mask@@32) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9931_20276 Mask@@32 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_6179) (o_2@@28 T@Ref) (f_4@@28 T@Field_9931_9932) ) (! (= (HasDirectPerm_9931_9932 Mask@@33 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| Mask@@33) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9931_9932 Mask@@33 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_6179) (o_2@@29 T@Ref) (f_4@@29 T@Field_9931_53) ) (! (= (HasDirectPerm_9931_53 Mask@@34 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| Mask@@34) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9931_53 Mask@@34 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_6179) (o_2@@30 T@Ref) (f_4@@30 T@Field_9931_3256) ) (! (= (HasDirectPerm_9931_3256 Mask@@35 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| Mask@@35) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9931_3256 Mask@@35 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_6179) (o_2@@31 T@Ref) (f_4@@31 T@Field_3255_12430) ) (! (= (HasDirectPerm_3255_19336 Mask@@36 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| Mask@@36) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3255_19336 Mask@@36 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_6179) (o_2@@32 T@Ref) (f_4@@32 T@Field_3255_9932) ) (! (= (HasDirectPerm_3255_9932 Mask@@37 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| Mask@@37) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3255_9932 Mask@@37 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_6179) (o_2@@33 T@Ref) (f_4@@33 T@Field_6218_53) ) (! (= (HasDirectPerm_3255_53 Mask@@38 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| Mask@@38) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3255_53 Mask@@38 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_6179) (o_2@@34 T@Ref) (f_4@@34 T@Field_6231_6232) ) (! (= (HasDirectPerm_3255_3256 Mask@@39 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| Mask@@39) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3255_3256 Mask@@39 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6158) (ExhaleHeap@@13 T@PolymorphicMapType_6158) (Mask@@40 T@PolymorphicMapType_6179) (o_15@@0 T@Ref) (f_23@@71 T@Field_12856_12861) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@40) (=> (HasDirectPerm_11094_21173 Mask@@40 o_15@@0 f_23@@71) (= (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@22) o_15@@0 f_23@@71) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@13) o_15@@0 f_23@@71))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@40) (select (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| ExhaleHeap@@13) o_15@@0 f_23@@71))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6158) (ExhaleHeap@@14 T@PolymorphicMapType_6158) (Mask@@41 T@PolymorphicMapType_6179) (o_15@@1 T@Ref) (f_23@@72 T@Field_11094_11095) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@41) (=> (HasDirectPerm_11094_9932 Mask@@41 o_15@@1 f_23@@72) (= (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@23) o_15@@1 f_23@@72) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@14) o_15@@1 f_23@@72))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@41) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| ExhaleHeap@@14) o_15@@1 f_23@@72))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6158) (ExhaleHeap@@15 T@PolymorphicMapType_6158) (Mask@@42 T@PolymorphicMapType_6179) (o_15@@2 T@Ref) (f_23@@73 T@Field_11094_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@42) (=> (HasDirectPerm_11094_53 Mask@@42 o_15@@2 f_23@@73) (= (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@24) o_15@@2 f_23@@73) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@15) o_15@@2 f_23@@73))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@42) (select (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| ExhaleHeap@@15) o_15@@2 f_23@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6158) (ExhaleHeap@@16 T@PolymorphicMapType_6158) (Mask@@43 T@PolymorphicMapType_6179) (o_15@@3 T@Ref) (f_23@@74 T@Field_11094_3256) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@43) (=> (HasDirectPerm_11094_3256 Mask@@43 o_15@@3 f_23@@74) (= (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@25) o_15@@3 f_23@@74) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@16) o_15@@3 f_23@@74))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@43) (select (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| ExhaleHeap@@16) o_15@@3 f_23@@74))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6158) (ExhaleHeap@@17 T@PolymorphicMapType_6158) (Mask@@44 T@PolymorphicMapType_6179) (o_15@@4 T@Ref) (f_23@@75 T@Field_12425_12430) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@44) (=> (HasDirectPerm_9931_20276 Mask@@44 o_15@@4 f_23@@75) (= (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@26) o_15@@4 f_23@@75) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@17) o_15@@4 f_23@@75))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@44) (select (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| ExhaleHeap@@17) o_15@@4 f_23@@75))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6158) (ExhaleHeap@@18 T@PolymorphicMapType_6158) (Mask@@45 T@PolymorphicMapType_6179) (o_15@@5 T@Ref) (f_23@@76 T@Field_9931_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@45) (=> (HasDirectPerm_9931_9932 Mask@@45 o_15@@5 f_23@@76) (= (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@27) o_15@@5 f_23@@76) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@18) o_15@@5 f_23@@76))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@45) (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| ExhaleHeap@@18) o_15@@5 f_23@@76))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6158) (ExhaleHeap@@19 T@PolymorphicMapType_6158) (Mask@@46 T@PolymorphicMapType_6179) (o_15@@6 T@Ref) (f_23@@77 T@Field_9931_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@46) (=> (HasDirectPerm_9931_53 Mask@@46 o_15@@6 f_23@@77) (= (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@28) o_15@@6 f_23@@77) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@19) o_15@@6 f_23@@77))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@46) (select (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| ExhaleHeap@@19) o_15@@6 f_23@@77))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6158) (ExhaleHeap@@20 T@PolymorphicMapType_6158) (Mask@@47 T@PolymorphicMapType_6179) (o_15@@7 T@Ref) (f_23@@78 T@Field_9931_3256) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@47) (=> (HasDirectPerm_9931_3256 Mask@@47 o_15@@7 f_23@@78) (= (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@29) o_15@@7 f_23@@78) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@20) o_15@@7 f_23@@78))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@47) (select (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| ExhaleHeap@@20) o_15@@7 f_23@@78))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6158) (ExhaleHeap@@21 T@PolymorphicMapType_6158) (Mask@@48 T@PolymorphicMapType_6179) (o_15@@8 T@Ref) (f_23@@79 T@Field_3255_12430) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@48) (=> (HasDirectPerm_3255_19336 Mask@@48 o_15@@8 f_23@@79) (= (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@30) o_15@@8 f_23@@79) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@21) o_15@@8 f_23@@79))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@48) (select (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| ExhaleHeap@@21) o_15@@8 f_23@@79))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6158) (ExhaleHeap@@22 T@PolymorphicMapType_6158) (Mask@@49 T@PolymorphicMapType_6179) (o_15@@9 T@Ref) (f_23@@80 T@Field_3255_9932) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@22 Mask@@49) (=> (HasDirectPerm_3255_9932 Mask@@49 o_15@@9 f_23@@80) (= (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@31) o_15@@9 f_23@@80) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@22) o_15@@9 f_23@@80))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@22 Mask@@49) (select (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| ExhaleHeap@@22) o_15@@9 f_23@@80))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6158) (ExhaleHeap@@23 T@PolymorphicMapType_6158) (Mask@@50 T@PolymorphicMapType_6179) (o_15@@10 T@Ref) (f_23@@81 T@Field_6218_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@23 Mask@@50) (=> (HasDirectPerm_3255_53 Mask@@50 o_15@@10 f_23@@81) (= (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@32) o_15@@10 f_23@@81) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@23) o_15@@10 f_23@@81))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@23 Mask@@50) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| ExhaleHeap@@23) o_15@@10 f_23@@81))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6158) (ExhaleHeap@@24 T@PolymorphicMapType_6158) (Mask@@51 T@PolymorphicMapType_6179) (o_15@@11 T@Ref) (f_23@@82 T@Field_6231_6232) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@24 Mask@@51) (=> (HasDirectPerm_3255_3256 Mask@@51 o_15@@11 f_23@@82) (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@33) o_15@@11 f_23@@82) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@24) o_15@@11 f_23@@82))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@24 Mask@@51) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| ExhaleHeap@@24) o_15@@11 f_23@@82))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6158) (Mask@@52 T@PolymorphicMapType_6179) (self@@13 T@Ref) ) (!  (=> (and (state Heap@@34 Mask@@52) (or (< AssumeFunctionsAbove 1) (|get_idx_1#trigger| (CombineFrames (FrameFragment_3256 (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@34) self@@13 path)) (select (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@34) null (Path (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@34) self@@13 path)))) self@@13))) (isInt (|get_idx_1'| Heap@@34 self@@13)))
 :qid |stdinbpl.363:15|
 :skolemid |32|
 :pattern ( (state Heap@@34 Mask@@52) (|get_idx_1'| Heap@@34 self@@13))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_12856_12861) ) (! (= (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_11094_53) ) (! (= (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11094_3256) ) (! (= (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11094_11095) ) (! (= (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_3255_12430) ) (! (= (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_6218_53) ) (! (= (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_6231_6232) ) (! (= (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_3255_9932) ) (! (= (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_12425_12430) ) (! (= (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_9931_53) ) (! (= (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_9931_3256) ) (! (= (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_9931_9932) ) (! (= (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6179) (SummandMask1 T@PolymorphicMapType_6179) (SummandMask2 T@PolymorphicMapType_6179) (o_2@@47 T@Ref) (f_4@@47 T@Field_12856_12861) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6179) (SummandMask1@@0 T@PolymorphicMapType_6179) (SummandMask2@@0 T@PolymorphicMapType_6179) (o_2@@48 T@Ref) (f_4@@48 T@Field_11094_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6179) (SummandMask1@@1 T@PolymorphicMapType_6179) (SummandMask2@@1 T@PolymorphicMapType_6179) (o_2@@49 T@Ref) (f_4@@49 T@Field_11094_3256) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6179) (SummandMask1@@2 T@PolymorphicMapType_6179) (SummandMask2@@2 T@PolymorphicMapType_6179) (o_2@@50 T@Ref) (f_4@@50 T@Field_11094_11095) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6179) (SummandMask1@@3 T@PolymorphicMapType_6179) (SummandMask2@@3 T@PolymorphicMapType_6179) (o_2@@51 T@Ref) (f_4@@51 T@Field_3255_12430) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6179) (SummandMask1@@4 T@PolymorphicMapType_6179) (SummandMask2@@4 T@PolymorphicMapType_6179) (o_2@@52 T@Ref) (f_4@@52 T@Field_6218_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6179) (SummandMask1@@5 T@PolymorphicMapType_6179) (SummandMask2@@5 T@PolymorphicMapType_6179) (o_2@@53 T@Ref) (f_4@@53 T@Field_6231_6232) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6179) (SummandMask1@@6 T@PolymorphicMapType_6179) (SummandMask2@@6 T@PolymorphicMapType_6179) (o_2@@54 T@Ref) (f_4@@54 T@Field_3255_9932) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6179) (SummandMask1@@7 T@PolymorphicMapType_6179) (SummandMask2@@7 T@PolymorphicMapType_6179) (o_2@@55 T@Ref) (f_4@@55 T@Field_12425_12430) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6179) (SummandMask1@@8 T@PolymorphicMapType_6179) (SummandMask2@@8 T@PolymorphicMapType_6179) (o_2@@56 T@Ref) (f_4@@56 T@Field_9931_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_6179) (SummandMask1@@9 T@PolymorphicMapType_6179) (SummandMask2@@9 T@PolymorphicMapType_6179) (o_2@@57 T@Ref) (f_4@@57 T@Field_9931_3256) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_6179) (SummandMask1@@10 T@PolymorphicMapType_6179) (SummandMask2@@10 T@PolymorphicMapType_6179) (o_2@@58 T@Ref) (f_4@@58 T@Field_9931_9932) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6158) (Mask@@53 T@PolymorphicMapType_6179) (self@@14 T@Ref) ) (!  (=> (state Heap@@35 Mask@@53) (= (|get_idx'| Heap@@35 self@@14) (|get_idx#frame| (select (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@35) null (Packet self@@14)) self@@14)))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (state Heap@@35 Mask@@53) (|get_idx'| Heap@@35 self@@14))
 :pattern ( (state Heap@@35 Mask@@53) (|get_idx#triggerStateless| self@@14) (|Packet#trigger_3336| Heap@@35 (Packet self@@14)))
)))
(assert (forall ((self@@15 T@Ref) ) (! (= (getPredWandId_3336_3337 (Packet self@@15)) 0)
 :qid |stdinbpl.460:15|
 :skolemid |35|
 :pattern ( (Packet self@@15))
)))
(assert (forall ((self@@16 T@Ref) ) (! (= (getPredWandId_3361_3362 (Path self@@16)) 1)
 :qid |stdinbpl.533:15|
 :skolemid |41|
 :pattern ( (Path self@@16))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6158) (o_14 T@Ref) (f_24 T@Field_12856_12861) (v T@PolymorphicMapType_6707) ) (! (succHeap Heap@@36 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@36) (store (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@36) o_14 f_24 v) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@36) (store (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@36) o_14 f_24 v) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@36) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6158) (o_14@@0 T@Ref) (f_24@@0 T@Field_11094_11095) (v@@0 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@37) (store (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@37) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@37) (store (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@37) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@37) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6158) (o_14@@1 T@Ref) (f_24@@1 T@Field_11094_3256) (v@@1 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@38) (store (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@38) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@38) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@38) (store (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@38) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6158) (o_14@@2 T@Ref) (f_24@@2 T@Field_11094_53) (v@@2 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@39) (store (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@39) o_14@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@39) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@39) (store (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@39) o_14@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6158) (o_14@@3 T@Ref) (f_24@@3 T@Field_12425_12430) (v@@3 T@PolymorphicMapType_6707) ) (! (succHeap Heap@@40 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@40) (store (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@40) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@40) (store (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@40) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@40) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6158) (o_14@@4 T@Ref) (f_24@@4 T@Field_9931_9932) (v@@4 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@41) (store (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@41) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@41) (store (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@41) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@41) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6158) (o_14@@5 T@Ref) (f_24@@5 T@Field_9931_3256) (v@@5 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@42) (store (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@42) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@42) (store (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@42) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@42) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6158) (o_14@@6 T@Ref) (f_24@@6 T@Field_9931_53) (v@@6 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@43) (store (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@43) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@43) (store (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@43) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@43) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6158) (o_14@@7 T@Ref) (f_24@@7 T@Field_3255_12430) (v@@7 T@PolymorphicMapType_6707) ) (! (succHeap Heap@@44 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@44) (store (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@44) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@44) (store (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@44) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@44) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_6158) (o_14@@8 T@Ref) (f_24@@8 T@Field_3255_9932) (v@@8 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@45) (store (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@45) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@45) (store (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@45) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@45) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_6158) (o_14@@9 T@Ref) (f_24@@9 T@Field_6231_6232) (v@@9 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@46) (store (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@46) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@46) (store (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@46) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@46) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_6158) (o_14@@10 T@Ref) (f_24@@10 T@Field_6218_53) (v@@10 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_6158 (store (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@47) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6158 (store (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@47) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3336_3337#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3361_3362#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3340_12517#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3365_12896#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3255_9932#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_3255_19378#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_9931_3256#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_9931_53#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_11094_3256#PolymorphicMapType_6158| Heap@@47) (|PolymorphicMapType_6158_11094_53#PolymorphicMapType_6158| Heap@@47)))
)))
(assert (forall ((self@@17 T@Ref) ) (! (= (PredicateMaskField_3336 (Packet self@@17)) (|Packet#sm| self@@17))
 :qid |stdinbpl.452:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_3336 (Packet self@@17)))
)))
(assert (forall ((self@@18 T@Ref) ) (! (= (PredicateMaskField_3361 (Path self@@18)) (|Path#sm| self@@18))
 :qid |stdinbpl.525:15|
 :skolemid |39|
 :pattern ( (PredicateMaskField_3361 (Path self@@18)))
)))
(assert (forall ((o_14@@11 T@Ref) (f_22 T@Field_6231_6232) (Heap@@48 T@PolymorphicMapType_6158) ) (!  (=> (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@48) o_14@@11 $allocated) (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@48) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@48) o_14@@11 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@48) o_14@@11 f_22))
)))
(assert (forall ((p@@3 T@Field_11094_11095) (v_1@@2 T@FrameType) (q T@Field_3255_9932) (w@@2 T@FrameType) (r T@Field_9931_9932) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3361_6218 p@@3 v_1@@2 q w@@2) (InsidePredicate_6218_9931 q w@@2 r u)) (InsidePredicate_3361_9931 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_6218 p@@3 v_1@@2 q w@@2) (InsidePredicate_6218_9931 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_11094_11095) (v_1@@3 T@FrameType) (q@@0 T@Field_3255_9932) (w@@3 T@FrameType) (r@@0 T@Field_3255_9932) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_6218 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_6218_6218 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_3361_6218 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_6218 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_6218_6218 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_11094_11095) (v_1@@4 T@FrameType) (q@@1 T@Field_3255_9932) (w@@4 T@FrameType) (r@@1 T@Field_11094_11095) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_6218 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_6218_3361 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_3361_3361 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_6218 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_6218_3361 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_11094_11095) (v_1@@5 T@FrameType) (q@@2 T@Field_9931_9932) (w@@5 T@FrameType) (r@@2 T@Field_9931_9932) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_9931 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_3336_9931 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_3361_9931 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_9931 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_3336_9931 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_11094_11095) (v_1@@6 T@FrameType) (q@@3 T@Field_9931_9932) (w@@6 T@FrameType) (r@@3 T@Field_3255_9932) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_9931 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_3336_6218 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_3361_6218 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_9931 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_3336_6218 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_11094_11095) (v_1@@7 T@FrameType) (q@@4 T@Field_9931_9932) (w@@7 T@FrameType) (r@@4 T@Field_11094_11095) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_9931 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_3336_3361 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_3361_3361 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_9931 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_3336_3361 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_11094_11095) (v_1@@8 T@FrameType) (q@@5 T@Field_11094_11095) (w@@8 T@FrameType) (r@@5 T@Field_9931_9932) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_3361 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3361_9931 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_3361_9931 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_3361 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3361_9931 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_11094_11095) (v_1@@9 T@FrameType) (q@@6 T@Field_11094_11095) (w@@9 T@FrameType) (r@@6 T@Field_3255_9932) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_3361 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3361_6218 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_3361_6218 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_3361 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3361_6218 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_11094_11095) (v_1@@10 T@FrameType) (q@@7 T@Field_11094_11095) (w@@10 T@FrameType) (r@@7 T@Field_11094_11095) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_3361_3361 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3361_3361 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_3361_3361 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3361_3361 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3361_3361 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_3255_9932) (v_1@@11 T@FrameType) (q@@8 T@Field_3255_9932) (w@@11 T@FrameType) (r@@8 T@Field_9931_9932) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_6218 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_6218_9931 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_6218_9931 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_6218 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_6218_9931 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_3255_9932) (v_1@@12 T@FrameType) (q@@9 T@Field_3255_9932) (w@@12 T@FrameType) (r@@9 T@Field_3255_9932) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_6218 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_6218_6218 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_6218_6218 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_6218 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_6218_6218 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_3255_9932) (v_1@@13 T@FrameType) (q@@10 T@Field_3255_9932) (w@@13 T@FrameType) (r@@10 T@Field_11094_11095) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_6218 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_6218_3361 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_6218_3361 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_6218 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_6218_3361 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_3255_9932) (v_1@@14 T@FrameType) (q@@11 T@Field_9931_9932) (w@@14 T@FrameType) (r@@11 T@Field_9931_9932) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_9931 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_3336_9931 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_6218_9931 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_9931 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_3336_9931 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_3255_9932) (v_1@@15 T@FrameType) (q@@12 T@Field_9931_9932) (w@@15 T@FrameType) (r@@12 T@Field_3255_9932) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_9931 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_3336_6218 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_6218_6218 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_9931 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_3336_6218 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_3255_9932) (v_1@@16 T@FrameType) (q@@13 T@Field_9931_9932) (w@@16 T@FrameType) (r@@13 T@Field_11094_11095) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_9931 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_3336_3361 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_6218_3361 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_9931 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_3336_3361 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_3255_9932) (v_1@@17 T@FrameType) (q@@14 T@Field_11094_11095) (w@@17 T@FrameType) (r@@14 T@Field_9931_9932) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_3361 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3361_9931 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_6218_9931 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_3361 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3361_9931 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_3255_9932) (v_1@@18 T@FrameType) (q@@15 T@Field_11094_11095) (w@@18 T@FrameType) (r@@15 T@Field_3255_9932) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_3361 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3361_6218 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_6218_6218 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_3361 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3361_6218 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_3255_9932) (v_1@@19 T@FrameType) (q@@16 T@Field_11094_11095) (w@@19 T@FrameType) (r@@16 T@Field_11094_11095) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_6218_3361 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3361_3361 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_6218_3361 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6218_3361 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3361_3361 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_9931_9932) (v_1@@20 T@FrameType) (q@@17 T@Field_3255_9932) (w@@20 T@FrameType) (r@@17 T@Field_9931_9932) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_6218 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_6218_9931 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_3336_9931 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_6218 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_6218_9931 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_9931_9932) (v_1@@21 T@FrameType) (q@@18 T@Field_3255_9932) (w@@21 T@FrameType) (r@@18 T@Field_3255_9932) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_6218 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_6218_6218 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_3336_6218 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_6218 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_6218_6218 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_9931_9932) (v_1@@22 T@FrameType) (q@@19 T@Field_3255_9932) (w@@22 T@FrameType) (r@@19 T@Field_11094_11095) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_6218 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_6218_3361 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_3336_3361 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_6218 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_6218_3361 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_9931_9932) (v_1@@23 T@FrameType) (q@@20 T@Field_9931_9932) (w@@23 T@FrameType) (r@@20 T@Field_9931_9932) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_9931 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_3336_9931 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_3336_9931 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_9931 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_3336_9931 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_9931_9932) (v_1@@24 T@FrameType) (q@@21 T@Field_9931_9932) (w@@24 T@FrameType) (r@@21 T@Field_3255_9932) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_9931 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_3336_6218 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_3336_6218 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_9931 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_3336_6218 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_9931_9932) (v_1@@25 T@FrameType) (q@@22 T@Field_9931_9932) (w@@25 T@FrameType) (r@@22 T@Field_11094_11095) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_9931 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_3336_3361 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_3336_3361 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_9931 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_3336_3361 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_9931_9932) (v_1@@26 T@FrameType) (q@@23 T@Field_11094_11095) (w@@26 T@FrameType) (r@@23 T@Field_9931_9932) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_3361 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3361_9931 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_3336_9931 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_3361 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3361_9931 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_9931_9932) (v_1@@27 T@FrameType) (q@@24 T@Field_11094_11095) (w@@27 T@FrameType) (r@@24 T@Field_3255_9932) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_3361 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3361_6218 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_3336_6218 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_3361 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3361_6218 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_9931_9932) (v_1@@28 T@FrameType) (q@@25 T@Field_11094_11095) (w@@28 T@FrameType) (r@@25 T@Field_11094_11095) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_3336_3361 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3361_3361 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_3336_3361 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3336_3361 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3361_3361 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@49 T@PolymorphicMapType_6158) (Mask@@54 T@PolymorphicMapType_6179) (self@@19 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@54) (< AssumeFunctionsAbove 1)) (= (get_idx_1 Heap@@49 self@@19) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@49) (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@49) self@@19 path) idx_1)))
 :qid |stdinbpl.350:15|
 :skolemid |30|
 :pattern ( (state Heap@@49 Mask@@54) (get_idx_1 Heap@@49 self@@19))
 :pattern ( (state Heap@@49 Mask@@54) (|get_idx_1#triggerStateless| self@@19) (|Path#trigger_3361| Heap@@49 (Path (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@49) self@@19 path))))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_6158) (Mask@@55 T@PolymorphicMapType_6179) (self@@20 T@Ref) ) (!  (=> (and (state Heap@@50 Mask@@55) (< AssumeFunctionsAbove 0)) (= (get_idx Heap@@50 self@@20) (get_idx_1 Heap@@50 self@@20)))
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (state Heap@@50 Mask@@55) (get_idx Heap@@50 self@@20))
 :pattern ( (state Heap@@50 Mask@@55) (|get_idx#triggerStateless| self@@20) (|Packet#trigger_3336| Heap@@50 (Packet self@@20)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_6179)
(declare-fun self@@21 () T@Ref)
(declare-fun Heap@@51 () T@PolymorphicMapType_6158)
(declare-fun Mask@0 () T@PolymorphicMapType_6179)
(declare-fun Mask@1 () T@PolymorphicMapType_6179)
(set-info :boogie-vc-id |Packet#definedness|)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_3255_3256 Mask@2 self@@21 path))))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@51) self@@21 path) null) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 5) 2)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@51) self@@21 path) null)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_3255_3256 Mask@0 self@@21 path)) (=> (HasDirectPerm_3255_3256 Mask@0 self@@21 path) (=> (and (and (= Mask@1 (PolymorphicMapType_6179 (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| Mask@0) (store (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| Mask@0) null (Path (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@51) self@@21 path)) (+ (select (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| Mask@0) null (Path (select (|PolymorphicMapType_6158_3129_3130#PolymorphicMapType_6158| Heap@@51) self@@21 path))) FullPerm)) (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| Mask@0) (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| Mask@0))) (state Heap@@51 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 3) 2))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@51 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_6158_3126_53#PolymorphicMapType_6158| Heap@@51) self@@21 $allocated) (not (= self@@21 null))) (and (= Mask@0 (PolymorphicMapType_6179 (|PolymorphicMapType_6179_3336_3337#PolymorphicMapType_6179| ZeroMask) (store (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| ZeroMask) self@@21 path (+ (select (|PolymorphicMapType_6179_3255_3256#PolymorphicMapType_6179| ZeroMask) self@@21 path) FullPerm)) (|PolymorphicMapType_6179_3361_3362#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3336_3256#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3336_53#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3336_31590#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3255_3337#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3255_53#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3255_31921#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3361_3256#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3361_53#PolymorphicMapType_6179| ZeroMask) (|PolymorphicMapType_6179_3361_32252#PolymorphicMapType_6179| ZeroMask))) (state Heap@@51 Mask@0))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_3255_3256 Mask@0 self@@21 path)) (=> (HasDirectPerm_3255_3256 Mask@0 self@@21 path) (and (=> (= (ControlFlow 0 6) 3) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 6) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
