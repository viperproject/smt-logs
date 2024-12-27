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
(declare-sort T@Field_12777_53 0)
(declare-sort T@Field_12790_12791 0)
(declare-sort T@Field_16122_16127 0)
(declare-sort T@Field_17677_17678 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17690_17695 0)
(declare-sort T@Field_16996_17001 0)
(declare-sort T@Field_7484_7489 0)
(declare-sort T@Field_7484_1215 0)
(declare-sort T@Field_7484_16127 0)
(declare-sort T@Field_7488_7485 0)
(declare-sort T@Field_7488_53 0)
(declare-sort T@Field_7488_1215 0)
(declare-sort T@Field_16107_7485 0)
(declare-sort T@Field_16140_16141 0)
(declare-sort T@Field_16107_53 0)
(declare-sort T@Field_16107_1215 0)
(declare-sort T@Field_16983_7485 0)
(declare-sort T@Field_17012_17013 0)
(declare-sort T@Field_16983_53 0)
(declare-sort T@Field_16983_1696 0)
(declare-datatypes ((T@PolymorphicMapType_12738 0)) (((PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| (Array T@Ref T@Field_12790_12791 Real)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| (Array T@Ref T@Field_17677_17678 Real)) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| (Array T@Ref T@Field_16107_1215 Real)) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| (Array T@Ref T@Field_16983_1696 Real)) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| (Array T@Ref T@Field_7484_7489 Real)) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| (Array T@Ref T@Field_7484_1215 Real)) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| (Array T@Ref T@Field_12777_53 Real)) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| (Array T@Ref T@Field_7484_16127 Real)) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| (Array T@Ref T@Field_7488_7485 Real)) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| (Array T@Ref T@Field_7488_1215 Real)) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| (Array T@Ref T@Field_7488_53 Real)) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| (Array T@Ref T@Field_17690_17695 Real)) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| (Array T@Ref T@Field_16107_7485 Real)) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| (Array T@Ref T@Field_16140_16141 Real)) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| (Array T@Ref T@Field_16107_53 Real)) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| (Array T@Ref T@Field_16122_16127 Real)) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| (Array T@Ref T@Field_16983_7485 Real)) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| (Array T@Ref T@Field_17012_17013 Real)) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| (Array T@Ref T@Field_16983_53 Real)) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| (Array T@Ref T@Field_16996_17001 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13266 0)) (((PolymorphicMapType_13266 (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (Array T@Ref T@Field_12790_12791 Bool)) (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (Array T@Ref T@Field_12777_53 Bool)) (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (Array T@Ref T@Field_7484_1215 Bool)) (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (Array T@Ref T@Field_7484_16127 Bool)) (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (Array T@Ref T@Field_7484_7489 Bool)) (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (Array T@Ref T@Field_16107_7485 Bool)) (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (Array T@Ref T@Field_16107_53 Bool)) (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (Array T@Ref T@Field_16107_1215 Bool)) (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (Array T@Ref T@Field_16122_16127 Bool)) (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (Array T@Ref T@Field_16140_16141 Bool)) (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (Array T@Ref T@Field_16983_7485 Bool)) (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (Array T@Ref T@Field_16983_53 Bool)) (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (Array T@Ref T@Field_16983_1696 Bool)) (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (Array T@Ref T@Field_16996_17001 Bool)) (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (Array T@Ref T@Field_17012_17013 Bool)) (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (Array T@Ref T@Field_7488_7485 Bool)) (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (Array T@Ref T@Field_7488_53 Bool)) (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (Array T@Ref T@Field_7488_1215 Bool)) (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (Array T@Ref T@Field_17690_17695 Bool)) (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (Array T@Ref T@Field_17677_17678 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12717 0)) (((PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| (Array T@Ref T@Field_12777_53 Bool)) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| (Array T@Ref T@Field_12790_12791 T@Ref)) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| (Array T@Ref T@Field_16122_16127 T@PolymorphicMapType_13266)) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| (Array T@Ref T@Field_17677_17678 T@FrameType)) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| (Array T@Ref T@Field_17690_17695 T@PolymorphicMapType_13266)) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| (Array T@Ref T@Field_16996_17001 T@PolymorphicMapType_13266)) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| (Array T@Ref T@Field_7484_7489 T@FrameType)) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| (Array T@Ref T@Field_7484_1215 Int)) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| (Array T@Ref T@Field_7484_16127 T@PolymorphicMapType_13266)) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| (Array T@Ref T@Field_7488_7485 T@Ref)) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| (Array T@Ref T@Field_7488_53 Bool)) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| (Array T@Ref T@Field_7488_1215 Int)) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| (Array T@Ref T@Field_16107_7485 T@Ref)) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| (Array T@Ref T@Field_16140_16141 T@FrameType)) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| (Array T@Ref T@Field_16107_53 Bool)) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| (Array T@Ref T@Field_16107_1215 Int)) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| (Array T@Ref T@Field_16983_7485 T@Ref)) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| (Array T@Ref T@Field_17012_17013 T@FrameType)) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| (Array T@Ref T@Field_16983_53 Bool)) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| (Array T@Ref T@Field_16983_1696 Int)) ) ) ))
(declare-fun $allocated () T@Field_12777_53)
(declare-fun f_7 () T@Field_12790_12791)
(declare-fun succHeap (T@PolymorphicMapType_12717 T@PolymorphicMapType_12717) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12717 T@PolymorphicMapType_12717) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref Real) T@Field_16983_1696)
(declare-fun getPredWandId_7436_1696 (T@Field_16983_1696) Int)
(declare-fun state (T@PolymorphicMapType_12717 T@PolymorphicMapType_12738) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12738) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13266)
(declare-fun P (T@Ref) T@Field_17677_17678)
(declare-fun IsPredicateField_7488_7489 (T@Field_17677_17678) Bool)
(declare-fun |P#trigger_7488| (T@PolymorphicMapType_12717 T@Field_17677_17678) Bool)
(declare-fun |P#everUsed_7488| (T@Field_17677_17678) Bool)
(declare-fun wand (T@Ref Real T@Ref T@Ref Real T@Ref Real) T@Field_16107_1215)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12717 T@PolymorphicMapType_12717 T@PolymorphicMapType_12738) Bool)
(declare-fun IsPredicateField_7449_7450 (T@Field_17012_17013) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16983 (T@Field_17012_17013) T@Field_16996_17001)
(declare-fun HasDirectPerm_16983_7489 (T@PolymorphicMapType_12738 T@Ref T@Field_17012_17013) Bool)
(declare-fun IsPredicateField_7373_7374 (T@Field_16140_16141) Bool)
(declare-fun PredicateMaskField_16107 (T@Field_16140_16141) T@Field_16122_16127)
(declare-fun HasDirectPerm_16107_7489 (T@PolymorphicMapType_12738 T@Ref T@Field_16140_16141) Bool)
(declare-fun PredicateMaskField_7488 (T@Field_17677_17678) T@Field_17690_17695)
(declare-fun HasDirectPerm_7488_7489 (T@PolymorphicMapType_12738 T@Ref T@Field_17677_17678) Bool)
(declare-fun IsPredicateField_7484_44489 (T@Field_7484_7489) Bool)
(declare-fun PredicateMaskField_7484 (T@Field_7484_7489) T@Field_7484_16127)
(declare-fun HasDirectPerm_7484_7489 (T@PolymorphicMapType_12738 T@Ref T@Field_7484_7489) Bool)
(declare-fun IsWandField_7449_7450 (T@Field_17012_17013) Bool)
(declare-fun WandMaskField_7449 (T@Field_17012_17013) T@Field_16996_17001)
(declare-fun IsWandField_7373_7374 (T@Field_16140_16141) Bool)
(declare-fun WandMaskField_7373 (T@Field_16140_16141) T@Field_16122_16127)
(declare-fun IsWandField_7488_51529 (T@Field_17677_17678) Bool)
(declare-fun WandMaskField_7488 (T@Field_17677_17678) T@Field_17690_17695)
(declare-fun IsWandField_7484_51172 (T@Field_7484_7489) Bool)
(declare-fun WandMaskField_7484 (T@Field_7484_7489) T@Field_7484_16127)
(declare-fun |P#sm| (T@Ref) T@Field_17690_17695)
(declare-fun dummyHeap () T@PolymorphicMapType_12717)
(declare-fun ZeroMask () T@PolymorphicMapType_12738)
(declare-fun InsidePredicate_17677_17677 (T@Field_17677_17678 T@FrameType T@Field_17677_17678 T@FrameType) Bool)
(declare-fun InsidePredicate_16983_16983 (T@Field_17012_17013 T@FrameType T@Field_17012_17013 T@FrameType) Bool)
(declare-fun InsidePredicate_16107_16107 (T@Field_16140_16141 T@FrameType T@Field_16140_16141 T@FrameType) Bool)
(declare-fun InsidePredicate_12777_12777 (T@Field_7484_7489 T@FrameType T@Field_7484_7489 T@FrameType) Bool)
(declare-fun IsPredicateField_7484_7485 (T@Field_12790_12791) Bool)
(declare-fun IsWandField_7484_7485 (T@Field_12790_12791) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7436_65858 (T@Field_16996_17001) Bool)
(declare-fun IsWandField_7436_65874 (T@Field_16996_17001) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7436_53 (T@Field_16983_53) Bool)
(declare-fun IsWandField_7436_53 (T@Field_16983_53) Bool)
(declare-fun IsPredicateField_7436_1696 (T@Field_16983_1696) Bool)
(declare-fun IsWandField_7436_1696 (T@Field_16983_1696) Bool)
(declare-fun IsPredicateField_7436_7485 (T@Field_16983_7485) Bool)
(declare-fun IsWandField_7436_7485 (T@Field_16983_7485) Bool)
(declare-fun IsPredicateField_7354_65041 (T@Field_16122_16127) Bool)
(declare-fun IsWandField_7354_65057 (T@Field_16122_16127) Bool)
(declare-fun IsPredicateField_7354_53 (T@Field_16107_53) Bool)
(declare-fun IsWandField_7354_53 (T@Field_16107_53) Bool)
(declare-fun IsPredicateField_7354_1215 (T@Field_16107_1215) Bool)
(declare-fun IsWandField_7354_1215 (T@Field_16107_1215) Bool)
(declare-fun IsPredicateField_7354_7485 (T@Field_16107_7485) Bool)
(declare-fun IsWandField_7354_7485 (T@Field_16107_7485) Bool)
(declare-fun IsPredicateField_7488_64224 (T@Field_17690_17695) Bool)
(declare-fun IsWandField_7488_64240 (T@Field_17690_17695) Bool)
(declare-fun IsPredicateField_7488_53 (T@Field_7488_53) Bool)
(declare-fun IsWandField_7488_53 (T@Field_7488_53) Bool)
(declare-fun IsPredicateField_7488_1215 (T@Field_7488_1215) Bool)
(declare-fun IsWandField_7488_1215 (T@Field_7488_1215) Bool)
(declare-fun IsPredicateField_7488_7485 (T@Field_7488_7485) Bool)
(declare-fun IsWandField_7488_7485 (T@Field_7488_7485) Bool)
(declare-fun IsPredicateField_7484_63393 (T@Field_7484_16127) Bool)
(declare-fun IsWandField_7484_63409 (T@Field_7484_16127) Bool)
(declare-fun IsPredicateField_7484_53 (T@Field_12777_53) Bool)
(declare-fun IsWandField_7484_53 (T@Field_12777_53) Bool)
(declare-fun IsPredicateField_7484_1215 (T@Field_7484_1215) Bool)
(declare-fun IsWandField_7484_1215 (T@Field_7484_1215) Bool)
(declare-fun HasDirectPerm_16983_44244 (T@PolymorphicMapType_12738 T@Ref T@Field_16996_17001) Bool)
(declare-fun HasDirectPerm_16983_1215 (T@PolymorphicMapType_12738 T@Ref T@Field_16983_1696) Bool)
(declare-fun HasDirectPerm_16983_53 (T@PolymorphicMapType_12738 T@Ref T@Field_16983_53) Bool)
(declare-fun HasDirectPerm_16983_7485 (T@PolymorphicMapType_12738 T@Ref T@Field_16983_7485) Bool)
(declare-fun HasDirectPerm_16107_43110 (T@PolymorphicMapType_12738 T@Ref T@Field_16122_16127) Bool)
(declare-fun HasDirectPerm_16107_1215 (T@PolymorphicMapType_12738 T@Ref T@Field_16107_1215) Bool)
(declare-fun HasDirectPerm_16107_53 (T@PolymorphicMapType_12738 T@Ref T@Field_16107_53) Bool)
(declare-fun HasDirectPerm_16107_7485 (T@PolymorphicMapType_12738 T@Ref T@Field_16107_7485) Bool)
(declare-fun HasDirectPerm_7488_41976 (T@PolymorphicMapType_12738 T@Ref T@Field_17690_17695) Bool)
(declare-fun HasDirectPerm_7488_1215 (T@PolymorphicMapType_12738 T@Ref T@Field_7488_1215) Bool)
(declare-fun HasDirectPerm_7488_53 (T@PolymorphicMapType_12738 T@Ref T@Field_7488_53) Bool)
(declare-fun HasDirectPerm_7488_7485 (T@PolymorphicMapType_12738 T@Ref T@Field_7488_7485) Bool)
(declare-fun HasDirectPerm_7484_40835 (T@PolymorphicMapType_12738 T@Ref T@Field_7484_16127) Bool)
(declare-fun HasDirectPerm_7484_1215 (T@PolymorphicMapType_12738 T@Ref T@Field_7484_1215) Bool)
(declare-fun HasDirectPerm_7484_53 (T@PolymorphicMapType_12738 T@Ref T@Field_12777_53) Bool)
(declare-fun HasDirectPerm_7484_7485 (T@PolymorphicMapType_12738 T@Ref T@Field_12790_12791) Bool)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Real) T@Field_17012_17013)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Real) T@Field_16996_17001)
(declare-fun sumMask (T@PolymorphicMapType_12738 T@PolymorphicMapType_12738 T@PolymorphicMapType_12738) Bool)
(declare-fun getPredWandId_7488_7489 (T@Field_17677_17678) Int)
(declare-fun |wand#ft| (T@Ref Real T@Ref T@Ref Real T@Ref Real) T@Field_16140_16141)
(declare-fun |wand#sm| (T@Ref Real T@Ref T@Ref Real T@Ref Real) T@Field_16122_16127)
(declare-fun InsidePredicate_17677_16983 (T@Field_17677_17678 T@FrameType T@Field_17012_17013 T@FrameType) Bool)
(declare-fun InsidePredicate_17677_16107 (T@Field_17677_17678 T@FrameType T@Field_16140_16141 T@FrameType) Bool)
(declare-fun InsidePredicate_17677_12777 (T@Field_17677_17678 T@FrameType T@Field_7484_7489 T@FrameType) Bool)
(declare-fun InsidePredicate_16983_17677 (T@Field_17012_17013 T@FrameType T@Field_17677_17678 T@FrameType) Bool)
(declare-fun InsidePredicate_16983_16107 (T@Field_17012_17013 T@FrameType T@Field_16140_16141 T@FrameType) Bool)
(declare-fun InsidePredicate_16983_12777 (T@Field_17012_17013 T@FrameType T@Field_7484_7489 T@FrameType) Bool)
(declare-fun InsidePredicate_16107_17677 (T@Field_16140_16141 T@FrameType T@Field_17677_17678 T@FrameType) Bool)
(declare-fun InsidePredicate_16107_16983 (T@Field_16140_16141 T@FrameType T@Field_17012_17013 T@FrameType) Bool)
(declare-fun InsidePredicate_16107_12777 (T@Field_16140_16141 T@FrameType T@Field_7484_7489 T@FrameType) Bool)
(declare-fun InsidePredicate_12777_17677 (T@Field_7484_7489 T@FrameType T@Field_17677_17678 T@FrameType) Bool)
(declare-fun InsidePredicate_12777_16983 (T@Field_7484_7489 T@FrameType T@Field_17012_17013 T@FrameType) Bool)
(declare-fun InsidePredicate_12777_16107 (T@Field_7484_7489 T@FrameType T@Field_16140_16141 T@FrameType) Bool)
(declare-fun getPredWandId_7354_1215 (T@Field_16107_1215) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_12717) (Heap1 T@PolymorphicMapType_12717) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_7436_1696 (wand_1 arg1 arg2 arg3 arg4)) 2)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_12717) (Mask T@PolymorphicMapType_12738) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12717) (Heap1@@0 T@PolymorphicMapType_12717) (Heap2 T@PolymorphicMapType_12717) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17677_17678) ) (!  (not (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17690_17695) ) (!  (not (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7488_1215) ) (!  (not (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7488_53) ) (!  (not (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7488_7485) ) (!  (not (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_17012_17013) ) (!  (not (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16996_17001) ) (!  (not (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16983_1696) ) (!  (not (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16983_53) ) (!  (not (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16983_7485) ) (!  (not (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_16140_16141) ) (!  (not (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_16122_16127) ) (!  (not (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_16107_1215) ) (!  (not (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_16107_53) ) (!  (not (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_16107_7485) ) (!  (not (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7484_7489) ) (!  (not (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7484_16127) ) (!  (not (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7484_1215) ) (!  (not (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12777_53) ) (!  (not (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12790_12791) ) (!  (not (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_7488_7489 (P x))
 :qid |stdinbpl.264:15|
 :skolemid |37|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12717) (x@@0 T@Ref) ) (! (|P#everUsed_7488| (P x@@0))
 :qid |stdinbpl.283:15|
 :skolemid |41|
 :pattern ( (|P#trigger_7488| Heap@@0 (P x@@0)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5 Real) (arg6 T@Ref) (arg7 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) (arg7_2 Real) ) (!  (=> (= (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12717) (ExhaleHeap T@PolymorphicMapType_12717) (Mask@@0 T@PolymorphicMapType_12738) (pm_f_1 T@Field_17012_17013) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16983_7489 Mask@@0 null pm_f_1) (IsPredicateField_7449_7450 pm_f_1)) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@1) null (PredicateMaskField_16983 pm_f_1)) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap) null (PredicateMaskField_16983 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_7449_7450 pm_f_1) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap) null (PredicateMaskField_16983 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12717) (ExhaleHeap@@0 T@PolymorphicMapType_12717) (Mask@@1 T@PolymorphicMapType_12738) (pm_f_1@@0 T@Field_16140_16141) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16107_7489 Mask@@1 null pm_f_1@@0) (IsPredicateField_7373_7374 pm_f_1@@0)) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@2) null (PredicateMaskField_16107 pm_f_1@@0)) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@0) null (PredicateMaskField_16107 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7373_7374 pm_f_1@@0) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@0) null (PredicateMaskField_16107 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12717) (ExhaleHeap@@1 T@PolymorphicMapType_12717) (Mask@@2 T@PolymorphicMapType_12738) (pm_f_1@@1 T@Field_17677_17678) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7488_7489 Mask@@2 null pm_f_1@@1) (IsPredicateField_7488_7489 pm_f_1@@1)) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@3) null (PredicateMaskField_7488 pm_f_1@@1)) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@1) null (PredicateMaskField_7488 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_7488_7489 pm_f_1@@1) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@1) null (PredicateMaskField_7488 pm_f_1@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12717) (ExhaleHeap@@2 T@PolymorphicMapType_12717) (Mask@@3 T@PolymorphicMapType_12738) (pm_f_1@@2 T@Field_7484_7489) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7484_7489 Mask@@3 null pm_f_1@@2) (IsPredicateField_7484_44489 pm_f_1@@2)) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@4) null (PredicateMaskField_7484 pm_f_1@@2)) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@2) null (PredicateMaskField_7484 pm_f_1@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsPredicateField_7484_44489 pm_f_1@@2) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@2) null (PredicateMaskField_7484 pm_f_1@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12717) (ExhaleHeap@@3 T@PolymorphicMapType_12717) (Mask@@4 T@PolymorphicMapType_12738) (pm_f_1@@3 T@Field_17012_17013) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_16983_7489 Mask@@4 null pm_f_1@@3) (IsWandField_7449_7450 pm_f_1@@3)) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@5) null (WandMaskField_7449 pm_f_1@@3)) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@3) null (WandMaskField_7449 pm_f_1@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_7449_7450 pm_f_1@@3) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@3) null (WandMaskField_7449 pm_f_1@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12717) (ExhaleHeap@@4 T@PolymorphicMapType_12717) (Mask@@5 T@PolymorphicMapType_12738) (pm_f_1@@4 T@Field_16140_16141) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16107_7489 Mask@@5 null pm_f_1@@4) (IsWandField_7373_7374 pm_f_1@@4)) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@6) null (WandMaskField_7373 pm_f_1@@4)) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@4) null (WandMaskField_7373 pm_f_1@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_7373_7374 pm_f_1@@4) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@4) null (WandMaskField_7373 pm_f_1@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12717) (ExhaleHeap@@5 T@PolymorphicMapType_12717) (Mask@@6 T@PolymorphicMapType_12738) (pm_f_1@@5 T@Field_17677_17678) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7488_7489 Mask@@6 null pm_f_1@@5) (IsWandField_7488_51529 pm_f_1@@5)) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@7) null (WandMaskField_7488 pm_f_1@@5)) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@5) null (WandMaskField_7488 pm_f_1@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_7488_51529 pm_f_1@@5) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@5) null (WandMaskField_7488 pm_f_1@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12717) (ExhaleHeap@@6 T@PolymorphicMapType_12717) (Mask@@7 T@PolymorphicMapType_12738) (pm_f_1@@6 T@Field_7484_7489) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7484_7489 Mask@@7 null pm_f_1@@6) (IsWandField_7484_51172 pm_f_1@@6)) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@8) null (WandMaskField_7484 pm_f_1@@6)) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@6) null (WandMaskField_7484 pm_f_1@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_7484_51172 pm_f_1@@6) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@6) null (WandMaskField_7484 pm_f_1@@6)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12717) (ExhaleHeap@@7 T@PolymorphicMapType_12717) (Mask@@8 T@PolymorphicMapType_12738) (pm_f_1@@7 T@Field_17012_17013) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_16983_7489 Mask@@8 null pm_f_1@@7) (IsPredicateField_7449_7450 pm_f_1@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1 f_8) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@9) o2_1 f_8) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@9) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@9) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@9) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@9) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@3 f_8@@3))
))) (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@9) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@4 f_8@@4))
))) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@9) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@9) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@9) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@9) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@8 f_8@@8))
))) (forall ((o2_1@@9 T@Ref) (f_8@@9 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@9 f_8@@9) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@9) o2_1@@9 f_8@@9) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@9 f_8@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@9 f_8@@9))
))) (forall ((o2_1@@10 T@Ref) (f_8@@10 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@10 f_8@@10) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@9) o2_1@@10 f_8@@10) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@10 f_8@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@10 f_8@@10))
))) (forall ((o2_1@@11 T@Ref) (f_8@@11 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@11 f_8@@11) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@9) o2_1@@11 f_8@@11) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@11 f_8@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@11 f_8@@11))
))) (forall ((o2_1@@12 T@Ref) (f_8@@12 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@12 f_8@@12) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) o2_1@@12 f_8@@12) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@12 f_8@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@12 f_8@@12))
))) (forall ((o2_1@@13 T@Ref) (f_8@@13 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@13 f_8@@13) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@9) o2_1@@13 f_8@@13) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@13 f_8@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@13 f_8@@13))
))) (forall ((o2_1@@14 T@Ref) (f_8@@14 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@14 f_8@@14) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@9) o2_1@@14 f_8@@14) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@14 f_8@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@14 f_8@@14))
))) (forall ((o2_1@@15 T@Ref) (f_8@@15 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@15 f_8@@15) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@9) o2_1@@15 f_8@@15) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@15 f_8@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@15 f_8@@15))
))) (forall ((o2_1@@16 T@Ref) (f_8@@16 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@16 f_8@@16) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@9) o2_1@@16 f_8@@16) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@16 f_8@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@16 f_8@@16))
))) (forall ((o2_1@@17 T@Ref) (f_8@@17 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@17 f_8@@17) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@9) o2_1@@17 f_8@@17) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@17 f_8@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@17 f_8@@17))
))) (forall ((o2_1@@18 T@Ref) (f_8@@18 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@9) null (PredicateMaskField_16983 pm_f_1@@7))) o2_1@@18 f_8@@18) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@9) o2_1@@18 f_8@@18) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@18 f_8@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@7) o2_1@@18 f_8@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsPredicateField_7449_7450 pm_f_1@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12717) (ExhaleHeap@@8 T@PolymorphicMapType_12717) (Mask@@9 T@PolymorphicMapType_12738) (pm_f_1@@8 T@Field_16140_16141) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_16107_7489 Mask@@9 null pm_f_1@@8) (IsPredicateField_7373_7374 pm_f_1@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@19 T@Ref) (f_8@@19 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@19 f_8@@19) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@10) o2_1@@19 f_8@@19) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@19 f_8@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@19 f_8@@19))
)) (forall ((o2_1@@20 T@Ref) (f_8@@20 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@20 f_8@@20) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@10) o2_1@@20 f_8@@20) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@20 f_8@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@20 f_8@@20))
))) (forall ((o2_1@@21 T@Ref) (f_8@@21 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@21 f_8@@21) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@10) o2_1@@21 f_8@@21) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@21 f_8@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@21 f_8@@21))
))) (forall ((o2_1@@22 T@Ref) (f_8@@22 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@22 f_8@@22) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@10) o2_1@@22 f_8@@22) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@22 f_8@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@22 f_8@@22))
))) (forall ((o2_1@@23 T@Ref) (f_8@@23 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@23 f_8@@23) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@10) o2_1@@23 f_8@@23) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@23 f_8@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@23 f_8@@23))
))) (forall ((o2_1@@24 T@Ref) (f_8@@24 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@24 f_8@@24) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@10) o2_1@@24 f_8@@24) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@24 f_8@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@24 f_8@@24))
))) (forall ((o2_1@@25 T@Ref) (f_8@@25 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@25 f_8@@25) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@10) o2_1@@25 f_8@@25) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@25 f_8@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@25 f_8@@25))
))) (forall ((o2_1@@26 T@Ref) (f_8@@26 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@26 f_8@@26) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@10) o2_1@@26 f_8@@26) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@26 f_8@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@26 f_8@@26))
))) (forall ((o2_1@@27 T@Ref) (f_8@@27 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@27 f_8@@27) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) o2_1@@27 f_8@@27) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@27 f_8@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@27 f_8@@27))
))) (forall ((o2_1@@28 T@Ref) (f_8@@28 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@28 f_8@@28) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@10) o2_1@@28 f_8@@28) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@28 f_8@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@28 f_8@@28))
))) (forall ((o2_1@@29 T@Ref) (f_8@@29 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@29 f_8@@29) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@10) o2_1@@29 f_8@@29) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@29 f_8@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@29 f_8@@29))
))) (forall ((o2_1@@30 T@Ref) (f_8@@30 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@30 f_8@@30) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@10) o2_1@@30 f_8@@30) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@30 f_8@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@30 f_8@@30))
))) (forall ((o2_1@@31 T@Ref) (f_8@@31 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@31 f_8@@31) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@10) o2_1@@31 f_8@@31) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@31 f_8@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@31 f_8@@31))
))) (forall ((o2_1@@32 T@Ref) (f_8@@32 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@32 f_8@@32) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@10) o2_1@@32 f_8@@32) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@32 f_8@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@32 f_8@@32))
))) (forall ((o2_1@@33 T@Ref) (f_8@@33 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@33 f_8@@33) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@10) o2_1@@33 f_8@@33) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@33 f_8@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@33 f_8@@33))
))) (forall ((o2_1@@34 T@Ref) (f_8@@34 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@34 f_8@@34) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@10) o2_1@@34 f_8@@34) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@34 f_8@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@34 f_8@@34))
))) (forall ((o2_1@@35 T@Ref) (f_8@@35 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@35 f_8@@35) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@10) o2_1@@35 f_8@@35) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@35 f_8@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@35 f_8@@35))
))) (forall ((o2_1@@36 T@Ref) (f_8@@36 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@36 f_8@@36) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@10) o2_1@@36 f_8@@36) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@36 f_8@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@36 f_8@@36))
))) (forall ((o2_1@@37 T@Ref) (f_8@@37 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@37 f_8@@37) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@10) o2_1@@37 f_8@@37) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@37 f_8@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@37 f_8@@37))
))) (forall ((o2_1@@38 T@Ref) (f_8@@38 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@10) null (PredicateMaskField_16107 pm_f_1@@8))) o2_1@@38 f_8@@38) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@10) o2_1@@38 f_8@@38) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@38 f_8@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@8) o2_1@@38 f_8@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsPredicateField_7373_7374 pm_f_1@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12717) (ExhaleHeap@@9 T@PolymorphicMapType_12717) (Mask@@10 T@PolymorphicMapType_12738) (pm_f_1@@9 T@Field_17677_17678) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7488_7489 Mask@@10 null pm_f_1@@9) (IsPredicateField_7488_7489 pm_f_1@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@39 T@Ref) (f_8@@39 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@39 f_8@@39) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@11) o2_1@@39 f_8@@39) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@39 f_8@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@39 f_8@@39))
)) (forall ((o2_1@@40 T@Ref) (f_8@@40 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@40 f_8@@40) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@11) o2_1@@40 f_8@@40) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@40 f_8@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@40 f_8@@40))
))) (forall ((o2_1@@41 T@Ref) (f_8@@41 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@41 f_8@@41) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@11) o2_1@@41 f_8@@41) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@41 f_8@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@41 f_8@@41))
))) (forall ((o2_1@@42 T@Ref) (f_8@@42 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@42 f_8@@42) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@11) o2_1@@42 f_8@@42) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@42 f_8@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@42 f_8@@42))
))) (forall ((o2_1@@43 T@Ref) (f_8@@43 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@43 f_8@@43) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@11) o2_1@@43 f_8@@43) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@43 f_8@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@43 f_8@@43))
))) (forall ((o2_1@@44 T@Ref) (f_8@@44 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@44 f_8@@44) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@11) o2_1@@44 f_8@@44) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@44 f_8@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@44 f_8@@44))
))) (forall ((o2_1@@45 T@Ref) (f_8@@45 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@45 f_8@@45) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@11) o2_1@@45 f_8@@45) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@45 f_8@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@45 f_8@@45))
))) (forall ((o2_1@@46 T@Ref) (f_8@@46 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@46 f_8@@46) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@11) o2_1@@46 f_8@@46) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@46 f_8@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@46 f_8@@46))
))) (forall ((o2_1@@47 T@Ref) (f_8@@47 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@47 f_8@@47) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@11) o2_1@@47 f_8@@47) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@47 f_8@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@47 f_8@@47))
))) (forall ((o2_1@@48 T@Ref) (f_8@@48 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@48 f_8@@48) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@11) o2_1@@48 f_8@@48) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@48 f_8@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@48 f_8@@48))
))) (forall ((o2_1@@49 T@Ref) (f_8@@49 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@49 f_8@@49) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@11) o2_1@@49 f_8@@49) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@49 f_8@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@49 f_8@@49))
))) (forall ((o2_1@@50 T@Ref) (f_8@@50 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@50 f_8@@50) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@11) o2_1@@50 f_8@@50) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@50 f_8@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@50 f_8@@50))
))) (forall ((o2_1@@51 T@Ref) (f_8@@51 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@51 f_8@@51) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@11) o2_1@@51 f_8@@51) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@51 f_8@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@51 f_8@@51))
))) (forall ((o2_1@@52 T@Ref) (f_8@@52 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@52 f_8@@52) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@11) o2_1@@52 f_8@@52) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@52 f_8@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@52 f_8@@52))
))) (forall ((o2_1@@53 T@Ref) (f_8@@53 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@53 f_8@@53) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@11) o2_1@@53 f_8@@53) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@53 f_8@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@53 f_8@@53))
))) (forall ((o2_1@@54 T@Ref) (f_8@@54 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@54 f_8@@54) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@11) o2_1@@54 f_8@@54) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@54 f_8@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@54 f_8@@54))
))) (forall ((o2_1@@55 T@Ref) (f_8@@55 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@55 f_8@@55) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@11) o2_1@@55 f_8@@55) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@55 f_8@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@55 f_8@@55))
))) (forall ((o2_1@@56 T@Ref) (f_8@@56 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@56 f_8@@56) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@11) o2_1@@56 f_8@@56) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@56 f_8@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@56 f_8@@56))
))) (forall ((o2_1@@57 T@Ref) (f_8@@57 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@57 f_8@@57) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) o2_1@@57 f_8@@57) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@57 f_8@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@57 f_8@@57))
))) (forall ((o2_1@@58 T@Ref) (f_8@@58 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@11) null (PredicateMaskField_7488 pm_f_1@@9))) o2_1@@58 f_8@@58) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@11) o2_1@@58 f_8@@58) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@58 f_8@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@9) o2_1@@58 f_8@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (IsPredicateField_7488_7489 pm_f_1@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12717) (ExhaleHeap@@10 T@PolymorphicMapType_12717) (Mask@@11 T@PolymorphicMapType_12738) (pm_f_1@@10 T@Field_7484_7489) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_7484_7489 Mask@@11 null pm_f_1@@10) (IsPredicateField_7484_44489 pm_f_1@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@59 T@Ref) (f_8@@59 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@59 f_8@@59) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@12) o2_1@@59 f_8@@59) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@59 f_8@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@59 f_8@@59))
)) (forall ((o2_1@@60 T@Ref) (f_8@@60 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@60 f_8@@60) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@12) o2_1@@60 f_8@@60) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@60 f_8@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@60 f_8@@60))
))) (forall ((o2_1@@61 T@Ref) (f_8@@61 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@61 f_8@@61) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@12) o2_1@@61 f_8@@61) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@61 f_8@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@61 f_8@@61))
))) (forall ((o2_1@@62 T@Ref) (f_8@@62 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@62 f_8@@62) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) o2_1@@62 f_8@@62) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@62 f_8@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@62 f_8@@62))
))) (forall ((o2_1@@63 T@Ref) (f_8@@63 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@63 f_8@@63) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@12) o2_1@@63 f_8@@63) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@63 f_8@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@63 f_8@@63))
))) (forall ((o2_1@@64 T@Ref) (f_8@@64 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@64 f_8@@64) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@12) o2_1@@64 f_8@@64) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@64 f_8@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@64 f_8@@64))
))) (forall ((o2_1@@65 T@Ref) (f_8@@65 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@65 f_8@@65) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@12) o2_1@@65 f_8@@65) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@65 f_8@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@65 f_8@@65))
))) (forall ((o2_1@@66 T@Ref) (f_8@@66 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@66 f_8@@66) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@12) o2_1@@66 f_8@@66) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@66 f_8@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@66 f_8@@66))
))) (forall ((o2_1@@67 T@Ref) (f_8@@67 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@67 f_8@@67) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@12) o2_1@@67 f_8@@67) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@67 f_8@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@67 f_8@@67))
))) (forall ((o2_1@@68 T@Ref) (f_8@@68 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@68 f_8@@68) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@12) o2_1@@68 f_8@@68) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@68 f_8@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@68 f_8@@68))
))) (forall ((o2_1@@69 T@Ref) (f_8@@69 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@69 f_8@@69) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@12) o2_1@@69 f_8@@69) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@69 f_8@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@69 f_8@@69))
))) (forall ((o2_1@@70 T@Ref) (f_8@@70 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@70 f_8@@70) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@12) o2_1@@70 f_8@@70) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@70 f_8@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@70 f_8@@70))
))) (forall ((o2_1@@71 T@Ref) (f_8@@71 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@71 f_8@@71) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@12) o2_1@@71 f_8@@71) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@71 f_8@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@71 f_8@@71))
))) (forall ((o2_1@@72 T@Ref) (f_8@@72 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@72 f_8@@72) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@12) o2_1@@72 f_8@@72) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@72 f_8@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@72 f_8@@72))
))) (forall ((o2_1@@73 T@Ref) (f_8@@73 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@73 f_8@@73) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@12) o2_1@@73 f_8@@73) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@73 f_8@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@73 f_8@@73))
))) (forall ((o2_1@@74 T@Ref) (f_8@@74 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@74 f_8@@74) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@12) o2_1@@74 f_8@@74) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@74 f_8@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@74 f_8@@74))
))) (forall ((o2_1@@75 T@Ref) (f_8@@75 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@75 f_8@@75) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@12) o2_1@@75 f_8@@75) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@75 f_8@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@75 f_8@@75))
))) (forall ((o2_1@@76 T@Ref) (f_8@@76 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@76 f_8@@76) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@12) o2_1@@76 f_8@@76) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@76 f_8@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@76 f_8@@76))
))) (forall ((o2_1@@77 T@Ref) (f_8@@77 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@77 f_8@@77) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@12) o2_1@@77 f_8@@77) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@77 f_8@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@77 f_8@@77))
))) (forall ((o2_1@@78 T@Ref) (f_8@@78 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@12) null (PredicateMaskField_7484 pm_f_1@@10))) o2_1@@78 f_8@@78) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@12) o2_1@@78 f_8@@78) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@78 f_8@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@10) o2_1@@78 f_8@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (IsPredicateField_7484_44489 pm_f_1@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12717) (ExhaleHeap@@11 T@PolymorphicMapType_12717) (Mask@@12 T@PolymorphicMapType_12738) (pm_f_1@@11 T@Field_17012_17013) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_16983_7489 Mask@@12 null pm_f_1@@11) (IsWandField_7449_7450 pm_f_1@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@79 T@Ref) (f_8@@79 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@79 f_8@@79) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@13) o2_1@@79 f_8@@79) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@79 f_8@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@79 f_8@@79))
)) (forall ((o2_1@@80 T@Ref) (f_8@@80 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@80 f_8@@80) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@13) o2_1@@80 f_8@@80) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@80 f_8@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@80 f_8@@80))
))) (forall ((o2_1@@81 T@Ref) (f_8@@81 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@81 f_8@@81) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@13) o2_1@@81 f_8@@81) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@81 f_8@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@81 f_8@@81))
))) (forall ((o2_1@@82 T@Ref) (f_8@@82 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@82 f_8@@82) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@13) o2_1@@82 f_8@@82) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@82 f_8@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@82 f_8@@82))
))) (forall ((o2_1@@83 T@Ref) (f_8@@83 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@83 f_8@@83) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@13) o2_1@@83 f_8@@83) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@83 f_8@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@83 f_8@@83))
))) (forall ((o2_1@@84 T@Ref) (f_8@@84 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@84 f_8@@84) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@13) o2_1@@84 f_8@@84) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@84 f_8@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@84 f_8@@84))
))) (forall ((o2_1@@85 T@Ref) (f_8@@85 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@85 f_8@@85) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@13) o2_1@@85 f_8@@85) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@85 f_8@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@85 f_8@@85))
))) (forall ((o2_1@@86 T@Ref) (f_8@@86 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@86 f_8@@86) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@13) o2_1@@86 f_8@@86) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@86 f_8@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@86 f_8@@86))
))) (forall ((o2_1@@87 T@Ref) (f_8@@87 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@87 f_8@@87) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@13) o2_1@@87 f_8@@87) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@87 f_8@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@87 f_8@@87))
))) (forall ((o2_1@@88 T@Ref) (f_8@@88 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@88 f_8@@88) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@13) o2_1@@88 f_8@@88) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@88 f_8@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@88 f_8@@88))
))) (forall ((o2_1@@89 T@Ref) (f_8@@89 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@89 f_8@@89) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@13) o2_1@@89 f_8@@89) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@89 f_8@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@89 f_8@@89))
))) (forall ((o2_1@@90 T@Ref) (f_8@@90 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@90 f_8@@90) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@13) o2_1@@90 f_8@@90) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@90 f_8@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@90 f_8@@90))
))) (forall ((o2_1@@91 T@Ref) (f_8@@91 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@91 f_8@@91) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@13) o2_1@@91 f_8@@91) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@91 f_8@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@91 f_8@@91))
))) (forall ((o2_1@@92 T@Ref) (f_8@@92 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@92 f_8@@92) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) o2_1@@92 f_8@@92) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@92 f_8@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@92 f_8@@92))
))) (forall ((o2_1@@93 T@Ref) (f_8@@93 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@93 f_8@@93) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@13) o2_1@@93 f_8@@93) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@93 f_8@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@93 f_8@@93))
))) (forall ((o2_1@@94 T@Ref) (f_8@@94 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@94 f_8@@94) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@13) o2_1@@94 f_8@@94) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@94 f_8@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@94 f_8@@94))
))) (forall ((o2_1@@95 T@Ref) (f_8@@95 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@95 f_8@@95) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@13) o2_1@@95 f_8@@95) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@95 f_8@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@95 f_8@@95))
))) (forall ((o2_1@@96 T@Ref) (f_8@@96 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@96 f_8@@96) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@13) o2_1@@96 f_8@@96) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@96 f_8@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@96 f_8@@96))
))) (forall ((o2_1@@97 T@Ref) (f_8@@97 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@97 f_8@@97) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@13) o2_1@@97 f_8@@97) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@97 f_8@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@97 f_8@@97))
))) (forall ((o2_1@@98 T@Ref) (f_8@@98 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@13) null (WandMaskField_7449 pm_f_1@@11))) o2_1@@98 f_8@@98) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@13) o2_1@@98 f_8@@98) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@98 f_8@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@11) o2_1@@98 f_8@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (IsWandField_7449_7450 pm_f_1@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12717) (ExhaleHeap@@12 T@PolymorphicMapType_12717) (Mask@@13 T@PolymorphicMapType_12738) (pm_f_1@@12 T@Field_16140_16141) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_16107_7489 Mask@@13 null pm_f_1@@12) (IsWandField_7373_7374 pm_f_1@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@99 T@Ref) (f_8@@99 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@99 f_8@@99) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@14) o2_1@@99 f_8@@99) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@99 f_8@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@99 f_8@@99))
)) (forall ((o2_1@@100 T@Ref) (f_8@@100 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@100 f_8@@100) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@14) o2_1@@100 f_8@@100) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@100 f_8@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@100 f_8@@100))
))) (forall ((o2_1@@101 T@Ref) (f_8@@101 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@101 f_8@@101) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@14) o2_1@@101 f_8@@101) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@101 f_8@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@101 f_8@@101))
))) (forall ((o2_1@@102 T@Ref) (f_8@@102 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@102 f_8@@102) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@14) o2_1@@102 f_8@@102) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@102 f_8@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@102 f_8@@102))
))) (forall ((o2_1@@103 T@Ref) (f_8@@103 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@103 f_8@@103) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@14) o2_1@@103 f_8@@103) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@103 f_8@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@103 f_8@@103))
))) (forall ((o2_1@@104 T@Ref) (f_8@@104 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@104 f_8@@104) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@14) o2_1@@104 f_8@@104) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@104 f_8@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@104 f_8@@104))
))) (forall ((o2_1@@105 T@Ref) (f_8@@105 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@105 f_8@@105) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@14) o2_1@@105 f_8@@105) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@105 f_8@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@105 f_8@@105))
))) (forall ((o2_1@@106 T@Ref) (f_8@@106 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@106 f_8@@106) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@14) o2_1@@106 f_8@@106) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@106 f_8@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@106 f_8@@106))
))) (forall ((o2_1@@107 T@Ref) (f_8@@107 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@107 f_8@@107) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) o2_1@@107 f_8@@107) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@107 f_8@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@107 f_8@@107))
))) (forall ((o2_1@@108 T@Ref) (f_8@@108 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@108 f_8@@108) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@14) o2_1@@108 f_8@@108) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@108 f_8@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@108 f_8@@108))
))) (forall ((o2_1@@109 T@Ref) (f_8@@109 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@109 f_8@@109) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@14) o2_1@@109 f_8@@109) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@109 f_8@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@109 f_8@@109))
))) (forall ((o2_1@@110 T@Ref) (f_8@@110 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@110 f_8@@110) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@14) o2_1@@110 f_8@@110) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@110 f_8@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@110 f_8@@110))
))) (forall ((o2_1@@111 T@Ref) (f_8@@111 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@111 f_8@@111) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@14) o2_1@@111 f_8@@111) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@111 f_8@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@111 f_8@@111))
))) (forall ((o2_1@@112 T@Ref) (f_8@@112 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@112 f_8@@112) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@14) o2_1@@112 f_8@@112) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@112 f_8@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@112 f_8@@112))
))) (forall ((o2_1@@113 T@Ref) (f_8@@113 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@113 f_8@@113) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@14) o2_1@@113 f_8@@113) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@113 f_8@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@113 f_8@@113))
))) (forall ((o2_1@@114 T@Ref) (f_8@@114 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@114 f_8@@114) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@14) o2_1@@114 f_8@@114) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@114 f_8@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@114 f_8@@114))
))) (forall ((o2_1@@115 T@Ref) (f_8@@115 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@115 f_8@@115) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@14) o2_1@@115 f_8@@115) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@115 f_8@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@115 f_8@@115))
))) (forall ((o2_1@@116 T@Ref) (f_8@@116 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@116 f_8@@116) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@14) o2_1@@116 f_8@@116) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@116 f_8@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@116 f_8@@116))
))) (forall ((o2_1@@117 T@Ref) (f_8@@117 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@117 f_8@@117) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@14) o2_1@@117 f_8@@117) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@117 f_8@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@117 f_8@@117))
))) (forall ((o2_1@@118 T@Ref) (f_8@@118 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@14) null (WandMaskField_7373 pm_f_1@@12))) o2_1@@118 f_8@@118) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@14) o2_1@@118 f_8@@118) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@118 f_8@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@12) o2_1@@118 f_8@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@13) (IsWandField_7373_7374 pm_f_1@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12717) (ExhaleHeap@@13 T@PolymorphicMapType_12717) (Mask@@14 T@PolymorphicMapType_12738) (pm_f_1@@13 T@Field_17677_17678) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_7488_7489 Mask@@14 null pm_f_1@@13) (IsWandField_7488_51529 pm_f_1@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@119 T@Ref) (f_8@@119 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@119 f_8@@119) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@15) o2_1@@119 f_8@@119) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@119 f_8@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@119 f_8@@119))
)) (forall ((o2_1@@120 T@Ref) (f_8@@120 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@120 f_8@@120) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@15) o2_1@@120 f_8@@120) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@120 f_8@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@120 f_8@@120))
))) (forall ((o2_1@@121 T@Ref) (f_8@@121 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@121 f_8@@121) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@15) o2_1@@121 f_8@@121) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@121 f_8@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@121 f_8@@121))
))) (forall ((o2_1@@122 T@Ref) (f_8@@122 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@122 f_8@@122) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@15) o2_1@@122 f_8@@122) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@122 f_8@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@122 f_8@@122))
))) (forall ((o2_1@@123 T@Ref) (f_8@@123 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@123 f_8@@123) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@15) o2_1@@123 f_8@@123) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@123 f_8@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@123 f_8@@123))
))) (forall ((o2_1@@124 T@Ref) (f_8@@124 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@124 f_8@@124) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@15) o2_1@@124 f_8@@124) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@124 f_8@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@124 f_8@@124))
))) (forall ((o2_1@@125 T@Ref) (f_8@@125 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@125 f_8@@125) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@15) o2_1@@125 f_8@@125) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@125 f_8@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@125 f_8@@125))
))) (forall ((o2_1@@126 T@Ref) (f_8@@126 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@126 f_8@@126) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@15) o2_1@@126 f_8@@126) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@126 f_8@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@126 f_8@@126))
))) (forall ((o2_1@@127 T@Ref) (f_8@@127 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@127 f_8@@127) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@15) o2_1@@127 f_8@@127) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@127 f_8@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@127 f_8@@127))
))) (forall ((o2_1@@128 T@Ref) (f_8@@128 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@128 f_8@@128) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@15) o2_1@@128 f_8@@128) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@128 f_8@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@128 f_8@@128))
))) (forall ((o2_1@@129 T@Ref) (f_8@@129 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@129 f_8@@129) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@15) o2_1@@129 f_8@@129) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@129 f_8@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@129 f_8@@129))
))) (forall ((o2_1@@130 T@Ref) (f_8@@130 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@130 f_8@@130) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@15) o2_1@@130 f_8@@130) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@130 f_8@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@130 f_8@@130))
))) (forall ((o2_1@@131 T@Ref) (f_8@@131 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@131 f_8@@131) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@15) o2_1@@131 f_8@@131) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@131 f_8@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@131 f_8@@131))
))) (forall ((o2_1@@132 T@Ref) (f_8@@132 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@132 f_8@@132) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@15) o2_1@@132 f_8@@132) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@132 f_8@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@132 f_8@@132))
))) (forall ((o2_1@@133 T@Ref) (f_8@@133 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@133 f_8@@133) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@15) o2_1@@133 f_8@@133) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@133 f_8@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@133 f_8@@133))
))) (forall ((o2_1@@134 T@Ref) (f_8@@134 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@134 f_8@@134) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@15) o2_1@@134 f_8@@134) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@134 f_8@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@134 f_8@@134))
))) (forall ((o2_1@@135 T@Ref) (f_8@@135 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@135 f_8@@135) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@15) o2_1@@135 f_8@@135) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@135 f_8@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@135 f_8@@135))
))) (forall ((o2_1@@136 T@Ref) (f_8@@136 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@136 f_8@@136) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@15) o2_1@@136 f_8@@136) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@136 f_8@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@136 f_8@@136))
))) (forall ((o2_1@@137 T@Ref) (f_8@@137 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@137 f_8@@137) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) o2_1@@137 f_8@@137) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@137 f_8@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@137 f_8@@137))
))) (forall ((o2_1@@138 T@Ref) (f_8@@138 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@15) null (WandMaskField_7488 pm_f_1@@13))) o2_1@@138 f_8@@138) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@15) o2_1@@138 f_8@@138) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@138 f_8@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@13) o2_1@@138 f_8@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (IsWandField_7488_51529 pm_f_1@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12717) (ExhaleHeap@@14 T@PolymorphicMapType_12717) (Mask@@15 T@PolymorphicMapType_12738) (pm_f_1@@14 T@Field_7484_7489) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_7484_7489 Mask@@15 null pm_f_1@@14) (IsWandField_7484_51172 pm_f_1@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@139 T@Ref) (f_8@@139 T@Field_12790_12791) ) (!  (=> (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@139 f_8@@139) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@16) o2_1@@139 f_8@@139) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@139 f_8@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@139 f_8@@139))
)) (forall ((o2_1@@140 T@Ref) (f_8@@140 T@Field_12777_53) ) (!  (=> (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@140 f_8@@140) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@16) o2_1@@140 f_8@@140) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@140 f_8@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@140 f_8@@140))
))) (forall ((o2_1@@141 T@Ref) (f_8@@141 T@Field_7484_1215) ) (!  (=> (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@141 f_8@@141) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@16) o2_1@@141 f_8@@141) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@141 f_8@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@141 f_8@@141))
))) (forall ((o2_1@@142 T@Ref) (f_8@@142 T@Field_7484_16127) ) (!  (=> (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@142 f_8@@142) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) o2_1@@142 f_8@@142) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@142 f_8@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@142 f_8@@142))
))) (forall ((o2_1@@143 T@Ref) (f_8@@143 T@Field_7484_7489) ) (!  (=> (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@143 f_8@@143) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@16) o2_1@@143 f_8@@143) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@143 f_8@@143)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@143 f_8@@143))
))) (forall ((o2_1@@144 T@Ref) (f_8@@144 T@Field_16107_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@144 f_8@@144) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@16) o2_1@@144 f_8@@144) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@144 f_8@@144)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@144 f_8@@144))
))) (forall ((o2_1@@145 T@Ref) (f_8@@145 T@Field_16107_53) ) (!  (=> (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@145 f_8@@145) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@16) o2_1@@145 f_8@@145) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@145 f_8@@145)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@145 f_8@@145))
))) (forall ((o2_1@@146 T@Ref) (f_8@@146 T@Field_16107_1215) ) (!  (=> (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@146 f_8@@146) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@16) o2_1@@146 f_8@@146) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@146 f_8@@146)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@146 f_8@@146))
))) (forall ((o2_1@@147 T@Ref) (f_8@@147 T@Field_16122_16127) ) (!  (=> (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@147 f_8@@147) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@16) o2_1@@147 f_8@@147) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@147 f_8@@147)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@147 f_8@@147))
))) (forall ((o2_1@@148 T@Ref) (f_8@@148 T@Field_16140_16141) ) (!  (=> (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@148 f_8@@148) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@16) o2_1@@148 f_8@@148) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@148 f_8@@148)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@148 f_8@@148))
))) (forall ((o2_1@@149 T@Ref) (f_8@@149 T@Field_16983_7485) ) (!  (=> (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@149 f_8@@149) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@16) o2_1@@149 f_8@@149) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@149 f_8@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@149 f_8@@149))
))) (forall ((o2_1@@150 T@Ref) (f_8@@150 T@Field_16983_53) ) (!  (=> (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@150 f_8@@150) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@16) o2_1@@150 f_8@@150) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@150 f_8@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@150 f_8@@150))
))) (forall ((o2_1@@151 T@Ref) (f_8@@151 T@Field_16983_1696) ) (!  (=> (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@151 f_8@@151) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@16) o2_1@@151 f_8@@151) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@151 f_8@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@151 f_8@@151))
))) (forall ((o2_1@@152 T@Ref) (f_8@@152 T@Field_16996_17001) ) (!  (=> (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@152 f_8@@152) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@16) o2_1@@152 f_8@@152) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@152 f_8@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@152 f_8@@152))
))) (forall ((o2_1@@153 T@Ref) (f_8@@153 T@Field_17012_17013) ) (!  (=> (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@153 f_8@@153) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@16) o2_1@@153 f_8@@153) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@153 f_8@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@153 f_8@@153))
))) (forall ((o2_1@@154 T@Ref) (f_8@@154 T@Field_7488_7485) ) (!  (=> (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@154 f_8@@154) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@16) o2_1@@154 f_8@@154) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@154 f_8@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@154 f_8@@154))
))) (forall ((o2_1@@155 T@Ref) (f_8@@155 T@Field_7488_53) ) (!  (=> (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@155 f_8@@155) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@16) o2_1@@155 f_8@@155) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@155 f_8@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@155 f_8@@155))
))) (forall ((o2_1@@156 T@Ref) (f_8@@156 T@Field_7488_1215) ) (!  (=> (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@156 f_8@@156) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@16) o2_1@@156 f_8@@156) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@156 f_8@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@156 f_8@@156))
))) (forall ((o2_1@@157 T@Ref) (f_8@@157 T@Field_17690_17695) ) (!  (=> (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@157 f_8@@157) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@16) o2_1@@157 f_8@@157) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@157 f_8@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@157 f_8@@157))
))) (forall ((o2_1@@158 T@Ref) (f_8@@158 T@Field_17677_17678) ) (!  (=> (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@16) null (WandMaskField_7484 pm_f_1@@14))) o2_1@@158 f_8@@158) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@16) o2_1@@158 f_8@@158) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@158 f_8@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@14) o2_1@@158 f_8@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@15) (IsWandField_7484_51172 pm_f_1@@14))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.274:15|
 :skolemid |39|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.278:15|
 :skolemid |40|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12717) (ExhaleHeap@@15 T@PolymorphicMapType_12717) (Mask@@16 T@PolymorphicMapType_12738) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@17) o_3 $allocated) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@15) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@15) o_3 $allocated))
)))
(assert (forall ((p T@Field_17677_17678) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17677_17677 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17677_17677 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17012_17013) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16983_16983 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16983_16983 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_16140_16141) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_16107_16107 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16107_16107 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_7484_7489) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_12777_12777 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12777_12777 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_7484_7485 f_7)))
(assert  (not (IsWandField_7484_7485 f_7)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12717) (ExhaleHeap@@16 T@PolymorphicMapType_12717) (Mask@@17 T@PolymorphicMapType_12738) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@18 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12738) (o_2@@19 T@Ref) (f_4@@19 T@Field_16996_17001) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7436_65858 f_4@@19))) (not (IsWandField_7436_65874 f_4@@19))) (<= (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12738) (o_2@@20 T@Ref) (f_4@@20 T@Field_16983_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7436_53 f_4@@20))) (not (IsWandField_7436_53 f_4@@20))) (<= (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12738) (o_2@@21 T@Ref) (f_4@@21 T@Field_16983_1696) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_7436_1696 f_4@@21))) (not (IsWandField_7436_1696 f_4@@21))) (<= (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12738) (o_2@@22 T@Ref) (f_4@@22 T@Field_17012_17013) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_7449_7450 f_4@@22))) (not (IsWandField_7449_7450 f_4@@22))) (<= (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12738) (o_2@@23 T@Ref) (f_4@@23 T@Field_16983_7485) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_7436_7485 f_4@@23))) (not (IsWandField_7436_7485 f_4@@23))) (<= (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12738) (o_2@@24 T@Ref) (f_4@@24 T@Field_16122_16127) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_7354_65041 f_4@@24))) (not (IsWandField_7354_65057 f_4@@24))) (<= (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12738) (o_2@@25 T@Ref) (f_4@@25 T@Field_16107_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_7354_53 f_4@@25))) (not (IsWandField_7354_53 f_4@@25))) (<= (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12738) (o_2@@26 T@Ref) (f_4@@26 T@Field_16107_1215) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_7354_1215 f_4@@26))) (not (IsWandField_7354_1215 f_4@@26))) (<= (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12738) (o_2@@27 T@Ref) (f_4@@27 T@Field_16140_16141) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_7373_7374 f_4@@27))) (not (IsWandField_7373_7374 f_4@@27))) (<= (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12738) (o_2@@28 T@Ref) (f_4@@28 T@Field_16107_7485) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_7354_7485 f_4@@28))) (not (IsWandField_7354_7485 f_4@@28))) (<= (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12738) (o_2@@29 T@Ref) (f_4@@29 T@Field_17690_17695) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_7488_64224 f_4@@29))) (not (IsWandField_7488_64240 f_4@@29))) (<= (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12738) (o_2@@30 T@Ref) (f_4@@30 T@Field_7488_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_7488_53 f_4@@30))) (not (IsWandField_7488_53 f_4@@30))) (<= (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12738) (o_2@@31 T@Ref) (f_4@@31 T@Field_7488_1215) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_7488_1215 f_4@@31))) (not (IsWandField_7488_1215 f_4@@31))) (<= (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12738) (o_2@@32 T@Ref) (f_4@@32 T@Field_17677_17678) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_7488_7489 f_4@@32))) (not (IsWandField_7488_51529 f_4@@32))) (<= (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_12738) (o_2@@33 T@Ref) (f_4@@33 T@Field_7488_7485) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_7488_7485 f_4@@33))) (not (IsWandField_7488_7485 f_4@@33))) (<= (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_12738) (o_2@@34 T@Ref) (f_4@@34 T@Field_7484_16127) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_7484_63393 f_4@@34))) (not (IsWandField_7484_63409 f_4@@34))) (<= (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_12738) (o_2@@35 T@Ref) (f_4@@35 T@Field_12777_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_7484_53 f_4@@35))) (not (IsWandField_7484_53 f_4@@35))) (<= (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_12738) (o_2@@36 T@Ref) (f_4@@36 T@Field_7484_1215) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_7484_1215 f_4@@36))) (not (IsWandField_7484_1215 f_4@@36))) (<= (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_12738) (o_2@@37 T@Ref) (f_4@@37 T@Field_7484_7489) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_7484_44489 f_4@@37))) (not (IsWandField_7484_51172 f_4@@37))) (<= (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_12738) (o_2@@38 T@Ref) (f_4@@38 T@Field_12790_12791) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_7484_7485 f_4@@38))) (not (IsWandField_7484_7485 f_4@@38))) (<= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_12738) (o_2@@39 T@Ref) (f_4@@39 T@Field_16996_17001) ) (! (= (HasDirectPerm_16983_44244 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16983_44244 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_12738) (o_2@@40 T@Ref) (f_4@@40 T@Field_16983_1696) ) (! (= (HasDirectPerm_16983_1215 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16983_1215 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_12738) (o_2@@41 T@Ref) (f_4@@41 T@Field_16983_53) ) (! (= (HasDirectPerm_16983_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16983_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_12738) (o_2@@42 T@Ref) (f_4@@42 T@Field_17012_17013) ) (! (= (HasDirectPerm_16983_7489 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16983_7489 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_12738) (o_2@@43 T@Ref) (f_4@@43 T@Field_16983_7485) ) (! (= (HasDirectPerm_16983_7485 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16983_7485 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_12738) (o_2@@44 T@Ref) (f_4@@44 T@Field_16122_16127) ) (! (= (HasDirectPerm_16107_43110 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16107_43110 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_12738) (o_2@@45 T@Ref) (f_4@@45 T@Field_16107_1215) ) (! (= (HasDirectPerm_16107_1215 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16107_1215 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_12738) (o_2@@46 T@Ref) (f_4@@46 T@Field_16107_53) ) (! (= (HasDirectPerm_16107_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16107_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_12738) (o_2@@47 T@Ref) (f_4@@47 T@Field_16140_16141) ) (! (= (HasDirectPerm_16107_7489 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16107_7489 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_12738) (o_2@@48 T@Ref) (f_4@@48 T@Field_16107_7485) ) (! (= (HasDirectPerm_16107_7485 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16107_7485 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_12738) (o_2@@49 T@Ref) (f_4@@49 T@Field_17690_17695) ) (! (= (HasDirectPerm_7488_41976 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7488_41976 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_12738) (o_2@@50 T@Ref) (f_4@@50 T@Field_7488_1215) ) (! (= (HasDirectPerm_7488_1215 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7488_1215 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_12738) (o_2@@51 T@Ref) (f_4@@51 T@Field_7488_53) ) (! (= (HasDirectPerm_7488_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7488_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_12738) (o_2@@52 T@Ref) (f_4@@52 T@Field_17677_17678) ) (! (= (HasDirectPerm_7488_7489 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7488_7489 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_12738) (o_2@@53 T@Ref) (f_4@@53 T@Field_7488_7485) ) (! (= (HasDirectPerm_7488_7485 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7488_7485 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_12738) (o_2@@54 T@Ref) (f_4@@54 T@Field_7484_16127) ) (! (= (HasDirectPerm_7484_40835 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7484_40835 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_12738) (o_2@@55 T@Ref) (f_4@@55 T@Field_7484_1215) ) (! (= (HasDirectPerm_7484_1215 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7484_1215 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_12738) (o_2@@56 T@Ref) (f_4@@56 T@Field_12777_53) ) (! (= (HasDirectPerm_7484_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7484_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_12738) (o_2@@57 T@Ref) (f_4@@57 T@Field_7484_7489) ) (! (= (HasDirectPerm_7484_7489 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7484_7489 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_12738) (o_2@@58 T@Ref) (f_4@@58 T@Field_12790_12791) ) (! (= (HasDirectPerm_7484_7485 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7484_7485 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) ) (! (IsWandField_7436_1696 (wand_1 arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) ) (! (IsWandField_7449_7450 (|wand_1#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12717) (ExhaleHeap@@17 T@PolymorphicMapType_12717) (Mask@@58 T@PolymorphicMapType_12738) (o_3@@0 T@Ref) (f_8@@159 T@Field_16996_17001) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_16983_44244 Mask@@58 o_3@@0 f_8@@159) (= (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@19) o_3@@0 f_8@@159) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@17) o_3@@0 f_8@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| ExhaleHeap@@17) o_3@@0 f_8@@159))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12717) (ExhaleHeap@@18 T@PolymorphicMapType_12717) (Mask@@59 T@PolymorphicMapType_12738) (o_3@@1 T@Ref) (f_8@@160 T@Field_16983_1696) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_16983_1215 Mask@@59 o_3@@1 f_8@@160) (= (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@20) o_3@@1 f_8@@160) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@18) o_3@@1 f_8@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| ExhaleHeap@@18) o_3@@1 f_8@@160))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12717) (ExhaleHeap@@19 T@PolymorphicMapType_12717) (Mask@@60 T@PolymorphicMapType_12738) (o_3@@2 T@Ref) (f_8@@161 T@Field_16983_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_16983_53 Mask@@60 o_3@@2 f_8@@161) (= (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@21) o_3@@2 f_8@@161) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@19) o_3@@2 f_8@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| ExhaleHeap@@19) o_3@@2 f_8@@161))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12717) (ExhaleHeap@@20 T@PolymorphicMapType_12717) (Mask@@61 T@PolymorphicMapType_12738) (o_3@@3 T@Ref) (f_8@@162 T@Field_17012_17013) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_16983_7489 Mask@@61 o_3@@3 f_8@@162) (= (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@22) o_3@@3 f_8@@162) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@20) o_3@@3 f_8@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| ExhaleHeap@@20) o_3@@3 f_8@@162))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12717) (ExhaleHeap@@21 T@PolymorphicMapType_12717) (Mask@@62 T@PolymorphicMapType_12738) (o_3@@4 T@Ref) (f_8@@163 T@Field_16983_7485) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_16983_7485 Mask@@62 o_3@@4 f_8@@163) (= (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@23) o_3@@4 f_8@@163) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@21) o_3@@4 f_8@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| ExhaleHeap@@21) o_3@@4 f_8@@163))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12717) (ExhaleHeap@@22 T@PolymorphicMapType_12717) (Mask@@63 T@PolymorphicMapType_12738) (o_3@@5 T@Ref) (f_8@@164 T@Field_16122_16127) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_16107_43110 Mask@@63 o_3@@5 f_8@@164) (= (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@24) o_3@@5 f_8@@164) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@22) o_3@@5 f_8@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| ExhaleHeap@@22) o_3@@5 f_8@@164))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12717) (ExhaleHeap@@23 T@PolymorphicMapType_12717) (Mask@@64 T@PolymorphicMapType_12738) (o_3@@6 T@Ref) (f_8@@165 T@Field_16107_1215) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_16107_1215 Mask@@64 o_3@@6 f_8@@165) (= (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@25) o_3@@6 f_8@@165) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@23) o_3@@6 f_8@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| ExhaleHeap@@23) o_3@@6 f_8@@165))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12717) (ExhaleHeap@@24 T@PolymorphicMapType_12717) (Mask@@65 T@PolymorphicMapType_12738) (o_3@@7 T@Ref) (f_8@@166 T@Field_16107_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_16107_53 Mask@@65 o_3@@7 f_8@@166) (= (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@26) o_3@@7 f_8@@166) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@24) o_3@@7 f_8@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| ExhaleHeap@@24) o_3@@7 f_8@@166))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12717) (ExhaleHeap@@25 T@PolymorphicMapType_12717) (Mask@@66 T@PolymorphicMapType_12738) (o_3@@8 T@Ref) (f_8@@167 T@Field_16140_16141) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_16107_7489 Mask@@66 o_3@@8 f_8@@167) (= (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@27) o_3@@8 f_8@@167) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@25) o_3@@8 f_8@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| ExhaleHeap@@25) o_3@@8 f_8@@167))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12717) (ExhaleHeap@@26 T@PolymorphicMapType_12717) (Mask@@67 T@PolymorphicMapType_12738) (o_3@@9 T@Ref) (f_8@@168 T@Field_16107_7485) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_16107_7485 Mask@@67 o_3@@9 f_8@@168) (= (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@28) o_3@@9 f_8@@168) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@26) o_3@@9 f_8@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| ExhaleHeap@@26) o_3@@9 f_8@@168))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12717) (ExhaleHeap@@27 T@PolymorphicMapType_12717) (Mask@@68 T@PolymorphicMapType_12738) (o_3@@10 T@Ref) (f_8@@169 T@Field_17690_17695) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_7488_41976 Mask@@68 o_3@@10 f_8@@169) (= (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@29) o_3@@10 f_8@@169) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@27) o_3@@10 f_8@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| ExhaleHeap@@27) o_3@@10 f_8@@169))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12717) (ExhaleHeap@@28 T@PolymorphicMapType_12717) (Mask@@69 T@PolymorphicMapType_12738) (o_3@@11 T@Ref) (f_8@@170 T@Field_7488_1215) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_7488_1215 Mask@@69 o_3@@11 f_8@@170) (= (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@30) o_3@@11 f_8@@170) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@28) o_3@@11 f_8@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| ExhaleHeap@@28) o_3@@11 f_8@@170))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12717) (ExhaleHeap@@29 T@PolymorphicMapType_12717) (Mask@@70 T@PolymorphicMapType_12738) (o_3@@12 T@Ref) (f_8@@171 T@Field_7488_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_7488_53 Mask@@70 o_3@@12 f_8@@171) (= (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@31) o_3@@12 f_8@@171) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@29) o_3@@12 f_8@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| ExhaleHeap@@29) o_3@@12 f_8@@171))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12717) (ExhaleHeap@@30 T@PolymorphicMapType_12717) (Mask@@71 T@PolymorphicMapType_12738) (o_3@@13 T@Ref) (f_8@@172 T@Field_17677_17678) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_7488_7489 Mask@@71 o_3@@13 f_8@@172) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@32) o_3@@13 f_8@@172) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@30) o_3@@13 f_8@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| ExhaleHeap@@30) o_3@@13 f_8@@172))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12717) (ExhaleHeap@@31 T@PolymorphicMapType_12717) (Mask@@72 T@PolymorphicMapType_12738) (o_3@@14 T@Ref) (f_8@@173 T@Field_7488_7485) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_7488_7485 Mask@@72 o_3@@14 f_8@@173) (= (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@33) o_3@@14 f_8@@173) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@31) o_3@@14 f_8@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| ExhaleHeap@@31) o_3@@14 f_8@@173))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12717) (ExhaleHeap@@32 T@PolymorphicMapType_12717) (Mask@@73 T@PolymorphicMapType_12738) (o_3@@15 T@Ref) (f_8@@174 T@Field_7484_16127) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_7484_40835 Mask@@73 o_3@@15 f_8@@174) (= (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@34) o_3@@15 f_8@@174) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@32) o_3@@15 f_8@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| ExhaleHeap@@32) o_3@@15 f_8@@174))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12717) (ExhaleHeap@@33 T@PolymorphicMapType_12717) (Mask@@74 T@PolymorphicMapType_12738) (o_3@@16 T@Ref) (f_8@@175 T@Field_7484_1215) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_7484_1215 Mask@@74 o_3@@16 f_8@@175) (= (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@35) o_3@@16 f_8@@175) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@33) o_3@@16 f_8@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| ExhaleHeap@@33) o_3@@16 f_8@@175))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12717) (ExhaleHeap@@34 T@PolymorphicMapType_12717) (Mask@@75 T@PolymorphicMapType_12738) (o_3@@17 T@Ref) (f_8@@176 T@Field_12777_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_7484_53 Mask@@75 o_3@@17 f_8@@176) (= (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@36) o_3@@17 f_8@@176) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@34) o_3@@17 f_8@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| ExhaleHeap@@34) o_3@@17 f_8@@176))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12717) (ExhaleHeap@@35 T@PolymorphicMapType_12717) (Mask@@76 T@PolymorphicMapType_12738) (o_3@@18 T@Ref) (f_8@@177 T@Field_7484_7489) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_7484_7489 Mask@@76 o_3@@18 f_8@@177) (= (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@37) o_3@@18 f_8@@177) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@35) o_3@@18 f_8@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| ExhaleHeap@@35) o_3@@18 f_8@@177))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12717) (ExhaleHeap@@36 T@PolymorphicMapType_12717) (Mask@@77 T@PolymorphicMapType_12738) (o_3@@19 T@Ref) (f_8@@178 T@Field_12790_12791) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_7484_7485 Mask@@77 o_3@@19 f_8@@178) (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@38) o_3@@19 f_8@@178) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@36) o_3@@19 f_8@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| ExhaleHeap@@36) o_3@@19 f_8@@178))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) ) (!  (not (IsPredicateField_7436_1696 (wand_1 arg1@@3 arg2@@3 arg3@@3 arg4@@3)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Real) ) (!  (not (IsPredicateField_7449_7450 (|wand_1#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) ) (! (= (|wand_1#sm| arg1@@5 arg2@@5 arg3@@5 arg4@@5) (WandMaskField_7449 (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_7449 (|wand_1#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5)))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_16996_17001) ) (! (= (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_16983_53) ) (! (= (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_16983_1696) ) (! (= (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_17012_17013) ) (! (= (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_16983_7485) ) (! (= (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_16122_16127) ) (! (= (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_16107_53) ) (! (= (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_16107_1215) ) (! (= (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_16140_16141) ) (! (= (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_16107_7485) ) (! (= (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_17690_17695) ) (! (= (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_7488_53) ) (! (= (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_7488_1215) ) (! (= (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_17677_17678) ) (! (= (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_7488_7485) ) (! (= (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_7484_16127) ) (! (= (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_12777_53) ) (! (= (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_7484_1215) ) (! (= (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_7484_7489) ) (! (= (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_12790_12791) ) (! (= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12738) (SummandMask1 T@PolymorphicMapType_12738) (SummandMask2 T@PolymorphicMapType_12738) (o_2@@79 T@Ref) (f_4@@79 T@Field_16996_17001) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12738) (SummandMask1@@0 T@PolymorphicMapType_12738) (SummandMask2@@0 T@PolymorphicMapType_12738) (o_2@@80 T@Ref) (f_4@@80 T@Field_16983_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12738) (SummandMask1@@1 T@PolymorphicMapType_12738) (SummandMask2@@1 T@PolymorphicMapType_12738) (o_2@@81 T@Ref) (f_4@@81 T@Field_16983_1696) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12738) (SummandMask1@@2 T@PolymorphicMapType_12738) (SummandMask2@@2 T@PolymorphicMapType_12738) (o_2@@82 T@Ref) (f_4@@82 T@Field_17012_17013) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12738) (SummandMask1@@3 T@PolymorphicMapType_12738) (SummandMask2@@3 T@PolymorphicMapType_12738) (o_2@@83 T@Ref) (f_4@@83 T@Field_16983_7485) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12738) (SummandMask1@@4 T@PolymorphicMapType_12738) (SummandMask2@@4 T@PolymorphicMapType_12738) (o_2@@84 T@Ref) (f_4@@84 T@Field_16122_16127) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12738) (SummandMask1@@5 T@PolymorphicMapType_12738) (SummandMask2@@5 T@PolymorphicMapType_12738) (o_2@@85 T@Ref) (f_4@@85 T@Field_16107_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12738) (SummandMask1@@6 T@PolymorphicMapType_12738) (SummandMask2@@6 T@PolymorphicMapType_12738) (o_2@@86 T@Ref) (f_4@@86 T@Field_16107_1215) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12738) (SummandMask1@@7 T@PolymorphicMapType_12738) (SummandMask2@@7 T@PolymorphicMapType_12738) (o_2@@87 T@Ref) (f_4@@87 T@Field_16140_16141) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12738) (SummandMask1@@8 T@PolymorphicMapType_12738) (SummandMask2@@8 T@PolymorphicMapType_12738) (o_2@@88 T@Ref) (f_4@@88 T@Field_16107_7485) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_12738) (SummandMask1@@9 T@PolymorphicMapType_12738) (SummandMask2@@9 T@PolymorphicMapType_12738) (o_2@@89 T@Ref) (f_4@@89 T@Field_17690_17695) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_12738) (SummandMask1@@10 T@PolymorphicMapType_12738) (SummandMask2@@10 T@PolymorphicMapType_12738) (o_2@@90 T@Ref) (f_4@@90 T@Field_7488_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_12738) (SummandMask1@@11 T@PolymorphicMapType_12738) (SummandMask2@@11 T@PolymorphicMapType_12738) (o_2@@91 T@Ref) (f_4@@91 T@Field_7488_1215) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_12738) (SummandMask1@@12 T@PolymorphicMapType_12738) (SummandMask2@@12 T@PolymorphicMapType_12738) (o_2@@92 T@Ref) (f_4@@92 T@Field_17677_17678) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_12738) (SummandMask1@@13 T@PolymorphicMapType_12738) (SummandMask2@@13 T@PolymorphicMapType_12738) (o_2@@93 T@Ref) (f_4@@93 T@Field_7488_7485) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_12738) (SummandMask1@@14 T@PolymorphicMapType_12738) (SummandMask2@@14 T@PolymorphicMapType_12738) (o_2@@94 T@Ref) (f_4@@94 T@Field_7484_16127) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_12738) (SummandMask1@@15 T@PolymorphicMapType_12738) (SummandMask2@@15 T@PolymorphicMapType_12738) (o_2@@95 T@Ref) (f_4@@95 T@Field_12777_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_12738) (SummandMask1@@16 T@PolymorphicMapType_12738) (SummandMask2@@16 T@PolymorphicMapType_12738) (o_2@@96 T@Ref) (f_4@@96 T@Field_7484_1215) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_12738) (SummandMask1@@17 T@PolymorphicMapType_12738) (SummandMask2@@17 T@PolymorphicMapType_12738) (o_2@@97 T@Ref) (f_4@@97 T@Field_7484_7489) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_12738) (SummandMask1@@18 T@PolymorphicMapType_12738) (SummandMask2@@18 T@PolymorphicMapType_12738) (o_2@@98 T@Ref) (f_4@@98 T@Field_12790_12791) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_7488_7489 (P x@@3)) 0)
 :qid |stdinbpl.268:15|
 :skolemid |38|
 :pattern ( (P x@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12717) (o_1 T@Ref) (f_9 T@Field_16983_1696) (v Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@39) (store (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@39) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@39) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@39) (store (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@39) o_1 f_9 v)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12717) (o_1@@0 T@Ref) (f_9@@0 T@Field_17012_17013) (v@@0 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@40) (store (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@40) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@40) (store (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@40) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@40) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12717) (o_1@@1 T@Ref) (f_9@@1 T@Field_16996_17001) (v@@1 T@PolymorphicMapType_13266) ) (! (succHeap Heap@@41 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@41) (store (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@41) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@41) (store (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@41) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@41) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12717) (o_1@@2 T@Ref) (f_9@@2 T@Field_16983_7485) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@42) (store (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@42) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@42) (store (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@42) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@42) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12717) (o_1@@3 T@Ref) (f_9@@3 T@Field_16983_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@43) (store (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@43) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@43) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@43) (store (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@43) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12717) (o_1@@4 T@Ref) (f_9@@4 T@Field_7488_1215) (v@@4 Int) ) (! (succHeap Heap@@44 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@44) (store (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@44) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@44) (store (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@44) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@44) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_12717) (o_1@@5 T@Ref) (f_9@@5 T@Field_17677_17678) (v@@5 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@45) (store (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@45) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@45) (store (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@45) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@45) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12717) (o_1@@6 T@Ref) (f_9@@6 T@Field_17690_17695) (v@@6 T@PolymorphicMapType_13266) ) (! (succHeap Heap@@46 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@46) (store (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@46) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@46) (store (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@46) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@46) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12717) (o_1@@7 T@Ref) (f_9@@7 T@Field_7488_7485) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@47) (store (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@47) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@47) (store (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@47) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@47) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12717) (o_1@@8 T@Ref) (f_9@@8 T@Field_7488_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@48) (store (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@48) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@48) (store (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@48) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@48) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12717) (o_1@@9 T@Ref) (f_9@@9 T@Field_16107_1215) (v@@9 Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@49) (store (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@49) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@49) (store (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@49) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@49) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12717) (o_1@@10 T@Ref) (f_9@@10 T@Field_16140_16141) (v@@10 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@50) (store (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@50) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@50) (store (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@50) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@50) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12717) (o_1@@11 T@Ref) (f_9@@11 T@Field_16122_16127) (v@@11 T@PolymorphicMapType_13266) ) (! (succHeap Heap@@51 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@51) (store (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@51) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@51) (store (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@51) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@51) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12717) (o_1@@12 T@Ref) (f_9@@12 T@Field_16107_7485) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@52) (store (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@52) o_1@@12 f_9@@12 v@@12) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@52) (store (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@52) o_1@@12 f_9@@12 v@@12) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@52) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12717) (o_1@@13 T@Ref) (f_9@@13 T@Field_16107_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@53) (store (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@53) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@53) (store (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@53) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@53) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_12717) (o_1@@14 T@Ref) (f_9@@14 T@Field_7484_1215) (v@@14 Int) ) (! (succHeap Heap@@54 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@54) (store (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@54) o_1@@14 f_9@@14 v@@14) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@54) (store (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@54) o_1@@14 f_9@@14 v@@14) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@54) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_12717) (o_1@@15 T@Ref) (f_9@@15 T@Field_7484_7489) (v@@15 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@55) (store (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@55) o_1@@15 f_9@@15 v@@15) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@55) (store (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@55) o_1@@15 f_9@@15 v@@15) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@55) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_12717) (o_1@@16 T@Ref) (f_9@@16 T@Field_7484_16127) (v@@16 T@PolymorphicMapType_13266) ) (! (succHeap Heap@@56 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@56) (store (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@56) o_1@@16 f_9@@16 v@@16) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@56) (store (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@56) o_1@@16 f_9@@16 v@@16) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@56) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_12717) (o_1@@17 T@Ref) (f_9@@17 T@Field_12790_12791) (v@@17 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@57) (store (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@57) o_1@@17 f_9@@17 v@@17) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@57) (store (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@57) o_1@@17 f_9@@17 v@@17) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@57) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_12717) (o_1@@18 T@Ref) (f_9@@18 T@Field_12777_53) (v@@18 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_12717 (store (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@58) o_1@@18 f_9@@18 v@@18) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12717 (store (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@58) o_1@@18 f_9@@18 v@@18) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@58) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@58)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_7488 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.260:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_7488 (P x@@4)))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) (arg4@@6 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg7@@0 Real) ) (! (= (|wand#sm| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_7373 (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_7373 (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((o_1@@19 T@Ref) (f_2 T@Field_12790_12791) (Heap@@59 T@PolymorphicMapType_12717) ) (!  (=> (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@59) o_1@@19 $allocated) (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@59) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@59) o_1@@19 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@59) o_1@@19 f_2))
)))
(assert (forall ((p@@4 T@Field_17677_17678) (v_1@@3 T@FrameType) (q T@Field_17677_17678) (w@@3 T@FrameType) (r T@Field_17677_17678) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17677_17677 p@@4 v_1@@3 q w@@3) (InsidePredicate_17677_17677 q w@@3 r u)) (InsidePredicate_17677_17677 p@@4 v_1@@3 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_17677 p@@4 v_1@@3 q w@@3) (InsidePredicate_17677_17677 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_17677_17678) (v_1@@4 T@FrameType) (q@@0 T@Field_17677_17678) (w@@4 T@FrameType) (r@@0 T@Field_17012_17013) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_17677 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_17677_16983 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_17677_16983 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_17677 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_17677_16983 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_17677_17678) (v_1@@5 T@FrameType) (q@@1 T@Field_17677_17678) (w@@5 T@FrameType) (r@@1 T@Field_16140_16141) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_17677 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_17677_16107 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_17677_16107 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_17677 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_17677_16107 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_17677_17678) (v_1@@6 T@FrameType) (q@@2 T@Field_17677_17678) (w@@6 T@FrameType) (r@@2 T@Field_7484_7489) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_17677 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_17677_12777 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_17677_12777 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_17677 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_17677_12777 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_17677_17678) (v_1@@7 T@FrameType) (q@@3 T@Field_17012_17013) (w@@7 T@FrameType) (r@@3 T@Field_17677_17678) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16983 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_16983_17677 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_17677_17677 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16983 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_16983_17677 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_17677_17678) (v_1@@8 T@FrameType) (q@@4 T@Field_17012_17013) (w@@8 T@FrameType) (r@@4 T@Field_17012_17013) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16983 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_16983_16983 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_17677_16983 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16983 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_16983_16983 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_17677_17678) (v_1@@9 T@FrameType) (q@@5 T@Field_17012_17013) (w@@9 T@FrameType) (r@@5 T@Field_16140_16141) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16983 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_16983_16107 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_17677_16107 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16983 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_16983_16107 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_17677_17678) (v_1@@10 T@FrameType) (q@@6 T@Field_17012_17013) (w@@10 T@FrameType) (r@@6 T@Field_7484_7489) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16983 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_16983_12777 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_17677_12777 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16983 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_16983_12777 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_17677_17678) (v_1@@11 T@FrameType) (q@@7 T@Field_16140_16141) (w@@11 T@FrameType) (r@@7 T@Field_17677_17678) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16107 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_16107_17677 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_17677_17677 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16107 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_16107_17677 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_17677_17678) (v_1@@12 T@FrameType) (q@@8 T@Field_16140_16141) (w@@12 T@FrameType) (r@@8 T@Field_17012_17013) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16107 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_16107_16983 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_17677_16983 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16107 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_16107_16983 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_17677_17678) (v_1@@13 T@FrameType) (q@@9 T@Field_16140_16141) (w@@13 T@FrameType) (r@@9 T@Field_16140_16141) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16107 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_16107_16107 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_17677_16107 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16107 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_16107_16107 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_17677_17678) (v_1@@14 T@FrameType) (q@@10 T@Field_16140_16141) (w@@14 T@FrameType) (r@@10 T@Field_7484_7489) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_16107 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_16107_12777 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_17677_12777 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_16107 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_16107_12777 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_17677_17678) (v_1@@15 T@FrameType) (q@@11 T@Field_7484_7489) (w@@15 T@FrameType) (r@@11 T@Field_17677_17678) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_12777 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_12777_17677 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_17677_17677 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_12777 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_12777_17677 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_17677_17678) (v_1@@16 T@FrameType) (q@@12 T@Field_7484_7489) (w@@16 T@FrameType) (r@@12 T@Field_17012_17013) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_12777 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_12777_16983 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_17677_16983 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_12777 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_12777_16983 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_17677_17678) (v_1@@17 T@FrameType) (q@@13 T@Field_7484_7489) (w@@17 T@FrameType) (r@@13 T@Field_16140_16141) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_12777 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_12777_16107 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_17677_16107 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_12777 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_12777_16107 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_17677_17678) (v_1@@18 T@FrameType) (q@@14 T@Field_7484_7489) (w@@18 T@FrameType) (r@@14 T@Field_7484_7489) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_17677_12777 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_12777_12777 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_17677_12777 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17677_12777 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_12777_12777 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_17012_17013) (v_1@@19 T@FrameType) (q@@15 T@Field_17677_17678) (w@@19 T@FrameType) (r@@15 T@Field_17677_17678) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_17677 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_17677_17677 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_16983_17677 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_17677 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_17677_17677 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_17012_17013) (v_1@@20 T@FrameType) (q@@16 T@Field_17677_17678) (w@@20 T@FrameType) (r@@16 T@Field_17012_17013) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_17677 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_17677_16983 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_16983_16983 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_17677 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_17677_16983 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_17012_17013) (v_1@@21 T@FrameType) (q@@17 T@Field_17677_17678) (w@@21 T@FrameType) (r@@17 T@Field_16140_16141) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_17677 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_17677_16107 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_16983_16107 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_17677 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_17677_16107 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_17012_17013) (v_1@@22 T@FrameType) (q@@18 T@Field_17677_17678) (w@@22 T@FrameType) (r@@18 T@Field_7484_7489) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_17677 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_17677_12777 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_16983_12777 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_17677 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_17677_12777 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_17012_17013) (v_1@@23 T@FrameType) (q@@19 T@Field_17012_17013) (w@@23 T@FrameType) (r@@19 T@Field_17677_17678) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16983 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_16983_17677 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_16983_17677 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16983 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_16983_17677 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_17012_17013) (v_1@@24 T@FrameType) (q@@20 T@Field_17012_17013) (w@@24 T@FrameType) (r@@20 T@Field_17012_17013) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16983 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_16983_16983 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_16983_16983 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16983 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_16983_16983 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_17012_17013) (v_1@@25 T@FrameType) (q@@21 T@Field_17012_17013) (w@@25 T@FrameType) (r@@21 T@Field_16140_16141) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16983 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_16983_16107 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_16983_16107 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16983 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_16983_16107 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_17012_17013) (v_1@@26 T@FrameType) (q@@22 T@Field_17012_17013) (w@@26 T@FrameType) (r@@22 T@Field_7484_7489) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16983 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_16983_12777 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_16983_12777 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16983 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_16983_12777 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_17012_17013) (v_1@@27 T@FrameType) (q@@23 T@Field_16140_16141) (w@@27 T@FrameType) (r@@23 T@Field_17677_17678) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16107 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_16107_17677 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_16983_17677 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16107 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_16107_17677 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_17012_17013) (v_1@@28 T@FrameType) (q@@24 T@Field_16140_16141) (w@@28 T@FrameType) (r@@24 T@Field_17012_17013) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16107 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_16107_16983 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_16983_16983 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16107 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_16107_16983 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_17012_17013) (v_1@@29 T@FrameType) (q@@25 T@Field_16140_16141) (w@@29 T@FrameType) (r@@25 T@Field_16140_16141) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16107 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_16107_16107 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_16983_16107 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16107 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_16107_16107 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_17012_17013) (v_1@@30 T@FrameType) (q@@26 T@Field_16140_16141) (w@@30 T@FrameType) (r@@26 T@Field_7484_7489) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_16107 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_16107_12777 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_16983_12777 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_16107 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_16107_12777 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_17012_17013) (v_1@@31 T@FrameType) (q@@27 T@Field_7484_7489) (w@@31 T@FrameType) (r@@27 T@Field_17677_17678) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_12777 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_12777_17677 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_16983_17677 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_12777 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_12777_17677 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_17012_17013) (v_1@@32 T@FrameType) (q@@28 T@Field_7484_7489) (w@@32 T@FrameType) (r@@28 T@Field_17012_17013) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_12777 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_12777_16983 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_16983_16983 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_12777 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_12777_16983 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_17012_17013) (v_1@@33 T@FrameType) (q@@29 T@Field_7484_7489) (w@@33 T@FrameType) (r@@29 T@Field_16140_16141) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_12777 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_12777_16107 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_16983_16107 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_12777 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_12777_16107 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_17012_17013) (v_1@@34 T@FrameType) (q@@30 T@Field_7484_7489) (w@@34 T@FrameType) (r@@30 T@Field_7484_7489) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_16983_12777 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_12777_12777 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_16983_12777 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16983_12777 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_12777_12777 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_16140_16141) (v_1@@35 T@FrameType) (q@@31 T@Field_17677_17678) (w@@35 T@FrameType) (r@@31 T@Field_17677_17678) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_17677 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_17677_17677 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_16107_17677 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_17677 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_17677_17677 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_16140_16141) (v_1@@36 T@FrameType) (q@@32 T@Field_17677_17678) (w@@36 T@FrameType) (r@@32 T@Field_17012_17013) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_17677 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_17677_16983 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_16107_16983 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_17677 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_17677_16983 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_16140_16141) (v_1@@37 T@FrameType) (q@@33 T@Field_17677_17678) (w@@37 T@FrameType) (r@@33 T@Field_16140_16141) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_17677 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_17677_16107 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_16107_16107 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_17677 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_17677_16107 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_16140_16141) (v_1@@38 T@FrameType) (q@@34 T@Field_17677_17678) (w@@38 T@FrameType) (r@@34 T@Field_7484_7489) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_17677 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_17677_12777 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_16107_12777 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_17677 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_17677_12777 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_16140_16141) (v_1@@39 T@FrameType) (q@@35 T@Field_17012_17013) (w@@39 T@FrameType) (r@@35 T@Field_17677_17678) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16983 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_16983_17677 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_16107_17677 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16983 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_16983_17677 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_16140_16141) (v_1@@40 T@FrameType) (q@@36 T@Field_17012_17013) (w@@40 T@FrameType) (r@@36 T@Field_17012_17013) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16983 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_16983_16983 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_16107_16983 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16983 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_16983_16983 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_16140_16141) (v_1@@41 T@FrameType) (q@@37 T@Field_17012_17013) (w@@41 T@FrameType) (r@@37 T@Field_16140_16141) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16983 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_16983_16107 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_16107_16107 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16983 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_16983_16107 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_16140_16141) (v_1@@42 T@FrameType) (q@@38 T@Field_17012_17013) (w@@42 T@FrameType) (r@@38 T@Field_7484_7489) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16983 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_16983_12777 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_16107_12777 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16983 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_16983_12777 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_16140_16141) (v_1@@43 T@FrameType) (q@@39 T@Field_16140_16141) (w@@43 T@FrameType) (r@@39 T@Field_17677_17678) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16107 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_16107_17677 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_16107_17677 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16107 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_16107_17677 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_16140_16141) (v_1@@44 T@FrameType) (q@@40 T@Field_16140_16141) (w@@44 T@FrameType) (r@@40 T@Field_17012_17013) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16107 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_16107_16983 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_16107_16983 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16107 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_16107_16983 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_16140_16141) (v_1@@45 T@FrameType) (q@@41 T@Field_16140_16141) (w@@45 T@FrameType) (r@@41 T@Field_16140_16141) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16107 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_16107_16107 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_16107_16107 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16107 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_16107_16107 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_16140_16141) (v_1@@46 T@FrameType) (q@@42 T@Field_16140_16141) (w@@46 T@FrameType) (r@@42 T@Field_7484_7489) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_16107 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_16107_12777 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_16107_12777 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_16107 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_16107_12777 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_16140_16141) (v_1@@47 T@FrameType) (q@@43 T@Field_7484_7489) (w@@47 T@FrameType) (r@@43 T@Field_17677_17678) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_12777 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_12777_17677 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_16107_17677 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_12777 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_12777_17677 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_16140_16141) (v_1@@48 T@FrameType) (q@@44 T@Field_7484_7489) (w@@48 T@FrameType) (r@@44 T@Field_17012_17013) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_12777 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_12777_16983 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_16107_16983 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_12777 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_12777_16983 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_16140_16141) (v_1@@49 T@FrameType) (q@@45 T@Field_7484_7489) (w@@49 T@FrameType) (r@@45 T@Field_16140_16141) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_12777 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_12777_16107 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_16107_16107 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_12777 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_12777_16107 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_16140_16141) (v_1@@50 T@FrameType) (q@@46 T@Field_7484_7489) (w@@50 T@FrameType) (r@@46 T@Field_7484_7489) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_16107_12777 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_12777_12777 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_16107_12777 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16107_12777 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_12777_12777 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_7484_7489) (v_1@@51 T@FrameType) (q@@47 T@Field_17677_17678) (w@@51 T@FrameType) (r@@47 T@Field_17677_17678) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_17677 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_17677_17677 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_12777_17677 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_17677 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_17677_17677 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_7484_7489) (v_1@@52 T@FrameType) (q@@48 T@Field_17677_17678) (w@@52 T@FrameType) (r@@48 T@Field_17012_17013) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_17677 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_17677_16983 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_12777_16983 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_17677 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_17677_16983 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_7484_7489) (v_1@@53 T@FrameType) (q@@49 T@Field_17677_17678) (w@@53 T@FrameType) (r@@49 T@Field_16140_16141) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_17677 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_17677_16107 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_12777_16107 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_17677 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_17677_16107 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_7484_7489) (v_1@@54 T@FrameType) (q@@50 T@Field_17677_17678) (w@@54 T@FrameType) (r@@50 T@Field_7484_7489) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_17677 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_17677_12777 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_12777_12777 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_17677 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_17677_12777 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_7484_7489) (v_1@@55 T@FrameType) (q@@51 T@Field_17012_17013) (w@@55 T@FrameType) (r@@51 T@Field_17677_17678) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16983 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_16983_17677 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_12777_17677 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16983 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_16983_17677 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_7484_7489) (v_1@@56 T@FrameType) (q@@52 T@Field_17012_17013) (w@@56 T@FrameType) (r@@52 T@Field_17012_17013) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16983 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_16983_16983 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_12777_16983 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16983 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_16983_16983 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_7484_7489) (v_1@@57 T@FrameType) (q@@53 T@Field_17012_17013) (w@@57 T@FrameType) (r@@53 T@Field_16140_16141) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16983 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_16983_16107 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_12777_16107 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16983 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_16983_16107 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_7484_7489) (v_1@@58 T@FrameType) (q@@54 T@Field_17012_17013) (w@@58 T@FrameType) (r@@54 T@Field_7484_7489) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16983 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_16983_12777 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_12777_12777 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16983 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_16983_12777 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_7484_7489) (v_1@@59 T@FrameType) (q@@55 T@Field_16140_16141) (w@@59 T@FrameType) (r@@55 T@Field_17677_17678) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16107 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_16107_17677 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_12777_17677 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16107 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_16107_17677 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_7484_7489) (v_1@@60 T@FrameType) (q@@56 T@Field_16140_16141) (w@@60 T@FrameType) (r@@56 T@Field_17012_17013) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16107 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_16107_16983 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_12777_16983 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16107 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_16107_16983 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_7484_7489) (v_1@@61 T@FrameType) (q@@57 T@Field_16140_16141) (w@@61 T@FrameType) (r@@57 T@Field_16140_16141) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16107 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_16107_16107 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_12777_16107 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16107 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_16107_16107 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_7484_7489) (v_1@@62 T@FrameType) (q@@58 T@Field_16140_16141) (w@@62 T@FrameType) (r@@58 T@Field_7484_7489) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_16107 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_16107_12777 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_12777_12777 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_16107 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_16107_12777 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_7484_7489) (v_1@@63 T@FrameType) (q@@59 T@Field_7484_7489) (w@@63 T@FrameType) (r@@59 T@Field_17677_17678) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_12777 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_12777_17677 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_12777_17677 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_12777 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_12777_17677 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_7484_7489) (v_1@@64 T@FrameType) (q@@60 T@Field_7484_7489) (w@@64 T@FrameType) (r@@60 T@Field_17012_17013) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_12777 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_12777_16983 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_12777_16983 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_12777 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_12777_16983 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_7484_7489) (v_1@@65 T@FrameType) (q@@61 T@Field_7484_7489) (w@@65 T@FrameType) (r@@61 T@Field_16140_16141) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_12777 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_12777_16107 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_12777_16107 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_12777 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_12777_16107 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_7484_7489) (v_1@@66 T@FrameType) (q@@62 T@Field_7484_7489) (w@@66 T@FrameType) (r@@62 T@Field_7484_7489) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_12777_12777 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_12777_12777 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_12777_12777 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12777_12777 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_12777_12777 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 T@Ref) (arg4@@7 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) (arg7@@1 Real) ) (! (IsWandField_7354_1215 (wand arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@8 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) (arg7@@2 Real) ) (! (IsWandField_7373_7374 (|wand#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) (arg7@@3 Real) ) (!  (not (IsPredicateField_7354_1215 (wand arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Real) (arg3@@10 T@Ref) (arg4@@10 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) (arg7@@4 Real) ) (!  (not (IsPredicateField_7373_7374 (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@11 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) (arg7@@5 Real) ) (! (= (getPredWandId_7354_1215 (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@5 arg6@@5 arg7@@5)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@12 Real) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 Real) ) (!  (=> (= (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0)) (and (= arg1@@12 arg1_2@@0) (and (= arg2@@12 arg2_2@@0) (and (= arg3@@12 arg3_2@@0) (= arg4@@12 arg4_2@@0)))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_12@20 () Bool)
(declare-fun b_17@6 () Bool)
(declare-fun neededTransfer@13 () Real)
(declare-fun Used_8Mask@3 () T@PolymorphicMapType_12738)
(declare-fun x@@5 () T@Ref)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_18@0 () Bool)
(declare-fun b_18@1 () Bool)
(declare-fun Result_7Heap () T@PolymorphicMapType_12717)
(declare-fun Result_7Mask () T@PolymorphicMapType_12738)
(declare-fun b_18@2 () Bool)
(declare-fun Ops_3Mask () T@PolymorphicMapType_12738)
(declare-fun b_18@3 () Bool)
(declare-fun Ops_3Heap@5 () T@PolymorphicMapType_12717)
(declare-fun Used_8Heap@0 () T@PolymorphicMapType_12717)
(declare-fun b_18@4 () Bool)
(declare-fun b_12@21 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_12738)
(declare-fun Mask@7 () T@PolymorphicMapType_12738)
(declare-fun Heap@7 () T@PolymorphicMapType_12717)
(declare-fun takeTransfer@5 () Real)
(declare-fun Heap@5 () T@PolymorphicMapType_12717)
(declare-fun Mask@5 () T@PolymorphicMapType_12738)
(declare-fun neededTransfer@11 () Real)
(declare-fun b_17@3 () Bool)
(declare-fun Used_8Mask@1 () T@PolymorphicMapType_12738)
(declare-fun neededTransfer@12 () Real)
(declare-fun Used_8Mask@2 () T@PolymorphicMapType_12738)
(declare-fun b_17@4 () Bool)
(declare-fun b_17@5 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_12738)
(declare-fun Heap@6 () T@PolymorphicMapType_12717)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun b_17@0 () Bool)
(declare-fun neededTransfer@9 () Real)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_8Mask@0 () T@PolymorphicMapType_12738)
(declare-fun b_17@1 () Bool)
(declare-fun b_17@2 () Bool)
(declare-fun Ops_3Mask@10 () T@PolymorphicMapType_12738)
(declare-fun Ops_3Mask@9 () T@PolymorphicMapType_12738)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_17 () Bool)
(declare-fun b_12@12 () Bool)
(declare-fun b_15@6 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_7Mask@3 () T@PolymorphicMapType_12738)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_16@0 () Bool)
(declare-fun b_16@1 () Bool)
(declare-fun Result_6Heap () T@PolymorphicMapType_12717)
(declare-fun Result_6Mask () T@PolymorphicMapType_12738)
(declare-fun b_16@2 () Bool)
(declare-fun Ops_3Mask@7 () T@PolymorphicMapType_12738)
(declare-fun b_16@3 () Bool)
(declare-fun Used_7Heap@0 () T@PolymorphicMapType_12717)
(declare-fun b_16@4 () Bool)
(declare-fun b_12@13 () Bool)
(declare-fun b_12@14 () Bool)
(declare-fun b_12@15 () Bool)
(declare-fun perm@1 () Real)
(declare-fun b_12@16 () Bool)
(declare-fun Ops_3Mask@8 () T@PolymorphicMapType_12738)
(declare-fun b_12@17 () Bool)
(declare-fun b_12@18 () Bool)
(declare-fun b_12@19 () Bool)
(declare-fun Heap@4 () T@PolymorphicMapType_12717)
(declare-fun Mask@4 () T@PolymorphicMapType_12738)
(declare-fun takeTransfer@3 () Real)
(declare-fun neededTransfer@6 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_12738)
(declare-fun Heap@2 () T@PolymorphicMapType_12717)
(declare-fun b_15@3 () Bool)
(declare-fun Used_7Mask@1 () T@PolymorphicMapType_12738)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_7Mask@2 () T@PolymorphicMapType_12738)
(declare-fun b_15@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_12738)
(declare-fun b_15@5 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_12738)
(declare-fun newPMask@0 () T@PolymorphicMapType_13266)
(declare-fun Heap@3 () T@PolymorphicMapType_12717)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_3Mask@5 () T@PolymorphicMapType_12738)
(declare-fun b_15@0 () Bool)
(declare-fun neededTransfer@5 () Real)
(declare-fun Used_7Mask@0 () T@PolymorphicMapType_12738)
(declare-fun b_15@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_12738)
(declare-fun b_15@2 () Bool)
(declare-fun Ops_3Mask@6 () T@PolymorphicMapType_12738)
(declare-fun maskTransfer@2 () Real)
(declare-fun FrameFragment_7485 (T@Ref) T@FrameType)
(declare-fun b_15 () Bool)
(declare-fun Ops_3Heap@4 () T@PolymorphicMapType_12717)
(declare-fun Ops_3Heap@3 () T@PolymorphicMapType_12717)
(declare-fun Ops_3Mask@4 () T@PolymorphicMapType_12738)
(declare-fun b_12@11 () Bool)
(declare-fun b_12@10 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_12738)
(declare-fun Heap@1 () T@PolymorphicMapType_12717)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_12717)
(declare-fun Ops_3Heap@1 () T@PolymorphicMapType_12717)
(declare-fun Ops_3Heap@2 () T@PolymorphicMapType_12717)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun b_12@5 () Bool)
(declare-fun b_13@6 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_6Mask@3 () T@PolymorphicMapType_12738)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_14@0 () Bool)
(declare-fun b_14@1 () Bool)
(declare-fun Result_5Heap () T@PolymorphicMapType_12717)
(declare-fun Result_5Mask () T@PolymorphicMapType_12738)
(declare-fun b_14@2 () Bool)
(declare-fun Ops_3Mask@3 () T@PolymorphicMapType_12738)
(declare-fun b_14@3 () Bool)
(declare-fun Used_6Heap@0 () T@PolymorphicMapType_12717)
(declare-fun b_14@4 () Bool)
(declare-fun b_12@6 () Bool)
(declare-fun b_12@7 () Bool)
(declare-fun b_12@8 () Bool)
(declare-fun b_12@9 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun neededTransfer@2 () Real)
(declare-fun b_13@3 () Bool)
(declare-fun Used_6Mask@1 () T@PolymorphicMapType_12738)
(declare-fun Heap@@60 () T@PolymorphicMapType_12717)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_6Mask@2 () T@PolymorphicMapType_12738)
(declare-fun b_13@4 () Bool)
(declare-fun b_13@5 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_12738)
(declare-fun Heap@0 () T@PolymorphicMapType_12717)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_3Mask@1 () T@PolymorphicMapType_12738)
(declare-fun b_13@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun Used_6Mask@0 () T@PolymorphicMapType_12738)
(declare-fun b_13@1 () Bool)
(declare-fun b_13@2 () Bool)
(declare-fun Ops_3Mask@2 () T@PolymorphicMapType_12738)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_13 () Bool)
(declare-fun b_12@4 () Bool)
(declare-fun b_12@3 () Bool)
(declare-fun b_12@0 () Bool)
(declare-fun perm@0 () Real)
(declare-fun b_12@1 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_12738)
(declare-fun b_12@2 () Bool)
(declare-fun b_12 () Bool)
(declare-fun b_11@0 () Bool)
(declare-fun b_11 () Bool)
(declare-fun Used_5Heap@0 () T@PolymorphicMapType_12717)
(set-info :boogie-vc-id t02)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon44_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (and (and b_12@20 b_12@20) b_17@6) (and (= neededTransfer@13 0.0) (= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_8Mask@3) x@@5 f_7) initNeededTransfer@2)))) (=> (=> (and (and b_12@20 b_12@20) b_17@6) (and (= neededTransfer@13 0.0) (= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_8Mask@3) x@@5 f_7) initNeededTransfer@2))) (=> (= b_18@0  (and b_12@20 b_17@6)) (=> (and (= b_18@1  (and b_18@0 (state Result_7Heap Result_7Mask))) (= b_18@2  (and b_18@1 (sumMask Result_7Mask Ops_3Mask Used_8Mask@3)))) (=> (and (and (and (= b_18@3  (and (and b_18@2 (IdenticalOnKnownLocations Ops_3Heap@5 Result_7Heap Ops_3Mask)) (IdenticalOnKnownLocations Used_8Heap@0 Result_7Heap Used_8Mask@3))) (= b_18@4  (and b_18@3 (state Result_7Heap Result_7Mask)))) (and (= b_12@21  (and b_12@20 b_18@4)) (= Mask@8 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Mask@7) (store (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@7) null (wand_1 x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))) (+ (select (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@7) null (wand_1 x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4)))) FullPerm)) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Mask@7) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Mask@7))))) (and (and (state Heap@7 Mask@8) (state Heap@7 Mask@8)) (and (state Heap@7 Mask@8) (= (ControlFlow 0 2) (- 0 1))))) false)))))))
(let ((anon66_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= Heap@7 Heap@5) (= Mask@7 Mask@5)) (=> (and (and (= neededTransfer@13 neededTransfer@11) (= b_17@6 b_17@3)) (and (= Used_8Mask@3 Used_8Mask@1) (= (ControlFlow 0 6) 2))) anon44_correct)))))
(let ((anon66_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (and (= neededTransfer@12 (- neededTransfer@11 takeTransfer@5)) (= Used_8Mask@2 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_8Mask@1) x@@5 f_7 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_8Mask@1) x@@5 f_7) takeTransfer@5)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Used_8Mask@1) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Used_8Mask@1)))) (and (= b_17@4  (and b_17@3 (state Used_8Heap@0 Used_8Mask@2))) (= b_17@5  (and b_17@4 (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@5) x@@5 f_7) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Used_8Heap@0) x@@5 f_7)))))) (=> (and (and (and (= Mask@6 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@5) x@@5 f_7 (- (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@5) x@@5 f_7) takeTransfer@5)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Mask@5) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Mask@5))) (= Heap@6 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@5) (store (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))) (PolymorphicMapType_13266 (store (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) x@@5 f_7 true) (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@5) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))))) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@5) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@5)))) (and (= Heap@7 Heap@6) (= Mask@7 Mask@6))) (and (and (= neededTransfer@13 neededTransfer@12) (= b_17@6 b_17@5)) (and (= Used_8Mask@3 Used_8Mask@2) (= (ControlFlow 0 5) 2)))) anon44_correct)))))
(let ((anon65_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@11) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 8) 5) anon66_Then_correct) (=> (= (ControlFlow 0 8) 6) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (and (<= neededTransfer@11 maskTransfer@5) (= takeTransfer@5 neededTransfer@11)) (and (=> (= (ControlFlow 0 7) 5) anon66_Then_correct) (=> (= (ControlFlow 0 7) 6) anon66_Else_correct)))))
(let ((anon64_Then_correct  (=> (and (and (and (and (and b_12@20 b_12@20) b_17@3) true) (> neededTransfer@11 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@5) x@@5 f_7))) (and (=> (= (ControlFlow 0 9) 7) anon65_Then_correct) (=> (= (ControlFlow 0 9) 8) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (not (and (and (and (and b_12@20 b_12@20) b_17@3) true) (> neededTransfer@11 0.0))) (=> (and (= Heap@7 Heap@5) (= Mask@7 Mask@5)) (=> (and (and (= neededTransfer@13 neededTransfer@11) (= b_17@6 b_17@3)) (and (= Used_8Mask@3 Used_8Mask@1) (= (ControlFlow 0 4) 2))) anon44_correct)))))
(let ((anon63_Else_correct  (=> (and (and (>= 0.0 takeTransfer@4) (= Used_8Mask@1 ZeroMask)) (and (= b_17@3 b_17@0) (= neededTransfer@11 neededTransfer@9))) (and (=> (= (ControlFlow 0 12) 9) anon64_Then_correct) (=> (= (ControlFlow 0 12) 4) anon64_Else_correct)))))
(let ((anon63_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (and (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@4)) (= Used_8Mask@0 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7) takeTransfer@4)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask)))) (and (= b_17@1  (and b_17@0 (state Used_8Heap@0 Used_8Mask@0))) (= b_17@2  (and b_17@1 (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Ops_3Heap@5) x@@5 f_7) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Used_8Heap@0) x@@5 f_7)))))) (and (and (= Ops_3Mask@10 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@9) x@@5 f_7 (- (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@9) x@@5 f_7) takeTransfer@4)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Ops_3Mask@9) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Ops_3Mask@9))) (= Used_8Mask@1 Used_8Mask@0)) (and (= b_17@3 b_17@2) (= neededTransfer@11 neededTransfer@10)))) (and (=> (= (ControlFlow 0 11) 9) anon64_Then_correct) (=> (= (ControlFlow 0 11) 4) anon64_Else_correct))))))
(let ((anon62_Else_correct  (=> (and (< maskTransfer@4 neededTransfer@9) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 14) 11) anon63_Then_correct) (=> (= (ControlFlow 0 14) 12) anon63_Else_correct)))))
(let ((anon62_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@4) (= takeTransfer@4 neededTransfer@9)) (and (=> (= (ControlFlow 0 13) 11) anon63_Then_correct) (=> (= (ControlFlow 0 13) 12) anon63_Else_correct)))))
(let ((anon61_Then_correct  (=> (and (and (and (and (and b_12@20 b_12@20) b_17@0) true) (> neededTransfer@9 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@9) x@@5 f_7))) (and (=> (= (ControlFlow 0 15) 13) anon62_Then_correct) (=> (= (ControlFlow 0 15) 14) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (and (not (and (and (and (and b_12@20 b_12@20) b_17@0) true) (> neededTransfer@9 0.0))) (= Used_8Mask@1 ZeroMask)) (and (= b_17@3 b_17@0) (= neededTransfer@11 neededTransfer@9))) (and (=> (= (ControlFlow 0 10) 9) anon64_Then_correct) (=> (= (ControlFlow 0 10) 4) anon64_Else_correct)))))
(let ((anon32_correct  (=> (= b_17@0  (and b_17 (state Used_8Heap@0 ZeroMask))) (=> (and (= neededTransfer@9 (/ (to_real 1) (to_real 4))) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7) neededTransfer@9))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (>= neededTransfer@9 0.0)) (=> (>= neededTransfer@9 0.0) (and (=> (= (ControlFlow 0 16) 15) anon61_Then_correct) (=> (= (ControlFlow 0 16) 10) anon61_Else_correct))))))))
(let ((anon31_correct  (and (=> (= (ControlFlow 0 19) (- 0 21)) (=> (and b_12@12 b_15@6) (and (= neededTransfer@8 0.0) (= (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Used_7Mask@3) null (P x@@5)) initNeededTransfer@1)))) (=> (=> (and b_12@12 b_15@6) (and (= neededTransfer@8 0.0) (= (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Used_7Mask@3) null (P x@@5)) initNeededTransfer@1))) (=> (= b_16@0  (and b_12@12 b_15@6)) (=> (and (and (and (= b_16@1  (and b_16@0 (state Result_6Heap Result_6Mask))) (= b_16@2  (and b_16@1 (sumMask Result_6Mask Ops_3Mask@7 Used_7Mask@3)))) (and (= b_16@3  (and (and b_16@2 (IdenticalOnKnownLocations Ops_3Heap@5 Result_6Heap Ops_3Mask@7)) (IdenticalOnKnownLocations Used_7Heap@0 Result_6Heap Used_7Mask@3))) (= b_16@4  (and b_16@3 (state Result_6Heap Result_6Mask))))) (and (and (= b_12@13  (and b_12@12 b_16@4)) (= b_12@14  (and b_12@13 b_15@6))) (and (= b_12@15  (and b_12@14 (= Used_7Heap@0 Ops_3Heap@5))) (= perm@1 (/ (to_real 1) (to_real 4)))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (= b_12@16  (and b_12@15 (=> (> perm@1 NoPerm) (not (= x@@5 null))))) (= Ops_3Mask@8 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@7) x@@5 f_7 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@7) x@@5 f_7) perm@1)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Ops_3Mask@7) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Ops_3Mask@7)))) (=> (and (and (and (= b_12@17  (and b_12@16 (state Ops_3Heap@5 Ops_3Mask@8))) (= b_12@18  (and b_12@17 (state Ops_3Heap@5 Ops_3Mask@8)))) (and (= b_12@19  (and b_12@18 (state Ops_3Heap@5 Ops_3Mask@8))) (= b_12@20 b_12@19))) (and (and (= Heap@5 Heap@4) (= Mask@5 Mask@4)) (and (= Ops_3Mask@9 Ops_3Mask@8) (= (ControlFlow 0 19) 16)))) anon32_correct))))))))))
(let ((anon60_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= neededTransfer@8 neededTransfer@6) (= Mask@4 Mask@2)) (=> (and (and (= Heap@4 Heap@2) (= b_15@6 b_15@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 24) 19))) anon31_correct)))))
(let ((anon60_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (= neededTransfer@7 (- neededTransfer@6 takeTransfer@3)) (= Used_7Mask@2 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_7Mask@1) (store (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Used_7Mask@1) null (P x@@5) (+ (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Used_7Mask@1) null (P x@@5)) takeTransfer@3)) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Used_7Mask@1) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Used_7Mask@1)))) (=> (and (and (= b_15@4  (and b_15@3 (state Used_7Heap@0 Used_7Mask@2))) (= TempMask@1 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) (store (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) null (P x@@5) FullPerm) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask)))) (and (= b_15@5  (and b_15@4 (IdenticalOnKnownLocations Heap@2 Used_7Heap@0 TempMask@1))) (= Mask@3 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Mask@2) (store (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@2) null (P x@@5) (- (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@2) null (P x@@5)) takeTransfer@3)) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Mask@2) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Mask@2))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_12790_12791) ) (!  (=> (or (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52 f_55) (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52 f_55)) (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| newPMask@0) o_52 f_55))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| newPMask@0) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_12777_53) ) (!  (=> (or (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@0 f_55@@0)) (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| newPMask@0) o_52@@0 f_55@@0))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| newPMask@0) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_7484_1215) ) (!  (=> (or (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@1 f_55@@1)) (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| newPMask@0) o_52@@1 f_55@@1))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| newPMask@0) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_7484_16127) ) (!  (=> (or (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@2 f_55@@2)) (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| newPMask@0) o_52@@2 f_55@@2))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| newPMask@0) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_7484_7489) ) (!  (=> (or (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@3 f_55@@3)) (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| newPMask@0) o_52@@3 f_55@@3))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| newPMask@0) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_16107_7485) ) (!  (=> (or (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@4 f_55@@4)) (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| newPMask@0) o_52@@4 f_55@@4))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| newPMask@0) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_16107_53) ) (!  (=> (or (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@5 f_55@@5)) (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| newPMask@0) o_52@@5 f_55@@5))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| newPMask@0) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_16107_1215) ) (!  (=> (or (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@6 f_55@@6)) (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| newPMask@0) o_52@@6 f_55@@6))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| newPMask@0) o_52@@6 f_55@@6))
))) (forall ((o_52@@7 T@Ref) (f_55@@7 T@Field_16122_16127) ) (!  (=> (or (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@7 f_55@@7) (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@7 f_55@@7)) (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| newPMask@0) o_52@@7 f_55@@7))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| newPMask@0) o_52@@7 f_55@@7))
))) (forall ((o_52@@8 T@Ref) (f_55@@8 T@Field_16140_16141) ) (!  (=> (or (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@8 f_55@@8) (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@8 f_55@@8)) (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| newPMask@0) o_52@@8 f_55@@8))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| newPMask@0) o_52@@8 f_55@@8))
))) (forall ((o_52@@9 T@Ref) (f_55@@9 T@Field_16983_7485) ) (!  (=> (or (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@9 f_55@@9) (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@9 f_55@@9)) (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| newPMask@0) o_52@@9 f_55@@9))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| newPMask@0) o_52@@9 f_55@@9))
))) (forall ((o_52@@10 T@Ref) (f_55@@10 T@Field_16983_53) ) (!  (=> (or (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@10 f_55@@10) (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@10 f_55@@10)) (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| newPMask@0) o_52@@10 f_55@@10))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| newPMask@0) o_52@@10 f_55@@10))
))) (forall ((o_52@@11 T@Ref) (f_55@@11 T@Field_16983_1696) ) (!  (=> (or (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@11 f_55@@11) (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@11 f_55@@11)) (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| newPMask@0) o_52@@11 f_55@@11))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| newPMask@0) o_52@@11 f_55@@11))
))) (forall ((o_52@@12 T@Ref) (f_55@@12 T@Field_16996_17001) ) (!  (=> (or (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@12 f_55@@12) (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@12 f_55@@12)) (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| newPMask@0) o_52@@12 f_55@@12))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| newPMask@0) o_52@@12 f_55@@12))
))) (forall ((o_52@@13 T@Ref) (f_55@@13 T@Field_17012_17013) ) (!  (=> (or (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@13 f_55@@13) (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@13 f_55@@13)) (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| newPMask@0) o_52@@13 f_55@@13))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| newPMask@0) o_52@@13 f_55@@13))
))) (forall ((o_52@@14 T@Ref) (f_55@@14 T@Field_7488_7485) ) (!  (=> (or (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@14 f_55@@14) (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@14 f_55@@14)) (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| newPMask@0) o_52@@14 f_55@@14))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| newPMask@0) o_52@@14 f_55@@14))
))) (forall ((o_52@@15 T@Ref) (f_55@@15 T@Field_7488_53) ) (!  (=> (or (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@15 f_55@@15) (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@15 f_55@@15)) (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| newPMask@0) o_52@@15 f_55@@15))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| newPMask@0) o_52@@15 f_55@@15))
))) (forall ((o_52@@16 T@Ref) (f_55@@16 T@Field_7488_1215) ) (!  (=> (or (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@16 f_55@@16) (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@16 f_55@@16)) (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| newPMask@0) o_52@@16 f_55@@16))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| newPMask@0) o_52@@16 f_55@@16))
))) (forall ((o_52@@17 T@Ref) (f_55@@17 T@Field_17690_17695) ) (!  (=> (or (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@17 f_55@@17) (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@17 f_55@@17)) (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| newPMask@0) o_52@@17 f_55@@17))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| newPMask@0) o_52@@17 f_55@@17))
))) (forall ((o_52@@18 T@Ref) (f_55@@18 T@Field_17677_17678) ) (!  (=> (or (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) o_52@@18 f_55@@18) (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) null (|P#sm| x@@5))) o_52@@18 f_55@@18)) (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| newPMask@0) o_52@@18 f_55@@18))
 :qid |stdinbpl.1074:39|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| newPMask@0) o_52@@18 f_55@@18))
))) (= Heap@3 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@2) (store (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@2) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))) newPMask@0) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@2) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@2)))) (and (= neededTransfer@8 neededTransfer@7) (= Mask@4 Mask@3))) (and (and (= Heap@4 Heap@3) (= b_15@6 b_15@5)) (and (= Used_7Mask@3 Used_7Mask@2) (= (ControlFlow 0 23) 19)))) anon31_correct))))))
(let ((anon59_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@6) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 26) 23) anon60_Then_correct) (=> (= (ControlFlow 0 26) 24) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (and (<= neededTransfer@6 maskTransfer@3) (= takeTransfer@3 neededTransfer@6)) (and (=> (= (ControlFlow 0 25) 23) anon60_Then_correct) (=> (= (ControlFlow 0 25) 24) anon60_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (and (and (and b_12@12 b_15@3) true) (> neededTransfer@6 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Mask@2) null (P x@@5)))) (and (=> (= (ControlFlow 0 27) 25) anon59_Then_correct) (=> (= (ControlFlow 0 27) 26) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (not (and (and (and b_12@12 b_15@3) true) (> neededTransfer@6 0.0))) (=> (and (= neededTransfer@8 neededTransfer@6) (= Mask@4 Mask@2)) (=> (and (and (= Heap@4 Heap@2) (= b_15@6 b_15@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 22) 19))) anon31_correct)))))
(let ((anon57_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_3Mask@7 Ops_3Mask@5) (= Used_7Mask@1 ZeroMask)) (and (= b_15@3 b_15@0) (= neededTransfer@6 FullPerm))) (and (=> (= (ControlFlow 0 30) 27) anon58_Then_correct) (=> (= (ControlFlow 0 30) 22) anon58_Else_correct))))))
(let ((anon57_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (= neededTransfer@5 (- FullPerm takeTransfer@2)) (= Used_7Mask@0 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) (store (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) null (P x@@5) (+ (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) null (P x@@5)) takeTransfer@2)) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask)))) (=> (and (and (and (= b_15@1  (and b_15@0 (state Used_7Heap@0 Used_7Mask@0))) (= TempMask@0 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) (store (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) null (P x@@5) FullPerm) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask)))) (and (= b_15@2  (and b_15@1 (IdenticalOnKnownLocations Ops_3Heap@5 Used_7Heap@0 TempMask@0))) (= Ops_3Mask@6 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@5) (store (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@5) null (P x@@5) (- (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@5) null (P x@@5)) takeTransfer@2)) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Ops_3Mask@5) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Ops_3Mask@5))))) (and (and (= Ops_3Mask@7 Ops_3Mask@6) (= Used_7Mask@1 Used_7Mask@0)) (and (= b_15@3 b_15@2) (= neededTransfer@6 neededTransfer@5)))) (and (=> (= (ControlFlow 0 29) 27) anon58_Then_correct) (=> (= (ControlFlow 0 29) 22) anon58_Else_correct)))))))
(let ((anon56_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 32) 29) anon57_Then_correct) (=> (= (ControlFlow 0 32) 30) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 31) 29) anon57_Then_correct) (=> (= (ControlFlow 0 31) 30) anon57_Else_correct)))))
(let ((anon55_Then_correct  (=> (and (and (and (and b_12@12 b_15@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@5) null (P x@@5)))) (and (=> (= (ControlFlow 0 33) 31) anon56_Then_correct) (=> (= (ControlFlow 0 33) 32) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (not (and (and (and b_12@12 b_15@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_3Mask@7 Ops_3Mask@5) (= Used_7Mask@1 ZeroMask)) (and (= b_15@3 b_15@0) (= neededTransfer@6 FullPerm))) (and (=> (= (ControlFlow 0 28) 27) anon58_Then_correct) (=> (= (ControlFlow 0 28) 22) anon58_Else_correct))))))
(let ((anon54_Then_correct  (=> b_12@12 (=> (and (and (|P#trigger_7488| Ops_3Heap@5 (P x@@5)) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Ops_3Heap@5) null (P x@@5)) (FrameFragment_7485 (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Ops_3Heap@5) x@@5 f_7)))) (and (= b_15@0  (and b_15 (state Used_7Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) null (P x@@5)) FullPerm)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 34) 33) anon55_Then_correct) (=> (= (ControlFlow 0 34) 28) anon55_Else_correct))))))))
(let ((anon54_Else_correct  (=> (and (not b_12@12) (= b_12@20 b_12@12)) (=> (and (and (= Heap@5 Heap@2) (= Mask@5 Mask@2)) (and (= Ops_3Mask@9 Ops_3Mask@5) (= (ControlFlow 0 18) 16))) anon32_correct))))
(let ((anon17_correct  (=> (and (and (and (= Ops_3Heap@4 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Ops_3Heap@3) (store (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5) (PolymorphicMapType_13266 (store (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) x@@5 f_7 true) (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))) (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@3) null (|P#sm| x@@5))))) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Ops_3Heap@3) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Ops_3Heap@3))) (state Ops_3Heap@4 Ops_3Mask@4)) (and (= b_12@11  (and b_12@10 (state Ops_3Heap@4 Ops_3Mask@4))) (= Ops_3Heap@5 Ops_3Heap@4))) (and (and (= b_12@12 b_12@11) (= Mask@2 Mask@1)) (and (= Ops_3Mask@5 Ops_3Mask@4) (= Heap@2 Heap@1)))) (and (=> (= (ControlFlow 0 37) 34) anon54_Then_correct) (=> (= (ControlFlow 0 37) 18) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (HasDirectPerm_7488_7489 Ops_3Mask@4 null (P x@@5)) (=> (and (= Ops_3Heap@3 Ops_3Heap@0) (= (ControlFlow 0 39) 37)) anon17_correct))))
(let ((anon53_Then_correct  (=> (not (HasDirectPerm_7488_7489 Ops_3Mask@4 null (P x@@5))) (=> (and (and (= Ops_3Heap@1 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Ops_3Heap@0) (store (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@0) null (|P#sm| x@@5) ZeroPMask) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Ops_3Heap@0) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Ops_3Heap@0))) (= Ops_3Heap@2 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Ops_3Heap@1) (store (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Ops_3Heap@1) null (P x@@5) freshVersion@0) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Ops_3Heap@1) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Ops_3Heap@1)))) (and (= Ops_3Heap@3 Ops_3Heap@2) (= (ControlFlow 0 38) 37))) anon17_correct))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 40) (- 0 41)) (=> (and b_12@5 b_13@6) (and (= neededTransfer@4 0.0) (= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_6Mask@3) x@@5 f_7) initNeededTransfer@0)))) (=> (=> (and b_12@5 b_13@6) (and (= neededTransfer@4 0.0) (= (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_6Mask@3) x@@5 f_7) initNeededTransfer@0))) (=> (= b_14@0  (and b_12@5 b_13@6)) (=> (and (and (= b_14@1  (and b_14@0 (state Result_5Heap Result_5Mask))) (= b_14@2  (and b_14@1 (sumMask Result_5Mask Ops_3Mask@3 Used_6Mask@3)))) (and (= b_14@3  (and (and b_14@2 (IdenticalOnKnownLocations Ops_3Heap@0 Result_5Heap Ops_3Mask@3)) (IdenticalOnKnownLocations Used_6Heap@0 Result_5Heap Used_6Mask@3))) (= b_14@4  (and b_14@3 (state Result_5Heap Result_5Mask))))) (=> (and (and (and (= b_12@6  (and b_12@5 b_14@4)) (= b_12@7  (and b_12@6 b_13@6))) (and (= b_12@8  (and b_12@7 (= Used_6Heap@0 Ops_3Heap@0))) (= Ops_3Mask@4 (PolymorphicMapType_12738 (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@3) (store (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@3) null (P x@@5) (+ (select (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@3) null (P x@@5)) FullPerm)) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Ops_3Mask@3) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Ops_3Mask@3))))) (and (and (= b_12@9  (and b_12@8 (state Ops_3Heap@0 Ops_3Mask@4))) (= b_12@10  (and b_12@9 (state Ops_3Heap@0 Ops_3Mask@4)))) (and (|P#trigger_7488| Ops_3Heap@0 (P x@@5)) (= (select (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Ops_3Heap@0) null (P x@@5)) (FrameFragment_7485 (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Ops_3Heap@0) x@@5 f_7)))))) (and (=> (= (ControlFlow 0 40) 38) anon53_Then_correct) (=> (= (ControlFlow 0 40) 39) anon53_Else_correct)))))))))
(let ((anon52_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@4 neededTransfer@2)) (=> (and (and (= b_13@6 b_13@3) (= Used_6Mask@3 Used_6Mask@1)) (and (= Heap@1 Heap@@60) (= (ControlFlow 0 44) 40))) anon15_correct)))))
(let ((anon52_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@3 (- neededTransfer@2 takeTransfer@1)) (= Used_6Mask@2 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_6Mask@1) x@@5 f_7 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Used_6Mask@1) x@@5 f_7) takeTransfer@1)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Used_6Mask@1) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Used_6Mask@1)))) (and (= b_13@4  (and b_13@3 (state Used_6Heap@0 Used_6Mask@2))) (= b_13@5  (and b_13@4 (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@60) x@@5 f_7) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Used_6Heap@0) x@@5 f_7)))))) (=> (and (and (and (= Mask@0 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7 (- (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7) takeTransfer@1)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask))) (= Heap@0 (PolymorphicMapType_12717 (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7363_21086#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7488_7489#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7492_22138#PolymorphicMapType_12717| Heap@@60) (store (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))) (PolymorphicMapType_13266 (store (|PolymorphicMapType_13266_7484_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) x@@5 f_7 true) (|PolymorphicMapType_13266_7484_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_7484_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_7484_46454#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_7484_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_47502#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16107_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_48550#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_16983_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_7485#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_53#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_1215#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_49598#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))) (|PolymorphicMapType_13266_17677_16141#PolymorphicMapType_13266| (select (|PolymorphicMapType_12717_7442_33923#PolymorphicMapType_12717| Heap@@60) null (|wand_1#sm| x@@5 (/ (to_real 1) (to_real 4)) x@@5 (/ (to_real 1) (to_real 4))))))) (|PolymorphicMapType_12717_7484_7489#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7484_1215#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7484_40877#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7488_7485#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7488_53#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_7488_1215#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16107_7485#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16107_7489#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16107_53#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16107_1215#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16983_7485#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16983_7489#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16983_53#PolymorphicMapType_12717| Heap@@60) (|PolymorphicMapType_12717_16983_1215#PolymorphicMapType_12717| Heap@@60)))) (and (= Mask@1 Mask@0) (= neededTransfer@4 neededTransfer@3))) (and (and (= b_13@6 b_13@5) (= Used_6Mask@3 Used_6Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 43) 40)))) anon15_correct)))))
(let ((anon51_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@2) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 46) 43) anon52_Then_correct) (=> (= (ControlFlow 0 46) 44) anon52_Else_correct)))))
(let ((anon51_Then_correct  (=> (and (<= neededTransfer@2 maskTransfer@1) (= takeTransfer@1 neededTransfer@2)) (and (=> (= (ControlFlow 0 45) 43) anon52_Then_correct) (=> (= (ControlFlow 0 45) 44) anon52_Else_correct)))))
(let ((anon50_Then_correct  (=> (and (and (and (and b_12@5 b_13@3) true) (> neededTransfer@2 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7))) (and (=> (= (ControlFlow 0 47) 45) anon51_Then_correct) (=> (= (ControlFlow 0 47) 46) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (not (and (and (and b_12@5 b_13@3) true) (> neededTransfer@2 0.0))) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@4 neededTransfer@2)) (=> (and (and (= b_13@6 b_13@3) (= Used_6Mask@3 Used_6Mask@1)) (and (= Heap@1 Heap@@60) (= (ControlFlow 0 42) 40))) anon15_correct)))))
(let ((anon49_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_3Mask@3 Ops_3Mask@1) (= Used_6Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 50) 47) anon50_Then_correct) (=> (= (ControlFlow 0 50) 42) anon50_Else_correct))))))
(let ((anon49_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@1 (- neededTransfer@0 takeTransfer@0))) (=> (and (and (and (= Used_6Mask@0 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7) takeTransfer@0)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask))) (= b_13@1  (and b_13@0 (state Used_6Heap@0 Used_6Mask@0)))) (and (= b_13@2  (and b_13@1 (= (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Ops_3Heap@0) x@@5 f_7) (select (|PolymorphicMapType_12717_7222_7223#PolymorphicMapType_12717| Used_6Heap@0) x@@5 f_7)))) (= Ops_3Mask@2 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@1) x@@5 f_7 (- (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@1) x@@5 f_7) takeTransfer@0)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| Ops_3Mask@1) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| Ops_3Mask@1))))) (and (and (= Ops_3Mask@3 Ops_3Mask@2) (= Used_6Mask@1 Used_6Mask@0)) (and (= b_13@3 b_13@2) (= neededTransfer@2 neededTransfer@1)))) (and (=> (= (ControlFlow 0 49) 47) anon50_Then_correct) (=> (= (ControlFlow 0 49) 42) anon50_Else_correct))))))
(let ((anon48_Else_correct  (=> (and (< maskTransfer@0 neededTransfer@0) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 52) 49) anon49_Then_correct) (=> (= (ControlFlow 0 52) 50) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (and (<= neededTransfer@0 maskTransfer@0) (= takeTransfer@0 neededTransfer@0)) (and (=> (= (ControlFlow 0 51) 49) anon49_Then_correct) (=> (= (ControlFlow 0 51) 50) anon49_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (and (and (and b_12@5 b_13@0) true) (> neededTransfer@0 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| Ops_3Mask@1) x@@5 f_7))) (and (=> (= (ControlFlow 0 53) 51) anon48_Then_correct) (=> (= (ControlFlow 0 53) 52) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (not (and (and (and b_12@5 b_13@0) true) (> neededTransfer@0 0.0))) (=> (and (and (= Ops_3Mask@3 Ops_3Mask@1) (= Used_6Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 48) 47) anon50_Then_correct) (=> (= (ControlFlow 0 48) 42) anon50_Else_correct))))))
(let ((anon46_Then_correct  (=> (and (and b_12@5 (= b_13@0  (and b_13 (state Used_6Heap@0 ZeroMask)))) (and (= neededTransfer@0 (/ (to_real 1) (to_real 4))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7) neededTransfer@0)))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (>= neededTransfer@0 0.0)) (=> (>= neededTransfer@0 0.0) (and (=> (= (ControlFlow 0 54) 53) anon47_Then_correct) (=> (= (ControlFlow 0 54) 48) anon47_Else_correct)))))))
(let ((anon46_Else_correct  (=> (and (not b_12@5) (= Ops_3Heap@5 Ops_3Heap@0)) (=> (and (and (= b_12@12 b_12@5) (= Mask@2 ZeroMask)) (and (= Ops_3Mask@5 Ops_3Mask@1) (= Heap@2 Heap@@60))) (and (=> (= (ControlFlow 0 36) 34) anon54_Then_correct) (=> (= (ControlFlow 0 36) 18) anon54_Else_correct))))))
(let ((anon2_correct  (=> (and (= b_12@4  (and b_12@3 (state Ops_3Heap@0 Ops_3Mask@1))) (= b_12@5  (and b_12@4 (state Ops_3Heap@0 Ops_3Mask@1)))) (and (=> (= (ControlFlow 0 56) 54) anon46_Then_correct) (=> (= (ControlFlow 0 56) 36) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (and (not b_12@0) (= Ops_3Mask@1 ZeroMask)) (and (= b_12@3 b_12@0) (= (ControlFlow 0 59) 56))) anon2_correct)))
(let ((anon45_Then_correct  (=> (and b_12@0 (= perm@0 (/ (to_real 1) (to_real 4)))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (= b_12@1  (and b_12@0 (=> (> perm@0 NoPerm) (not (= x@@5 null))))) (= Ops_3Mask@0 (PolymorphicMapType_12738 (store (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_12738_7484_7485#PolymorphicMapType_12738| ZeroMask) x@@5 f_7) perm@0)) (|PolymorphicMapType_12738_7488_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_1696#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7484_60029#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_1215#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7488_60440#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7354_60854#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7485#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_7489#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_53#PolymorphicMapType_12738| ZeroMask) (|PolymorphicMapType_12738_7436_61268#PolymorphicMapType_12738| ZeroMask)))) (=> (and (and (= b_12@2  (and b_12@1 (state Ops_3Heap@0 Ops_3Mask@0))) (= Ops_3Mask@1 Ops_3Mask@0)) (and (= b_12@3 b_12@2) (= (ControlFlow 0 57) 56))) anon2_correct)))))))
(let ((anon0_correct  (=> (state Heap@@60 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_12717_7219_53#PolymorphicMapType_12717| Heap@@60) x@@5 $allocated)) (and (= b_12@0  (and b_12 (state Ops_3Heap@0 ZeroMask))) (= b_11@0  (and b_11 (state Used_5Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 60) 57) anon45_Then_correct) (=> (= (ControlFlow 0 60) 59) anon45_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 61) 60) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)