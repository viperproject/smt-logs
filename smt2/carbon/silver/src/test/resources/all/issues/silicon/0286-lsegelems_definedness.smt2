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
(declare-sort T@Field_15349_53 0)
(declare-sort T@Field_15362_15363 0)
(declare-sort T@Field_21417_3004 0)
(declare-sort T@Field_21929_21930 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24717_24722 0)
(declare-sort T@Field_26328_26329 0)
(declare-sort T@Field_29155_29160 0)
(declare-sort T@Field_8433_8549 0)
(declare-sort T@Field_8433_24722 0)
(declare-sort T@Field_8548_8434 0)
(declare-sort T@Field_8548_3004 0)
(declare-sort T@Field_8548_53 0)
(declare-sort T@Field_8522_8434 0)
(declare-sort T@Field_8522_3004 0)
(declare-sort T@Field_8522_53 0)
(declare-datatypes ((T@PolymorphicMapType_15310 0)) (((PolymorphicMapType_15310 (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| (Array T@Ref T@Field_21929_21930 Real)) (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| (Array T@Ref T@Field_21417_3004 Real)) (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| (Array T@Ref T@Field_15362_15363 Real)) (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| (Array T@Ref T@Field_26328_26329 Real)) (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| (Array T@Ref T@Field_8522_3004 Real)) (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| (Array T@Ref T@Field_8522_8434 Real)) (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| (Array T@Ref T@Field_8522_53 Real)) (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| (Array T@Ref T@Field_24717_24722 Real)) (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| (Array T@Ref T@Field_8433_8549 Real)) (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| (Array T@Ref T@Field_15349_53 Real)) (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| (Array T@Ref T@Field_8433_24722 Real)) (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| (Array T@Ref T@Field_8548_3004 Real)) (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| (Array T@Ref T@Field_8548_8434 Real)) (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| (Array T@Ref T@Field_8548_53 Real)) (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| (Array T@Ref T@Field_29155_29160 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15838 0)) (((PolymorphicMapType_15838 (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (Array T@Ref T@Field_21417_3004 Bool)) (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (Array T@Ref T@Field_15362_15363 Bool)) (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (Array T@Ref T@Field_15349_53 Bool)) (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (Array T@Ref T@Field_8433_8549 Bool)) (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (Array T@Ref T@Field_8433_24722 Bool)) (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (Array T@Ref T@Field_8522_3004 Bool)) (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (Array T@Ref T@Field_8522_8434 Bool)) (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (Array T@Ref T@Field_8522_53 Bool)) (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (Array T@Ref T@Field_21929_21930 Bool)) (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (Array T@Ref T@Field_24717_24722 Bool)) (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (Array T@Ref T@Field_8548_3004 Bool)) (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (Array T@Ref T@Field_8548_8434 Bool)) (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (Array T@Ref T@Field_8548_53 Bool)) (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (Array T@Ref T@Field_26328_26329 Bool)) (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (Array T@Ref T@Field_29155_29160 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15289 0)) (((PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| (Array T@Ref T@Field_15349_53 Bool)) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| (Array T@Ref T@Field_15362_15363 T@Ref)) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| (Array T@Ref T@Field_21417_3004 Int)) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| (Array T@Ref T@Field_21929_21930 T@FrameType)) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| (Array T@Ref T@Field_24717_24722 T@PolymorphicMapType_15838)) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| (Array T@Ref T@Field_26328_26329 T@FrameType)) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| (Array T@Ref T@Field_29155_29160 T@PolymorphicMapType_15838)) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| (Array T@Ref T@Field_8433_8549 T@FrameType)) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| (Array T@Ref T@Field_8433_24722 T@PolymorphicMapType_15838)) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| (Array T@Ref T@Field_8548_8434 T@Ref)) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| (Array T@Ref T@Field_8548_3004 Int)) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| (Array T@Ref T@Field_8548_53 Bool)) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| (Array T@Ref T@Field_8522_8434 T@Ref)) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| (Array T@Ref T@Field_8522_3004 Int)) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| (Array T@Ref T@Field_8522_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_15349_53)
(declare-fun next () T@Field_15362_15363)
(declare-fun val () T@Field_21417_3004)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_15289 T@PolymorphicMapType_15289) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15289 T@PolymorphicMapType_15289) Bool)
(declare-fun state (T@PolymorphicMapType_15289 T@PolymorphicMapType_15310) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15310) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15838)
(declare-fun |lsegelems'| (T@PolymorphicMapType_15289 T@Ref T@Ref) T@Seq_2867)
(declare-fun |lsegelems#triggerStateless| (T@Ref T@Ref) T@Seq_2867)
(declare-fun |lseg#trigger_8548| (T@PolymorphicMapType_15289 T@Field_26328_26329) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_26328_26329)
(declare-fun |lsegelems#frame| (T@FrameType T@Ref T@Ref) T@Seq_2867)
(declare-fun null () T@Ref)
(declare-fun IsPredicateField_8548_8549 (T@Field_26328_26329) Bool)
(declare-fun dummyFunction_21542 (T@Seq_2867) Bool)
(declare-fun |lseg#everUsed_8548| (T@Field_26328_26329) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun list (T@Ref) T@Field_21929_21930)
(declare-fun IsPredicateField_8522_8523 (T@Field_21929_21930) Bool)
(declare-fun |elems'| (T@PolymorphicMapType_15289 T@Ref) T@Seq_2867)
(declare-fun |elems#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |list#trigger_8522| (T@PolymorphicMapType_15289 T@Field_21929_21930) Bool)
(declare-fun |list#everUsed_8522| (T@Field_21929_21930) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun elems_1 (T@PolymorphicMapType_15289 T@Ref) T@Seq_2867)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Singleton_3004| (Int) T@Seq_2867)
(declare-fun |Seq#Append_3004| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15289 T@PolymorphicMapType_15289 T@PolymorphicMapType_15310) Bool)
(declare-fun PredicateMaskField_8522 (T@Field_21929_21930) T@Field_24717_24722)
(declare-fun HasDirectPerm_8522_8523 (T@PolymorphicMapType_15310 T@Ref T@Field_21929_21930) Bool)
(declare-fun PredicateMaskField_8548 (T@Field_26328_26329) T@Field_29155_29160)
(declare-fun HasDirectPerm_8548_8549 (T@PolymorphicMapType_15310 T@Ref T@Field_26328_26329) Bool)
(declare-fun IsPredicateField_8433_52942 (T@Field_8433_8549) Bool)
(declare-fun PredicateMaskField_8433 (T@Field_8433_8549) T@Field_8433_24722)
(declare-fun HasDirectPerm_8433_8549 (T@PolymorphicMapType_15310 T@Ref T@Field_8433_8549) Bool)
(declare-fun IsWandField_8522_58623 (T@Field_21929_21930) Bool)
(declare-fun WandMaskField_8522 (T@Field_21929_21930) T@Field_24717_24722)
(declare-fun IsWandField_8548_58266 (T@Field_26328_26329) Bool)
(declare-fun WandMaskField_8548 (T@Field_26328_26329) T@Field_29155_29160)
(declare-fun IsWandField_8433_57909 (T@Field_8433_8549) Bool)
(declare-fun WandMaskField_8433 (T@Field_8433_8549) T@Field_8433_24722)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_29155_29160)
(declare-fun |list#sm| (T@Ref) T@Field_24717_24722)
(declare-fun lsegelems (T@PolymorphicMapType_15289 T@Ref T@Ref) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_15289)
(declare-fun ZeroMask () T@PolymorphicMapType_15310)
(declare-fun InsidePredicate_15349_15349 (T@Field_8433_8549 T@FrameType T@Field_8433_8549 T@FrameType) Bool)
(declare-fun InsidePredicate_8548_8548 (T@Field_26328_26329 T@FrameType T@Field_26328_26329 T@FrameType) Bool)
(declare-fun InsidePredicate_8522_8522 (T@Field_21929_21930 T@FrameType T@Field_21929_21930 T@FrameType) Bool)
(declare-fun IsPredicateField_8433_8434 (T@Field_15362_15363) Bool)
(declare-fun IsWandField_8433_8434 (T@Field_15362_15363) Bool)
(declare-fun IsPredicateField_8436_3004 (T@Field_21417_3004) Bool)
(declare-fun IsWandField_8436_3004 (T@Field_21417_3004) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8548_68912 (T@Field_29155_29160) Bool)
(declare-fun IsWandField_8548_68928 (T@Field_29155_29160) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8548_53 (T@Field_8548_53) Bool)
(declare-fun IsWandField_8548_53 (T@Field_8548_53) Bool)
(declare-fun IsPredicateField_8548_8434 (T@Field_8548_8434) Bool)
(declare-fun IsWandField_8548_8434 (T@Field_8548_8434) Bool)
(declare-fun IsPredicateField_8548_3004 (T@Field_8548_3004) Bool)
(declare-fun IsWandField_8548_3004 (T@Field_8548_3004) Bool)
(declare-fun IsPredicateField_8436_68081 (T@Field_8433_24722) Bool)
(declare-fun IsWandField_8436_68097 (T@Field_8433_24722) Bool)
(declare-fun IsPredicateField_8436_53 (T@Field_15349_53) Bool)
(declare-fun IsWandField_8436_53 (T@Field_15349_53) Bool)
(declare-fun IsPredicateField_8522_67278 (T@Field_24717_24722) Bool)
(declare-fun IsWandField_8522_67294 (T@Field_24717_24722) Bool)
(declare-fun IsPredicateField_8522_53 (T@Field_8522_53) Bool)
(declare-fun IsWandField_8522_53 (T@Field_8522_53) Bool)
(declare-fun IsPredicateField_8522_8434 (T@Field_8522_8434) Bool)
(declare-fun IsWandField_8522_8434 (T@Field_8522_8434) Bool)
(declare-fun IsPredicateField_8522_3004 (T@Field_8522_3004) Bool)
(declare-fun IsWandField_8522_3004 (T@Field_8522_3004) Bool)
(declare-fun HasDirectPerm_8522_52697 (T@PolymorphicMapType_15310 T@Ref T@Field_24717_24722) Bool)
(declare-fun HasDirectPerm_8522_53 (T@PolymorphicMapType_15310 T@Ref T@Field_8522_53) Bool)
(declare-fun HasDirectPerm_8522_3004 (T@PolymorphicMapType_15310 T@Ref T@Field_8522_3004) Bool)
(declare-fun HasDirectPerm_8522_8434 (T@PolymorphicMapType_15310 T@Ref T@Field_8522_8434) Bool)
(declare-fun HasDirectPerm_8548_51599 (T@PolymorphicMapType_15310 T@Ref T@Field_29155_29160) Bool)
(declare-fun HasDirectPerm_8548_53 (T@PolymorphicMapType_15310 T@Ref T@Field_8548_53) Bool)
(declare-fun HasDirectPerm_8548_3004 (T@PolymorphicMapType_15310 T@Ref T@Field_8548_3004) Bool)
(declare-fun HasDirectPerm_8548_8434 (T@PolymorphicMapType_15310 T@Ref T@Field_8548_8434) Bool)
(declare-fun HasDirectPerm_8433_50458 (T@PolymorphicMapType_15310 T@Ref T@Field_8433_24722) Bool)
(declare-fun HasDirectPerm_8433_53 (T@PolymorphicMapType_15310 T@Ref T@Field_15349_53) Bool)
(declare-fun HasDirectPerm_8436_3004 (T@PolymorphicMapType_15310 T@Ref T@Field_21417_3004) Bool)
(declare-fun HasDirectPerm_8433_8434 (T@PolymorphicMapType_15310 T@Ref T@Field_15362_15363) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15310 T@PolymorphicMapType_15310 T@PolymorphicMapType_15310) Bool)
(declare-fun |Seq#Equal_3026| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_8548_8549 (T@Field_26328_26329) Int)
(declare-fun |elems#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_8522_8523 (T@Field_21929_21930) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_15349_8548 (T@Field_8433_8549 T@FrameType T@Field_26328_26329 T@FrameType) Bool)
(declare-fun InsidePredicate_15349_8522 (T@Field_8433_8549 T@FrameType T@Field_21929_21930 T@FrameType) Bool)
(declare-fun InsidePredicate_8548_15349 (T@Field_26328_26329 T@FrameType T@Field_8433_8549 T@FrameType) Bool)
(declare-fun InsidePredicate_8548_8522 (T@Field_26328_26329 T@FrameType T@Field_21929_21930 T@FrameType) Bool)
(declare-fun InsidePredicate_8522_15349 (T@Field_21929_21930 T@FrameType T@Field_8433_8549 T@FrameType) Bool)
(declare-fun InsidePredicate_8522_8548 (T@Field_21929_21930 T@FrameType T@Field_26328_26329 T@FrameType) Bool)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.277:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15289) (Heap1 T@PolymorphicMapType_15289) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15289) (Mask T@PolymorphicMapType_15310) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15289) (Heap1@@0 T@PolymorphicMapType_15289) (Heap2 T@PolymorphicMapType_15289) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29155_29160) ) (!  (not (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26328_26329) ) (!  (not (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8548_53) ) (!  (not (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8548_8434) ) (!  (not (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8548_3004) ) (!  (not (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24717_24722) ) (!  (not (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_21929_21930) ) (!  (not (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8522_53) ) (!  (not (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8522_8434) ) (!  (not (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8522_3004) ) (!  (not (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8433_24722) ) (!  (not (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8433_8549) ) (!  (not (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_15349_53) ) (!  (not (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_15362_15363) ) (!  (not (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_21417_3004) ) (!  (not (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15289) (Mask@@0 T@PolymorphicMapType_15310) (start T@Ref) (end T@Ref) ) (!  (=> (state Heap@@0 Mask@@0) (= (|lsegelems'| Heap@@0 start end) (|lsegelems#frame| (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@0) null (lseg start end)) start end)))
 :qid |stdinbpl.714:15|
 :skolemid |66|
 :pattern ( (state Heap@@0 Mask@@0) (|lsegelems'| Heap@@0 start end))
 :pattern ( (state Heap@@0 Mask@@0) (|lsegelems#triggerStateless| start end) (|lseg#trigger_8548| Heap@@0 (lseg start end)))
)))
(assert (forall ((start@@0 T@Ref) (end@@0 T@Ref) ) (! (IsPredicateField_8548_8549 (lseg start@@0 end@@0))
 :qid |stdinbpl.909:15|
 :skolemid |75|
 :pattern ( (lseg start@@0 end@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15289) (start@@1 T@Ref) (end@@1 T@Ref) ) (! (dummyFunction_21542 (|lsegelems#triggerStateless| start@@1 end@@1))
 :qid |stdinbpl.701:15|
 :skolemid |64|
 :pattern ( (|lsegelems'| Heap@@1 start@@1 end@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15289) (start@@2 T@Ref) (end@@2 T@Ref) ) (! (|lseg#everUsed_8548| (lseg start@@2 end@@2))
 :qid |stdinbpl.928:15|
 :skolemid |79|
 :pattern ( (|lseg#trigger_8548| Heap@@2 (lseg start@@2 end@@2)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.298:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((start@@3 T@Ref) ) (! (IsPredicateField_8522_8523 (list start@@3))
 :qid |stdinbpl.837:15|
 :skolemid |69|
 :pattern ( (list start@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15289) (start@@4 T@Ref) ) (! (dummyFunction_21542 (|elems#triggerStateless| start@@4))
 :qid |stdinbpl.566:15|
 :skolemid |59|
 :pattern ( (|elems'| Heap@@3 start@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15289) (start@@5 T@Ref) ) (! (|list#everUsed_8522| (list start@@5))
 :qid |stdinbpl.856:15|
 :skolemid |73|
 :pattern ( (|list#trigger_8522| Heap@@4 (list start@@5)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15289) (Mask@@1 T@PolymorphicMapType_15310) (start@@6 T@Ref) ) (!  (=> (and (state Heap@@5 Mask@@1) (< AssumeFunctionsAbove 1)) (= (elems_1 Heap@@5 start@@6) (ite (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@5) start@@6 next) null) (|Seq#Singleton_3004| (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@5) start@@6 val)) (|Seq#Append_3004| (|Seq#Singleton_3004| (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@5) start@@6 val)) (|elems'| Heap@@5 (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@5) start@@6 next))))))
 :qid |stdinbpl.572:15|
 :skolemid |60|
 :pattern ( (state Heap@@5 Mask@@1) (elems_1 Heap@@5 start@@6))
 :pattern ( (state Heap@@5 Mask@@1) (|elems#triggerStateless| start@@6) (|list#trigger_8522| Heap@@5 (list start@@6)))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.264:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.538:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.396:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15289) (start@@7 T@Ref) ) (!  (and (= (elems_1 Heap@@6 start@@7) (|elems'| Heap@@6 start@@7)) (dummyFunction_21542 (|elems#triggerStateless| start@@7)))
 :qid |stdinbpl.562:15|
 :skolemid |58|
 :pattern ( (elems_1 Heap@@6 start@@7))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.380:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.233:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15289) (ExhaleHeap T@PolymorphicMapType_15289) (Mask@@2 T@PolymorphicMapType_15310) (pm_f_28 T@Field_21929_21930) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_8522_8523 Mask@@2 null pm_f_28) (IsPredicateField_8522_8523 pm_f_28)) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@7) null (PredicateMaskField_8522 pm_f_28)) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap) null (PredicateMaskField_8522 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@2) (IsPredicateField_8522_8523 pm_f_28) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap) null (PredicateMaskField_8522 pm_f_28)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15289) (ExhaleHeap@@0 T@PolymorphicMapType_15289) (Mask@@3 T@PolymorphicMapType_15310) (pm_f_28@@0 T@Field_26328_26329) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_8548_8549 Mask@@3 null pm_f_28@@0) (IsPredicateField_8548_8549 pm_f_28@@0)) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@8) null (PredicateMaskField_8548 pm_f_28@@0)) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@0) null (PredicateMaskField_8548 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@3) (IsPredicateField_8548_8549 pm_f_28@@0) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@0) null (PredicateMaskField_8548 pm_f_28@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15289) (ExhaleHeap@@1 T@PolymorphicMapType_15289) (Mask@@4 T@PolymorphicMapType_15310) (pm_f_28@@1 T@Field_8433_8549) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_8433_8549 Mask@@4 null pm_f_28@@1) (IsPredicateField_8433_52942 pm_f_28@@1)) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@9) null (PredicateMaskField_8433 pm_f_28@@1)) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@1) null (PredicateMaskField_8433 pm_f_28@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@4) (IsPredicateField_8433_52942 pm_f_28@@1) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@1) null (PredicateMaskField_8433 pm_f_28@@1)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15289) (ExhaleHeap@@2 T@PolymorphicMapType_15289) (Mask@@5 T@PolymorphicMapType_15310) (pm_f_28@@2 T@Field_21929_21930) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_8522_8523 Mask@@5 null pm_f_28@@2) (IsWandField_8522_58623 pm_f_28@@2)) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@10) null (WandMaskField_8522 pm_f_28@@2)) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@2) null (WandMaskField_8522 pm_f_28@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@5) (IsWandField_8522_58623 pm_f_28@@2) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@2) null (WandMaskField_8522 pm_f_28@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15289) (ExhaleHeap@@3 T@PolymorphicMapType_15289) (Mask@@6 T@PolymorphicMapType_15310) (pm_f_28@@3 T@Field_26328_26329) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_8548_8549 Mask@@6 null pm_f_28@@3) (IsWandField_8548_58266 pm_f_28@@3)) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@11) null (WandMaskField_8548 pm_f_28@@3)) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@3) null (WandMaskField_8548 pm_f_28@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@6) (IsWandField_8548_58266 pm_f_28@@3) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@3) null (WandMaskField_8548 pm_f_28@@3)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15289) (ExhaleHeap@@4 T@PolymorphicMapType_15289) (Mask@@7 T@PolymorphicMapType_15310) (pm_f_28@@4 T@Field_8433_8549) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_8433_8549 Mask@@7 null pm_f_28@@4) (IsWandField_8433_57909 pm_f_28@@4)) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@12) null (WandMaskField_8433 pm_f_28@@4)) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@4) null (WandMaskField_8433 pm_f_28@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@7) (IsWandField_8433_57909 pm_f_28@@4) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@4) null (WandMaskField_8433 pm_f_28@@4)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.521:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@0) y))
)))
(assert (forall ((start@@8 T@Ref) (end@@3 T@Ref) (start2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg start@@8 end@@3) (lseg start2 end2)) (and (= start@@8 start2) (= end@@3 end2)))
 :qid |stdinbpl.919:15|
 :skolemid |77|
 :pattern ( (lseg start@@8 end@@3) (lseg start2 end2))
)))
(assert (forall ((start@@9 T@Ref) (end@@4 T@Ref) (start2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| start@@9 end@@4) (|lseg#sm| start2@@0 end2@@0)) (and (= start@@9 start2@@0) (= end@@4 end2@@0)))
 :qid |stdinbpl.923:15|
 :skolemid |78|
 :pattern ( (|lseg#sm| start@@9 end@@4) (|lseg#sm| start2@@0 end2@@0))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.272:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((start@@10 T@Ref) (start2@@1 T@Ref) ) (!  (=> (= (list start@@10) (list start2@@1)) (= start@@10 start2@@1))
 :qid |stdinbpl.847:15|
 :skolemid |71|
 :pattern ( (list start@@10) (list start2@@1))
)))
(assert (forall ((start@@11 T@Ref) (start2@@2 T@Ref) ) (!  (=> (= (|list#sm| start@@11) (|list#sm| start2@@2)) (= start@@11 start2@@2))
 :qid |stdinbpl.851:15|
 :skolemid |72|
 :pattern ( (|list#sm| start@@11) (|list#sm| start2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3004| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3004| s@@6 t) n@@5) (|Seq#Append_3004| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.357:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3004| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15289) (Mask@@8 T@PolymorphicMapType_15310) (start@@12 T@Ref) (end@@5 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@8) (< AssumeFunctionsAbove 0)) (= (lsegelems Heap@@13 start@@12 end@@5) (ite (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@13) start@@12 next) end@@5) (|Seq#Singleton_3004| (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@13) start@@12 val)) (|Seq#Append_3004| (|Seq#Singleton_3004| (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@13) start@@12 val)) (|lsegelems'| Heap@@13 (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@13) start@@12 next) end@@5)))))
 :qid |stdinbpl.707:15|
 :skolemid |65|
 :pattern ( (state Heap@@13 Mask@@8) (lsegelems Heap@@13 start@@12 end@@5))
 :pattern ( (state Heap@@13 Mask@@8) (|lsegelems#triggerStateless| start@@12 end@@5) (|lseg#trigger_8548| Heap@@13 (lseg start@@12 end@@5)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15289) (ExhaleHeap@@5 T@PolymorphicMapType_15289) (Mask@@9 T@PolymorphicMapType_15310) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@9) (=> (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@14) o_41 $allocated) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@5) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@9) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@5) o_41 $allocated))
)))
(assert (forall ((p T@Field_8433_8549) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15349_15349 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15349_15349 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_26328_26329) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8548_8548 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8548_8548 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_21929_21930) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8522_8522 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8522_8522 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2867|)) (not (= s1 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3004| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3004| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.244:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3004| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_8433_8434 next)))
(assert  (not (IsWandField_8433_8434 next)))
(assert  (not (IsPredicateField_8436_3004 val)))
(assert  (not (IsWandField_8436_3004 val)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15289) (ExhaleHeap@@6 T@PolymorphicMapType_15289) (Mask@@10 T@PolymorphicMapType_15310) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@10) (succHeap Heap@@15 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15310) (o_2@@14 T@Ref) (f_4@@14 T@Field_29155_29160) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| Mask@@11) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8548_68912 f_4@@14))) (not (IsWandField_8548_68928 f_4@@14))) (<= (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| Mask@@11) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| Mask@@11) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15310) (o_2@@15 T@Ref) (f_4@@15 T@Field_8548_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| Mask@@12) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8548_53 f_4@@15))) (not (IsWandField_8548_53 f_4@@15))) (<= (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| Mask@@12) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| Mask@@12) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15310) (o_2@@16 T@Ref) (f_4@@16 T@Field_8548_8434) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| Mask@@13) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8548_8434 f_4@@16))) (not (IsWandField_8548_8434 f_4@@16))) (<= (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| Mask@@13) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| Mask@@13) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15310) (o_2@@17 T@Ref) (f_4@@17 T@Field_8548_3004) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8548_3004 f_4@@17))) (not (IsWandField_8548_3004 f_4@@17))) (<= (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15310) (o_2@@18 T@Ref) (f_4@@18 T@Field_26328_26329) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8548_8549 f_4@@18))) (not (IsWandField_8548_58266 f_4@@18))) (<= (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15310) (o_2@@19 T@Ref) (f_4@@19 T@Field_8433_24722) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8436_68081 f_4@@19))) (not (IsWandField_8436_68097 f_4@@19))) (<= (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15310) (o_2@@20 T@Ref) (f_4@@20 T@Field_15349_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8436_53 f_4@@20))) (not (IsWandField_8436_53 f_4@@20))) (<= (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15310) (o_2@@21 T@Ref) (f_4@@21 T@Field_15362_15363) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8433_8434 f_4@@21))) (not (IsWandField_8433_8434 f_4@@21))) (<= (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15310) (o_2@@22 T@Ref) (f_4@@22 T@Field_21417_3004) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8436_3004 f_4@@22))) (not (IsWandField_8436_3004 f_4@@22))) (<= (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15310) (o_2@@23 T@Ref) (f_4@@23 T@Field_8433_8549) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8433_52942 f_4@@23))) (not (IsWandField_8433_57909 f_4@@23))) (<= (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15310) (o_2@@24 T@Ref) (f_4@@24 T@Field_24717_24722) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8522_67278 f_4@@24))) (not (IsWandField_8522_67294 f_4@@24))) (<= (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15310) (o_2@@25 T@Ref) (f_4@@25 T@Field_8522_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8522_53 f_4@@25))) (not (IsWandField_8522_53 f_4@@25))) (<= (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15310) (o_2@@26 T@Ref) (f_4@@26 T@Field_8522_8434) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8522_8434 f_4@@26))) (not (IsWandField_8522_8434 f_4@@26))) (<= (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15310) (o_2@@27 T@Ref) (f_4@@27 T@Field_8522_3004) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_8522_3004 f_4@@27))) (not (IsWandField_8522_3004 f_4@@27))) (<= (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15310) (o_2@@28 T@Ref) (f_4@@28 T@Field_21929_21930) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_8522_8523 f_4@@28))) (not (IsWandField_8522_58623 f_4@@28))) (<= (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15310) (o_2@@29 T@Ref) (f_4@@29 T@Field_24717_24722) ) (! (= (HasDirectPerm_8522_52697 Mask@@26 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| Mask@@26) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_52697 Mask@@26 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15310) (o_2@@30 T@Ref) (f_4@@30 T@Field_8522_53) ) (! (= (HasDirectPerm_8522_53 Mask@@27 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| Mask@@27) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_53 Mask@@27 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15310) (o_2@@31 T@Ref) (f_4@@31 T@Field_21929_21930) ) (! (= (HasDirectPerm_8522_8523 Mask@@28 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| Mask@@28) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_8523 Mask@@28 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15310) (o_2@@32 T@Ref) (f_4@@32 T@Field_8522_3004) ) (! (= (HasDirectPerm_8522_3004 Mask@@29 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| Mask@@29) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_3004 Mask@@29 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15310) (o_2@@33 T@Ref) (f_4@@33 T@Field_8522_8434) ) (! (= (HasDirectPerm_8522_8434 Mask@@30 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| Mask@@30) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8522_8434 Mask@@30 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15310) (o_2@@34 T@Ref) (f_4@@34 T@Field_29155_29160) ) (! (= (HasDirectPerm_8548_51599 Mask@@31 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| Mask@@31) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8548_51599 Mask@@31 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15310) (o_2@@35 T@Ref) (f_4@@35 T@Field_8548_53) ) (! (= (HasDirectPerm_8548_53 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8548_53 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15310) (o_2@@36 T@Ref) (f_4@@36 T@Field_26328_26329) ) (! (= (HasDirectPerm_8548_8549 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8548_8549 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15310) (o_2@@37 T@Ref) (f_4@@37 T@Field_8548_3004) ) (! (= (HasDirectPerm_8548_3004 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8548_3004 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15310) (o_2@@38 T@Ref) (f_4@@38 T@Field_8548_8434) ) (! (= (HasDirectPerm_8548_8434 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8548_8434 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15310) (o_2@@39 T@Ref) (f_4@@39 T@Field_8433_24722) ) (! (= (HasDirectPerm_8433_50458 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8433_50458 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15310) (o_2@@40 T@Ref) (f_4@@40 T@Field_15349_53) ) (! (= (HasDirectPerm_8433_53 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8433_53 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_15310) (o_2@@41 T@Ref) (f_4@@41 T@Field_8433_8549) ) (! (= (HasDirectPerm_8433_8549 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8433_8549 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_15310) (o_2@@42 T@Ref) (f_4@@42 T@Field_21417_3004) ) (! (= (HasDirectPerm_8436_3004 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8436_3004 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_15310) (o_2@@43 T@Ref) (f_4@@43 T@Field_15362_15363) ) (! (= (HasDirectPerm_8433_8434 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8433_8434 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.536:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15289) (ExhaleHeap@@7 T@PolymorphicMapType_15289) (Mask@@41 T@PolymorphicMapType_15310) (o_41@@0 T@Ref) (f_27 T@Field_24717_24722) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@41) (=> (HasDirectPerm_8522_52697 Mask@@41 o_41@@0 f_27) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@16) o_41@@0 f_27) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@7) o_41@@0 f_27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@41) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@7) o_41@@0 f_27))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15289) (ExhaleHeap@@8 T@PolymorphicMapType_15289) (Mask@@42 T@PolymorphicMapType_15310) (o_41@@1 T@Ref) (f_27@@0 T@Field_8522_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@42) (=> (HasDirectPerm_8522_53 Mask@@42 o_41@@1 f_27@@0) (= (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@17) o_41@@1 f_27@@0) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@8) o_41@@1 f_27@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@42) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@8) o_41@@1 f_27@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15289) (ExhaleHeap@@9 T@PolymorphicMapType_15289) (Mask@@43 T@PolymorphicMapType_15310) (o_41@@2 T@Ref) (f_27@@1 T@Field_21929_21930) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@43) (=> (HasDirectPerm_8522_8523 Mask@@43 o_41@@2 f_27@@1) (= (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@18) o_41@@2 f_27@@1) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@9) o_41@@2 f_27@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@43) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@9) o_41@@2 f_27@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15289) (ExhaleHeap@@10 T@PolymorphicMapType_15289) (Mask@@44 T@PolymorphicMapType_15310) (o_41@@3 T@Ref) (f_27@@2 T@Field_8522_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@44) (=> (HasDirectPerm_8522_3004 Mask@@44 o_41@@3 f_27@@2) (= (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@19) o_41@@3 f_27@@2) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@10) o_41@@3 f_27@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@44) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@10) o_41@@3 f_27@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15289) (ExhaleHeap@@11 T@PolymorphicMapType_15289) (Mask@@45 T@PolymorphicMapType_15310) (o_41@@4 T@Ref) (f_27@@3 T@Field_8522_8434) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@45) (=> (HasDirectPerm_8522_8434 Mask@@45 o_41@@4 f_27@@3) (= (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@20) o_41@@4 f_27@@3) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@11) o_41@@4 f_27@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@45) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@11) o_41@@4 f_27@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15289) (ExhaleHeap@@12 T@PolymorphicMapType_15289) (Mask@@46 T@PolymorphicMapType_15310) (o_41@@5 T@Ref) (f_27@@4 T@Field_29155_29160) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@46) (=> (HasDirectPerm_8548_51599 Mask@@46 o_41@@5 f_27@@4) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@21) o_41@@5 f_27@@4) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@12) o_41@@5 f_27@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@46) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@12) o_41@@5 f_27@@4))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15289) (ExhaleHeap@@13 T@PolymorphicMapType_15289) (Mask@@47 T@PolymorphicMapType_15310) (o_41@@6 T@Ref) (f_27@@5 T@Field_8548_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@47) (=> (HasDirectPerm_8548_53 Mask@@47 o_41@@6 f_27@@5) (= (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@22) o_41@@6 f_27@@5) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@13) o_41@@6 f_27@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@47) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@13) o_41@@6 f_27@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15289) (ExhaleHeap@@14 T@PolymorphicMapType_15289) (Mask@@48 T@PolymorphicMapType_15310) (o_41@@7 T@Ref) (f_27@@6 T@Field_26328_26329) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@48) (=> (HasDirectPerm_8548_8549 Mask@@48 o_41@@7 f_27@@6) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@23) o_41@@7 f_27@@6) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@14) o_41@@7 f_27@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@48) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@14) o_41@@7 f_27@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15289) (ExhaleHeap@@15 T@PolymorphicMapType_15289) (Mask@@49 T@PolymorphicMapType_15310) (o_41@@8 T@Ref) (f_27@@7 T@Field_8548_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@49) (=> (HasDirectPerm_8548_3004 Mask@@49 o_41@@8 f_27@@7) (= (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@24) o_41@@8 f_27@@7) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@15) o_41@@8 f_27@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@49) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@15) o_41@@8 f_27@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15289) (ExhaleHeap@@16 T@PolymorphicMapType_15289) (Mask@@50 T@PolymorphicMapType_15310) (o_41@@9 T@Ref) (f_27@@8 T@Field_8548_8434) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@50) (=> (HasDirectPerm_8548_8434 Mask@@50 o_41@@9 f_27@@8) (= (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@25) o_41@@9 f_27@@8) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@16) o_41@@9 f_27@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@50) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@16) o_41@@9 f_27@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15289) (ExhaleHeap@@17 T@PolymorphicMapType_15289) (Mask@@51 T@PolymorphicMapType_15310) (o_41@@10 T@Ref) (f_27@@9 T@Field_8433_24722) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@51) (=> (HasDirectPerm_8433_50458 Mask@@51 o_41@@10 f_27@@9) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@26) o_41@@10 f_27@@9) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@17) o_41@@10 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@51) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@17) o_41@@10 f_27@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15289) (ExhaleHeap@@18 T@PolymorphicMapType_15289) (Mask@@52 T@PolymorphicMapType_15310) (o_41@@11 T@Ref) (f_27@@10 T@Field_15349_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@52) (=> (HasDirectPerm_8433_53 Mask@@52 o_41@@11 f_27@@10) (= (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@27) o_41@@11 f_27@@10) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@18) o_41@@11 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@52) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@18) o_41@@11 f_27@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15289) (ExhaleHeap@@19 T@PolymorphicMapType_15289) (Mask@@53 T@PolymorphicMapType_15310) (o_41@@12 T@Ref) (f_27@@11 T@Field_8433_8549) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@53) (=> (HasDirectPerm_8433_8549 Mask@@53 o_41@@12 f_27@@11) (= (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@28) o_41@@12 f_27@@11) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@19) o_41@@12 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@19 Mask@@53) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@19) o_41@@12 f_27@@11))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15289) (ExhaleHeap@@20 T@PolymorphicMapType_15289) (Mask@@54 T@PolymorphicMapType_15310) (o_41@@13 T@Ref) (f_27@@12 T@Field_21417_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@54) (=> (HasDirectPerm_8436_3004 Mask@@54 o_41@@13 f_27@@12) (= (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@29) o_41@@13 f_27@@12) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@20) o_41@@13 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@20 Mask@@54) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@20) o_41@@13 f_27@@12))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15289) (ExhaleHeap@@21 T@PolymorphicMapType_15289) (Mask@@55 T@PolymorphicMapType_15310) (o_41@@14 T@Ref) (f_27@@13 T@Field_15362_15363) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@55) (=> (HasDirectPerm_8433_8434 Mask@@55 o_41@@14 f_27@@13) (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@30) o_41@@14 f_27@@13) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@21) o_41@@14 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@21 Mask@@55) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@21) o_41@@14 f_27@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_3004| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.213:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3004| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_29155_29160) ) (! (= (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8548_53) ) (! (= (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_8548_8434) ) (! (= (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_8548_3004) ) (! (= (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_26328_26329) ) (! (= (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_8433_24722) ) (! (= (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_15349_53) ) (! (= (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_15362_15363) ) (! (= (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_21417_3004) ) (! (= (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_8433_8549) ) (! (= (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_24717_24722) ) (! (= (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8522_53) ) (! (= (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_8522_8434) ) (! (= (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8522_3004) ) (! (= (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_21929_21930) ) (! (= (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_3004| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.370:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3004| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15289) (start@@13 T@Ref) (end@@6 T@Ref) ) (!  (and (= (lsegelems Heap@@31 start@@13 end@@6) (|lsegelems'| Heap@@31 start@@13 end@@6)) (dummyFunction_21542 (|lsegelems#triggerStateless| start@@13 end@@6)))
 :qid |stdinbpl.697:15|
 :skolemid |63|
 :pattern ( (lsegelems Heap@@31 start@@13 end@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15310) (SummandMask1 T@PolymorphicMapType_15310) (SummandMask2 T@PolymorphicMapType_15310) (o_2@@59 T@Ref) (f_4@@59 T@Field_29155_29160) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15310) (SummandMask1@@0 T@PolymorphicMapType_15310) (SummandMask2@@0 T@PolymorphicMapType_15310) (o_2@@60 T@Ref) (f_4@@60 T@Field_8548_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15310) (SummandMask1@@1 T@PolymorphicMapType_15310) (SummandMask2@@1 T@PolymorphicMapType_15310) (o_2@@61 T@Ref) (f_4@@61 T@Field_8548_8434) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15310) (SummandMask1@@2 T@PolymorphicMapType_15310) (SummandMask2@@2 T@PolymorphicMapType_15310) (o_2@@62 T@Ref) (f_4@@62 T@Field_8548_3004) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15310) (SummandMask1@@3 T@PolymorphicMapType_15310) (SummandMask2@@3 T@PolymorphicMapType_15310) (o_2@@63 T@Ref) (f_4@@63 T@Field_26328_26329) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15310) (SummandMask1@@4 T@PolymorphicMapType_15310) (SummandMask2@@4 T@PolymorphicMapType_15310) (o_2@@64 T@Ref) (f_4@@64 T@Field_8433_24722) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15310) (SummandMask1@@5 T@PolymorphicMapType_15310) (SummandMask2@@5 T@PolymorphicMapType_15310) (o_2@@65 T@Ref) (f_4@@65 T@Field_15349_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15310) (SummandMask1@@6 T@PolymorphicMapType_15310) (SummandMask2@@6 T@PolymorphicMapType_15310) (o_2@@66 T@Ref) (f_4@@66 T@Field_15362_15363) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15310) (SummandMask1@@7 T@PolymorphicMapType_15310) (SummandMask2@@7 T@PolymorphicMapType_15310) (o_2@@67 T@Ref) (f_4@@67 T@Field_21417_3004) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15310) (SummandMask1@@8 T@PolymorphicMapType_15310) (SummandMask2@@8 T@PolymorphicMapType_15310) (o_2@@68 T@Ref) (f_4@@68 T@Field_8433_8549) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15310) (SummandMask1@@9 T@PolymorphicMapType_15310) (SummandMask2@@9 T@PolymorphicMapType_15310) (o_2@@69 T@Ref) (f_4@@69 T@Field_24717_24722) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15310) (SummandMask1@@10 T@PolymorphicMapType_15310) (SummandMask2@@10 T@PolymorphicMapType_15310) (o_2@@70 T@Ref) (f_4@@70 T@Field_8522_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15310) (SummandMask1@@11 T@PolymorphicMapType_15310) (SummandMask2@@11 T@PolymorphicMapType_15310) (o_2@@71 T@Ref) (f_4@@71 T@Field_8522_8434) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15310) (SummandMask1@@12 T@PolymorphicMapType_15310) (SummandMask2@@12 T@PolymorphicMapType_15310) (o_2@@72 T@Ref) (f_4@@72 T@Field_8522_3004) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15310) (SummandMask1@@13 T@PolymorphicMapType_15310) (SummandMask2@@13 T@PolymorphicMapType_15310) (o_2@@73 T@Ref) (f_4@@73 T@Field_21929_21930) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15289) (ExhaleHeap@@22 T@PolymorphicMapType_15289) (Mask@@56 T@PolymorphicMapType_15310) (pm_f_28@@5 T@Field_21929_21930) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@56) (=> (and (HasDirectPerm_8522_8523 Mask@@56 null pm_f_28@@5) (IsPredicateField_8522_8523 pm_f_28@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27@@14 T@Field_21417_3004) ) (!  (=> (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28 f_27@@14) (= (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@32) o2_28 f_27@@14) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28 f_27@@14))
)) (forall ((o2_28@@0 T@Ref) (f_27@@15 T@Field_15362_15363) ) (!  (=> (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@0 f_27@@15) (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@32) o2_28@@0 f_27@@15) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@0 f_27@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@0 f_27@@15))
))) (forall ((o2_28@@1 T@Ref) (f_27@@16 T@Field_15349_53) ) (!  (=> (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@1 f_27@@16) (= (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@32) o2_28@@1 f_27@@16) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@1 f_27@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@1 f_27@@16))
))) (forall ((o2_28@@2 T@Ref) (f_27@@17 T@Field_8433_8549) ) (!  (=> (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@2 f_27@@17) (= (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@32) o2_28@@2 f_27@@17) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@2 f_27@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@2 f_27@@17))
))) (forall ((o2_28@@3 T@Ref) (f_27@@18 T@Field_8433_24722) ) (!  (=> (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@3 f_27@@18) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@32) o2_28@@3 f_27@@18) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@3 f_27@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@3 f_27@@18))
))) (forall ((o2_28@@4 T@Ref) (f_27@@19 T@Field_8522_3004) ) (!  (=> (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@4 f_27@@19) (= (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@32) o2_28@@4 f_27@@19) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@4 f_27@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@4 f_27@@19))
))) (forall ((o2_28@@5 T@Ref) (f_27@@20 T@Field_8522_8434) ) (!  (=> (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@5 f_27@@20) (= (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@32) o2_28@@5 f_27@@20) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@5 f_27@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@5 f_27@@20))
))) (forall ((o2_28@@6 T@Ref) (f_27@@21 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@6 f_27@@21) (= (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@32) o2_28@@6 f_27@@21) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@6 f_27@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@6 f_27@@21))
))) (forall ((o2_28@@7 T@Ref) (f_27@@22 T@Field_21929_21930) ) (!  (=> (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@7 f_27@@22) (= (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@32) o2_28@@7 f_27@@22) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@7 f_27@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@7 f_27@@22))
))) (forall ((o2_28@@8 T@Ref) (f_27@@23 T@Field_24717_24722) ) (!  (=> (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@8 f_27@@23) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) o2_28@@8 f_27@@23) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@8 f_27@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@8 f_27@@23))
))) (forall ((o2_28@@9 T@Ref) (f_27@@24 T@Field_8548_3004) ) (!  (=> (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@9 f_27@@24) (= (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@32) o2_28@@9 f_27@@24) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@9 f_27@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@9 f_27@@24))
))) (forall ((o2_28@@10 T@Ref) (f_27@@25 T@Field_8548_8434) ) (!  (=> (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@10 f_27@@25) (= (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@32) o2_28@@10 f_27@@25) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@10 f_27@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@10 f_27@@25))
))) (forall ((o2_28@@11 T@Ref) (f_27@@26 T@Field_8548_53) ) (!  (=> (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@11 f_27@@26) (= (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@32) o2_28@@11 f_27@@26) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@11 f_27@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@11 f_27@@26))
))) (forall ((o2_28@@12 T@Ref) (f_27@@27 T@Field_26328_26329) ) (!  (=> (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@12 f_27@@27) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@32) o2_28@@12 f_27@@27) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@12 f_27@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@12 f_27@@27))
))) (forall ((o2_28@@13 T@Ref) (f_27@@28 T@Field_29155_29160) ) (!  (=> (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@32) null (PredicateMaskField_8522 pm_f_28@@5))) o2_28@@13 f_27@@28) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@32) o2_28@@13 f_27@@28) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@13 f_27@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@22) o2_28@@13 f_27@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@56) (IsPredicateField_8522_8523 pm_f_28@@5))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15289) (ExhaleHeap@@23 T@PolymorphicMapType_15289) (Mask@@57 T@PolymorphicMapType_15310) (pm_f_28@@6 T@Field_26328_26329) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@57) (=> (and (HasDirectPerm_8548_8549 Mask@@57 null pm_f_28@@6) (IsPredicateField_8548_8549 pm_f_28@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@14 T@Ref) (f_27@@29 T@Field_21417_3004) ) (!  (=> (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@14 f_27@@29) (= (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@33) o2_28@@14 f_27@@29) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@14 f_27@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@14 f_27@@29))
)) (forall ((o2_28@@15 T@Ref) (f_27@@30 T@Field_15362_15363) ) (!  (=> (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@15 f_27@@30) (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@33) o2_28@@15 f_27@@30) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@15 f_27@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@15 f_27@@30))
))) (forall ((o2_28@@16 T@Ref) (f_27@@31 T@Field_15349_53) ) (!  (=> (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@16 f_27@@31) (= (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@33) o2_28@@16 f_27@@31) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@16 f_27@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@16 f_27@@31))
))) (forall ((o2_28@@17 T@Ref) (f_27@@32 T@Field_8433_8549) ) (!  (=> (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@17 f_27@@32) (= (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@33) o2_28@@17 f_27@@32) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@17 f_27@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@17 f_27@@32))
))) (forall ((o2_28@@18 T@Ref) (f_27@@33 T@Field_8433_24722) ) (!  (=> (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@18 f_27@@33) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@33) o2_28@@18 f_27@@33) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@18 f_27@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@18 f_27@@33))
))) (forall ((o2_28@@19 T@Ref) (f_27@@34 T@Field_8522_3004) ) (!  (=> (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@19 f_27@@34) (= (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@33) o2_28@@19 f_27@@34) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@19 f_27@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@19 f_27@@34))
))) (forall ((o2_28@@20 T@Ref) (f_27@@35 T@Field_8522_8434) ) (!  (=> (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@20 f_27@@35) (= (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@33) o2_28@@20 f_27@@35) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@20 f_27@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@20 f_27@@35))
))) (forall ((o2_28@@21 T@Ref) (f_27@@36 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@21 f_27@@36) (= (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@33) o2_28@@21 f_27@@36) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@21 f_27@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@21 f_27@@36))
))) (forall ((o2_28@@22 T@Ref) (f_27@@37 T@Field_21929_21930) ) (!  (=> (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@22 f_27@@37) (= (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@33) o2_28@@22 f_27@@37) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@22 f_27@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@22 f_27@@37))
))) (forall ((o2_28@@23 T@Ref) (f_27@@38 T@Field_24717_24722) ) (!  (=> (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@23 f_27@@38) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@33) o2_28@@23 f_27@@38) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@23 f_27@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@23 f_27@@38))
))) (forall ((o2_28@@24 T@Ref) (f_27@@39 T@Field_8548_3004) ) (!  (=> (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@24 f_27@@39) (= (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@33) o2_28@@24 f_27@@39) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@24 f_27@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@24 f_27@@39))
))) (forall ((o2_28@@25 T@Ref) (f_27@@40 T@Field_8548_8434) ) (!  (=> (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@25 f_27@@40) (= (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@33) o2_28@@25 f_27@@40) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@25 f_27@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@25 f_27@@40))
))) (forall ((o2_28@@26 T@Ref) (f_27@@41 T@Field_8548_53) ) (!  (=> (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@26 f_27@@41) (= (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@33) o2_28@@26 f_27@@41) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@26 f_27@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@26 f_27@@41))
))) (forall ((o2_28@@27 T@Ref) (f_27@@42 T@Field_26328_26329) ) (!  (=> (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@27 f_27@@42) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@33) o2_28@@27 f_27@@42) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@27 f_27@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@27 f_27@@42))
))) (forall ((o2_28@@28 T@Ref) (f_27@@43 T@Field_29155_29160) ) (!  (=> (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) null (PredicateMaskField_8548 pm_f_28@@6))) o2_28@@28 f_27@@43) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@33) o2_28@@28 f_27@@43) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@28 f_27@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@23) o2_28@@28 f_27@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@57) (IsPredicateField_8548_8549 pm_f_28@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15289) (ExhaleHeap@@24 T@PolymorphicMapType_15289) (Mask@@58 T@PolymorphicMapType_15310) (pm_f_28@@7 T@Field_8433_8549) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@58) (=> (and (HasDirectPerm_8433_8549 Mask@@58 null pm_f_28@@7) (IsPredicateField_8433_52942 pm_f_28@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@29 T@Ref) (f_27@@44 T@Field_21417_3004) ) (!  (=> (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@29 f_27@@44) (= (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@34) o2_28@@29 f_27@@44) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@29 f_27@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@29 f_27@@44))
)) (forall ((o2_28@@30 T@Ref) (f_27@@45 T@Field_15362_15363) ) (!  (=> (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@30 f_27@@45) (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@34) o2_28@@30 f_27@@45) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@30 f_27@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@30 f_27@@45))
))) (forall ((o2_28@@31 T@Ref) (f_27@@46 T@Field_15349_53) ) (!  (=> (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@31 f_27@@46) (= (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@34) o2_28@@31 f_27@@46) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@31 f_27@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@31 f_27@@46))
))) (forall ((o2_28@@32 T@Ref) (f_27@@47 T@Field_8433_8549) ) (!  (=> (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@32 f_27@@47) (= (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@34) o2_28@@32 f_27@@47) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@32 f_27@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@32 f_27@@47))
))) (forall ((o2_28@@33 T@Ref) (f_27@@48 T@Field_8433_24722) ) (!  (=> (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@33 f_27@@48) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) o2_28@@33 f_27@@48) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@33 f_27@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@33 f_27@@48))
))) (forall ((o2_28@@34 T@Ref) (f_27@@49 T@Field_8522_3004) ) (!  (=> (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@34 f_27@@49) (= (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@34) o2_28@@34 f_27@@49) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@34 f_27@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@34 f_27@@49))
))) (forall ((o2_28@@35 T@Ref) (f_27@@50 T@Field_8522_8434) ) (!  (=> (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@35 f_27@@50) (= (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@34) o2_28@@35 f_27@@50) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@35 f_27@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@35 f_27@@50))
))) (forall ((o2_28@@36 T@Ref) (f_27@@51 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@36 f_27@@51) (= (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@34) o2_28@@36 f_27@@51) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@36 f_27@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@36 f_27@@51))
))) (forall ((o2_28@@37 T@Ref) (f_27@@52 T@Field_21929_21930) ) (!  (=> (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@37 f_27@@52) (= (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@34) o2_28@@37 f_27@@52) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@37 f_27@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@37 f_27@@52))
))) (forall ((o2_28@@38 T@Ref) (f_27@@53 T@Field_24717_24722) ) (!  (=> (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@38 f_27@@53) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@34) o2_28@@38 f_27@@53) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@38 f_27@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@38 f_27@@53))
))) (forall ((o2_28@@39 T@Ref) (f_27@@54 T@Field_8548_3004) ) (!  (=> (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@39 f_27@@54) (= (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@34) o2_28@@39 f_27@@54) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@39 f_27@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@39 f_27@@54))
))) (forall ((o2_28@@40 T@Ref) (f_27@@55 T@Field_8548_8434) ) (!  (=> (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@40 f_27@@55) (= (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@34) o2_28@@40 f_27@@55) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@40 f_27@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@40 f_27@@55))
))) (forall ((o2_28@@41 T@Ref) (f_27@@56 T@Field_8548_53) ) (!  (=> (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@41 f_27@@56) (= (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@34) o2_28@@41 f_27@@56) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@41 f_27@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@41 f_27@@56))
))) (forall ((o2_28@@42 T@Ref) (f_27@@57 T@Field_26328_26329) ) (!  (=> (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@42 f_27@@57) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@34) o2_28@@42 f_27@@57) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@42 f_27@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@42 f_27@@57))
))) (forall ((o2_28@@43 T@Ref) (f_27@@58 T@Field_29155_29160) ) (!  (=> (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@34) null (PredicateMaskField_8433 pm_f_28@@7))) o2_28@@43 f_27@@58) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@34) o2_28@@43 f_27@@58) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@43 f_27@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@24) o2_28@@43 f_27@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@58) (IsPredicateField_8433_52942 pm_f_28@@7))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15289) (ExhaleHeap@@25 T@PolymorphicMapType_15289) (Mask@@59 T@PolymorphicMapType_15310) (pm_f_28@@8 T@Field_21929_21930) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@25 Mask@@59) (=> (and (HasDirectPerm_8522_8523 Mask@@59 null pm_f_28@@8) (IsWandField_8522_58623 pm_f_28@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@44 T@Ref) (f_27@@59 T@Field_21417_3004) ) (!  (=> (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@44 f_27@@59) (= (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@35) o2_28@@44 f_27@@59) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@44 f_27@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@44 f_27@@59))
)) (forall ((o2_28@@45 T@Ref) (f_27@@60 T@Field_15362_15363) ) (!  (=> (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@45 f_27@@60) (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@35) o2_28@@45 f_27@@60) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@45 f_27@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@45 f_27@@60))
))) (forall ((o2_28@@46 T@Ref) (f_27@@61 T@Field_15349_53) ) (!  (=> (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@46 f_27@@61) (= (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@35) o2_28@@46 f_27@@61) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@46 f_27@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@46 f_27@@61))
))) (forall ((o2_28@@47 T@Ref) (f_27@@62 T@Field_8433_8549) ) (!  (=> (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@47 f_27@@62) (= (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@35) o2_28@@47 f_27@@62) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@47 f_27@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@47 f_27@@62))
))) (forall ((o2_28@@48 T@Ref) (f_27@@63 T@Field_8433_24722) ) (!  (=> (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@48 f_27@@63) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@35) o2_28@@48 f_27@@63) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@48 f_27@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@48 f_27@@63))
))) (forall ((o2_28@@49 T@Ref) (f_27@@64 T@Field_8522_3004) ) (!  (=> (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@49 f_27@@64) (= (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@35) o2_28@@49 f_27@@64) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@49 f_27@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@49 f_27@@64))
))) (forall ((o2_28@@50 T@Ref) (f_27@@65 T@Field_8522_8434) ) (!  (=> (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@50 f_27@@65) (= (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@35) o2_28@@50 f_27@@65) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@50 f_27@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@50 f_27@@65))
))) (forall ((o2_28@@51 T@Ref) (f_27@@66 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@51 f_27@@66) (= (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@35) o2_28@@51 f_27@@66) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@51 f_27@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@51 f_27@@66))
))) (forall ((o2_28@@52 T@Ref) (f_27@@67 T@Field_21929_21930) ) (!  (=> (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@52 f_27@@67) (= (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@35) o2_28@@52 f_27@@67) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@52 f_27@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@52 f_27@@67))
))) (forall ((o2_28@@53 T@Ref) (f_27@@68 T@Field_24717_24722) ) (!  (=> (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@53 f_27@@68) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) o2_28@@53 f_27@@68) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@53 f_27@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@53 f_27@@68))
))) (forall ((o2_28@@54 T@Ref) (f_27@@69 T@Field_8548_3004) ) (!  (=> (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@54 f_27@@69) (= (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@35) o2_28@@54 f_27@@69) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@54 f_27@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@54 f_27@@69))
))) (forall ((o2_28@@55 T@Ref) (f_27@@70 T@Field_8548_8434) ) (!  (=> (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@55 f_27@@70) (= (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@35) o2_28@@55 f_27@@70) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@55 f_27@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@55 f_27@@70))
))) (forall ((o2_28@@56 T@Ref) (f_27@@71 T@Field_8548_53) ) (!  (=> (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@56 f_27@@71) (= (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@35) o2_28@@56 f_27@@71) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@56 f_27@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@56 f_27@@71))
))) (forall ((o2_28@@57 T@Ref) (f_27@@72 T@Field_26328_26329) ) (!  (=> (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@57 f_27@@72) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@35) o2_28@@57 f_27@@72) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@57 f_27@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@57 f_27@@72))
))) (forall ((o2_28@@58 T@Ref) (f_27@@73 T@Field_29155_29160) ) (!  (=> (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@35) null (WandMaskField_8522 pm_f_28@@8))) o2_28@@58 f_27@@73) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@35) o2_28@@58 f_27@@73) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@58 f_27@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@25) o2_28@@58 f_27@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@25 Mask@@59) (IsWandField_8522_58623 pm_f_28@@8))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15289) (ExhaleHeap@@26 T@PolymorphicMapType_15289) (Mask@@60 T@PolymorphicMapType_15310) (pm_f_28@@9 T@Field_26328_26329) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@26 Mask@@60) (=> (and (HasDirectPerm_8548_8549 Mask@@60 null pm_f_28@@9) (IsWandField_8548_58266 pm_f_28@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@59 T@Ref) (f_27@@74 T@Field_21417_3004) ) (!  (=> (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@59 f_27@@74) (= (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@36) o2_28@@59 f_27@@74) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@59 f_27@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@59 f_27@@74))
)) (forall ((o2_28@@60 T@Ref) (f_27@@75 T@Field_15362_15363) ) (!  (=> (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@60 f_27@@75) (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@36) o2_28@@60 f_27@@75) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@60 f_27@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@60 f_27@@75))
))) (forall ((o2_28@@61 T@Ref) (f_27@@76 T@Field_15349_53) ) (!  (=> (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@61 f_27@@76) (= (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@36) o2_28@@61 f_27@@76) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@61 f_27@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@61 f_27@@76))
))) (forall ((o2_28@@62 T@Ref) (f_27@@77 T@Field_8433_8549) ) (!  (=> (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@62 f_27@@77) (= (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@36) o2_28@@62 f_27@@77) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@62 f_27@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@62 f_27@@77))
))) (forall ((o2_28@@63 T@Ref) (f_27@@78 T@Field_8433_24722) ) (!  (=> (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@63 f_27@@78) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@36) o2_28@@63 f_27@@78) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@63 f_27@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@63 f_27@@78))
))) (forall ((o2_28@@64 T@Ref) (f_27@@79 T@Field_8522_3004) ) (!  (=> (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@64 f_27@@79) (= (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@36) o2_28@@64 f_27@@79) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@64 f_27@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@64 f_27@@79))
))) (forall ((o2_28@@65 T@Ref) (f_27@@80 T@Field_8522_8434) ) (!  (=> (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@65 f_27@@80) (= (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@36) o2_28@@65 f_27@@80) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@65 f_27@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@65 f_27@@80))
))) (forall ((o2_28@@66 T@Ref) (f_27@@81 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@66 f_27@@81) (= (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@36) o2_28@@66 f_27@@81) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@66 f_27@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@66 f_27@@81))
))) (forall ((o2_28@@67 T@Ref) (f_27@@82 T@Field_21929_21930) ) (!  (=> (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@67 f_27@@82) (= (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@36) o2_28@@67 f_27@@82) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@67 f_27@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@67 f_27@@82))
))) (forall ((o2_28@@68 T@Ref) (f_27@@83 T@Field_24717_24722) ) (!  (=> (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@68 f_27@@83) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@36) o2_28@@68 f_27@@83) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@68 f_27@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@68 f_27@@83))
))) (forall ((o2_28@@69 T@Ref) (f_27@@84 T@Field_8548_3004) ) (!  (=> (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@69 f_27@@84) (= (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@36) o2_28@@69 f_27@@84) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@69 f_27@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@69 f_27@@84))
))) (forall ((o2_28@@70 T@Ref) (f_27@@85 T@Field_8548_8434) ) (!  (=> (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@70 f_27@@85) (= (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@36) o2_28@@70 f_27@@85) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@70 f_27@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@70 f_27@@85))
))) (forall ((o2_28@@71 T@Ref) (f_27@@86 T@Field_8548_53) ) (!  (=> (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@71 f_27@@86) (= (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@36) o2_28@@71 f_27@@86) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@71 f_27@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@71 f_27@@86))
))) (forall ((o2_28@@72 T@Ref) (f_27@@87 T@Field_26328_26329) ) (!  (=> (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@72 f_27@@87) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@36) o2_28@@72 f_27@@87) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@72 f_27@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@72 f_27@@87))
))) (forall ((o2_28@@73 T@Ref) (f_27@@88 T@Field_29155_29160) ) (!  (=> (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) null (WandMaskField_8548 pm_f_28@@9))) o2_28@@73 f_27@@88) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@36) o2_28@@73 f_27@@88) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@73 f_27@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@26) o2_28@@73 f_27@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@26 Mask@@60) (IsWandField_8548_58266 pm_f_28@@9))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15289) (ExhaleHeap@@27 T@PolymorphicMapType_15289) (Mask@@61 T@PolymorphicMapType_15310) (pm_f_28@@10 T@Field_8433_8549) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@27 Mask@@61) (=> (and (HasDirectPerm_8433_8549 Mask@@61 null pm_f_28@@10) (IsWandField_8433_57909 pm_f_28@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@74 T@Ref) (f_27@@89 T@Field_21417_3004) ) (!  (=> (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@74 f_27@@89) (= (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@37) o2_28@@74 f_27@@89) (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@74 f_27@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@74 f_27@@89))
)) (forall ((o2_28@@75 T@Ref) (f_27@@90 T@Field_15362_15363) ) (!  (=> (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@75 f_27@@90) (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@37) o2_28@@75 f_27@@90) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@75 f_27@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@75 f_27@@90))
))) (forall ((o2_28@@76 T@Ref) (f_27@@91 T@Field_15349_53) ) (!  (=> (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@76 f_27@@91) (= (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@37) o2_28@@76 f_27@@91) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@76 f_27@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@76 f_27@@91))
))) (forall ((o2_28@@77 T@Ref) (f_27@@92 T@Field_8433_8549) ) (!  (=> (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@77 f_27@@92) (= (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@37) o2_28@@77 f_27@@92) (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@77 f_27@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@77 f_27@@92))
))) (forall ((o2_28@@78 T@Ref) (f_27@@93 T@Field_8433_24722) ) (!  (=> (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@78 f_27@@93) (= (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) o2_28@@78 f_27@@93) (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@78 f_27@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@78 f_27@@93))
))) (forall ((o2_28@@79 T@Ref) (f_27@@94 T@Field_8522_3004) ) (!  (=> (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@79 f_27@@94) (= (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@37) o2_28@@79 f_27@@94) (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@79 f_27@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@79 f_27@@94))
))) (forall ((o2_28@@80 T@Ref) (f_27@@95 T@Field_8522_8434) ) (!  (=> (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@80 f_27@@95) (= (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@37) o2_28@@80 f_27@@95) (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@80 f_27@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@80 f_27@@95))
))) (forall ((o2_28@@81 T@Ref) (f_27@@96 T@Field_8522_53) ) (!  (=> (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@81 f_27@@96) (= (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@37) o2_28@@81 f_27@@96) (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@81 f_27@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@81 f_27@@96))
))) (forall ((o2_28@@82 T@Ref) (f_27@@97 T@Field_21929_21930) ) (!  (=> (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@82 f_27@@97) (= (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@37) o2_28@@82 f_27@@97) (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@82 f_27@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@82 f_27@@97))
))) (forall ((o2_28@@83 T@Ref) (f_27@@98 T@Field_24717_24722) ) (!  (=> (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@83 f_27@@98) (= (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@37) o2_28@@83 f_27@@98) (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@83 f_27@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@83 f_27@@98))
))) (forall ((o2_28@@84 T@Ref) (f_27@@99 T@Field_8548_3004) ) (!  (=> (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@84 f_27@@99) (= (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@37) o2_28@@84 f_27@@99) (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@84 f_27@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@84 f_27@@99))
))) (forall ((o2_28@@85 T@Ref) (f_27@@100 T@Field_8548_8434) ) (!  (=> (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@85 f_27@@100) (= (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@37) o2_28@@85 f_27@@100) (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@85 f_27@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@85 f_27@@100))
))) (forall ((o2_28@@86 T@Ref) (f_27@@101 T@Field_8548_53) ) (!  (=> (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@86 f_27@@101) (= (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@37) o2_28@@86 f_27@@101) (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@86 f_27@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@86 f_27@@101))
))) (forall ((o2_28@@87 T@Ref) (f_27@@102 T@Field_26328_26329) ) (!  (=> (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@87 f_27@@102) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@37) o2_28@@87 f_27@@102) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@87 f_27@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@87 f_27@@102))
))) (forall ((o2_28@@88 T@Ref) (f_27@@103 T@Field_29155_29160) ) (!  (=> (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@37) null (WandMaskField_8433 pm_f_28@@10))) o2_28@@88 f_27@@103) (= (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@37) o2_28@@88 f_27@@103) (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@88 f_27@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| ExhaleHeap@@27) o2_28@@88 f_27@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@27 Mask@@61) (IsWandField_8433_57909 pm_f_28@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.535:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3026| a b) (= a b))
 :qid |stdinbpl.508:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3026| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.401:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_2867|) (= (|Seq#Append_3004| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2867|) (= (|Seq#Append_3004| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.219:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3004| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3004| t@@1) 0) t@@1)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3004| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((start@@14 T@Ref) (end@@7 T@Ref) ) (! (= (getPredWandId_8548_8549 (lseg start@@14 end@@7)) 1)
 :qid |stdinbpl.913:15|
 :skolemid |76|
 :pattern ( (lseg start@@14 end@@7))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3026| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.498:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.495:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3026| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15289) (Mask@@62 T@PolymorphicMapType_15310) (start@@15 T@Ref) ) (!  (=> (state Heap@@38 Mask@@62) (= (|elems'| Heap@@38 start@@15) (|elems#frame| (select (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@38) null (list start@@15)) start@@15)))
 :qid |stdinbpl.579:15|
 :skolemid |61|
 :pattern ( (state Heap@@38 Mask@@62) (|elems'| Heap@@38 start@@15))
 :pattern ( (state Heap@@38 Mask@@62) (|elems#triggerStateless| start@@15) (|list#trigger_8522| Heap@@38 (list start@@15)))
)))
(assert (forall ((start@@16 T@Ref) ) (! (= (getPredWandId_8522_8523 (list start@@16)) 0)
 :qid |stdinbpl.841:15|
 :skolemid |70|
 :pattern ( (list start@@16))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3004| t@@2)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3004| t@@2))
)))
(assert (forall ((start@@17 T@Ref) (end@@8 T@Ref) ) (! (= (PredicateMaskField_8548 (lseg start@@17 end@@8)) (|lseg#sm| start@@17 end@@8))
 :qid |stdinbpl.905:15|
 :skolemid |74|
 :pattern ( (PredicateMaskField_8548 (lseg start@@17 end@@8)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_3004| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.352:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3004| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15289) (o_22 T@Ref) (f_12 T@Field_29155_29160) (v@@2 T@PolymorphicMapType_15838) ) (! (succHeap Heap@@39 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@39) (store (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@39) o_22 f_12 v@@2) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@39) (store (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@39) o_22 f_12 v@@2) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@39) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15289) (o_22@@0 T@Ref) (f_12@@0 T@Field_26328_26329) (v@@3 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@40) (store (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@40) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@40) (store (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@40) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@40) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15289) (o_22@@1 T@Ref) (f_12@@1 T@Field_8548_3004) (v@@4 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@41) (store (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@41) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@41) (store (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@41) o_22@@1 f_12@@1 v@@4) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@41) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15289) (o_22@@2 T@Ref) (f_12@@2 T@Field_8548_8434) (v@@5 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@42) (store (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@42) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@42) (store (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@42) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@42) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15289) (o_22@@3 T@Ref) (f_12@@3 T@Field_8548_53) (v@@6 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@43) (store (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@43) o_22@@3 f_12@@3 v@@6) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@43) (store (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@43) o_22@@3 f_12@@3 v@@6) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@43) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15289) (o_22@@4 T@Ref) (f_12@@4 T@Field_24717_24722) (v@@7 T@PolymorphicMapType_15838) ) (! (succHeap Heap@@44 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@44) (store (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@44) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@44) (store (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@44) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@44) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15289) (o_22@@5 T@Ref) (f_12@@5 T@Field_21929_21930) (v@@8 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@45) (store (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@45) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@45) (store (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@45) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@45) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_15289) (o_22@@6 T@Ref) (f_12@@6 T@Field_8522_3004) (v@@9 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@46) (store (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@46) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@46) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@46) (store (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@46) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_15289) (o_22@@7 T@Ref) (f_12@@7 T@Field_8522_8434) (v@@10 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@47) (store (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@47) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@47) (store (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@47) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@47) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_15289) (o_22@@8 T@Ref) (f_12@@8 T@Field_8522_53) (v@@11 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@48) (store (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@48) o_22@@8 f_12@@8 v@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@48) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@48) (store (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@48) o_22@@8 f_12@@8 v@@11)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_15289) (o_22@@9 T@Ref) (f_12@@9 T@Field_8433_24722) (v@@12 T@PolymorphicMapType_15838) ) (! (succHeap Heap@@49 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@49) (store (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@49) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@49) (store (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@49) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@49) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_15289) (o_22@@10 T@Ref) (f_12@@10 T@Field_8433_8549) (v@@13 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@50) (store (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@50) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@50) (store (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@50) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@50) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_15289) (o_22@@11 T@Ref) (f_12@@11 T@Field_21417_3004) (v@@14 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@51) (store (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@51) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@51) (store (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@51) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@51) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_15289) (o_22@@12 T@Ref) (f_12@@12 T@Field_15362_15363) (v@@15 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@52) (store (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@52) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@52) (store (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@52) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@52) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_15289) (o_22@@13 T@Ref) (f_12@@13 T@Field_15349_53) (v@@16 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_15289 (store (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@53) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15289 (store (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@53) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@53) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@53)))
)))
(assert (forall ((start@@18 T@Ref) ) (! (= (PredicateMaskField_8522 (list start@@18)) (|list#sm| start@@18))
 :qid |stdinbpl.833:15|
 :skolemid |68|
 :pattern ( (PredicateMaskField_8522 (list start@@18)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_3004| s@@12 t@@4) n@@9) (|Seq#Append_3004| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.366:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3004| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.302:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2867|)) (not (= s1@@3 |Seq#Empty_2867|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3004| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.242:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3004| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3004| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2867|)) (not (= s1@@4 |Seq#Empty_2867|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3004| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3004| s0@@4 s1@@4))
)))
(assert (forall ((o_22@@14 T@Ref) (f_30 T@Field_15362_15363) (Heap@@54 T@PolymorphicMapType_15289) ) (!  (=> (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@54) o_22@@14 $allocated) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@54) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@54) o_22@@14 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@54) o_22@@14 f_30))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.399:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3026| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3026| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3026| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.503:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3026| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_8433_8549) (v_1@@2 T@FrameType) (q T@Field_8433_8549) (w@@2 T@FrameType) (r T@Field_8433_8549) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15349_15349 p@@3 v_1@@2 q w@@2) (InsidePredicate_15349_15349 q w@@2 r u)) (InsidePredicate_15349_15349 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_15349 p@@3 v_1@@2 q w@@2) (InsidePredicate_15349_15349 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_8433_8549) (v_1@@3 T@FrameType) (q@@0 T@Field_8433_8549) (w@@3 T@FrameType) (r@@0 T@Field_26328_26329) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_15349 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15349_8548 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_15349_8548 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_15349 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15349_8548 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_8433_8549) (v_1@@4 T@FrameType) (q@@1 T@Field_8433_8549) (w@@4 T@FrameType) (r@@1 T@Field_21929_21930) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_15349 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15349_8522 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_15349_8522 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_15349 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15349_8522 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_8433_8549) (v_1@@5 T@FrameType) (q@@2 T@Field_26328_26329) (w@@5 T@FrameType) (r@@2 T@Field_8433_8549) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_8548 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8548_15349 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_15349_15349 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_8548 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8548_15349 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_8433_8549) (v_1@@6 T@FrameType) (q@@3 T@Field_26328_26329) (w@@6 T@FrameType) (r@@3 T@Field_26328_26329) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_8548 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8548_8548 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_15349_8548 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_8548 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8548_8548 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_8433_8549) (v_1@@7 T@FrameType) (q@@4 T@Field_26328_26329) (w@@7 T@FrameType) (r@@4 T@Field_21929_21930) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_8548 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8548_8522 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_15349_8522 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_8548 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8548_8522 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_8433_8549) (v_1@@8 T@FrameType) (q@@5 T@Field_21929_21930) (w@@8 T@FrameType) (r@@5 T@Field_8433_8549) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_8522 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8522_15349 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_15349_15349 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_8522 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8522_15349 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_8433_8549) (v_1@@9 T@FrameType) (q@@6 T@Field_21929_21930) (w@@9 T@FrameType) (r@@6 T@Field_26328_26329) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_8522 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8522_8548 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_15349_8548 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_8522 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8522_8548 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_8433_8549) (v_1@@10 T@FrameType) (q@@7 T@Field_21929_21930) (w@@10 T@FrameType) (r@@7 T@Field_21929_21930) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_15349_8522 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8522_8522 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_15349_8522 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15349_8522 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8522_8522 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_26328_26329) (v_1@@11 T@FrameType) (q@@8 T@Field_8433_8549) (w@@11 T@FrameType) (r@@8 T@Field_8433_8549) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_15349 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15349_15349 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_8548_15349 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_15349 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15349_15349 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_26328_26329) (v_1@@12 T@FrameType) (q@@9 T@Field_8433_8549) (w@@12 T@FrameType) (r@@9 T@Field_26328_26329) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_15349 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15349_8548 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_8548_8548 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_15349 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15349_8548 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_26328_26329) (v_1@@13 T@FrameType) (q@@10 T@Field_8433_8549) (w@@13 T@FrameType) (r@@10 T@Field_21929_21930) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_15349 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15349_8522 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_8548_8522 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_15349 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15349_8522 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_26328_26329) (v_1@@14 T@FrameType) (q@@11 T@Field_26328_26329) (w@@14 T@FrameType) (r@@11 T@Field_8433_8549) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_8548 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8548_15349 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_8548_15349 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_8548 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8548_15349 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_26328_26329) (v_1@@15 T@FrameType) (q@@12 T@Field_26328_26329) (w@@15 T@FrameType) (r@@12 T@Field_26328_26329) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_8548 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8548_8548 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_8548_8548 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_8548 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8548_8548 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_26328_26329) (v_1@@16 T@FrameType) (q@@13 T@Field_26328_26329) (w@@16 T@FrameType) (r@@13 T@Field_21929_21930) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_8548 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8548_8522 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_8548_8522 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_8548 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8548_8522 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_26328_26329) (v_1@@17 T@FrameType) (q@@14 T@Field_21929_21930) (w@@17 T@FrameType) (r@@14 T@Field_8433_8549) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_8522 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8522_15349 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_8548_15349 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_8522 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8522_15349 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_26328_26329) (v_1@@18 T@FrameType) (q@@15 T@Field_21929_21930) (w@@18 T@FrameType) (r@@15 T@Field_26328_26329) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_8522 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8522_8548 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_8548_8548 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_8522 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8522_8548 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_26328_26329) (v_1@@19 T@FrameType) (q@@16 T@Field_21929_21930) (w@@19 T@FrameType) (r@@16 T@Field_21929_21930) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_8548_8522 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8522_8522 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_8548_8522 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8548_8522 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8522_8522 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_21929_21930) (v_1@@20 T@FrameType) (q@@17 T@Field_8433_8549) (w@@20 T@FrameType) (r@@17 T@Field_8433_8549) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_15349 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15349_15349 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_8522_15349 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_15349 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15349_15349 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_21929_21930) (v_1@@21 T@FrameType) (q@@18 T@Field_8433_8549) (w@@21 T@FrameType) (r@@18 T@Field_26328_26329) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_15349 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15349_8548 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_8522_8548 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_15349 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15349_8548 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_21929_21930) (v_1@@22 T@FrameType) (q@@19 T@Field_8433_8549) (w@@22 T@FrameType) (r@@19 T@Field_21929_21930) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_15349 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15349_8522 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_8522_8522 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_15349 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15349_8522 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_21929_21930) (v_1@@23 T@FrameType) (q@@20 T@Field_26328_26329) (w@@23 T@FrameType) (r@@20 T@Field_8433_8549) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8548 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8548_15349 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_8522_15349 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8548 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8548_15349 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_21929_21930) (v_1@@24 T@FrameType) (q@@21 T@Field_26328_26329) (w@@24 T@FrameType) (r@@21 T@Field_26328_26329) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8548 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8548_8548 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_8522_8548 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8548 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8548_8548 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_21929_21930) (v_1@@25 T@FrameType) (q@@22 T@Field_26328_26329) (w@@25 T@FrameType) (r@@22 T@Field_21929_21930) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8548 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8548_8522 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_8522_8522 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8548 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8548_8522 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_21929_21930) (v_1@@26 T@FrameType) (q@@23 T@Field_21929_21930) (w@@26 T@FrameType) (r@@23 T@Field_8433_8549) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8522 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8522_15349 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_8522_15349 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8522 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8522_15349 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_21929_21930) (v_1@@27 T@FrameType) (q@@24 T@Field_21929_21930) (w@@27 T@FrameType) (r@@24 T@Field_26328_26329) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8522 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8522_8548 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_8522_8548 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8522 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8522_8548 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_21929_21930) (v_1@@28 T@FrameType) (q@@25 T@Field_21929_21930) (w@@28 T@FrameType) (r@@25 T@Field_21929_21930) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8522_8522 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8522_8522 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_8522_8522 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8522_8522 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8522_8522 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_2867|))
 :qid |stdinbpl.206:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_2867|))
 :qid |stdinbpl.382:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_15289)
(declare-fun start@@19 () T@Ref)
(declare-fun end@@9 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_15289)
(declare-fun newPMask@0 () T@PolymorphicMapType_15838)
(declare-fun Heap@2 () T@PolymorphicMapType_15289)
(declare-fun Heap@0 () T@PolymorphicMapType_15289)
(declare-fun Heap@@55 () T@PolymorphicMapType_15289)
(declare-fun |lsegelems#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_15310)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_15310)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_15310)
(declare-fun Mask@0 () T@PolymorphicMapType_15310)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3004 (Int) T@FrameType)
(declare-fun FrameFragment_8434 (T@Ref) T@FrameType)
(declare-fun FrameFragment_8523 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_15310)
(set-info :boogie-vc-id |lsegelems#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon9_correct true))
(let ((anon13_Else_correct  (=> (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 5) 3)) anon9_correct))))
(let ((anon13_Then_correct  (=> (not (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_21417_3004) ) (!  (=> (or (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16 f_21) (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16 f_21)) (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| newPMask@0) o_16 f_21))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| newPMask@0) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_15362_15363) ) (!  (=> (or (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| newPMask@0) o_16@@0 f_21@@0))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| newPMask@0) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_15349_53) ) (!  (=> (or (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| newPMask@0) o_16@@1 f_21@@1))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| newPMask@0) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_8433_8549) ) (!  (=> (or (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| newPMask@0) o_16@@2 f_21@@2))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| newPMask@0) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_8433_24722) ) (!  (=> (or (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| newPMask@0) o_16@@3 f_21@@3))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| newPMask@0) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_8522_3004) ) (!  (=> (or (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| newPMask@0) o_16@@4 f_21@@4))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| newPMask@0) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_8522_8434) ) (!  (=> (or (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| newPMask@0) o_16@@5 f_21@@5))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| newPMask@0) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_8522_53) ) (!  (=> (or (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| newPMask@0) o_16@@6 f_21@@6))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| newPMask@0) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_21929_21930) ) (!  (=> (or (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| newPMask@0) o_16@@7 f_21@@7))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| newPMask@0) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_24717_24722) ) (!  (=> (or (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| newPMask@0) o_16@@8 f_21@@8))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| newPMask@0) o_16@@8 f_21@@8))
))) (forall ((o_16@@9 T@Ref) (f_21@@9 T@Field_8548_3004) ) (!  (=> (or (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@9 f_21@@9) (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@9 f_21@@9)) (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| newPMask@0) o_16@@9 f_21@@9))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| newPMask@0) o_16@@9 f_21@@9))
))) (forall ((o_16@@10 T@Ref) (f_21@@10 T@Field_8548_8434) ) (!  (=> (or (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@10 f_21@@10) (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@10 f_21@@10)) (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| newPMask@0) o_16@@10 f_21@@10))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| newPMask@0) o_16@@10 f_21@@10))
))) (forall ((o_16@@11 T@Ref) (f_21@@11 T@Field_8548_53) ) (!  (=> (or (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@11 f_21@@11) (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@11 f_21@@11)) (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| newPMask@0) o_16@@11 f_21@@11))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| newPMask@0) o_16@@11 f_21@@11))
))) (forall ((o_16@@12 T@Ref) (f_21@@12 T@Field_26328_26329) ) (!  (=> (or (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@12 f_21@@12) (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@12 f_21@@12)) (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| newPMask@0) o_16@@12 f_21@@12))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| newPMask@0) o_16@@12 f_21@@12))
))) (forall ((o_16@@13 T@Ref) (f_21@@13 T@Field_29155_29160) ) (!  (=> (or (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9))) o_16@@13 f_21@@13) (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) start@@19 next) end@@9))) o_16@@13 f_21@@13)) (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| newPMask@0) o_16@@13 f_21@@13))
 :qid |stdinbpl.814:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| newPMask@0) o_16@@13 f_21@@13))
))) (= Heap@2 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@1) (store (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@1) null (|lseg#sm| start@@19 end@@9) newPMask@0) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@1) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 4) 3))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@55) (store (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9) (PolymorphicMapType_15838 (store (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) start@@19 val true) (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@@55) null (|lseg#sm| start@@19 end@@9))))) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@@55) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@@55))) (= Heap@1 (PolymorphicMapType_15289 (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8522_8523#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8526_24809#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@0) (store (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9) (PolymorphicMapType_15838 (|PolymorphicMapType_15838_8436_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (store (|PolymorphicMapType_15838_8433_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) start@@19 next true) (|PolymorphicMapType_15838_8436_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_8436_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_8436_54724#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_21929_55772#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_3004#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_8434#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_53#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_21930#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))) (|PolymorphicMapType_15838_26328_56820#PolymorphicMapType_15838| (select (|PolymorphicMapType_15289_8553_29252#PolymorphicMapType_15289| Heap@0) null (|lseg#sm| start@@19 end@@9))))) (|PolymorphicMapType_15289_8433_8549#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8433_50500#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8548_8434#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8548_3004#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8548_53#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8522_8434#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8522_3004#PolymorphicMapType_15289| Heap@0) (|PolymorphicMapType_15289_8522_53#PolymorphicMapType_15289| Heap@0)))) (and (=> (= (ControlFlow 0 6) 4) anon13_Then_correct) (=> (= (ControlFlow 0 6) 5) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (|lsegelems#trigger| (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@55) null (lseg (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9)) (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9) (= (ControlFlow 0 9) 6)) anon7_correct)))
(let ((anon11_Then_correct  (=> (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_8436_3004 UnfoldingMask@3 start@@19 val)) (=> (HasDirectPerm_8436_3004 UnfoldingMask@3 start@@19 val) (=> (= (ControlFlow 0 7) 6) anon7_correct))))))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| UnfoldingMask@3) null (lseg (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9)))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (HasDirectPerm_8436_3004 UnfoldingMask@3 start@@19 val)) (=> (HasDirectPerm_8436_3004 UnfoldingMask@3 start@@19 val) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_8433_8434 UnfoldingMask@3 start@@19 next)) (=> (HasDirectPerm_8433_8434 UnfoldingMask@3 start@@19 next) (and (=> (= (ControlFlow 0 10) 2) anon12_Then_correct) (=> (= (ControlFlow 0 10) 9) anon12_Else_correct)))))))))
(let ((anon2_correct  (=> (state Heap@@55 UnfoldingMask@3) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_8433_8434 UnfoldingMask@3 start@@19 next)) (=> (HasDirectPerm_8433_8434 UnfoldingMask@3 start@@19 next) (and (=> (= (ControlFlow 0 13) 7) anon11_Then_correct) (=> (= (ControlFlow 0 13) 10) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 16) 13)) anon2_correct))))
(let ((anon10_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9)) (= UnfoldingMask@2 (PolymorphicMapType_15310 (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| UnfoldingMask@1) (store (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| UnfoldingMask@1) null (lseg (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9) (+ (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| UnfoldingMask@1) null (lseg (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9)) FullPerm)) (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| UnfoldingMask@1) (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_8548_8548 (lseg start@@19 end@@9) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@55) null (lseg start@@19 end@@9)) (lseg (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@55) null (lseg (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9))) (state Heap@@55 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 15) 13))) anon2_correct))))
(let ((anon0_correct  (=> (and (state Heap@@55 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (and (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@55) start@@19 $allocated) (select (|PolymorphicMapType_15289_8245_53#PolymorphicMapType_15289| Heap@@55) end@@9 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_15310 (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| ZeroMask) (store (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| ZeroMask) null (lseg start@@19 end@@9) (+ (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| ZeroMask) null (lseg start@@19 end@@9)) FullPerm)) (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| ZeroMask) (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| ZeroMask))))) (and (and (state Heap@@55 Mask@0) (state Heap@@55 Mask@0)) (and (|lseg#trigger_8548| Heap@@55 (lseg start@@19 end@@9)) (= (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@55) null (lseg start@@19 end@@9)) (CombineFrames (FrameFragment_3004 (select (|PolymorphicMapType_15289_8436_3004#PolymorphicMapType_15289| Heap@@55) start@@19 val)) (CombineFrames (FrameFragment_8434 (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next)) (FrameFragment_8523 (ite (not (= (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9)) (select (|PolymorphicMapType_15289_8548_8549#PolymorphicMapType_15289| Heap@@55) null (lseg (select (|PolymorphicMapType_15289_8248_8249#PolymorphicMapType_15289| Heap@@55) start@@19 next) end@@9)) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| Mask@0) null (lseg start@@19 end@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| Mask@0) null (lseg start@@19 end@@9)))) (=> (and (not (= start@@19 null)) (= UnfoldingMask@0 (PolymorphicMapType_15310 (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| Mask@0) (store (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| Mask@0) start@@19 val (+ (select (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| Mask@0) start@@19 val) FullPerm)) (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| Mask@0) (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| Mask@0)))) (=> (and (and (state Heap@@55 UnfoldingMask@0) (not (= start@@19 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_15310 (|PolymorphicMapType_15310_8522_8523#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8436_3004#PolymorphicMapType_15310| UnfoldingMask@0) (store (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| UnfoldingMask@0) start@@19 next (+ (select (|PolymorphicMapType_15310_8433_8434#PolymorphicMapType_15310| UnfoldingMask@0) start@@19 next) FullPerm)) (|PolymorphicMapType_15310_8548_8549#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8522_3004#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8522_8434#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8522_53#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8522_64661#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8436_8523#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8436_53#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8436_65060#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8548_3004#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8548_8434#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8548_53#PolymorphicMapType_15310| UnfoldingMask@0) (|PolymorphicMapType_15310_8548_65471#PolymorphicMapType_15310| UnfoldingMask@0))) (state Heap@@55 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 17) 15) anon10_Then_correct) (=> (= (ControlFlow 0 17) 16) anon10_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
