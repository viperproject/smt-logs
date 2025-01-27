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
(declare-sort T@Field_22632_53 0)
(declare-sort T@Field_22645_22646 0)
(declare-sort T@Field_28740_3565 0)
(declare-sort T@Field_29641_29642 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_29654_29659 0)
(declare-sort T@Field_30568_30569 0)
(declare-sort T@Field_28816_28818 0)
(declare-sort T@Seq_3443 0)
(declare-sort T@Field_14499_29642 0)
(declare-sort T@Field_14499_29659 0)
(declare-sort T@Field_29641_3565 0)
(declare-sort T@Field_29641_53 0)
(declare-sort T@Field_29641_22646 0)
(declare-sort T@Field_29641_28818 0)
(declare-sort T@Field_30568_3565 0)
(declare-sort T@Field_30568_53 0)
(declare-sort T@Field_30568_22646 0)
(declare-sort T@Field_30568_28818 0)
(declare-sort T@Field_30580_30585 0)
(declare-datatypes ((T@PolymorphicMapType_22593 0)) (((PolymorphicMapType_22593 (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| (Array T@Ref T@Field_28740_3565 Real)) (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_29642 Real)) (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_30569 Real)) (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| (Array T@Ref T@Field_14499_29642 Real)) (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| (Array T@Ref T@Field_22632_53 Real)) (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| (Array T@Ref T@Field_22645_22646 Real)) (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| (Array T@Ref T@Field_28816_28818 Real)) (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| (Array T@Ref T@Field_14499_29659 Real)) (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_3565 Real)) (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_53 Real)) (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_22646 Real)) (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_28818 Real)) (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| (Array T@Ref T@Field_29654_29659 Real)) (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_3565 Real)) (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_53 Real)) (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_22646 Real)) (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_28818 Real)) (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| (Array T@Ref T@Field_30580_30585 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23121 0)) (((PolymorphicMapType_23121 (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (Array T@Ref T@Field_28740_3565 Bool)) (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (Array T@Ref T@Field_22632_53 Bool)) (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (Array T@Ref T@Field_22645_22646 Bool)) (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (Array T@Ref T@Field_28816_28818 Bool)) (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (Array T@Ref T@Field_14499_29642 Bool)) (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (Array T@Ref T@Field_14499_29659 Bool)) (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_3565 Bool)) (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_53 Bool)) (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_22646 Bool)) (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_28818 Bool)) (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_29642 Bool)) (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (Array T@Ref T@Field_29654_29659 Bool)) (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_3565 Bool)) (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_53 Bool)) (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_22646 Bool)) (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_28818 Bool)) (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_30569 Bool)) (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (Array T@Ref T@Field_30580_30585 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22572 0)) (((PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| (Array T@Ref T@Field_22632_53 Bool)) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| (Array T@Ref T@Field_22645_22646 T@Ref)) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| (Array T@Ref T@Field_28740_3565 Int)) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_29642 T@FrameType)) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| (Array T@Ref T@Field_29654_29659 T@PolymorphicMapType_23121)) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_30569 T@FrameType)) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| (Array T@Ref T@Field_28816_28818 T@Seq_3443)) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| (Array T@Ref T@Field_14499_29642 T@FrameType)) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| (Array T@Ref T@Field_14499_29659 T@PolymorphicMapType_23121)) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_3565 Int)) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_53 Bool)) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_22646 T@Ref)) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_28818 T@Seq_3443)) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_3565 Int)) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_53 Bool)) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_22646 T@Ref)) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_28818 T@Seq_3443)) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| (Array T@Ref T@Field_30580_30585 T@PolymorphicMapType_23121)) ) ) ))
(declare-fun $allocated () T@Field_22632_53)
(declare-fun f_7 () T@Field_28740_3565)
(declare-fun g () T@Field_28740_3565)
(declare-fun vals () T@Field_28816_28818)
(declare-sort T@Seq_28873 0)
(declare-fun |Seq#Length_14522| (T@Seq_28873) Int)
(declare-fun |Seq#Drop_14522| (T@Seq_28873 Int) T@Seq_28873)
(declare-fun |Seq#Length_3443| (T@Seq_3443) Int)
(declare-fun |Seq#Drop_3443| (T@Seq_3443 Int) T@Seq_3443)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22572 T@PolymorphicMapType_22572 T@PolymorphicMapType_22593) Bool)
(declare-fun IsPredicateField_14569_14570 (T@Field_30568_30569) Bool)
(declare-fun HasDirectPerm_30568_29642 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_30569) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_14569 (T@Field_30568_30569) T@Field_30580_30585)
(declare-fun IsPredicateField_14545_14546 (T@Field_29641_29642) Bool)
(declare-fun HasDirectPerm_29641_29642 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_29642) Bool)
(declare-fun PredicateMaskField_14545 (T@Field_29641_29642) T@Field_29654_29659)
(declare-fun IsPredicateField_14499_72689 (T@Field_14499_29642) Bool)
(declare-fun HasDirectPerm_14499_29642 (T@PolymorphicMapType_22593 T@Ref T@Field_14499_29642) Bool)
(declare-fun PredicateMaskField_14499 (T@Field_14499_29642) T@Field_14499_29659)
(declare-fun IsWandField_30568_78997 (T@Field_30568_30569) Bool)
(declare-fun WandMaskField_30568 (T@Field_30568_30569) T@Field_30580_30585)
(declare-fun IsWandField_29641_78640 (T@Field_29641_29642) Bool)
(declare-fun WandMaskField_29641 (T@Field_29641_29642) T@Field_29654_29659)
(declare-fun IsWandField_14499_78283 (T@Field_14499_29642) Bool)
(declare-fun WandMaskField_14499 (T@Field_14499_29642) T@Field_14499_29659)
(declare-fun succHeap (T@PolymorphicMapType_22572 T@PolymorphicMapType_22572) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22572 T@PolymorphicMapType_22572) Bool)
(declare-fun state (T@PolymorphicMapType_22572 T@PolymorphicMapType_22593) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22593) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_23121)
(declare-fun |get_val'| (T@PolymorphicMapType_22572 T@Seq_28873 Int) T@Ref)
(declare-fun dummyFunction_14537 (T@Ref) Bool)
(declare-fun |get_val#triggerStateless| (T@Seq_28873 Int) T@Ref)
(declare-fun |Seq#Index_14522| (T@Seq_28873 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3443| (T@Seq_3443 Int) Int)
(declare-fun |get_val#frame| (T@FrameType T@Seq_28873 Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_14522| () T@Seq_28873)
(declare-fun |Seq#Empty_3443| () T@Seq_3443)
(declare-fun pred_1 (T@Ref) T@Field_29641_29642)
(declare-fun pred2 (Int) T@Field_30568_30569)
(declare-fun |pred#trigger_14545| (T@PolymorphicMapType_22572 T@Field_29641_29642) Bool)
(declare-fun |pred#everUsed_14545| (T@Field_29641_29642) Bool)
(declare-fun |pred2#trigger_14569| (T@PolymorphicMapType_22572 T@Field_30568_30569) Bool)
(declare-fun |pred2#everUsed_14569| (T@Field_30568_30569) Bool)
(declare-fun |Seq#Update_14522| (T@Seq_28873 Int T@Ref) T@Seq_28873)
(declare-fun |Seq#Update_3443| (T@Seq_3443 Int Int) T@Seq_3443)
(declare-fun |Seq#Take_14522| (T@Seq_28873 Int) T@Seq_28873)
(declare-fun |Seq#Take_3443| (T@Seq_3443 Int) T@Seq_3443)
(declare-fun |Seq#Contains_3443| (T@Seq_3443 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3443)
(declare-fun |Seq#Contains_14583| (T@Seq_28873 T@Ref) Bool)
(declare-fun |Seq#Skolem_14583| (T@Seq_28873 T@Ref) Int)
(declare-fun |Seq#Skolem_3443| (T@Seq_3443 Int) Int)
(declare-fun |Seq#Singleton_14522| (T@Ref) T@Seq_28873)
(declare-fun |Seq#Singleton_3443| (Int) T@Seq_3443)
(declare-fun |pred#sm| (T@Ref) T@Field_29654_29659)
(declare-fun |pred2#sm| (Int) T@Field_30580_30585)
(declare-fun |Seq#Append_28873| (T@Seq_28873 T@Seq_28873) T@Seq_28873)
(declare-fun |Seq#Append_3443| (T@Seq_3443 T@Seq_3443) T@Seq_3443)
(declare-fun dummyHeap () T@PolymorphicMapType_22572)
(declare-fun ZeroMask () T@PolymorphicMapType_22593)
(declare-fun InsidePredicate_30568_30568 (T@Field_30568_30569 T@FrameType T@Field_30568_30569 T@FrameType) Bool)
(declare-fun InsidePredicate_29641_29641 (T@Field_29641_29642 T@FrameType T@Field_29641_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_22632_22632 (T@Field_14499_29642 T@FrameType T@Field_14499_29642 T@FrameType) Bool)
(declare-fun IsPredicateField_14499_3565 (T@Field_28740_3565) Bool)
(declare-fun IsWandField_14499_3565 (T@Field_28740_3565) Bool)
(declare-fun IsPredicateField_14503_28837 (T@Field_28816_28818) Bool)
(declare-fun IsWandField_14503_28860 (T@Field_28816_28818) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14569_91152 (T@Field_30580_30585) Bool)
(declare-fun IsWandField_14569_91168 (T@Field_30580_30585) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14569_28818 (T@Field_30568_28818) Bool)
(declare-fun IsWandField_14569_28818 (T@Field_30568_28818) Bool)
(declare-fun IsPredicateField_14569_22646 (T@Field_30568_22646) Bool)
(declare-fun IsWandField_14569_22646 (T@Field_30568_22646) Bool)
(declare-fun IsPredicateField_14569_53 (T@Field_30568_53) Bool)
(declare-fun IsWandField_14569_53 (T@Field_30568_53) Bool)
(declare-fun IsPredicateField_14569_3565 (T@Field_30568_3565) Bool)
(declare-fun IsWandField_14569_3565 (T@Field_30568_3565) Bool)
(declare-fun IsPredicateField_14545_90153 (T@Field_29654_29659) Bool)
(declare-fun IsWandField_14545_90169 (T@Field_29654_29659) Bool)
(declare-fun IsPredicateField_14545_28818 (T@Field_29641_28818) Bool)
(declare-fun IsWandField_14545_28818 (T@Field_29641_28818) Bool)
(declare-fun IsPredicateField_14545_22646 (T@Field_29641_22646) Bool)
(declare-fun IsWandField_14545_22646 (T@Field_29641_22646) Bool)
(declare-fun IsPredicateField_14545_53 (T@Field_29641_53) Bool)
(declare-fun IsWandField_14545_53 (T@Field_29641_53) Bool)
(declare-fun IsPredicateField_14545_3565 (T@Field_29641_3565) Bool)
(declare-fun IsWandField_14545_3565 (T@Field_29641_3565) Bool)
(declare-fun IsPredicateField_14499_89154 (T@Field_14499_29659) Bool)
(declare-fun IsWandField_14499_89170 (T@Field_14499_29659) Bool)
(declare-fun IsPredicateField_14499_22646 (T@Field_22645_22646) Bool)
(declare-fun IsWandField_14499_22646 (T@Field_22645_22646) Bool)
(declare-fun IsPredicateField_14499_53 (T@Field_22632_53) Bool)
(declare-fun IsWandField_14499_53 (T@Field_22632_53) Bool)
(declare-fun HasDirectPerm_30568_72401 (T@PolymorphicMapType_22593 T@Ref T@Field_30580_30585) Bool)
(declare-fun HasDirectPerm_30568_28818 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_28818) Bool)
(declare-fun HasDirectPerm_30568_22646 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_22646) Bool)
(declare-fun HasDirectPerm_30568_53 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_53) Bool)
(declare-fun HasDirectPerm_30568_3565 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_3565) Bool)
(declare-fun HasDirectPerm_29641_71054 (T@PolymorphicMapType_22593 T@Ref T@Field_29654_29659) Bool)
(declare-fun HasDirectPerm_29641_28818 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_28818) Bool)
(declare-fun HasDirectPerm_29641_22646 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_22646) Bool)
(declare-fun HasDirectPerm_29641_53 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_53) Bool)
(declare-fun HasDirectPerm_29641_3565 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_3565) Bool)
(declare-fun HasDirectPerm_14499_69664 (T@PolymorphicMapType_22593 T@Ref T@Field_14499_29659) Bool)
(declare-fun HasDirectPerm_14499_28818 (T@PolymorphicMapType_22593 T@Ref T@Field_28816_28818) Bool)
(declare-fun HasDirectPerm_14499_22646 (T@PolymorphicMapType_22593 T@Ref T@Field_22645_22646) Bool)
(declare-fun HasDirectPerm_14499_53 (T@PolymorphicMapType_22593 T@Ref T@Field_22632_53) Bool)
(declare-fun HasDirectPerm_14499_3565 (T@PolymorphicMapType_22593 T@Ref T@Field_28740_3565) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun get_val (T@PolymorphicMapType_22572 T@Seq_28873 Int) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_22593 T@PolymorphicMapType_22593 T@PolymorphicMapType_22593) Bool)
(declare-fun |Seq#Equal_28873| (T@Seq_28873 T@Seq_28873) Bool)
(declare-fun |Seq#Equal_3443| (T@Seq_3443 T@Seq_3443) Bool)
(declare-fun |Seq#ContainsTrigger_14583| (T@Seq_28873 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3443| (T@Seq_3443 Int) Bool)
(declare-fun getPredWandId_14545_14546 (T@Field_29641_29642) Int)
(declare-fun getPredWandId_14569_14570 (T@Field_30568_30569) Int)
(declare-fun |Seq#SkolemDiff_28873| (T@Seq_28873 T@Seq_28873) Int)
(declare-fun |Seq#SkolemDiff_3443| (T@Seq_3443 T@Seq_3443) Int)
(declare-fun InsidePredicate_30568_29641 (T@Field_30568_30569 T@FrameType T@Field_29641_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_30568_22632 (T@Field_30568_30569 T@FrameType T@Field_14499_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_29641_30568 (T@Field_29641_29642 T@FrameType T@Field_30568_30569 T@FrameType) Bool)
(declare-fun InsidePredicate_29641_22632 (T@Field_29641_29642 T@FrameType T@Field_14499_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_22632_30568 (T@Field_14499_29642 T@FrameType T@Field_30568_30569 T@FrameType) Bool)
(declare-fun InsidePredicate_22632_29641 (T@Field_14499_29642 T@FrameType T@Field_29641_29642 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_28873) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_14522| s)) (= (|Seq#Length_14522| (|Seq#Drop_14522| s n)) (- (|Seq#Length_14522| s) n))) (=> (< (|Seq#Length_14522| s) n) (= (|Seq#Length_14522| (|Seq#Drop_14522| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_14522| (|Seq#Drop_14522| s n)) (|Seq#Length_14522| s))))
 :qid |stdinbpl.360:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_14522| (|Seq#Drop_14522| s n)))
 :pattern ( (|Seq#Length_14522| s) (|Seq#Drop_14522| s n))
)))
(assert (forall ((s@@0 T@Seq_3443) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3443| s@@0)) (= (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)) (- (|Seq#Length_3443| s@@0) n@@0))) (=> (< (|Seq#Length_3443| s@@0) n@@0) (= (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)) (|Seq#Length_3443| s@@0))))
 :qid |stdinbpl.360:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3443| s@@0) (|Seq#Drop_3443| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_22572) (ExhaleHeap T@PolymorphicMapType_22572) (Mask T@PolymorphicMapType_22593) (pm_f_3 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_30568_29642 Mask null pm_f_3) (IsPredicateField_14569_14570 pm_f_3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3 T@Ref) (f_17 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3 f_17) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap) o2_3 f_17) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3 f_17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3 f_17))
)) (forall ((o2_3@@0 T@Ref) (f_17@@0 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@0 f_17@@0) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap) o2_3@@0 f_17@@0) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@0 f_17@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@0 f_17@@0))
))) (forall ((o2_3@@1 T@Ref) (f_17@@1 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@1 f_17@@1) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap) o2_3@@1 f_17@@1) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap) o2_3@@1 f_17@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap) o2_3@@1 f_17@@1))
))) (forall ((o2_3@@2 T@Ref) (f_17@@2 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@2 f_17@@2) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap) o2_3@@2 f_17@@2) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@2 f_17@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@2 f_17@@2))
))) (forall ((o2_3@@3 T@Ref) (f_17@@3 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@3 f_17@@3) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap) o2_3@@3 f_17@@3) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap) o2_3@@3 f_17@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap) o2_3@@3 f_17@@3))
))) (forall ((o2_3@@4 T@Ref) (f_17@@4 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@4 f_17@@4) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap) o2_3@@4 f_17@@4) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap) o2_3@@4 f_17@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap) o2_3@@4 f_17@@4))
))) (forall ((o2_3@@5 T@Ref) (f_17@@5 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@5 f_17@@5) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap) o2_3@@5 f_17@@5) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@5 f_17@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@5 f_17@@5))
))) (forall ((o2_3@@6 T@Ref) (f_17@@6 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@6 f_17@@6) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap) o2_3@@6 f_17@@6) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@6 f_17@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@6 f_17@@6))
))) (forall ((o2_3@@7 T@Ref) (f_17@@7 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@7 f_17@@7) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap) o2_3@@7 f_17@@7) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@7 f_17@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@7 f_17@@7))
))) (forall ((o2_3@@8 T@Ref) (f_17@@8 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@8 f_17@@8) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap) o2_3@@8 f_17@@8) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@8 f_17@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@8 f_17@@8))
))) (forall ((o2_3@@9 T@Ref) (f_17@@9 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@9 f_17@@9) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap) o2_3@@9 f_17@@9) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap) o2_3@@9 f_17@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap) o2_3@@9 f_17@@9))
))) (forall ((o2_3@@10 T@Ref) (f_17@@10 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@10 f_17@@10) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap) o2_3@@10 f_17@@10) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap) o2_3@@10 f_17@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap) o2_3@@10 f_17@@10))
))) (forall ((o2_3@@11 T@Ref) (f_17@@11 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@11 f_17@@11) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap) o2_3@@11 f_17@@11) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@11 f_17@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@11 f_17@@11))
))) (forall ((o2_3@@12 T@Ref) (f_17@@12 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@12 f_17@@12) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap) o2_3@@12 f_17@@12) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@12 f_17@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@12 f_17@@12))
))) (forall ((o2_3@@13 T@Ref) (f_17@@13 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@13 f_17@@13) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap) o2_3@@13 f_17@@13) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@13 f_17@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@13 f_17@@13))
))) (forall ((o2_3@@14 T@Ref) (f_17@@14 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@14 f_17@@14) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap) o2_3@@14 f_17@@14) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@14 f_17@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@14 f_17@@14))
))) (forall ((o2_3@@15 T@Ref) (f_17@@15 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@15 f_17@@15) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap) o2_3@@15 f_17@@15) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap) o2_3@@15 f_17@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap) o2_3@@15 f_17@@15))
))) (forall ((o2_3@@16 T@Ref) (f_17@@16 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@16 f_17@@16) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) o2_3@@16 f_17@@16) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap) o2_3@@16 f_17@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap) o2_3@@16 f_17@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_14569_14570 pm_f_3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22572) (ExhaleHeap@@0 T@PolymorphicMapType_22572) (Mask@@0 T@PolymorphicMapType_22593) (pm_f_3@@0 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_29641_29642 Mask@@0 null pm_f_3@@0) (IsPredicateField_14545_14546 pm_f_3@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@17 T@Ref) (f_17@@17 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@17 f_17@@17) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@0) o2_3@@17 f_17@@17) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@17 f_17@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@17 f_17@@17))
)) (forall ((o2_3@@18 T@Ref) (f_17@@18 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@18 f_17@@18) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@0) o2_3@@18 f_17@@18) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@18 f_17@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@18 f_17@@18))
))) (forall ((o2_3@@19 T@Ref) (f_17@@19 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@19 f_17@@19) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@0) o2_3@@19 f_17@@19) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@19 f_17@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@19 f_17@@19))
))) (forall ((o2_3@@20 T@Ref) (f_17@@20 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@20 f_17@@20) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@0) o2_3@@20 f_17@@20) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@20 f_17@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@20 f_17@@20))
))) (forall ((o2_3@@21 T@Ref) (f_17@@21 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@21 f_17@@21) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@0) o2_3@@21 f_17@@21) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@21 f_17@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@21 f_17@@21))
))) (forall ((o2_3@@22 T@Ref) (f_17@@22 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@22 f_17@@22) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@0) o2_3@@22 f_17@@22) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@22 f_17@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@22 f_17@@22))
))) (forall ((o2_3@@23 T@Ref) (f_17@@23 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@23 f_17@@23) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@0) o2_3@@23 f_17@@23) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@23 f_17@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@23 f_17@@23))
))) (forall ((o2_3@@24 T@Ref) (f_17@@24 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@24 f_17@@24) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@0) o2_3@@24 f_17@@24) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@24 f_17@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@24 f_17@@24))
))) (forall ((o2_3@@25 T@Ref) (f_17@@25 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@25 f_17@@25) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@0) o2_3@@25 f_17@@25) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@25 f_17@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@25 f_17@@25))
))) (forall ((o2_3@@26 T@Ref) (f_17@@26 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@26 f_17@@26) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@0) o2_3@@26 f_17@@26) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@26 f_17@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@26 f_17@@26))
))) (forall ((o2_3@@27 T@Ref) (f_17@@27 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@27 f_17@@27) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@0) o2_3@@27 f_17@@27) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@27 f_17@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@27 f_17@@27))
))) (forall ((o2_3@@28 T@Ref) (f_17@@28 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@28 f_17@@28) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) o2_3@@28 f_17@@28) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@28 f_17@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@28 f_17@@28))
))) (forall ((o2_3@@29 T@Ref) (f_17@@29 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@29 f_17@@29) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@0) o2_3@@29 f_17@@29) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@29 f_17@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@29 f_17@@29))
))) (forall ((o2_3@@30 T@Ref) (f_17@@30 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@30 f_17@@30) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@0) o2_3@@30 f_17@@30) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@30 f_17@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@30 f_17@@30))
))) (forall ((o2_3@@31 T@Ref) (f_17@@31 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@31 f_17@@31) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@0) o2_3@@31 f_17@@31) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@31 f_17@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@31 f_17@@31))
))) (forall ((o2_3@@32 T@Ref) (f_17@@32 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@32 f_17@@32) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@0) o2_3@@32 f_17@@32) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@32 f_17@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@32 f_17@@32))
))) (forall ((o2_3@@33 T@Ref) (f_17@@33 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@33 f_17@@33) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@0) o2_3@@33 f_17@@33) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@33 f_17@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@33 f_17@@33))
))) (forall ((o2_3@@34 T@Ref) (f_17@@34 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@34 f_17@@34) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@0) o2_3@@34 f_17@@34) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@34 f_17@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@34 f_17@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_14545_14546 pm_f_3@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22572) (ExhaleHeap@@1 T@PolymorphicMapType_22572) (Mask@@1 T@PolymorphicMapType_22593) (pm_f_3@@1 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_14499_29642 Mask@@1 null pm_f_3@@1) (IsPredicateField_14499_72689 pm_f_3@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@35 T@Ref) (f_17@@35 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@35 f_17@@35) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@1) o2_3@@35 f_17@@35) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@35 f_17@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@35 f_17@@35))
)) (forall ((o2_3@@36 T@Ref) (f_17@@36 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@36 f_17@@36) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@1) o2_3@@36 f_17@@36) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@36 f_17@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@36 f_17@@36))
))) (forall ((o2_3@@37 T@Ref) (f_17@@37 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@37 f_17@@37) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@1) o2_3@@37 f_17@@37) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@37 f_17@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@37 f_17@@37))
))) (forall ((o2_3@@38 T@Ref) (f_17@@38 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@38 f_17@@38) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@1) o2_3@@38 f_17@@38) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@38 f_17@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@38 f_17@@38))
))) (forall ((o2_3@@39 T@Ref) (f_17@@39 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@39 f_17@@39) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@1) o2_3@@39 f_17@@39) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@39 f_17@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@39 f_17@@39))
))) (forall ((o2_3@@40 T@Ref) (f_17@@40 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@40 f_17@@40) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) o2_3@@40 f_17@@40) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@40 f_17@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@40 f_17@@40))
))) (forall ((o2_3@@41 T@Ref) (f_17@@41 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@41 f_17@@41) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@1) o2_3@@41 f_17@@41) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@41 f_17@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@41 f_17@@41))
))) (forall ((o2_3@@42 T@Ref) (f_17@@42 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@42 f_17@@42) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@1) o2_3@@42 f_17@@42) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@42 f_17@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@42 f_17@@42))
))) (forall ((o2_3@@43 T@Ref) (f_17@@43 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@43 f_17@@43) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@1) o2_3@@43 f_17@@43) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@43 f_17@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@43 f_17@@43))
))) (forall ((o2_3@@44 T@Ref) (f_17@@44 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@44 f_17@@44) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@1) o2_3@@44 f_17@@44) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@44 f_17@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@44 f_17@@44))
))) (forall ((o2_3@@45 T@Ref) (f_17@@45 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@45 f_17@@45) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@1) o2_3@@45 f_17@@45) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@45 f_17@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@45 f_17@@45))
))) (forall ((o2_3@@46 T@Ref) (f_17@@46 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@46 f_17@@46) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@1) o2_3@@46 f_17@@46) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@46 f_17@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@46 f_17@@46))
))) (forall ((o2_3@@47 T@Ref) (f_17@@47 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@47 f_17@@47) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@1) o2_3@@47 f_17@@47) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@47 f_17@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@47 f_17@@47))
))) (forall ((o2_3@@48 T@Ref) (f_17@@48 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@48 f_17@@48) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@1) o2_3@@48 f_17@@48) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@48 f_17@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@48 f_17@@48))
))) (forall ((o2_3@@49 T@Ref) (f_17@@49 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@49 f_17@@49) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@1) o2_3@@49 f_17@@49) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@49 f_17@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@49 f_17@@49))
))) (forall ((o2_3@@50 T@Ref) (f_17@@50 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@50 f_17@@50) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@1) o2_3@@50 f_17@@50) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@50 f_17@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@50 f_17@@50))
))) (forall ((o2_3@@51 T@Ref) (f_17@@51 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@51 f_17@@51) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@1) o2_3@@51 f_17@@51) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@51 f_17@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@51 f_17@@51))
))) (forall ((o2_3@@52 T@Ref) (f_17@@52 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@52 f_17@@52) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@1) o2_3@@52 f_17@@52) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@52 f_17@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@52 f_17@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_14499_72689 pm_f_3@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22572) (ExhaleHeap@@2 T@PolymorphicMapType_22572) (Mask@@2 T@PolymorphicMapType_22593) (pm_f_3@@2 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_30568_29642 Mask@@2 null pm_f_3@@2) (IsWandField_30568_78997 pm_f_3@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@53 T@Ref) (f_17@@53 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@53 f_17@@53) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@2) o2_3@@53 f_17@@53) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@53 f_17@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@53 f_17@@53))
)) (forall ((o2_3@@54 T@Ref) (f_17@@54 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@54 f_17@@54) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@2) o2_3@@54 f_17@@54) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@54 f_17@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@54 f_17@@54))
))) (forall ((o2_3@@55 T@Ref) (f_17@@55 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@55 f_17@@55) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@2) o2_3@@55 f_17@@55) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@55 f_17@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@55 f_17@@55))
))) (forall ((o2_3@@56 T@Ref) (f_17@@56 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@56 f_17@@56) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@2) o2_3@@56 f_17@@56) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@56 f_17@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@56 f_17@@56))
))) (forall ((o2_3@@57 T@Ref) (f_17@@57 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@57 f_17@@57) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@2) o2_3@@57 f_17@@57) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@57 f_17@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@57 f_17@@57))
))) (forall ((o2_3@@58 T@Ref) (f_17@@58 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@58 f_17@@58) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@2) o2_3@@58 f_17@@58) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@58 f_17@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@58 f_17@@58))
))) (forall ((o2_3@@59 T@Ref) (f_17@@59 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@59 f_17@@59) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@2) o2_3@@59 f_17@@59) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@59 f_17@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@59 f_17@@59))
))) (forall ((o2_3@@60 T@Ref) (f_17@@60 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@60 f_17@@60) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@2) o2_3@@60 f_17@@60) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@60 f_17@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@60 f_17@@60))
))) (forall ((o2_3@@61 T@Ref) (f_17@@61 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@61 f_17@@61) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@2) o2_3@@61 f_17@@61) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@61 f_17@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@61 f_17@@61))
))) (forall ((o2_3@@62 T@Ref) (f_17@@62 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@62 f_17@@62) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@2) o2_3@@62 f_17@@62) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@62 f_17@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@62 f_17@@62))
))) (forall ((o2_3@@63 T@Ref) (f_17@@63 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@63 f_17@@63) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@2) o2_3@@63 f_17@@63) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@63 f_17@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@63 f_17@@63))
))) (forall ((o2_3@@64 T@Ref) (f_17@@64 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@64 f_17@@64) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@2) o2_3@@64 f_17@@64) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@64 f_17@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@64 f_17@@64))
))) (forall ((o2_3@@65 T@Ref) (f_17@@65 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@65 f_17@@65) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@2) o2_3@@65 f_17@@65) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@65 f_17@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@65 f_17@@65))
))) (forall ((o2_3@@66 T@Ref) (f_17@@66 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@66 f_17@@66) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@2) o2_3@@66 f_17@@66) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@66 f_17@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@66 f_17@@66))
))) (forall ((o2_3@@67 T@Ref) (f_17@@67 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@67 f_17@@67) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@2) o2_3@@67 f_17@@67) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@67 f_17@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@67 f_17@@67))
))) (forall ((o2_3@@68 T@Ref) (f_17@@68 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@68 f_17@@68) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@2) o2_3@@68 f_17@@68) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@68 f_17@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@68 f_17@@68))
))) (forall ((o2_3@@69 T@Ref) (f_17@@69 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@69 f_17@@69) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@2) o2_3@@69 f_17@@69) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@69 f_17@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@69 f_17@@69))
))) (forall ((o2_3@@70 T@Ref) (f_17@@70 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@70 f_17@@70) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) o2_3@@70 f_17@@70) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@70 f_17@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@70 f_17@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_30568_78997 pm_f_3@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22572) (ExhaleHeap@@3 T@PolymorphicMapType_22572) (Mask@@3 T@PolymorphicMapType_22593) (pm_f_3@@3 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_29641_29642 Mask@@3 null pm_f_3@@3) (IsWandField_29641_78640 pm_f_3@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@71 T@Ref) (f_17@@71 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@71 f_17@@71) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@3) o2_3@@71 f_17@@71) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@71 f_17@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@71 f_17@@71))
)) (forall ((o2_3@@72 T@Ref) (f_17@@72 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@72 f_17@@72) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@3) o2_3@@72 f_17@@72) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@72 f_17@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@72 f_17@@72))
))) (forall ((o2_3@@73 T@Ref) (f_17@@73 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@73 f_17@@73) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@3) o2_3@@73 f_17@@73) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@73 f_17@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@73 f_17@@73))
))) (forall ((o2_3@@74 T@Ref) (f_17@@74 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@74 f_17@@74) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@3) o2_3@@74 f_17@@74) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@74 f_17@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@74 f_17@@74))
))) (forall ((o2_3@@75 T@Ref) (f_17@@75 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@75 f_17@@75) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@3) o2_3@@75 f_17@@75) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@75 f_17@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@75 f_17@@75))
))) (forall ((o2_3@@76 T@Ref) (f_17@@76 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@76 f_17@@76) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@3) o2_3@@76 f_17@@76) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@76 f_17@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@76 f_17@@76))
))) (forall ((o2_3@@77 T@Ref) (f_17@@77 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@77 f_17@@77) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@3) o2_3@@77 f_17@@77) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@77 f_17@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@77 f_17@@77))
))) (forall ((o2_3@@78 T@Ref) (f_17@@78 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@78 f_17@@78) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@3) o2_3@@78 f_17@@78) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@78 f_17@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@78 f_17@@78))
))) (forall ((o2_3@@79 T@Ref) (f_17@@79 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@79 f_17@@79) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@3) o2_3@@79 f_17@@79) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@79 f_17@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@79 f_17@@79))
))) (forall ((o2_3@@80 T@Ref) (f_17@@80 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@80 f_17@@80) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@3) o2_3@@80 f_17@@80) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@80 f_17@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@80 f_17@@80))
))) (forall ((o2_3@@81 T@Ref) (f_17@@81 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@81 f_17@@81) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@3) o2_3@@81 f_17@@81) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@81 f_17@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@81 f_17@@81))
))) (forall ((o2_3@@82 T@Ref) (f_17@@82 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@82 f_17@@82) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) o2_3@@82 f_17@@82) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@82 f_17@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@82 f_17@@82))
))) (forall ((o2_3@@83 T@Ref) (f_17@@83 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@83 f_17@@83) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@3) o2_3@@83 f_17@@83) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@83 f_17@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@83 f_17@@83))
))) (forall ((o2_3@@84 T@Ref) (f_17@@84 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@84 f_17@@84) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@3) o2_3@@84 f_17@@84) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@84 f_17@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@84 f_17@@84))
))) (forall ((o2_3@@85 T@Ref) (f_17@@85 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@85 f_17@@85) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@3) o2_3@@85 f_17@@85) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@85 f_17@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@85 f_17@@85))
))) (forall ((o2_3@@86 T@Ref) (f_17@@86 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@86 f_17@@86) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@3) o2_3@@86 f_17@@86) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@86 f_17@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@86 f_17@@86))
))) (forall ((o2_3@@87 T@Ref) (f_17@@87 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@87 f_17@@87) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@3) o2_3@@87 f_17@@87) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@87 f_17@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@87 f_17@@87))
))) (forall ((o2_3@@88 T@Ref) (f_17@@88 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@88 f_17@@88) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@3) o2_3@@88 f_17@@88) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@88 f_17@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@88 f_17@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_29641_78640 pm_f_3@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22572) (ExhaleHeap@@4 T@PolymorphicMapType_22572) (Mask@@4 T@PolymorphicMapType_22593) (pm_f_3@@4 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_14499_29642 Mask@@4 null pm_f_3@@4) (IsWandField_14499_78283 pm_f_3@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@89 T@Ref) (f_17@@89 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@89 f_17@@89) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@4) o2_3@@89 f_17@@89) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@89 f_17@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@89 f_17@@89))
)) (forall ((o2_3@@90 T@Ref) (f_17@@90 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@90 f_17@@90) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@4) o2_3@@90 f_17@@90) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@90 f_17@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@90 f_17@@90))
))) (forall ((o2_3@@91 T@Ref) (f_17@@91 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@91 f_17@@91) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@4) o2_3@@91 f_17@@91) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@91 f_17@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@91 f_17@@91))
))) (forall ((o2_3@@92 T@Ref) (f_17@@92 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@92 f_17@@92) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@4) o2_3@@92 f_17@@92) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@92 f_17@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@92 f_17@@92))
))) (forall ((o2_3@@93 T@Ref) (f_17@@93 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@93 f_17@@93) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@4) o2_3@@93 f_17@@93) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@93 f_17@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@93 f_17@@93))
))) (forall ((o2_3@@94 T@Ref) (f_17@@94 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@94 f_17@@94) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) o2_3@@94 f_17@@94) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@94 f_17@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@94 f_17@@94))
))) (forall ((o2_3@@95 T@Ref) (f_17@@95 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@95 f_17@@95) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@4) o2_3@@95 f_17@@95) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@95 f_17@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@95 f_17@@95))
))) (forall ((o2_3@@96 T@Ref) (f_17@@96 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@96 f_17@@96) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@4) o2_3@@96 f_17@@96) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@96 f_17@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@96 f_17@@96))
))) (forall ((o2_3@@97 T@Ref) (f_17@@97 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@97 f_17@@97) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@4) o2_3@@97 f_17@@97) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@97 f_17@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@97 f_17@@97))
))) (forall ((o2_3@@98 T@Ref) (f_17@@98 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@98 f_17@@98) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@4) o2_3@@98 f_17@@98) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@98 f_17@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@98 f_17@@98))
))) (forall ((o2_3@@99 T@Ref) (f_17@@99 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@99 f_17@@99) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@4) o2_3@@99 f_17@@99) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@99 f_17@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@99 f_17@@99))
))) (forall ((o2_3@@100 T@Ref) (f_17@@100 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@100 f_17@@100) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@4) o2_3@@100 f_17@@100) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@100 f_17@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@100 f_17@@100))
))) (forall ((o2_3@@101 T@Ref) (f_17@@101 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@101 f_17@@101) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@4) o2_3@@101 f_17@@101) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@101 f_17@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@101 f_17@@101))
))) (forall ((o2_3@@102 T@Ref) (f_17@@102 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@102 f_17@@102) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@4) o2_3@@102 f_17@@102) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@102 f_17@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@102 f_17@@102))
))) (forall ((o2_3@@103 T@Ref) (f_17@@103 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@103 f_17@@103) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@4) o2_3@@103 f_17@@103) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@103 f_17@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@103 f_17@@103))
))) (forall ((o2_3@@104 T@Ref) (f_17@@104 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@104 f_17@@104) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@4) o2_3@@104 f_17@@104) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@104 f_17@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@104 f_17@@104))
))) (forall ((o2_3@@105 T@Ref) (f_17@@105 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@105 f_17@@105) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@4) o2_3@@105 f_17@@105) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@105 f_17@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@105 f_17@@105))
))) (forall ((o2_3@@106 T@Ref) (f_17@@106 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@106 f_17@@106) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@4) o2_3@@106 f_17@@106) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@106 f_17@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@106 f_17@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_14499_78283 pm_f_3@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_22572) (Heap1 T@PolymorphicMapType_22572) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22572) (Mask@@5 T@PolymorphicMapType_22593) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22572) (Heap1@@0 T@PolymorphicMapType_22572) (Heap2 T@PolymorphicMapType_22572) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30580_30585) ) (!  (not (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_30568_30569) ) (!  (not (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_30568_28818) ) (!  (not (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_30568_22646) ) (!  (not (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_30568_53) ) (!  (not (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_30568_3565) ) (!  (not (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_29654_29659) ) (!  (not (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_29641_29642) ) (!  (not (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_29641_28818) ) (!  (not (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_29641_22646) ) (!  (not (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_29641_53) ) (!  (not (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_29641_3565) ) (!  (not (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14499_29659) ) (!  (not (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_14499_29642) ) (!  (not (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_28816_28818) ) (!  (not (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_22645_22646) ) (!  (not (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_22632_53) ) (!  (not (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_28740_3565) ) (!  (not (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22572) (xs T@Seq_28873) (i Int) ) (! (dummyFunction_14537 (|get_val#triggerStateless| xs i))
 :qid |stdinbpl.652:15|
 :skolemid |59|
 :pattern ( (|get_val'| Heap@@6 xs i))
)))
(assert (forall ((s@@1 T@Seq_28873) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_14522| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_14522| (|Seq#Drop_14522| s@@1 n@@1) j) (|Seq#Index_14522| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.381:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_14522| (|Seq#Drop_14522| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3443) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3443| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3443| (|Seq#Drop_3443| s@@2 n@@2) j@@0) (|Seq#Index_3443| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.381:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3443| (|Seq#Drop_3443| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22572) (Mask@@6 T@PolymorphicMapType_22593) (xs@@0 T@Seq_28873) (i@@0 Int) ) (!  (=> (state Heap@@7 Mask@@6) (= (|get_val'| Heap@@7 xs@@0 i@@0) (|get_val#frame| EmptyFrame xs@@0 i@@0)))
 :qid |stdinbpl.665:15|
 :skolemid |61|
 :pattern ( (state Heap@@7 Mask@@6) (|get_val'| Heap@@7 xs@@0 i@@0))
)))
(assert (= (|Seq#Length_14522| |Seq#Empty_14522|) 0))
(assert (= (|Seq#Length_3443| |Seq#Empty_3443|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_14545_14546 (pred_1 x))
 :qid |stdinbpl.715:15|
 :skolemid |63|
 :pattern ( (pred_1 x))
)))
(assert (forall ((i@@1 Int) ) (! (IsPredicateField_14569_14570 (pred2 i@@1))
 :qid |stdinbpl.770:15|
 :skolemid |69|
 :pattern ( (pred2 i@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22572) (x@@0 T@Ref) ) (! (|pred#everUsed_14545| (pred_1 x@@0))
 :qid |stdinbpl.734:15|
 :skolemid |67|
 :pattern ( (|pred#trigger_14545| Heap@@8 (pred_1 x@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22572) (i@@2 Int) ) (! (|pred2#everUsed_14569| (pred2 i@@2))
 :qid |stdinbpl.789:15|
 :skolemid |73|
 :pattern ( (|pred2#trigger_14569| Heap@@9 (pred2 i@@2)))
)))
(assert (forall ((s@@3 T@Seq_28873) (i@@3 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_14522| s@@3))) (and (=> (= i@@3 n@@3) (= (|Seq#Index_14522| (|Seq#Update_14522| s@@3 i@@3 v) n@@3) v)) (=> (not (= i@@3 n@@3)) (= (|Seq#Index_14522| (|Seq#Update_14522| s@@3 i@@3 v) n@@3) (|Seq#Index_14522| s@@3 n@@3)))))
 :qid |stdinbpl.336:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_14522| (|Seq#Update_14522| s@@3 i@@3 v) n@@3))
 :pattern ( (|Seq#Index_14522| s@@3 n@@3) (|Seq#Update_14522| s@@3 i@@3 v))
)))
(assert (forall ((s@@4 T@Seq_3443) (i@@4 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3443| s@@4))) (and (=> (= i@@4 n@@4) (= (|Seq#Index_3443| (|Seq#Update_3443| s@@4 i@@4 v@@0) n@@4) v@@0)) (=> (not (= i@@4 n@@4)) (= (|Seq#Index_3443| (|Seq#Update_3443| s@@4 i@@4 v@@0) n@@4) (|Seq#Index_3443| s@@4 n@@4)))))
 :qid |stdinbpl.336:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3443| (|Seq#Update_3443| s@@4 i@@4 v@@0) n@@4))
 :pattern ( (|Seq#Index_3443| s@@4 n@@4) (|Seq#Update_3443| s@@4 i@@4 v@@0))
)))
(assert (forall ((s@@5 T@Seq_28873) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_14522| s@@5)) (= (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_14522| s@@5) n@@5) (= (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)) (|Seq#Length_14522| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)) 0)))
 :qid |stdinbpl.347:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)))
 :pattern ( (|Seq#Take_14522| s@@5 n@@5) (|Seq#Length_14522| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3443) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3443| s@@6)) (= (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3443| s@@6) n@@6) (= (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)) (|Seq#Length_3443| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)) 0)))
 :qid |stdinbpl.347:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3443| s@@6 n@@6) (|Seq#Length_3443| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3443| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.621:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3443| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_28873) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_14583| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_14583| s@@7 x@@1)) (< (|Seq#Skolem_14583| s@@7 x@@1) (|Seq#Length_14522| s@@7))) (= (|Seq#Index_14522| s@@7 (|Seq#Skolem_14583| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.479:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_14583| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_3443) (x@@2 Int) ) (!  (=> (|Seq#Contains_3443| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_3443| s@@8 x@@2)) (< (|Seq#Skolem_3443| s@@8 x@@2) (|Seq#Length_3443| s@@8))) (= (|Seq#Index_3443| s@@8 (|Seq#Skolem_3443| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.479:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3443| s@@8 x@@2))
)))
(assert (forall ((s@@9 T@Seq_28873) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_14522| s@@9 n@@7) s@@9))
 :qid |stdinbpl.463:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_14522| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3443) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3443| s@@10 n@@8) s@@10))
 :qid |stdinbpl.463:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3443| s@@10 n@@8))
)))
(assert (forall ((i@@5 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@5 j@@1) (- i@@5 j@@1))
 :qid |stdinbpl.316:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@5 j@@1))
)))
(assert (forall ((i@@6 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@6 j@@2) (+ i@@6 j@@2))
 :qid |stdinbpl.314:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@6 j@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22572) (ExhaleHeap@@5 T@PolymorphicMapType_22572) (Mask@@7 T@PolymorphicMapType_22593) (pm_f_3@@5 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_30568_29642 Mask@@7 null pm_f_3@@5) (IsPredicateField_14569_14570 pm_f_3@@5)) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@10) null (PredicateMaskField_14569 pm_f_3@@5)) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@5) null (PredicateMaskField_14569 pm_f_3@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsPredicateField_14569_14570 pm_f_3@@5) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@5) null (PredicateMaskField_14569 pm_f_3@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22572) (ExhaleHeap@@6 T@PolymorphicMapType_22572) (Mask@@8 T@PolymorphicMapType_22593) (pm_f_3@@6 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_29641_29642 Mask@@8 null pm_f_3@@6) (IsPredicateField_14545_14546 pm_f_3@@6)) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@11) null (PredicateMaskField_14545 pm_f_3@@6)) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@6) null (PredicateMaskField_14545 pm_f_3@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsPredicateField_14545_14546 pm_f_3@@6) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@6) null (PredicateMaskField_14545 pm_f_3@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22572) (ExhaleHeap@@7 T@PolymorphicMapType_22572) (Mask@@9 T@PolymorphicMapType_22593) (pm_f_3@@7 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_14499_29642 Mask@@9 null pm_f_3@@7) (IsPredicateField_14499_72689 pm_f_3@@7)) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@12) null (PredicateMaskField_14499 pm_f_3@@7)) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@7) null (PredicateMaskField_14499 pm_f_3@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (IsPredicateField_14499_72689 pm_f_3@@7) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@7) null (PredicateMaskField_14499 pm_f_3@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22572) (ExhaleHeap@@8 T@PolymorphicMapType_22572) (Mask@@10 T@PolymorphicMapType_22593) (pm_f_3@@8 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_30568_29642 Mask@@10 null pm_f_3@@8) (IsWandField_30568_78997 pm_f_3@@8)) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@13) null (WandMaskField_30568 pm_f_3@@8)) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@8) null (WandMaskField_30568 pm_f_3@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (IsWandField_30568_78997 pm_f_3@@8) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@8) null (WandMaskField_30568 pm_f_3@@8)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22572) (ExhaleHeap@@9 T@PolymorphicMapType_22572) (Mask@@11 T@PolymorphicMapType_22593) (pm_f_3@@9 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_29641_29642 Mask@@11 null pm_f_3@@9) (IsWandField_29641_78640 pm_f_3@@9)) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@14) null (WandMaskField_29641 pm_f_3@@9)) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@9) null (WandMaskField_29641 pm_f_3@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (IsWandField_29641_78640 pm_f_3@@9) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@9) null (WandMaskField_29641 pm_f_3@@9)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22572) (ExhaleHeap@@10 T@PolymorphicMapType_22572) (Mask@@12 T@PolymorphicMapType_22593) (pm_f_3@@10 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_14499_29642 Mask@@12 null pm_f_3@@10) (IsWandField_14499_78283 pm_f_3@@10)) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@15) null (WandMaskField_14499 pm_f_3@@10)) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@10) null (WandMaskField_14499 pm_f_3@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12) (IsWandField_14499_78283 pm_f_3@@10) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@10) null (WandMaskField_14499 pm_f_3@@10)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_14583| (|Seq#Singleton_14522| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.604:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_14583| (|Seq#Singleton_14522| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3443| (|Seq#Singleton_3443| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.604:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3443| (|Seq#Singleton_3443| x@@4) y@@0))
)))
(assert (forall ((s@@11 T@Seq_28873) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_14522| s@@11))) (= (|Seq#Index_14522| (|Seq#Take_14522| s@@11 n@@9) j@@3) (|Seq#Index_14522| s@@11 j@@3)))
 :qid |stdinbpl.355:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_14522| (|Seq#Take_14522| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_14522| s@@11 j@@3) (|Seq#Take_14522| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3443) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3443| s@@12))) (= (|Seq#Index_3443| (|Seq#Take_3443| s@@12 n@@10) j@@4) (|Seq#Index_3443| s@@12 j@@4)))
 :qid |stdinbpl.355:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3443| (|Seq#Take_3443| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3443| s@@12 j@@4) (|Seq#Take_3443| s@@12 n@@10))
)))
(assert (forall ((x@@5 T@Ref) (x2 T@Ref) ) (!  (=> (= (pred_1 x@@5) (pred_1 x2)) (= x@@5 x2))
 :qid |stdinbpl.725:15|
 :skolemid |65|
 :pattern ( (pred_1 x@@5) (pred_1 x2))
)))
(assert (forall ((x@@6 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|pred#sm| x@@6) (|pred#sm| x2@@0)) (= x@@6 x2@@0))
 :qid |stdinbpl.729:15|
 :skolemid |66|
 :pattern ( (|pred#sm| x@@6) (|pred#sm| x2@@0))
)))
(assert (forall ((i@@7 Int) (i2 Int) ) (!  (=> (= (pred2 i@@7) (pred2 i2)) (= i@@7 i2))
 :qid |stdinbpl.780:15|
 :skolemid |71|
 :pattern ( (pred2 i@@7) (pred2 i2))
)))
(assert (forall ((i@@8 Int) (i2@@0 Int) ) (!  (=> (= (|pred2#sm| i@@8) (|pred2#sm| i2@@0)) (= i@@8 i2@@0))
 :qid |stdinbpl.784:15|
 :skolemid |72|
 :pattern ( (|pred2#sm| i@@8) (|pred2#sm| i2@@0))
)))
(assert (forall ((s@@13 T@Seq_28873) (t T@Seq_28873) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_14522| s@@13))) (< n@@11 (|Seq#Length_14522| (|Seq#Append_28873| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_14522| s@@13)) (|Seq#Length_14522| s@@13)) n@@11) (= (|Seq#Take_14522| (|Seq#Append_28873| s@@13 t) n@@11) (|Seq#Append_28873| s@@13 (|Seq#Take_14522| t (|Seq#Sub| n@@11 (|Seq#Length_14522| s@@13)))))))
 :qid |stdinbpl.440:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_14522| (|Seq#Append_28873| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3443) (t@@0 T@Seq_3443) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3443| s@@14))) (< n@@12 (|Seq#Length_3443| (|Seq#Append_3443| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3443| s@@14)) (|Seq#Length_3443| s@@14)) n@@12) (= (|Seq#Take_3443| (|Seq#Append_3443| s@@14 t@@0) n@@12) (|Seq#Append_3443| s@@14 (|Seq#Take_3443| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3443| s@@14)))))))
 :qid |stdinbpl.440:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3443| (|Seq#Append_3443| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22572) (ExhaleHeap@@11 T@PolymorphicMapType_22572) (Mask@@13 T@PolymorphicMapType_22593) (o_11 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (=> (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@16) o_11 $allocated) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@11) o_11 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@11) o_11 $allocated))
)))
(assert (forall ((p T@Field_30568_30569) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_30568_30568 p v_1 p w))
 :qid |stdinbpl.258:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30568_30568 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_29641_29642) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_29641_29641 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.258:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29641_29641 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_14499_29642) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_22632_22632 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.258:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22632_22632 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_28873) (s1 T@Seq_28873) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_14522|)) (not (= s1 |Seq#Empty_14522|))) (<= (|Seq#Length_14522| s0) n@@13)) (< n@@13 (|Seq#Length_14522| (|Seq#Append_28873| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_14522| s0)) (|Seq#Length_14522| s0)) n@@13) (= (|Seq#Index_14522| (|Seq#Append_28873| s0 s1) n@@13) (|Seq#Index_14522| s1 (|Seq#Sub| n@@13 (|Seq#Length_14522| s0))))))
 :qid |stdinbpl.327:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_14522| (|Seq#Append_28873| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3443) (s1@@0 T@Seq_3443) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3443|)) (not (= s1@@0 |Seq#Empty_3443|))) (<= (|Seq#Length_3443| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3443| (|Seq#Append_3443| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3443| s0@@0)) (|Seq#Length_3443| s0@@0)) n@@14) (= (|Seq#Index_3443| (|Seq#Append_3443| s0@@0 s1@@0) n@@14) (|Seq#Index_3443| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3443| s0@@0))))))
 :qid |stdinbpl.327:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3443| (|Seq#Append_3443| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_14499_3565 f_7)))
(assert  (not (IsWandField_14499_3565 f_7)))
(assert  (not (IsPredicateField_14499_3565 g)))
(assert  (not (IsWandField_14499_3565 g)))
(assert  (not (IsPredicateField_14503_28837 vals)))
(assert  (not (IsWandField_14503_28860 vals)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22572) (ExhaleHeap@@12 T@PolymorphicMapType_22572) (Mask@@14 T@PolymorphicMapType_22593) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14) (succHeap Heap@@17 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22593) (o_2@@17 T@Ref) (f_4@@17 T@Field_30580_30585) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@15) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14569_91152 f_4@@17))) (not (IsWandField_14569_91168 f_4@@17))) (<= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@15) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@15) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22593) (o_2@@18 T@Ref) (f_4@@18 T@Field_30568_28818) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@16) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14569_28818 f_4@@18))) (not (IsWandField_14569_28818 f_4@@18))) (<= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@16) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@16) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22593) (o_2@@19 T@Ref) (f_4@@19 T@Field_30568_22646) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@17) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14569_22646 f_4@@19))) (not (IsWandField_14569_22646 f_4@@19))) (<= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@17) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@17) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22593) (o_2@@20 T@Ref) (f_4@@20 T@Field_30568_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@18) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_14569_53 f_4@@20))) (not (IsWandField_14569_53 f_4@@20))) (<= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@18) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@18) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22593) (o_2@@21 T@Ref) (f_4@@21 T@Field_30568_30569) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@19) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_14569_14570 f_4@@21))) (not (IsWandField_30568_78997 f_4@@21))) (<= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@19) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@19) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22593) (o_2@@22 T@Ref) (f_4@@22 T@Field_30568_3565) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@20) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_14569_3565 f_4@@22))) (not (IsWandField_14569_3565 f_4@@22))) (<= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@20) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@20) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22593) (o_2@@23 T@Ref) (f_4@@23 T@Field_29654_29659) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@21) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_14545_90153 f_4@@23))) (not (IsWandField_14545_90169 f_4@@23))) (<= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@21) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@21) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22593) (o_2@@24 T@Ref) (f_4@@24 T@Field_29641_28818) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@22) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_14545_28818 f_4@@24))) (not (IsWandField_14545_28818 f_4@@24))) (<= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@22) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@22) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22593) (o_2@@25 T@Ref) (f_4@@25 T@Field_29641_22646) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@23) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_14545_22646 f_4@@25))) (not (IsWandField_14545_22646 f_4@@25))) (<= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@23) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@23) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22593) (o_2@@26 T@Ref) (f_4@@26 T@Field_29641_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@24) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_14545_53 f_4@@26))) (not (IsWandField_14545_53 f_4@@26))) (<= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@24) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@24) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22593) (o_2@@27 T@Ref) (f_4@@27 T@Field_29641_29642) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@25) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_14545_14546 f_4@@27))) (not (IsWandField_29641_78640 f_4@@27))) (<= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@25) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@25) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22593) (o_2@@28 T@Ref) (f_4@@28 T@Field_29641_3565) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@26) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_14545_3565 f_4@@28))) (not (IsWandField_14545_3565 f_4@@28))) (<= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@26) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@26) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22593) (o_2@@29 T@Ref) (f_4@@29 T@Field_14499_29659) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@27) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_14499_89154 f_4@@29))) (not (IsWandField_14499_89170 f_4@@29))) (<= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@27) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@27) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22593) (o_2@@30 T@Ref) (f_4@@30 T@Field_28816_28818) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@28) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_14503_28837 f_4@@30))) (not (IsWandField_14503_28860 f_4@@30))) (<= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@28) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@28) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22593) (o_2@@31 T@Ref) (f_4@@31 T@Field_22645_22646) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@29) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_14499_22646 f_4@@31))) (not (IsWandField_14499_22646 f_4@@31))) (<= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@29) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@29) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22593) (o_2@@32 T@Ref) (f_4@@32 T@Field_22632_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@30) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_14499_53 f_4@@32))) (not (IsWandField_14499_53 f_4@@32))) (<= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@30) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@30) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22593) (o_2@@33 T@Ref) (f_4@@33 T@Field_14499_29642) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@31) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_14499_72689 f_4@@33))) (not (IsWandField_14499_78283 f_4@@33))) (<= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@31) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@31) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_22593) (o_2@@34 T@Ref) (f_4@@34 T@Field_28740_3565) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@32) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_14499_3565 f_4@@34))) (not (IsWandField_14499_3565 f_4@@34))) (<= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@32) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@32) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_22593) (o_2@@35 T@Ref) (f_4@@35 T@Field_30580_30585) ) (! (= (HasDirectPerm_30568_72401 Mask@@33 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@33) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_72401 Mask@@33 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_22593) (o_2@@36 T@Ref) (f_4@@36 T@Field_30568_30569) ) (! (= (HasDirectPerm_30568_29642 Mask@@34 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@34) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_29642 Mask@@34 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_22593) (o_2@@37 T@Ref) (f_4@@37 T@Field_30568_28818) ) (! (= (HasDirectPerm_30568_28818 Mask@@35 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@35) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_28818 Mask@@35 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_22593) (o_2@@38 T@Ref) (f_4@@38 T@Field_30568_22646) ) (! (= (HasDirectPerm_30568_22646 Mask@@36 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@36) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_22646 Mask@@36 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_22593) (o_2@@39 T@Ref) (f_4@@39 T@Field_30568_53) ) (! (= (HasDirectPerm_30568_53 Mask@@37 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@37) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_53 Mask@@37 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_22593) (o_2@@40 T@Ref) (f_4@@40 T@Field_30568_3565) ) (! (= (HasDirectPerm_30568_3565 Mask@@38 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@38) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_3565 Mask@@38 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_22593) (o_2@@41 T@Ref) (f_4@@41 T@Field_29654_29659) ) (! (= (HasDirectPerm_29641_71054 Mask@@39 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@39) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_71054 Mask@@39 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_22593) (o_2@@42 T@Ref) (f_4@@42 T@Field_29641_29642) ) (! (= (HasDirectPerm_29641_29642 Mask@@40 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@40) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_29642 Mask@@40 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_22593) (o_2@@43 T@Ref) (f_4@@43 T@Field_29641_28818) ) (! (= (HasDirectPerm_29641_28818 Mask@@41 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@41) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_28818 Mask@@41 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_22593) (o_2@@44 T@Ref) (f_4@@44 T@Field_29641_22646) ) (! (= (HasDirectPerm_29641_22646 Mask@@42 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@42) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_22646 Mask@@42 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_22593) (o_2@@45 T@Ref) (f_4@@45 T@Field_29641_53) ) (! (= (HasDirectPerm_29641_53 Mask@@43 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@43) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_53 Mask@@43 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_22593) (o_2@@46 T@Ref) (f_4@@46 T@Field_29641_3565) ) (! (= (HasDirectPerm_29641_3565 Mask@@44 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@44) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_3565 Mask@@44 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_22593) (o_2@@47 T@Ref) (f_4@@47 T@Field_14499_29659) ) (! (= (HasDirectPerm_14499_69664 Mask@@45 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@45) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_69664 Mask@@45 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_22593) (o_2@@48 T@Ref) (f_4@@48 T@Field_14499_29642) ) (! (= (HasDirectPerm_14499_29642 Mask@@46 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@46) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_29642 Mask@@46 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_22593) (o_2@@49 T@Ref) (f_4@@49 T@Field_28816_28818) ) (! (= (HasDirectPerm_14499_28818 Mask@@47 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@47) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_28818 Mask@@47 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_22593) (o_2@@50 T@Ref) (f_4@@50 T@Field_22645_22646) ) (! (= (HasDirectPerm_14499_22646 Mask@@48 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@48) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_22646 Mask@@48 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_22593) (o_2@@51 T@Ref) (f_4@@51 T@Field_22632_53) ) (! (= (HasDirectPerm_14499_53 Mask@@49 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@49) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_53 Mask@@49 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_22593) (o_2@@52 T@Ref) (f_4@@52 T@Field_28740_3565) ) (! (= (HasDirectPerm_14499_3565 Mask@@50 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@50) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_3565 Mask@@50 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.246:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3443| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.619:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3443| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22572) (ExhaleHeap@@13 T@PolymorphicMapType_22572) (Mask@@51 T@PolymorphicMapType_22593) (o_11@@0 T@Ref) (f_17@@107 T@Field_30580_30585) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@51) (=> (HasDirectPerm_30568_72401 Mask@@51 o_11@@0 f_17@@107) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@18) o_11@@0 f_17@@107) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@13) o_11@@0 f_17@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@51) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@13) o_11@@0 f_17@@107))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22572) (ExhaleHeap@@14 T@PolymorphicMapType_22572) (Mask@@52 T@PolymorphicMapType_22593) (o_11@@1 T@Ref) (f_17@@108 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@52) (=> (HasDirectPerm_30568_29642 Mask@@52 o_11@@1 f_17@@108) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@19) o_11@@1 f_17@@108) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@14) o_11@@1 f_17@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@52) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@14) o_11@@1 f_17@@108))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22572) (ExhaleHeap@@15 T@PolymorphicMapType_22572) (Mask@@53 T@PolymorphicMapType_22593) (o_11@@2 T@Ref) (f_17@@109 T@Field_30568_28818) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@53) (=> (HasDirectPerm_30568_28818 Mask@@53 o_11@@2 f_17@@109) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@20) o_11@@2 f_17@@109) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@15) o_11@@2 f_17@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@53) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@15) o_11@@2 f_17@@109))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22572) (ExhaleHeap@@16 T@PolymorphicMapType_22572) (Mask@@54 T@PolymorphicMapType_22593) (o_11@@3 T@Ref) (f_17@@110 T@Field_30568_22646) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@54) (=> (HasDirectPerm_30568_22646 Mask@@54 o_11@@3 f_17@@110) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@21) o_11@@3 f_17@@110) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@16) o_11@@3 f_17@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@54) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@16) o_11@@3 f_17@@110))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22572) (ExhaleHeap@@17 T@PolymorphicMapType_22572) (Mask@@55 T@PolymorphicMapType_22593) (o_11@@4 T@Ref) (f_17@@111 T@Field_30568_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@55) (=> (HasDirectPerm_30568_53 Mask@@55 o_11@@4 f_17@@111) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@22) o_11@@4 f_17@@111) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@17) o_11@@4 f_17@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@55) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@17) o_11@@4 f_17@@111))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22572) (ExhaleHeap@@18 T@PolymorphicMapType_22572) (Mask@@56 T@PolymorphicMapType_22593) (o_11@@5 T@Ref) (f_17@@112 T@Field_30568_3565) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@56) (=> (HasDirectPerm_30568_3565 Mask@@56 o_11@@5 f_17@@112) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@23) o_11@@5 f_17@@112) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@18) o_11@@5 f_17@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@56) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@18) o_11@@5 f_17@@112))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22572) (ExhaleHeap@@19 T@PolymorphicMapType_22572) (Mask@@57 T@PolymorphicMapType_22593) (o_11@@6 T@Ref) (f_17@@113 T@Field_29654_29659) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@57) (=> (HasDirectPerm_29641_71054 Mask@@57 o_11@@6 f_17@@113) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@24) o_11@@6 f_17@@113) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@19) o_11@@6 f_17@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@57) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@19) o_11@@6 f_17@@113))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22572) (ExhaleHeap@@20 T@PolymorphicMapType_22572) (Mask@@58 T@PolymorphicMapType_22593) (o_11@@7 T@Ref) (f_17@@114 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@58) (=> (HasDirectPerm_29641_29642 Mask@@58 o_11@@7 f_17@@114) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@25) o_11@@7 f_17@@114) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@20) o_11@@7 f_17@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@58) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@20) o_11@@7 f_17@@114))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22572) (ExhaleHeap@@21 T@PolymorphicMapType_22572) (Mask@@59 T@PolymorphicMapType_22593) (o_11@@8 T@Ref) (f_17@@115 T@Field_29641_28818) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@59) (=> (HasDirectPerm_29641_28818 Mask@@59 o_11@@8 f_17@@115) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@26) o_11@@8 f_17@@115) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@21) o_11@@8 f_17@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@59) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@21) o_11@@8 f_17@@115))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22572) (ExhaleHeap@@22 T@PolymorphicMapType_22572) (Mask@@60 T@PolymorphicMapType_22593) (o_11@@9 T@Ref) (f_17@@116 T@Field_29641_22646) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@60) (=> (HasDirectPerm_29641_22646 Mask@@60 o_11@@9 f_17@@116) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@27) o_11@@9 f_17@@116) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@22) o_11@@9 f_17@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@60) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@22) o_11@@9 f_17@@116))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22572) (ExhaleHeap@@23 T@PolymorphicMapType_22572) (Mask@@61 T@PolymorphicMapType_22593) (o_11@@10 T@Ref) (f_17@@117 T@Field_29641_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@61) (=> (HasDirectPerm_29641_53 Mask@@61 o_11@@10 f_17@@117) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@28) o_11@@10 f_17@@117) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@23) o_11@@10 f_17@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@61) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@23) o_11@@10 f_17@@117))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22572) (ExhaleHeap@@24 T@PolymorphicMapType_22572) (Mask@@62 T@PolymorphicMapType_22593) (o_11@@11 T@Ref) (f_17@@118 T@Field_29641_3565) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@62) (=> (HasDirectPerm_29641_3565 Mask@@62 o_11@@11 f_17@@118) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@29) o_11@@11 f_17@@118) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@24) o_11@@11 f_17@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@62) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@24) o_11@@11 f_17@@118))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22572) (ExhaleHeap@@25 T@PolymorphicMapType_22572) (Mask@@63 T@PolymorphicMapType_22593) (o_11@@12 T@Ref) (f_17@@119 T@Field_14499_29659) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@63) (=> (HasDirectPerm_14499_69664 Mask@@63 o_11@@12 f_17@@119) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@30) o_11@@12 f_17@@119) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@25) o_11@@12 f_17@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@63) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@25) o_11@@12 f_17@@119))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22572) (ExhaleHeap@@26 T@PolymorphicMapType_22572) (Mask@@64 T@PolymorphicMapType_22593) (o_11@@13 T@Ref) (f_17@@120 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@64) (=> (HasDirectPerm_14499_29642 Mask@@64 o_11@@13 f_17@@120) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@31) o_11@@13 f_17@@120) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@26) o_11@@13 f_17@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@64) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@26) o_11@@13 f_17@@120))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22572) (ExhaleHeap@@27 T@PolymorphicMapType_22572) (Mask@@65 T@PolymorphicMapType_22593) (o_11@@14 T@Ref) (f_17@@121 T@Field_28816_28818) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@65) (=> (HasDirectPerm_14499_28818 Mask@@65 o_11@@14 f_17@@121) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@32) o_11@@14 f_17@@121) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@27) o_11@@14 f_17@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@65) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@27) o_11@@14 f_17@@121))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22572) (ExhaleHeap@@28 T@PolymorphicMapType_22572) (Mask@@66 T@PolymorphicMapType_22593) (o_11@@15 T@Ref) (f_17@@122 T@Field_22645_22646) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@66) (=> (HasDirectPerm_14499_22646 Mask@@66 o_11@@15 f_17@@122) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@33) o_11@@15 f_17@@122) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@28) o_11@@15 f_17@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@66) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@28) o_11@@15 f_17@@122))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22572) (ExhaleHeap@@29 T@PolymorphicMapType_22572) (Mask@@67 T@PolymorphicMapType_22593) (o_11@@16 T@Ref) (f_17@@123 T@Field_22632_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@67) (=> (HasDirectPerm_14499_53 Mask@@67 o_11@@16 f_17@@123) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@34) o_11@@16 f_17@@123) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@29) o_11@@16 f_17@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@67) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@29) o_11@@16 f_17@@123))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22572) (ExhaleHeap@@30 T@PolymorphicMapType_22572) (Mask@@68 T@PolymorphicMapType_22593) (o_11@@17 T@Ref) (f_17@@124 T@Field_28740_3565) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@68) (=> (HasDirectPerm_14499_3565 Mask@@68 o_11@@17 f_17@@124) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@35) o_11@@17 f_17@@124) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@30) o_11@@17 f_17@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@68) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@30) o_11@@17 f_17@@124))
)))
(assert (forall ((s0@@1 T@Seq_28873) (s1@@1 T@Seq_28873) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_14522|)) (not (= s1@@1 |Seq#Empty_14522|))) (= (|Seq#Length_14522| (|Seq#Append_28873| s0@@1 s1@@1)) (+ (|Seq#Length_14522| s0@@1) (|Seq#Length_14522| s1@@1))))
 :qid |stdinbpl.296:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_14522| (|Seq#Append_28873| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3443) (s1@@2 T@Seq_3443) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3443|)) (not (= s1@@2 |Seq#Empty_3443|))) (= (|Seq#Length_3443| (|Seq#Append_3443| s0@@2 s1@@2)) (+ (|Seq#Length_3443| s0@@2) (|Seq#Length_3443| s1@@2))))
 :qid |stdinbpl.296:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3443| (|Seq#Append_3443| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_30580_30585) ) (! (= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_30568_28818) ) (! (= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_30568_22646) ) (! (= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_30568_53) ) (! (= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_30568_30569) ) (! (= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_30568_3565) ) (! (= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_29654_29659) ) (! (= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_29641_28818) ) (! (= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_29641_22646) ) (! (= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_29641_53) ) (! (= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_29641_29642) ) (! (= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_29641_3565) ) (! (= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_14499_29659) ) (! (= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_28816_28818) ) (! (= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_22645_22646) ) (! (= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_22632_53) ) (! (= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_14499_29642) ) (! (= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_28740_3565) ) (! (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@15 T@Seq_28873) (t@@1 T@Seq_28873) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_14522| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_14522| s@@15)) (|Seq#Length_14522| s@@15)) n@@15) (= (|Seq#Drop_14522| (|Seq#Append_28873| s@@15 t@@1) n@@15) (|Seq#Drop_14522| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_14522| s@@15))))))
 :qid |stdinbpl.453:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_14522| (|Seq#Append_28873| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3443) (t@@2 T@Seq_3443) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3443| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3443| s@@16)) (|Seq#Length_3443| s@@16)) n@@16) (= (|Seq#Drop_3443| (|Seq#Append_3443| s@@16 t@@2) n@@16) (|Seq#Drop_3443| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3443| s@@16))))))
 :qid |stdinbpl.453:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3443| (|Seq#Append_3443| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22572) (xs@@1 T@Seq_28873) (i@@9 Int) ) (!  (and (= (get_val Heap@@36 xs@@1 i@@9) (|get_val'| Heap@@36 xs@@1 i@@9)) (dummyFunction_14537 (|get_val#triggerStateless| xs@@1 i@@9)))
 :qid |stdinbpl.648:15|
 :skolemid |58|
 :pattern ( (get_val Heap@@36 xs@@1 i@@9))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22593) (SummandMask1 T@PolymorphicMapType_22593) (SummandMask2 T@PolymorphicMapType_22593) (o_2@@71 T@Ref) (f_4@@71 T@Field_30580_30585) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22593) (SummandMask1@@0 T@PolymorphicMapType_22593) (SummandMask2@@0 T@PolymorphicMapType_22593) (o_2@@72 T@Ref) (f_4@@72 T@Field_30568_28818) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22593) (SummandMask1@@1 T@PolymorphicMapType_22593) (SummandMask2@@1 T@PolymorphicMapType_22593) (o_2@@73 T@Ref) (f_4@@73 T@Field_30568_22646) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22593) (SummandMask1@@2 T@PolymorphicMapType_22593) (SummandMask2@@2 T@PolymorphicMapType_22593) (o_2@@74 T@Ref) (f_4@@74 T@Field_30568_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22593) (SummandMask1@@3 T@PolymorphicMapType_22593) (SummandMask2@@3 T@PolymorphicMapType_22593) (o_2@@75 T@Ref) (f_4@@75 T@Field_30568_30569) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22593) (SummandMask1@@4 T@PolymorphicMapType_22593) (SummandMask2@@4 T@PolymorphicMapType_22593) (o_2@@76 T@Ref) (f_4@@76 T@Field_30568_3565) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22593) (SummandMask1@@5 T@PolymorphicMapType_22593) (SummandMask2@@5 T@PolymorphicMapType_22593) (o_2@@77 T@Ref) (f_4@@77 T@Field_29654_29659) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22593) (SummandMask1@@6 T@PolymorphicMapType_22593) (SummandMask2@@6 T@PolymorphicMapType_22593) (o_2@@78 T@Ref) (f_4@@78 T@Field_29641_28818) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22593) (SummandMask1@@7 T@PolymorphicMapType_22593) (SummandMask2@@7 T@PolymorphicMapType_22593) (o_2@@79 T@Ref) (f_4@@79 T@Field_29641_22646) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22593) (SummandMask1@@8 T@PolymorphicMapType_22593) (SummandMask2@@8 T@PolymorphicMapType_22593) (o_2@@80 T@Ref) (f_4@@80 T@Field_29641_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_22593) (SummandMask1@@9 T@PolymorphicMapType_22593) (SummandMask2@@9 T@PolymorphicMapType_22593) (o_2@@81 T@Ref) (f_4@@81 T@Field_29641_29642) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_22593) (SummandMask1@@10 T@PolymorphicMapType_22593) (SummandMask2@@10 T@PolymorphicMapType_22593) (o_2@@82 T@Ref) (f_4@@82 T@Field_29641_3565) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_22593) (SummandMask1@@11 T@PolymorphicMapType_22593) (SummandMask2@@11 T@PolymorphicMapType_22593) (o_2@@83 T@Ref) (f_4@@83 T@Field_14499_29659) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_22593) (SummandMask1@@12 T@PolymorphicMapType_22593) (SummandMask2@@12 T@PolymorphicMapType_22593) (o_2@@84 T@Ref) (f_4@@84 T@Field_28816_28818) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_22593) (SummandMask1@@13 T@PolymorphicMapType_22593) (SummandMask2@@13 T@PolymorphicMapType_22593) (o_2@@85 T@Ref) (f_4@@85 T@Field_22645_22646) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_22593) (SummandMask1@@14 T@PolymorphicMapType_22593) (SummandMask2@@14 T@PolymorphicMapType_22593) (o_2@@86 T@Ref) (f_4@@86 T@Field_22632_53) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_22593) (SummandMask1@@15 T@PolymorphicMapType_22593) (SummandMask2@@15 T@PolymorphicMapType_22593) (o_2@@87 T@Ref) (f_4@@87 T@Field_14499_29642) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_22593) (SummandMask1@@16 T@PolymorphicMapType_22593) (SummandMask2@@16 T@PolymorphicMapType_22593) (o_2@@88 T@Ref) (f_4@@88 T@Field_28740_3565) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3443| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3443| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.618:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3443| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_28873) (b T@Seq_28873) ) (!  (=> (|Seq#Equal_28873| a b) (= a b))
 :qid |stdinbpl.591:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_28873| a b))
)))
(assert (forall ((a@@0 T@Seq_3443) (b@@0 T@Seq_3443) ) (!  (=> (|Seq#Equal_3443| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.591:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3443| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_28873) (i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_14522| s@@17))) (|Seq#ContainsTrigger_14583| s@@17 (|Seq#Index_14522| s@@17 i@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_14522| s@@17 i@@10))
)))
(assert (forall ((s@@18 T@Seq_3443) (i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_3443| s@@18))) (|Seq#ContainsTrigger_3443| s@@18 (|Seq#Index_3443| s@@18 i@@11)))
 :qid |stdinbpl.484:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3443| s@@18 i@@11))
)))
(assert (forall ((s0@@3 T@Seq_28873) (s1@@3 T@Seq_28873) ) (!  (and (=> (= s0@@3 |Seq#Empty_14522|) (= (|Seq#Append_28873| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_14522|) (= (|Seq#Append_28873| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.302:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_28873| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3443) (s1@@4 T@Seq_3443) ) (!  (and (=> (= s0@@4 |Seq#Empty_3443|) (= (|Seq#Append_3443| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3443|) (= (|Seq#Append_3443| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.302:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3443| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_14522| (|Seq#Singleton_14522| t@@3) 0) t@@3)
 :qid |stdinbpl.306:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_14522| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3443| (|Seq#Singleton_3443| t@@4) 0) t@@4)
 :qid |stdinbpl.306:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3443| t@@4))
)))
(assert (forall ((s@@19 T@Seq_28873) ) (! (<= 0 (|Seq#Length_14522| s@@19))
 :qid |stdinbpl.285:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_14522| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3443) ) (! (<= 0 (|Seq#Length_3443| s@@20))
 :qid |stdinbpl.285:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3443| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_28873) (s1@@5 T@Seq_28873) ) (!  (=> (|Seq#Equal_28873| s0@@5 s1@@5) (and (= (|Seq#Length_14522| s0@@5) (|Seq#Length_14522| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_14522| s0@@5))) (= (|Seq#Index_14522| s0@@5 j@@6) (|Seq#Index_14522| s1@@5 j@@6)))
 :qid |stdinbpl.581:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_14522| s0@@5 j@@6))
 :pattern ( (|Seq#Index_14522| s1@@5 j@@6))
))))
 :qid |stdinbpl.578:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_28873| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3443) (s1@@6 T@Seq_3443) ) (!  (=> (|Seq#Equal_3443| s0@@6 s1@@6) (and (= (|Seq#Length_3443| s0@@6) (|Seq#Length_3443| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3443| s0@@6))) (= (|Seq#Index_3443| s0@@6 j@@7) (|Seq#Index_3443| s1@@6 j@@7)))
 :qid |stdinbpl.581:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3443| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3443| s1@@6 j@@7))
))))
 :qid |stdinbpl.578:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3443| s0@@6 s1@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_14545_14546 (pred_1 x@@7)) 0)
 :qid |stdinbpl.719:15|
 :skolemid |64|
 :pattern ( (pred_1 x@@7))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_14522| (|Seq#Singleton_14522| t@@5)) 1)
 :qid |stdinbpl.293:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_14522| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3443| (|Seq#Singleton_3443| t@@6)) 1)
 :qid |stdinbpl.293:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3443| t@@6))
)))
(assert (forall ((i@@12 Int) ) (! (= (getPredWandId_14569_14570 (pred2 i@@12)) 1)
 :qid |stdinbpl.774:15|
 :skolemid |70|
 :pattern ( (pred2 i@@12))
)))
(assert (forall ((s@@21 T@Seq_28873) (t@@7 T@Seq_28873) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_14522| s@@21))) (= (|Seq#Take_14522| (|Seq#Append_28873| s@@21 t@@7) n@@17) (|Seq#Take_14522| s@@21 n@@17)))
 :qid |stdinbpl.435:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_14522| (|Seq#Append_28873| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3443) (t@@8 T@Seq_3443) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3443| s@@22))) (= (|Seq#Take_3443| (|Seq#Append_3443| s@@22 t@@8) n@@18) (|Seq#Take_3443| s@@22 n@@18)))
 :qid |stdinbpl.435:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3443| (|Seq#Append_3443| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_28873) (i@@13 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length_14522| s@@23))) (= (|Seq#Length_14522| (|Seq#Update_14522| s@@23 i@@13 v@@2)) (|Seq#Length_14522| s@@23)))
 :qid |stdinbpl.334:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_14522| (|Seq#Update_14522| s@@23 i@@13 v@@2)))
 :pattern ( (|Seq#Length_14522| s@@23) (|Seq#Update_14522| s@@23 i@@13 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3443) (i@@14 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3443| s@@24))) (= (|Seq#Length_3443| (|Seq#Update_3443| s@@24 i@@14 v@@3)) (|Seq#Length_3443| s@@24)))
 :qid |stdinbpl.334:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3443| (|Seq#Update_3443| s@@24 i@@14 v@@3)))
 :pattern ( (|Seq#Length_3443| s@@24) (|Seq#Update_3443| s@@24 i@@14 v@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22572) (o_10 T@Ref) (f_18 T@Field_30568_28818) (v@@4 T@Seq_3443) ) (! (succHeap Heap@@37 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@37) (store (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@37) o_10 f_18 v@@4) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@37) (store (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@37) o_10 f_18 v@@4) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22572) (o_10@@0 T@Ref) (f_18@@0 T@Field_30580_30585) (v@@5 T@PolymorphicMapType_23121) ) (! (succHeap Heap@@38 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@38) (store (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@38) o_10@@0 f_18@@0 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@38) (store (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@38) o_10@@0 f_18@@0 v@@5)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22572) (o_10@@1 T@Ref) (f_18@@1 T@Field_30568_30569) (v@@6 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@39) (store (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@39) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@39) (store (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@39) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_22572) (o_10@@2 T@Ref) (f_18@@2 T@Field_30568_3565) (v@@7 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@40) (store (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@40) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@40) (store (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@40) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_22572) (o_10@@3 T@Ref) (f_18@@3 T@Field_30568_22646) (v@@8 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@41) (store (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@41) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@41) (store (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@41) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_22572) (o_10@@4 T@Ref) (f_18@@4 T@Field_30568_53) (v@@9 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@42) (store (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@42) o_10@@4 f_18@@4 v@@9) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@42) (store (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@42) o_10@@4 f_18@@4 v@@9) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_22572) (o_10@@5 T@Ref) (f_18@@5 T@Field_29641_28818) (v@@10 T@Seq_3443) ) (! (succHeap Heap@@43 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@43) (store (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@43) o_10@@5 f_18@@5 v@@10) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@43) (store (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@43) o_10@@5 f_18@@5 v@@10) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_22572) (o_10@@6 T@Ref) (f_18@@6 T@Field_29654_29659) (v@@11 T@PolymorphicMapType_23121) ) (! (succHeap Heap@@44 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@44) (store (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@44) o_10@@6 f_18@@6 v@@11) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@44) (store (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@44) o_10@@6 f_18@@6 v@@11) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_22572) (o_10@@7 T@Ref) (f_18@@7 T@Field_29641_29642) (v@@12 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@45) (store (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@45) o_10@@7 f_18@@7 v@@12) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@45) (store (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@45) o_10@@7 f_18@@7 v@@12) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_22572) (o_10@@8 T@Ref) (f_18@@8 T@Field_29641_3565) (v@@13 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@46) (store (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@46) o_10@@8 f_18@@8 v@@13) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@46) (store (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@46) o_10@@8 f_18@@8 v@@13) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_22572) (o_10@@9 T@Ref) (f_18@@9 T@Field_29641_22646) (v@@14 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@47) (store (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@47) o_10@@9 f_18@@9 v@@14) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@47) (store (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@47) o_10@@9 f_18@@9 v@@14) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_22572) (o_10@@10 T@Ref) (f_18@@10 T@Field_29641_53) (v@@15 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@48) (store (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@48) o_10@@10 f_18@@10 v@@15) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@48) (store (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@48) o_10@@10 f_18@@10 v@@15) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_22572) (o_10@@11 T@Ref) (f_18@@11 T@Field_28816_28818) (v@@16 T@Seq_3443) ) (! (succHeap Heap@@49 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@49) (store (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@49) o_10@@11 f_18@@11 v@@16) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@49) (store (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@49) o_10@@11 f_18@@11 v@@16) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_22572) (o_10@@12 T@Ref) (f_18@@12 T@Field_14499_29659) (v@@17 T@PolymorphicMapType_23121) ) (! (succHeap Heap@@50 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@50) (store (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@50) o_10@@12 f_18@@12 v@@17) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@50) (store (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@50) o_10@@12 f_18@@12 v@@17) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_22572) (o_10@@13 T@Ref) (f_18@@13 T@Field_14499_29642) (v@@18 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@51) (store (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@51) o_10@@13 f_18@@13 v@@18) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@51) (store (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@51) o_10@@13 f_18@@13 v@@18) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_22572) (o_10@@14 T@Ref) (f_18@@14 T@Field_28740_3565) (v@@19 Int) ) (! (succHeap Heap@@52 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@52) (store (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@52) o_10@@14 f_18@@14 v@@19) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@52) (store (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@52) o_10@@14 f_18@@14 v@@19) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_22572) (o_10@@15 T@Ref) (f_18@@15 T@Field_22645_22646) (v@@20 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@53) (store (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@53) o_10@@15 f_18@@15 v@@20) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@53) (store (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@53) o_10@@15 f_18@@15 v@@20) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_22572) (o_10@@16 T@Ref) (f_18@@16 T@Field_22632_53) (v@@21 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_22572 (store (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@54) o_10@@16 f_18@@16 v@@21) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (store (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@54) o_10@@16 f_18@@16 v@@21) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@54)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_14545 (pred_1 x@@8)) (|pred#sm| x@@8))
 :qid |stdinbpl.711:15|
 :skolemid |62|
 :pattern ( (PredicateMaskField_14545 (pred_1 x@@8)))
)))
(assert (forall ((i@@15 Int) ) (! (= (PredicateMaskField_14569 (pred2 i@@15)) (|pred2#sm| i@@15))
 :qid |stdinbpl.766:15|
 :skolemid |68|
 :pattern ( (PredicateMaskField_14569 (pred2 i@@15)))
)))
(assert (forall ((s@@25 T@Seq_28873) (t@@9 T@Seq_28873) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_14522| s@@25))) (= (|Seq#Drop_14522| (|Seq#Append_28873| s@@25 t@@9) n@@19) (|Seq#Append_28873| (|Seq#Drop_14522| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.449:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_14522| (|Seq#Append_28873| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3443) (t@@10 T@Seq_3443) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3443| s@@26))) (= (|Seq#Drop_3443| (|Seq#Append_3443| s@@26 t@@10) n@@20) (|Seq#Append_3443| (|Seq#Drop_3443| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.449:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3443| (|Seq#Append_3443| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_28873) (n@@21 Int) (i@@16 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@16)) (< i@@16 (|Seq#Length_14522| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@16 n@@21) n@@21) i@@16) (= (|Seq#Index_14522| (|Seq#Drop_14522| s@@27 n@@21) (|Seq#Sub| i@@16 n@@21)) (|Seq#Index_14522| s@@27 i@@16))))
 :qid |stdinbpl.385:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_14522| s@@27 n@@21) (|Seq#Index_14522| s@@27 i@@16))
)))
(assert (forall ((s@@28 T@Seq_3443) (n@@22 Int) (i@@17 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@17)) (< i@@17 (|Seq#Length_3443| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@17 n@@22) n@@22) i@@17) (= (|Seq#Index_3443| (|Seq#Drop_3443| s@@28 n@@22) (|Seq#Sub| i@@17 n@@22)) (|Seq#Index_3443| s@@28 i@@17))))
 :qid |stdinbpl.385:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3443| s@@28 n@@22) (|Seq#Index_3443| s@@28 i@@17))
)))
(assert (forall ((s0@@7 T@Seq_28873) (s1@@7 T@Seq_28873) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_14522|)) (not (= s1@@7 |Seq#Empty_14522|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_14522| s0@@7))) (= (|Seq#Index_14522| (|Seq#Append_28873| s0@@7 s1@@7) n@@23) (|Seq#Index_14522| s0@@7 n@@23)))
 :qid |stdinbpl.325:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_14522| (|Seq#Append_28873| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_14522| s0@@7 n@@23) (|Seq#Append_28873| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3443) (s1@@8 T@Seq_3443) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3443|)) (not (= s1@@8 |Seq#Empty_3443|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3443| s0@@8))) (= (|Seq#Index_3443| (|Seq#Append_3443| s0@@8 s1@@8) n@@24) (|Seq#Index_3443| s0@@8 n@@24)))
 :qid |stdinbpl.325:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3443| (|Seq#Append_3443| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3443| s0@@8 n@@24) (|Seq#Append_3443| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_28873) (s1@@9 T@Seq_28873) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_14522|)) (not (= s1@@9 |Seq#Empty_14522|))) (<= 0 m)) (< m (|Seq#Length_14522| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_14522| s0@@9)) (|Seq#Length_14522| s0@@9)) m) (= (|Seq#Index_14522| (|Seq#Append_28873| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_14522| s0@@9))) (|Seq#Index_14522| s1@@9 m))))
 :qid |stdinbpl.330:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_14522| s1@@9 m) (|Seq#Append_28873| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3443) (s1@@10 T@Seq_3443) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3443|)) (not (= s1@@10 |Seq#Empty_3443|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3443| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3443| s0@@10)) (|Seq#Length_3443| s0@@10)) m@@0) (= (|Seq#Index_3443| (|Seq#Append_3443| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3443| s0@@10))) (|Seq#Index_3443| s1@@10 m@@0))))
 :qid |stdinbpl.330:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3443| s1@@10 m@@0) (|Seq#Append_3443| s0@@10 s1@@10))
)))
(assert (forall ((o_10@@17 T@Ref) (f_16 T@Field_22645_22646) (Heap@@55 T@PolymorphicMapType_22572) ) (!  (=> (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@55) o_10@@17 $allocated) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@55) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@55) o_10@@17 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@55) o_10@@17 f_16))
)))
(assert (forall ((s@@29 T@Seq_28873) (x@@9 T@Ref) (i@@18 Int) ) (!  (=> (and (and (<= 0 i@@18) (< i@@18 (|Seq#Length_14522| s@@29))) (= (|Seq#Index_14522| s@@29 i@@18) x@@9)) (|Seq#Contains_14583| s@@29 x@@9))
 :qid |stdinbpl.482:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_14583| s@@29 x@@9) (|Seq#Index_14522| s@@29 i@@18))
)))
(assert (forall ((s@@30 T@Seq_3443) (x@@10 Int) (i@@19 Int) ) (!  (=> (and (and (<= 0 i@@19) (< i@@19 (|Seq#Length_3443| s@@30))) (= (|Seq#Index_3443| s@@30 i@@19) x@@10)) (|Seq#Contains_3443| s@@30 x@@10))
 :qid |stdinbpl.482:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3443| s@@30 x@@10) (|Seq#Index_3443| s@@30 i@@19))
)))
(assert (forall ((s0@@11 T@Seq_28873) (s1@@11 T@Seq_28873) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_28873| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28873| s0@@11 s1@@11))) (not (= (|Seq#Length_14522| s0@@11) (|Seq#Length_14522| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28873| s0@@11 s1@@11))) (= (|Seq#Length_14522| s0@@11) (|Seq#Length_14522| s1@@11))) (= (|Seq#SkolemDiff_28873| s0@@11 s1@@11) (|Seq#SkolemDiff_28873| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_28873| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_28873| s0@@11 s1@@11) (|Seq#Length_14522| s0@@11))) (not (= (|Seq#Index_14522| s0@@11 (|Seq#SkolemDiff_28873| s0@@11 s1@@11)) (|Seq#Index_14522| s1@@11 (|Seq#SkolemDiff_28873| s0@@11 s1@@11))))))
 :qid |stdinbpl.586:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_28873| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3443) (s1@@12 T@Seq_3443) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3443| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3443| s0@@12 s1@@12))) (not (= (|Seq#Length_3443| s0@@12) (|Seq#Length_3443| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3443| s0@@12 s1@@12))) (= (|Seq#Length_3443| s0@@12) (|Seq#Length_3443| s1@@12))) (= (|Seq#SkolemDiff_3443| s0@@12 s1@@12) (|Seq#SkolemDiff_3443| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3443| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3443| s0@@12 s1@@12) (|Seq#Length_3443| s0@@12))) (not (= (|Seq#Index_3443| s0@@12 (|Seq#SkolemDiff_3443| s0@@12 s1@@12)) (|Seq#Index_3443| s1@@12 (|Seq#SkolemDiff_3443| s0@@12 s1@@12))))))
 :qid |stdinbpl.586:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3443| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_30568_30569) (v_1@@2 T@FrameType) (q T@Field_30568_30569) (w@@2 T@FrameType) (r T@Field_30568_30569) (u T@FrameType) ) (!  (=> (and (InsidePredicate_30568_30568 p@@3 v_1@@2 q w@@2) (InsidePredicate_30568_30568 q w@@2 r u)) (InsidePredicate_30568_30568 p@@3 v_1@@2 r u))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_30568 p@@3 v_1@@2 q w@@2) (InsidePredicate_30568_30568 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_30568_30569) (v_1@@3 T@FrameType) (q@@0 T@Field_30568_30569) (w@@3 T@FrameType) (r@@0 T@Field_29641_29642) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_30568 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30568_29641 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_30568_29641 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_30568 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30568_29641 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_30568_30569) (v_1@@4 T@FrameType) (q@@1 T@Field_30568_30569) (w@@4 T@FrameType) (r@@1 T@Field_14499_29642) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_30568 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30568_22632 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_30568_22632 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_30568 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30568_22632 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_30568_30569) (v_1@@5 T@FrameType) (q@@2 T@Field_29641_29642) (w@@5 T@FrameType) (r@@2 T@Field_30568_30569) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_29641 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_29641_30568 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_30568_30568 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_29641 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_29641_30568 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_30568_30569) (v_1@@6 T@FrameType) (q@@3 T@Field_29641_29642) (w@@6 T@FrameType) (r@@3 T@Field_29641_29642) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_29641 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_29641_29641 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_30568_29641 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_29641 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_29641_29641 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_30568_30569) (v_1@@7 T@FrameType) (q@@4 T@Field_29641_29642) (w@@7 T@FrameType) (r@@4 T@Field_14499_29642) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_29641 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_29641_22632 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_30568_22632 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_29641 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_29641_22632 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_30568_30569) (v_1@@8 T@FrameType) (q@@5 T@Field_14499_29642) (w@@8 T@FrameType) (r@@5 T@Field_30568_30569) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_22632 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_22632_30568 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_30568_30568 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_22632 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_22632_30568 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_30568_30569) (v_1@@9 T@FrameType) (q@@6 T@Field_14499_29642) (w@@9 T@FrameType) (r@@6 T@Field_29641_29642) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_22632 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_22632_29641 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_30568_29641 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_22632 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_22632_29641 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_30568_30569) (v_1@@10 T@FrameType) (q@@7 T@Field_14499_29642) (w@@10 T@FrameType) (r@@7 T@Field_14499_29642) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_22632 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_22632_22632 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_30568_22632 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_22632 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_22632_22632 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_29641_29642) (v_1@@11 T@FrameType) (q@@8 T@Field_30568_30569) (w@@11 T@FrameType) (r@@8 T@Field_30568_30569) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_30568 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30568_30568 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_29641_30568 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_30568 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30568_30568 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_29641_29642) (v_1@@12 T@FrameType) (q@@9 T@Field_30568_30569) (w@@12 T@FrameType) (r@@9 T@Field_29641_29642) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_30568 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30568_29641 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_29641_29641 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_30568 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30568_29641 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_29641_29642) (v_1@@13 T@FrameType) (q@@10 T@Field_30568_30569) (w@@13 T@FrameType) (r@@10 T@Field_14499_29642) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_30568 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30568_22632 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_29641_22632 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_30568 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30568_22632 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_29641_29642) (v_1@@14 T@FrameType) (q@@11 T@Field_29641_29642) (w@@14 T@FrameType) (r@@11 T@Field_30568_30569) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_29641 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_29641_30568 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_29641_30568 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_29641 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_29641_30568 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_29641_29642) (v_1@@15 T@FrameType) (q@@12 T@Field_29641_29642) (w@@15 T@FrameType) (r@@12 T@Field_29641_29642) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_29641 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_29641_29641 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_29641_29641 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_29641 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_29641_29641 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_29641_29642) (v_1@@16 T@FrameType) (q@@13 T@Field_29641_29642) (w@@16 T@FrameType) (r@@13 T@Field_14499_29642) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_29641 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_29641_22632 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_29641_22632 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_29641 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_29641_22632 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_29641_29642) (v_1@@17 T@FrameType) (q@@14 T@Field_14499_29642) (w@@17 T@FrameType) (r@@14 T@Field_30568_30569) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_22632 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_22632_30568 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_29641_30568 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_22632 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_22632_30568 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_29641_29642) (v_1@@18 T@FrameType) (q@@15 T@Field_14499_29642) (w@@18 T@FrameType) (r@@15 T@Field_29641_29642) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_22632 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_22632_29641 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_29641_29641 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_22632 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_22632_29641 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_29641_29642) (v_1@@19 T@FrameType) (q@@16 T@Field_14499_29642) (w@@19 T@FrameType) (r@@16 T@Field_14499_29642) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_22632 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_22632_22632 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_29641_22632 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_22632 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_22632_22632 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_14499_29642) (v_1@@20 T@FrameType) (q@@17 T@Field_30568_30569) (w@@20 T@FrameType) (r@@17 T@Field_30568_30569) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_30568 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30568_30568 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_22632_30568 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_30568 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30568_30568 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_14499_29642) (v_1@@21 T@FrameType) (q@@18 T@Field_30568_30569) (w@@21 T@FrameType) (r@@18 T@Field_29641_29642) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_30568 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30568_29641 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_22632_29641 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_30568 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30568_29641 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_14499_29642) (v_1@@22 T@FrameType) (q@@19 T@Field_30568_30569) (w@@22 T@FrameType) (r@@19 T@Field_14499_29642) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_30568 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30568_22632 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_22632_22632 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_30568 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30568_22632 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_14499_29642) (v_1@@23 T@FrameType) (q@@20 T@Field_29641_29642) (w@@23 T@FrameType) (r@@20 T@Field_30568_30569) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_29641 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_29641_30568 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_22632_30568 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_29641 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_29641_30568 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_14499_29642) (v_1@@24 T@FrameType) (q@@21 T@Field_29641_29642) (w@@24 T@FrameType) (r@@21 T@Field_29641_29642) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_29641 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_29641_29641 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_22632_29641 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_29641 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_29641_29641 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_14499_29642) (v_1@@25 T@FrameType) (q@@22 T@Field_29641_29642) (w@@25 T@FrameType) (r@@22 T@Field_14499_29642) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_29641 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_29641_22632 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_22632_22632 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_29641 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_29641_22632 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_14499_29642) (v_1@@26 T@FrameType) (q@@23 T@Field_14499_29642) (w@@26 T@FrameType) (r@@23 T@Field_30568_30569) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_22632 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_22632_30568 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_22632_30568 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_22632 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_22632_30568 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_14499_29642) (v_1@@27 T@FrameType) (q@@24 T@Field_14499_29642) (w@@27 T@FrameType) (r@@24 T@Field_29641_29642) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_22632 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_22632_29641 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_22632_29641 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_22632 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_22632_29641 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_14499_29642) (v_1@@28 T@FrameType) (q@@25 T@Field_14499_29642) (w@@28 T@FrameType) (r@@25 T@Field_14499_29642) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_22632 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_22632_22632 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_22632_22632 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_22632 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_22632_22632 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@31 T@Seq_28873) ) (!  (=> (= (|Seq#Length_14522| s@@31) 0) (= s@@31 |Seq#Empty_14522|))
 :qid |stdinbpl.289:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_14522| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3443) ) (!  (=> (= (|Seq#Length_3443| s@@32) 0) (= s@@32 |Seq#Empty_3443|))
 :qid |stdinbpl.289:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3443| s@@32))
)))
(assert (forall ((s@@33 T@Seq_28873) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_14522| s@@33 n@@25) |Seq#Empty_14522|))
 :qid |stdinbpl.465:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_14522| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3443) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3443| s@@34 n@@26) |Seq#Empty_3443|))
 :qid |stdinbpl.465:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3443| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@56 T@PolymorphicMapType_22572) (Mask@@69 T@PolymorphicMapType_22593) (xs@@2 T@Seq_28873) (i@@20 Int) ) (!  (=> (and (state Heap@@56 Mask@@69) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@20) (< i@@20 (|Seq#Length_14522| xs@@2))) (= (get_val Heap@@56 xs@@2 i@@20) (|Seq#Index_14522| xs@@2 i@@20))))
 :qid |stdinbpl.658:15|
 :skolemid |60|
 :pattern ( (state Heap@@56 Mask@@69) (get_val Heap@@56 xs@@2 i@@20))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs@@3 () T@Seq_28873)
(declare-fun x_4 () T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_22593)
(declare-fun PostHeap@0 () T@PolymorphicMapType_22572)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun x_9 () T@Ref)
(declare-fun Heap@@57 () T@PolymorphicMapType_22572)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_22593)
(declare-fun QPMask@0 () T@PolymorphicMapType_22593)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun x_2 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id m1)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon12_correct true))
(let ((anon25_Else_correct  (=> (and (not (|Seq#Contains_14583| xs@@3 x_4)) (= (ControlFlow 0 19) 16)) anon12_correct)))
(let ((anon25_Then_correct  (=> (|Seq#Contains_14583| xs@@3 x_4) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_14499_3565 QPMask@2 x_4 f_7)) (=> (HasDirectPerm_14499_3565 QPMask@2 x_4 f_7) (=> (= (ControlFlow 0 17) 16) anon12_correct))))))
(let ((anon24_Else_correct true))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((x_5 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5 x_5_1)) (|Seq#Contains_14583| xs@@3 x_5)) (|Seq#Contains_14583| xs@@3 x_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_5 x_5_1)))
 :qid |stdinbpl.906:15|
 :skolemid |81|
))) (=> (forall ((x_5@@0 T@Ref) (x_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@0 x_5_1@@0)) (|Seq#Contains_14583| xs@@3 x_5@@0)) (|Seq#Contains_14583| xs@@3 x_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_5@@0 x_5_1@@0)))
 :qid |stdinbpl.906:15|
 :skolemid |81|
)) (=> (and (and (forall ((x_5@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_14583| xs@@3 x_5@@1) (< NoPerm FullPerm)) (and (qpRange2 x_5@@1) (= (invRecv2 x_5@@1) x_5@@1)))
 :qid |stdinbpl.912:22|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| PostHeap@0) x_5@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@2) x_5@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_5@@1))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_5@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_14583| xs@@3 (invRecv2 o_9)) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.916:22|
 :skolemid |83|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((x_5@@2 T@Ref) ) (!  (=> (|Seq#Contains_14583| xs@@3 x_5@@2) (not (= x_5@@2 null)))
 :qid |stdinbpl.922:22|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| PostHeap@0) x_5@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@2) x_5@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_5@@2))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_5@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_14583| xs@@3 (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@2) o_9@@0 f_7) (+ (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_14583| xs@@3 (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@2) o_9@@0 f_7) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.928:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@2) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_22632_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| QPMask@2) o_9@@1 f_5)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| QPMask@2) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_22645_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| QPMask@2) o_9@@2 f_5@@0)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| QPMask@2) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_28740_3565) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@2) o_9@@3 f_5@@1)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@2) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_28816_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| QPMask@2) o_9@@4 f_5@@2)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| QPMask@2) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_14499_29642) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| QPMask@2) o_9@@5 f_5@@3)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| QPMask@2) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_14499_29659) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_9@@6 f_5@@4) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| QPMask@2) o_9@@6 f_5@@4)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| QPMask@2) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_29641_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_9@@7 f_5@@5) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| QPMask@2) o_9@@7 f_5@@5)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| QPMask@2) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_29641_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_9@@8 f_5@@6) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| QPMask@2) o_9@@8 f_5@@6)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| QPMask@2) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_29641_3565) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_9@@9 f_5@@7) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| QPMask@2) o_9@@9 f_5@@7)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| QPMask@2) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_29641_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_9@@10 f_5@@8) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| QPMask@2) o_9@@10 f_5@@8)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| QPMask@2) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_29641_29642) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_9@@11 f_5@@9) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| QPMask@2) o_9@@11 f_5@@9)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_9@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| QPMask@2) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_29654_29659) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_9@@12 f_5@@10) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| QPMask@2) o_9@@12 f_5@@10)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_9@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| QPMask@2) o_9@@12 f_5@@10))
))) (forall ((o_9@@13 T@Ref) (f_5@@11 T@Field_30568_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_9@@13 f_5@@11) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| QPMask@2) o_9@@13 f_5@@11)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_9@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| QPMask@2) o_9@@13 f_5@@11))
))) (forall ((o_9@@14 T@Ref) (f_5@@12 T@Field_30568_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_9@@14 f_5@@12) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| QPMask@2) o_9@@14 f_5@@12)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_9@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| QPMask@2) o_9@@14 f_5@@12))
))) (forall ((o_9@@15 T@Ref) (f_5@@13 T@Field_30568_3565) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_9@@15 f_5@@13) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| QPMask@2) o_9@@15 f_5@@13)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_9@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| QPMask@2) o_9@@15 f_5@@13))
))) (forall ((o_9@@16 T@Ref) (f_5@@14 T@Field_30568_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_9@@16 f_5@@14) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| QPMask@2) o_9@@16 f_5@@14)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_9@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| QPMask@2) o_9@@16 f_5@@14))
))) (forall ((o_9@@17 T@Ref) (f_5@@15 T@Field_30568_30569) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_9@@17 f_5@@15) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| QPMask@2) o_9@@17 f_5@@15)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_9@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| QPMask@2) o_9@@17 f_5@@15))
))) (forall ((o_9@@18 T@Ref) (f_5@@16 T@Field_30580_30585) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_9@@18 f_5@@16) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| QPMask@2) o_9@@18 f_5@@16)))
 :qid |stdinbpl.932:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_9@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| QPMask@2) o_9@@18 f_5@@16))
))) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 20) 15) anon24_Else_correct) (=> (= (ControlFlow 0 20) 17) anon25_Then_correct)) (=> (= (ControlFlow 0 20) 19) anon25_Else_correct))))))))
(let ((anon23_Then_correct true))
(let ((anon22_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 22) 14) anon23_Then_correct) (=> (= (ControlFlow 0 22) 20) anon23_Else_correct)))))
(let ((anon17_correct true))
(let ((anon27_Else_correct  (=> (and (not (|Seq#Contains_14583| xs@@3 x_9)) (= (ControlFlow 0 10) 7)) anon17_correct)))
(let ((anon27_Then_correct  (=> (|Seq#Contains_14583| xs@@3 x_9) (and (=> (= (ControlFlow 0 8) (- 0 9)) (> (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_9 f_7) 0)) (=> (> (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_9 f_7) 0) (=> (= (ControlFlow 0 8) 7) anon17_correct))))))
(let ((anon26_Else_correct true))
(let ((anon22_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (forall ((x_8 T@Ref) (x_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_8 x_8_1)) (|Seq#Contains_14583| xs@@3 x_8)) (|Seq#Contains_14583| xs@@3 x_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_8 x_8_1)))
 :qid |stdinbpl.966:17|
 :skolemid |88|
 :pattern ( (neverTriggered3 x_8) (neverTriggered3 x_8_1))
))) (=> (forall ((x_8@@0 T@Ref) (x_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_8@@0 x_8_1@@0)) (|Seq#Contains_14583| xs@@3 x_8@@0)) (|Seq#Contains_14583| xs@@3 x_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_8@@0 x_8_1@@0)))
 :qid |stdinbpl.966:17|
 :skolemid |88|
 :pattern ( (neverTriggered3 x_8@@0) (neverTriggered3 x_8_1@@0))
)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((x_8@@1 T@Ref) ) (!  (=> (|Seq#Contains_14583| xs@@3 x_8@@1) (>= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) x_8@@1 f_7) FullPerm))
 :qid |stdinbpl.973:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_8@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) x_8@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_8@@1))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_8@@1))
))) (=> (forall ((x_8@@2 T@Ref) ) (!  (=> (|Seq#Contains_14583| xs@@3 x_8@@2) (>= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) x_8@@2 f_7) FullPerm))
 :qid |stdinbpl.973:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_8@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) x_8@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_8@@2))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_8@@2))
)) (=> (forall ((x_8@@3 T@Ref) ) (!  (=> (and (|Seq#Contains_14583| xs@@3 x_8@@3) (< NoPerm FullPerm)) (and (qpRange3 x_8@@3) (= (invRecv3 x_8@@3) x_8@@3)))
 :qid |stdinbpl.979:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_8@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) x_8@@3 f_7))
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_8@@3))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_8@@3))
)) (=> (and (forall ((o_9@@19 T@Ref) ) (!  (=> (and (|Seq#Contains_14583| xs@@3 (invRecv3 o_9@@19)) (and (< NoPerm FullPerm) (qpRange3 o_9@@19))) (= (invRecv3 o_9@@19) o_9@@19))
 :qid |stdinbpl.983:22|
 :skolemid |91|
 :pattern ( (invRecv3 o_9@@19))
)) (forall ((o_9@@20 T@Ref) ) (!  (and (=> (and (|Seq#Contains_14583| xs@@3 (invRecv3 o_9@@20)) (and (< NoPerm FullPerm) (qpRange3 o_9@@20))) (and (= (invRecv3 o_9@@20) o_9@@20) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) o_9@@20 f_7) (- (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@20 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_14583| xs@@3 (invRecv3 o_9@@20)) (and (< NoPerm FullPerm) (qpRange3 o_9@@20)))) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) o_9@@20 f_7) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@20 f_7))))
 :qid |stdinbpl.989:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) o_9@@20 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_22632_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| QPMask@0) o_9@@21 f_5@@17) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| QPMask@1) o_9@@21 f_5@@17)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| QPMask@1) o_9@@21 f_5@@17))
)) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_22645_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| QPMask@0) o_9@@22 f_5@@18) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| QPMask@1) o_9@@22 f_5@@18)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| QPMask@1) o_9@@22 f_5@@18))
))) (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_28740_3565) ) (!  (=> (not (= f_5@@19 f_7)) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@23 f_5@@19) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) o_9@@23 f_5@@19)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@1) o_9@@23 f_5@@19))
))) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_28816_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| QPMask@0) o_9@@24 f_5@@20) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| QPMask@1) o_9@@24 f_5@@20)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| QPMask@1) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_14499_29642) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| QPMask@0) o_9@@25 f_5@@21) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| QPMask@1) o_9@@25 f_5@@21)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| QPMask@1) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_14499_29659) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| QPMask@0) o_9@@26 f_5@@22) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| QPMask@1) o_9@@26 f_5@@22)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| QPMask@1) o_9@@26 f_5@@22))
))) (forall ((o_9@@27 T@Ref) (f_5@@23 T@Field_29641_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| QPMask@0) o_9@@27 f_5@@23) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| QPMask@1) o_9@@27 f_5@@23)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| QPMask@1) o_9@@27 f_5@@23))
))) (forall ((o_9@@28 T@Ref) (f_5@@24 T@Field_29641_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| QPMask@0) o_9@@28 f_5@@24) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| QPMask@1) o_9@@28 f_5@@24)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| QPMask@1) o_9@@28 f_5@@24))
))) (forall ((o_9@@29 T@Ref) (f_5@@25 T@Field_29641_3565) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| QPMask@0) o_9@@29 f_5@@25) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| QPMask@1) o_9@@29 f_5@@25)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| QPMask@1) o_9@@29 f_5@@25))
))) (forall ((o_9@@30 T@Ref) (f_5@@26 T@Field_29641_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| QPMask@0) o_9@@30 f_5@@26) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| QPMask@1) o_9@@30 f_5@@26)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| QPMask@1) o_9@@30 f_5@@26))
))) (forall ((o_9@@31 T@Ref) (f_5@@27 T@Field_29641_29642) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| QPMask@0) o_9@@31 f_5@@27) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| QPMask@1) o_9@@31 f_5@@27)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| QPMask@1) o_9@@31 f_5@@27))
))) (forall ((o_9@@32 T@Ref) (f_5@@28 T@Field_29654_29659) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| QPMask@0) o_9@@32 f_5@@28) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| QPMask@1) o_9@@32 f_5@@28)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| QPMask@1) o_9@@32 f_5@@28))
))) (forall ((o_9@@33 T@Ref) (f_5@@29 T@Field_30568_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| QPMask@0) o_9@@33 f_5@@29) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| QPMask@1) o_9@@33 f_5@@29)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| QPMask@1) o_9@@33 f_5@@29))
))) (forall ((o_9@@34 T@Ref) (f_5@@30 T@Field_30568_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| QPMask@0) o_9@@34 f_5@@30) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| QPMask@1) o_9@@34 f_5@@30)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| QPMask@1) o_9@@34 f_5@@30))
))) (forall ((o_9@@35 T@Ref) (f_5@@31 T@Field_30568_3565) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| QPMask@0) o_9@@35 f_5@@31) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| QPMask@1) o_9@@35 f_5@@31)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| QPMask@1) o_9@@35 f_5@@31))
))) (forall ((o_9@@36 T@Ref) (f_5@@32 T@Field_30568_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| QPMask@0) o_9@@36 f_5@@32) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| QPMask@1) o_9@@36 f_5@@32)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| QPMask@1) o_9@@36 f_5@@32))
))) (forall ((o_9@@37 T@Ref) (f_5@@33 T@Field_30568_30569) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| QPMask@0) o_9@@37 f_5@@33) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| QPMask@1) o_9@@37 f_5@@33)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| QPMask@1) o_9@@37 f_5@@33))
))) (forall ((o_9@@38 T@Ref) (f_5@@34 T@Field_30580_30585) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| QPMask@0) o_9@@38 f_5@@34) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| QPMask@1) o_9@@38 f_5@@34)))
 :qid |stdinbpl.995:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| QPMask@1) o_9@@38 f_5@@34))
))) (and (and (=> (= (ControlFlow 0 11) 6) anon26_Else_correct) (=> (= (ControlFlow 0 11) 8) anon27_Then_correct)) (=> (= (ControlFlow 0 11) 10) anon27_Else_correct)))))))))))
(let ((anon20_Else_correct  (=> (and (forall ((x_3 T@Ref) ) (!  (=> (|Seq#Contains_14583| xs@@3 x_3) (> (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_3 f_7) 0))
 :qid |stdinbpl.883:20|
 :skolemid |80|
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_3))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_3))
)) (state Heap@@57 QPMask@0)) (and (=> (= (ControlFlow 0 23) 22) anon22_Then_correct) (=> (= (ControlFlow 0 23) 11) anon22_Else_correct)))))
(let ((anon5_correct true))
(let ((anon21_Else_correct  (=> (and (not (|Seq#Contains_14583| xs@@3 x_2)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon21_Then_correct  (=> (|Seq#Contains_14583| xs@@3 x_2) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_14499_3565 QPMask@0 x_2 f_7)) (=> (HasDirectPerm_14499_3565 QPMask@0 x_2 f_7) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (|Seq#Contains_14583| xs@@3 x_1)) (|Seq#Contains_14583| xs@@3 x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.842:15|
 :skolemid |74|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (|Seq#Contains_14583| xs@@3 x_1@@0)) (|Seq#Contains_14583| xs@@3 x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.842:15|
 :skolemid |74|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_14583| xs@@3 x_1@@1) (< NoPerm FullPerm)) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.848:22|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) x_1@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_1@@1))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_1@@1))
)) (forall ((o_9@@39 T@Ref) ) (!  (=> (and (and (|Seq#Contains_14583| xs@@3 (invRecv1 o_9@@39)) (< NoPerm FullPerm)) (qpRange1 o_9@@39)) (= (invRecv1 o_9@@39) o_9@@39))
 :qid |stdinbpl.852:22|
 :skolemid |76|
 :pattern ( (invRecv1 o_9@@39))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_14583| xs@@3 x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.858:22|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@57) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) x_1@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_14583| xs@@3 x_1@@2))
 :pattern ( (|Seq#Contains_14583| xs@@3 x_1@@2))
)) (forall ((o_9@@40 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_14583| xs@@3 (invRecv1 o_9@@40)) (< NoPerm FullPerm)) (qpRange1 o_9@@40)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@40) o_9@@40)) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@40 f_7) (+ (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@40 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_14583| xs@@3 (invRecv1 o_9@@40)) (< NoPerm FullPerm)) (qpRange1 o_9@@40))) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@40 f_7) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@40 f_7))))
 :qid |stdinbpl.864:22|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@40 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@41 T@Ref) (f_5@@35 T@Field_22632_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_9@@41 f_5@@35) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| QPMask@0) o_9@@41 f_5@@35)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_9@@41 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| QPMask@0) o_9@@41 f_5@@35))
)) (forall ((o_9@@42 T@Ref) (f_5@@36 T@Field_22645_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_9@@42 f_5@@36) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| QPMask@0) o_9@@42 f_5@@36)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_9@@42 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| QPMask@0) o_9@@42 f_5@@36))
))) (forall ((o_9@@43 T@Ref) (f_5@@37 T@Field_28740_3565) ) (!  (=> (not (= f_5@@37 f_7)) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@43 f_5@@37) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@43 f_5@@37)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_9@@43 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| QPMask@0) o_9@@43 f_5@@37))
))) (forall ((o_9@@44 T@Ref) (f_5@@38 T@Field_28816_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_9@@44 f_5@@38) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| QPMask@0) o_9@@44 f_5@@38)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_9@@44 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| QPMask@0) o_9@@44 f_5@@38))
))) (forall ((o_9@@45 T@Ref) (f_5@@39 T@Field_14499_29642) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_9@@45 f_5@@39) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| QPMask@0) o_9@@45 f_5@@39)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_9@@45 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| QPMask@0) o_9@@45 f_5@@39))
))) (forall ((o_9@@46 T@Ref) (f_5@@40 T@Field_14499_29659) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_9@@46 f_5@@40) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| QPMask@0) o_9@@46 f_5@@40)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_9@@46 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| QPMask@0) o_9@@46 f_5@@40))
))) (forall ((o_9@@47 T@Ref) (f_5@@41 T@Field_29641_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_9@@47 f_5@@41) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| QPMask@0) o_9@@47 f_5@@41)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_9@@47 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| QPMask@0) o_9@@47 f_5@@41))
))) (forall ((o_9@@48 T@Ref) (f_5@@42 T@Field_29641_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_9@@48 f_5@@42) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| QPMask@0) o_9@@48 f_5@@42)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_9@@48 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| QPMask@0) o_9@@48 f_5@@42))
))) (forall ((o_9@@49 T@Ref) (f_5@@43 T@Field_29641_3565) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_9@@49 f_5@@43) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| QPMask@0) o_9@@49 f_5@@43)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_9@@49 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| QPMask@0) o_9@@49 f_5@@43))
))) (forall ((o_9@@50 T@Ref) (f_5@@44 T@Field_29641_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_9@@50 f_5@@44) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| QPMask@0) o_9@@50 f_5@@44)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_9@@50 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| QPMask@0) o_9@@50 f_5@@44))
))) (forall ((o_9@@51 T@Ref) (f_5@@45 T@Field_29641_29642) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_9@@51 f_5@@45) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| QPMask@0) o_9@@51 f_5@@45)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_9@@51 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| QPMask@0) o_9@@51 f_5@@45))
))) (forall ((o_9@@52 T@Ref) (f_5@@46 T@Field_29654_29659) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_9@@52 f_5@@46) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| QPMask@0) o_9@@52 f_5@@46)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_9@@52 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| QPMask@0) o_9@@52 f_5@@46))
))) (forall ((o_9@@53 T@Ref) (f_5@@47 T@Field_30568_53) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_9@@53 f_5@@47) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| QPMask@0) o_9@@53 f_5@@47)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_9@@53 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| QPMask@0) o_9@@53 f_5@@47))
))) (forall ((o_9@@54 T@Ref) (f_5@@48 T@Field_30568_22646) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_9@@54 f_5@@48) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| QPMask@0) o_9@@54 f_5@@48)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_9@@54 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| QPMask@0) o_9@@54 f_5@@48))
))) (forall ((o_9@@55 T@Ref) (f_5@@49 T@Field_30568_3565) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_9@@55 f_5@@49) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| QPMask@0) o_9@@55 f_5@@49)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_9@@55 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| QPMask@0) o_9@@55 f_5@@49))
))) (forall ((o_9@@56 T@Ref) (f_5@@50 T@Field_30568_28818) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_9@@56 f_5@@50) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| QPMask@0) o_9@@56 f_5@@50)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_9@@56 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| QPMask@0) o_9@@56 f_5@@50))
))) (forall ((o_9@@57 T@Ref) (f_5@@51 T@Field_30568_30569) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_9@@57 f_5@@51) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| QPMask@0) o_9@@57 f_5@@51)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_9@@57 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| QPMask@0) o_9@@57 f_5@@51))
))) (forall ((o_9@@58 T@Ref) (f_5@@52 T@Field_30580_30585) ) (!  (=> true (= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_9@@58 f_5@@52) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| QPMask@0) o_9@@58 f_5@@52)))
 :qid |stdinbpl.868:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_9@@58 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| QPMask@0) o_9@@58 f_5@@52))
))) (state Heap@@57 QPMask@0)) (and (and (=> (= (ControlFlow 0 24) 23) anon20_Else_correct) (=> (= (ControlFlow 0 24) 3) anon21_Then_correct)) (=> (= (ControlFlow 0 24) 5) anon21_Else_correct))))))))
(let ((anon19_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@57 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 26) 1) anon19_Then_correct) (=> (= (ControlFlow 0 26) 24) anon19_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27) 26) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
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
(declare-sort T@Field_22632_53 0)
(declare-sort T@Field_22645_22646 0)
(declare-sort T@Field_28740_3565 0)
(declare-sort T@Field_29641_29642 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_29654_29659 0)
(declare-sort T@Field_30568_30569 0)
(declare-sort T@Field_28816_28818 0)
(declare-sort T@Seq_3443 0)
(declare-sort T@Field_14499_29642 0)
(declare-sort T@Field_14499_29659 0)
(declare-sort T@Field_29641_3565 0)
(declare-sort T@Field_29641_53 0)
(declare-sort T@Field_29641_22646 0)
(declare-sort T@Field_29641_28818 0)
(declare-sort T@Field_30568_3565 0)
(declare-sort T@Field_30568_53 0)
(declare-sort T@Field_30568_22646 0)
(declare-sort T@Field_30568_28818 0)
(declare-sort T@Field_30580_30585 0)
(declare-datatypes ((T@PolymorphicMapType_22593 0)) (((PolymorphicMapType_22593 (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| (Array T@Ref T@Field_28740_3565 Real)) (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_29642 Real)) (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_30569 Real)) (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| (Array T@Ref T@Field_14499_29642 Real)) (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| (Array T@Ref T@Field_22632_53 Real)) (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| (Array T@Ref T@Field_22645_22646 Real)) (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| (Array T@Ref T@Field_28816_28818 Real)) (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| (Array T@Ref T@Field_14499_29659 Real)) (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_3565 Real)) (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_53 Real)) (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_22646 Real)) (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| (Array T@Ref T@Field_29641_28818 Real)) (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| (Array T@Ref T@Field_29654_29659 Real)) (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_3565 Real)) (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_53 Real)) (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_22646 Real)) (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| (Array T@Ref T@Field_30568_28818 Real)) (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| (Array T@Ref T@Field_30580_30585 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23121 0)) (((PolymorphicMapType_23121 (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (Array T@Ref T@Field_28740_3565 Bool)) (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (Array T@Ref T@Field_22632_53 Bool)) (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (Array T@Ref T@Field_22645_22646 Bool)) (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (Array T@Ref T@Field_28816_28818 Bool)) (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (Array T@Ref T@Field_14499_29642 Bool)) (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (Array T@Ref T@Field_14499_29659 Bool)) (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_3565 Bool)) (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_53 Bool)) (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_22646 Bool)) (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_28818 Bool)) (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (Array T@Ref T@Field_29641_29642 Bool)) (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (Array T@Ref T@Field_29654_29659 Bool)) (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_3565 Bool)) (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_53 Bool)) (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_22646 Bool)) (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_28818 Bool)) (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (Array T@Ref T@Field_30568_30569 Bool)) (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (Array T@Ref T@Field_30580_30585 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22572 0)) (((PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| (Array T@Ref T@Field_22632_53 Bool)) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| (Array T@Ref T@Field_22645_22646 T@Ref)) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| (Array T@Ref T@Field_28740_3565 Int)) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_29642 T@FrameType)) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| (Array T@Ref T@Field_29654_29659 T@PolymorphicMapType_23121)) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_30569 T@FrameType)) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| (Array T@Ref T@Field_28816_28818 T@Seq_3443)) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| (Array T@Ref T@Field_14499_29642 T@FrameType)) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| (Array T@Ref T@Field_14499_29659 T@PolymorphicMapType_23121)) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_3565 Int)) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_53 Bool)) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_22646 T@Ref)) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| (Array T@Ref T@Field_29641_28818 T@Seq_3443)) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_3565 Int)) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_53 Bool)) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_22646 T@Ref)) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| (Array T@Ref T@Field_30568_28818 T@Seq_3443)) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| (Array T@Ref T@Field_30580_30585 T@PolymorphicMapType_23121)) ) ) ))
(declare-fun $allocated () T@Field_22632_53)
(declare-fun f_7 () T@Field_28740_3565)
(declare-fun g () T@Field_28740_3565)
(declare-fun vals () T@Field_28816_28818)
(declare-sort T@Seq_28873 0)
(declare-fun |Seq#Length_14522| (T@Seq_28873) Int)
(declare-fun |Seq#Drop_14522| (T@Seq_28873 Int) T@Seq_28873)
(declare-fun |Seq#Length_3443| (T@Seq_3443) Int)
(declare-fun |Seq#Drop_3443| (T@Seq_3443 Int) T@Seq_3443)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22572 T@PolymorphicMapType_22572 T@PolymorphicMapType_22593) Bool)
(declare-fun IsPredicateField_14569_14570 (T@Field_30568_30569) Bool)
(declare-fun HasDirectPerm_30568_29642 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_30569) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_14569 (T@Field_30568_30569) T@Field_30580_30585)
(declare-fun IsPredicateField_14545_14546 (T@Field_29641_29642) Bool)
(declare-fun HasDirectPerm_29641_29642 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_29642) Bool)
(declare-fun PredicateMaskField_14545 (T@Field_29641_29642) T@Field_29654_29659)
(declare-fun IsPredicateField_14499_72689 (T@Field_14499_29642) Bool)
(declare-fun HasDirectPerm_14499_29642 (T@PolymorphicMapType_22593 T@Ref T@Field_14499_29642) Bool)
(declare-fun PredicateMaskField_14499 (T@Field_14499_29642) T@Field_14499_29659)
(declare-fun IsWandField_30568_78997 (T@Field_30568_30569) Bool)
(declare-fun WandMaskField_30568 (T@Field_30568_30569) T@Field_30580_30585)
(declare-fun IsWandField_29641_78640 (T@Field_29641_29642) Bool)
(declare-fun WandMaskField_29641 (T@Field_29641_29642) T@Field_29654_29659)
(declare-fun IsWandField_14499_78283 (T@Field_14499_29642) Bool)
(declare-fun WandMaskField_14499 (T@Field_14499_29642) T@Field_14499_29659)
(declare-fun succHeap (T@PolymorphicMapType_22572 T@PolymorphicMapType_22572) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22572 T@PolymorphicMapType_22572) Bool)
(declare-fun state (T@PolymorphicMapType_22572 T@PolymorphicMapType_22593) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22593) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_23121)
(declare-fun |get_val'| (T@PolymorphicMapType_22572 T@Seq_28873 Int) T@Ref)
(declare-fun dummyFunction_14537 (T@Ref) Bool)
(declare-fun |get_val#triggerStateless| (T@Seq_28873 Int) T@Ref)
(declare-fun |Seq#Index_14522| (T@Seq_28873 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3443| (T@Seq_3443 Int) Int)
(declare-fun |get_val#frame| (T@FrameType T@Seq_28873 Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_14522| () T@Seq_28873)
(declare-fun |Seq#Empty_3443| () T@Seq_3443)
(declare-fun pred_1 (T@Ref) T@Field_29641_29642)
(declare-fun pred2 (Int) T@Field_30568_30569)
(declare-fun |pred#trigger_14545| (T@PolymorphicMapType_22572 T@Field_29641_29642) Bool)
(declare-fun |pred#everUsed_14545| (T@Field_29641_29642) Bool)
(declare-fun |pred2#trigger_14569| (T@PolymorphicMapType_22572 T@Field_30568_30569) Bool)
(declare-fun |pred2#everUsed_14569| (T@Field_30568_30569) Bool)
(declare-fun |Seq#Update_14522| (T@Seq_28873 Int T@Ref) T@Seq_28873)
(declare-fun |Seq#Update_3443| (T@Seq_3443 Int Int) T@Seq_3443)
(declare-fun |Seq#Take_14522| (T@Seq_28873 Int) T@Seq_28873)
(declare-fun |Seq#Take_3443| (T@Seq_3443 Int) T@Seq_3443)
(declare-fun |Seq#Contains_3443| (T@Seq_3443 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3443)
(declare-fun |Seq#Contains_14583| (T@Seq_28873 T@Ref) Bool)
(declare-fun |Seq#Skolem_14583| (T@Seq_28873 T@Ref) Int)
(declare-fun |Seq#Skolem_3443| (T@Seq_3443 Int) Int)
(declare-fun |Seq#Singleton_14522| (T@Ref) T@Seq_28873)
(declare-fun |Seq#Singleton_3443| (Int) T@Seq_3443)
(declare-fun |pred#sm| (T@Ref) T@Field_29654_29659)
(declare-fun |pred2#sm| (Int) T@Field_30580_30585)
(declare-fun |Seq#Append_28873| (T@Seq_28873 T@Seq_28873) T@Seq_28873)
(declare-fun |Seq#Append_3443| (T@Seq_3443 T@Seq_3443) T@Seq_3443)
(declare-fun dummyHeap () T@PolymorphicMapType_22572)
(declare-fun ZeroMask () T@PolymorphicMapType_22593)
(declare-fun InsidePredicate_30568_30568 (T@Field_30568_30569 T@FrameType T@Field_30568_30569 T@FrameType) Bool)
(declare-fun InsidePredicate_29641_29641 (T@Field_29641_29642 T@FrameType T@Field_29641_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_22632_22632 (T@Field_14499_29642 T@FrameType T@Field_14499_29642 T@FrameType) Bool)
(declare-fun IsPredicateField_14499_3565 (T@Field_28740_3565) Bool)
(declare-fun IsWandField_14499_3565 (T@Field_28740_3565) Bool)
(declare-fun IsPredicateField_14503_28837 (T@Field_28816_28818) Bool)
(declare-fun IsWandField_14503_28860 (T@Field_28816_28818) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14569_91152 (T@Field_30580_30585) Bool)
(declare-fun IsWandField_14569_91168 (T@Field_30580_30585) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14569_28818 (T@Field_30568_28818) Bool)
(declare-fun IsWandField_14569_28818 (T@Field_30568_28818) Bool)
(declare-fun IsPredicateField_14569_22646 (T@Field_30568_22646) Bool)
(declare-fun IsWandField_14569_22646 (T@Field_30568_22646) Bool)
(declare-fun IsPredicateField_14569_53 (T@Field_30568_53) Bool)
(declare-fun IsWandField_14569_53 (T@Field_30568_53) Bool)
(declare-fun IsPredicateField_14569_3565 (T@Field_30568_3565) Bool)
(declare-fun IsWandField_14569_3565 (T@Field_30568_3565) Bool)
(declare-fun IsPredicateField_14545_90153 (T@Field_29654_29659) Bool)
(declare-fun IsWandField_14545_90169 (T@Field_29654_29659) Bool)
(declare-fun IsPredicateField_14545_28818 (T@Field_29641_28818) Bool)
(declare-fun IsWandField_14545_28818 (T@Field_29641_28818) Bool)
(declare-fun IsPredicateField_14545_22646 (T@Field_29641_22646) Bool)
(declare-fun IsWandField_14545_22646 (T@Field_29641_22646) Bool)
(declare-fun IsPredicateField_14545_53 (T@Field_29641_53) Bool)
(declare-fun IsWandField_14545_53 (T@Field_29641_53) Bool)
(declare-fun IsPredicateField_14545_3565 (T@Field_29641_3565) Bool)
(declare-fun IsWandField_14545_3565 (T@Field_29641_3565) Bool)
(declare-fun IsPredicateField_14499_89154 (T@Field_14499_29659) Bool)
(declare-fun IsWandField_14499_89170 (T@Field_14499_29659) Bool)
(declare-fun IsPredicateField_14499_22646 (T@Field_22645_22646) Bool)
(declare-fun IsWandField_14499_22646 (T@Field_22645_22646) Bool)
(declare-fun IsPredicateField_14499_53 (T@Field_22632_53) Bool)
(declare-fun IsWandField_14499_53 (T@Field_22632_53) Bool)
(declare-fun HasDirectPerm_30568_72401 (T@PolymorphicMapType_22593 T@Ref T@Field_30580_30585) Bool)
(declare-fun HasDirectPerm_30568_28818 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_28818) Bool)
(declare-fun HasDirectPerm_30568_22646 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_22646) Bool)
(declare-fun HasDirectPerm_30568_53 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_53) Bool)
(declare-fun HasDirectPerm_30568_3565 (T@PolymorphicMapType_22593 T@Ref T@Field_30568_3565) Bool)
(declare-fun HasDirectPerm_29641_71054 (T@PolymorphicMapType_22593 T@Ref T@Field_29654_29659) Bool)
(declare-fun HasDirectPerm_29641_28818 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_28818) Bool)
(declare-fun HasDirectPerm_29641_22646 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_22646) Bool)
(declare-fun HasDirectPerm_29641_53 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_53) Bool)
(declare-fun HasDirectPerm_29641_3565 (T@PolymorphicMapType_22593 T@Ref T@Field_29641_3565) Bool)
(declare-fun HasDirectPerm_14499_69664 (T@PolymorphicMapType_22593 T@Ref T@Field_14499_29659) Bool)
(declare-fun HasDirectPerm_14499_28818 (T@PolymorphicMapType_22593 T@Ref T@Field_28816_28818) Bool)
(declare-fun HasDirectPerm_14499_22646 (T@PolymorphicMapType_22593 T@Ref T@Field_22645_22646) Bool)
(declare-fun HasDirectPerm_14499_53 (T@PolymorphicMapType_22593 T@Ref T@Field_22632_53) Bool)
(declare-fun HasDirectPerm_14499_3565 (T@PolymorphicMapType_22593 T@Ref T@Field_28740_3565) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun get_val (T@PolymorphicMapType_22572 T@Seq_28873 Int) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_22593 T@PolymorphicMapType_22593 T@PolymorphicMapType_22593) Bool)
(declare-fun |Seq#Equal_28873| (T@Seq_28873 T@Seq_28873) Bool)
(declare-fun |Seq#Equal_3443| (T@Seq_3443 T@Seq_3443) Bool)
(declare-fun |Seq#ContainsTrigger_14583| (T@Seq_28873 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3443| (T@Seq_3443 Int) Bool)
(declare-fun getPredWandId_14545_14546 (T@Field_29641_29642) Int)
(declare-fun getPredWandId_14569_14570 (T@Field_30568_30569) Int)
(declare-fun |Seq#SkolemDiff_28873| (T@Seq_28873 T@Seq_28873) Int)
(declare-fun |Seq#SkolemDiff_3443| (T@Seq_3443 T@Seq_3443) Int)
(declare-fun InsidePredicate_30568_29641 (T@Field_30568_30569 T@FrameType T@Field_29641_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_30568_22632 (T@Field_30568_30569 T@FrameType T@Field_14499_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_29641_30568 (T@Field_29641_29642 T@FrameType T@Field_30568_30569 T@FrameType) Bool)
(declare-fun InsidePredicate_29641_22632 (T@Field_29641_29642 T@FrameType T@Field_14499_29642 T@FrameType) Bool)
(declare-fun InsidePredicate_22632_30568 (T@Field_14499_29642 T@FrameType T@Field_30568_30569 T@FrameType) Bool)
(declare-fun InsidePredicate_22632_29641 (T@Field_14499_29642 T@FrameType T@Field_29641_29642 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_28873) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_14522| s)) (= (|Seq#Length_14522| (|Seq#Drop_14522| s n)) (- (|Seq#Length_14522| s) n))) (=> (< (|Seq#Length_14522| s) n) (= (|Seq#Length_14522| (|Seq#Drop_14522| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_14522| (|Seq#Drop_14522| s n)) (|Seq#Length_14522| s))))
 :qid |stdinbpl.360:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_14522| (|Seq#Drop_14522| s n)))
 :pattern ( (|Seq#Length_14522| s) (|Seq#Drop_14522| s n))
)))
(assert (forall ((s@@0 T@Seq_3443) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3443| s@@0)) (= (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)) (- (|Seq#Length_3443| s@@0) n@@0))) (=> (< (|Seq#Length_3443| s@@0) n@@0) (= (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)) (|Seq#Length_3443| s@@0))))
 :qid |stdinbpl.360:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3443| (|Seq#Drop_3443| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3443| s@@0) (|Seq#Drop_3443| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_22572) (ExhaleHeap T@PolymorphicMapType_22572) (Mask T@PolymorphicMapType_22593) (pm_f_3 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_30568_29642 Mask null pm_f_3) (IsPredicateField_14569_14570 pm_f_3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3 T@Ref) (f_17 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3 f_17) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap) o2_3 f_17) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3 f_17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3 f_17))
)) (forall ((o2_3@@0 T@Ref) (f_17@@0 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@0 f_17@@0) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap) o2_3@@0 f_17@@0) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@0 f_17@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@0 f_17@@0))
))) (forall ((o2_3@@1 T@Ref) (f_17@@1 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@1 f_17@@1) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap) o2_3@@1 f_17@@1) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap) o2_3@@1 f_17@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap) o2_3@@1 f_17@@1))
))) (forall ((o2_3@@2 T@Ref) (f_17@@2 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@2 f_17@@2) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap) o2_3@@2 f_17@@2) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@2 f_17@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@2 f_17@@2))
))) (forall ((o2_3@@3 T@Ref) (f_17@@3 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@3 f_17@@3) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap) o2_3@@3 f_17@@3) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap) o2_3@@3 f_17@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap) o2_3@@3 f_17@@3))
))) (forall ((o2_3@@4 T@Ref) (f_17@@4 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@4 f_17@@4) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap) o2_3@@4 f_17@@4) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap) o2_3@@4 f_17@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap) o2_3@@4 f_17@@4))
))) (forall ((o2_3@@5 T@Ref) (f_17@@5 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@5 f_17@@5) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap) o2_3@@5 f_17@@5) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@5 f_17@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@5 f_17@@5))
))) (forall ((o2_3@@6 T@Ref) (f_17@@6 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@6 f_17@@6) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap) o2_3@@6 f_17@@6) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@6 f_17@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@6 f_17@@6))
))) (forall ((o2_3@@7 T@Ref) (f_17@@7 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@7 f_17@@7) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap) o2_3@@7 f_17@@7) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@7 f_17@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@7 f_17@@7))
))) (forall ((o2_3@@8 T@Ref) (f_17@@8 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@8 f_17@@8) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap) o2_3@@8 f_17@@8) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@8 f_17@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@8 f_17@@8))
))) (forall ((o2_3@@9 T@Ref) (f_17@@9 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@9 f_17@@9) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap) o2_3@@9 f_17@@9) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap) o2_3@@9 f_17@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap) o2_3@@9 f_17@@9))
))) (forall ((o2_3@@10 T@Ref) (f_17@@10 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@10 f_17@@10) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap) o2_3@@10 f_17@@10) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap) o2_3@@10 f_17@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap) o2_3@@10 f_17@@10))
))) (forall ((o2_3@@11 T@Ref) (f_17@@11 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@11 f_17@@11) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap) o2_3@@11 f_17@@11) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@11 f_17@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap) o2_3@@11 f_17@@11))
))) (forall ((o2_3@@12 T@Ref) (f_17@@12 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@12 f_17@@12) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap) o2_3@@12 f_17@@12) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@12 f_17@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap) o2_3@@12 f_17@@12))
))) (forall ((o2_3@@13 T@Ref) (f_17@@13 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@13 f_17@@13) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap) o2_3@@13 f_17@@13) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@13 f_17@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap) o2_3@@13 f_17@@13))
))) (forall ((o2_3@@14 T@Ref) (f_17@@14 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@14 f_17@@14) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap) o2_3@@14 f_17@@14) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@14 f_17@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap) o2_3@@14 f_17@@14))
))) (forall ((o2_3@@15 T@Ref) (f_17@@15 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@15 f_17@@15) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap) o2_3@@15 f_17@@15) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap) o2_3@@15 f_17@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap) o2_3@@15 f_17@@15))
))) (forall ((o2_3@@16 T@Ref) (f_17@@16 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) null (PredicateMaskField_14569 pm_f_3))) o2_3@@16 f_17@@16) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap) o2_3@@16 f_17@@16) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap) o2_3@@16 f_17@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap) o2_3@@16 f_17@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_14569_14570 pm_f_3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22572) (ExhaleHeap@@0 T@PolymorphicMapType_22572) (Mask@@0 T@PolymorphicMapType_22593) (pm_f_3@@0 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_29641_29642 Mask@@0 null pm_f_3@@0) (IsPredicateField_14545_14546 pm_f_3@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@17 T@Ref) (f_17@@17 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@17 f_17@@17) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@0) o2_3@@17 f_17@@17) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@17 f_17@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@17 f_17@@17))
)) (forall ((o2_3@@18 T@Ref) (f_17@@18 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@18 f_17@@18) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@0) o2_3@@18 f_17@@18) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@18 f_17@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@18 f_17@@18))
))) (forall ((o2_3@@19 T@Ref) (f_17@@19 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@19 f_17@@19) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@0) o2_3@@19 f_17@@19) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@19 f_17@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@19 f_17@@19))
))) (forall ((o2_3@@20 T@Ref) (f_17@@20 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@20 f_17@@20) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@0) o2_3@@20 f_17@@20) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@20 f_17@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@20 f_17@@20))
))) (forall ((o2_3@@21 T@Ref) (f_17@@21 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@21 f_17@@21) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@0) o2_3@@21 f_17@@21) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@21 f_17@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@21 f_17@@21))
))) (forall ((o2_3@@22 T@Ref) (f_17@@22 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@22 f_17@@22) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@0) o2_3@@22 f_17@@22) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@22 f_17@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@22 f_17@@22))
))) (forall ((o2_3@@23 T@Ref) (f_17@@23 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@23 f_17@@23) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@0) o2_3@@23 f_17@@23) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@23 f_17@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@23 f_17@@23))
))) (forall ((o2_3@@24 T@Ref) (f_17@@24 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@24 f_17@@24) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@0) o2_3@@24 f_17@@24) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@24 f_17@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@24 f_17@@24))
))) (forall ((o2_3@@25 T@Ref) (f_17@@25 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@25 f_17@@25) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@0) o2_3@@25 f_17@@25) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@25 f_17@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@25 f_17@@25))
))) (forall ((o2_3@@26 T@Ref) (f_17@@26 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@26 f_17@@26) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@0) o2_3@@26 f_17@@26) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@26 f_17@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@26 f_17@@26))
))) (forall ((o2_3@@27 T@Ref) (f_17@@27 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@27 f_17@@27) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@0) o2_3@@27 f_17@@27) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@27 f_17@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@27 f_17@@27))
))) (forall ((o2_3@@28 T@Ref) (f_17@@28 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@28 f_17@@28) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) o2_3@@28 f_17@@28) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@28 f_17@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@28 f_17@@28))
))) (forall ((o2_3@@29 T@Ref) (f_17@@29 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@29 f_17@@29) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@0) o2_3@@29 f_17@@29) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@29 f_17@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@29 f_17@@29))
))) (forall ((o2_3@@30 T@Ref) (f_17@@30 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@30 f_17@@30) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@0) o2_3@@30 f_17@@30) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@30 f_17@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@30 f_17@@30))
))) (forall ((o2_3@@31 T@Ref) (f_17@@31 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@31 f_17@@31) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@0) o2_3@@31 f_17@@31) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@31 f_17@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@31 f_17@@31))
))) (forall ((o2_3@@32 T@Ref) (f_17@@32 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@32 f_17@@32) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@0) o2_3@@32 f_17@@32) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@32 f_17@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@32 f_17@@32))
))) (forall ((o2_3@@33 T@Ref) (f_17@@33 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@33 f_17@@33) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@0) o2_3@@33 f_17@@33) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@33 f_17@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@33 f_17@@33))
))) (forall ((o2_3@@34 T@Ref) (f_17@@34 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@0) null (PredicateMaskField_14545 pm_f_3@@0))) o2_3@@34 f_17@@34) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@0) o2_3@@34 f_17@@34) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@34 f_17@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@0) o2_3@@34 f_17@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_14545_14546 pm_f_3@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22572) (ExhaleHeap@@1 T@PolymorphicMapType_22572) (Mask@@1 T@PolymorphicMapType_22593) (pm_f_3@@1 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_14499_29642 Mask@@1 null pm_f_3@@1) (IsPredicateField_14499_72689 pm_f_3@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@35 T@Ref) (f_17@@35 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@35 f_17@@35) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@1) o2_3@@35 f_17@@35) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@35 f_17@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@35 f_17@@35))
)) (forall ((o2_3@@36 T@Ref) (f_17@@36 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@36 f_17@@36) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@1) o2_3@@36 f_17@@36) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@36 f_17@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@36 f_17@@36))
))) (forall ((o2_3@@37 T@Ref) (f_17@@37 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@37 f_17@@37) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@1) o2_3@@37 f_17@@37) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@37 f_17@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@37 f_17@@37))
))) (forall ((o2_3@@38 T@Ref) (f_17@@38 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@38 f_17@@38) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@1) o2_3@@38 f_17@@38) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@38 f_17@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@38 f_17@@38))
))) (forall ((o2_3@@39 T@Ref) (f_17@@39 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@39 f_17@@39) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@1) o2_3@@39 f_17@@39) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@39 f_17@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@39 f_17@@39))
))) (forall ((o2_3@@40 T@Ref) (f_17@@40 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@40 f_17@@40) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) o2_3@@40 f_17@@40) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@40 f_17@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@40 f_17@@40))
))) (forall ((o2_3@@41 T@Ref) (f_17@@41 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@41 f_17@@41) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@1) o2_3@@41 f_17@@41) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@41 f_17@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@41 f_17@@41))
))) (forall ((o2_3@@42 T@Ref) (f_17@@42 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@42 f_17@@42) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@1) o2_3@@42 f_17@@42) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@42 f_17@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@42 f_17@@42))
))) (forall ((o2_3@@43 T@Ref) (f_17@@43 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@43 f_17@@43) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@1) o2_3@@43 f_17@@43) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@43 f_17@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@43 f_17@@43))
))) (forall ((o2_3@@44 T@Ref) (f_17@@44 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@44 f_17@@44) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@1) o2_3@@44 f_17@@44) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@44 f_17@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@44 f_17@@44))
))) (forall ((o2_3@@45 T@Ref) (f_17@@45 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@45 f_17@@45) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@1) o2_3@@45 f_17@@45) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@45 f_17@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@45 f_17@@45))
))) (forall ((o2_3@@46 T@Ref) (f_17@@46 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@46 f_17@@46) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@1) o2_3@@46 f_17@@46) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@46 f_17@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@46 f_17@@46))
))) (forall ((o2_3@@47 T@Ref) (f_17@@47 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@47 f_17@@47) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@1) o2_3@@47 f_17@@47) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@47 f_17@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@47 f_17@@47))
))) (forall ((o2_3@@48 T@Ref) (f_17@@48 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@48 f_17@@48) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@1) o2_3@@48 f_17@@48) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@48 f_17@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@48 f_17@@48))
))) (forall ((o2_3@@49 T@Ref) (f_17@@49 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@49 f_17@@49) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@1) o2_3@@49 f_17@@49) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@49 f_17@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@49 f_17@@49))
))) (forall ((o2_3@@50 T@Ref) (f_17@@50 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@50 f_17@@50) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@1) o2_3@@50 f_17@@50) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@50 f_17@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@50 f_17@@50))
))) (forall ((o2_3@@51 T@Ref) (f_17@@51 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@51 f_17@@51) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@1) o2_3@@51 f_17@@51) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@51 f_17@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@51 f_17@@51))
))) (forall ((o2_3@@52 T@Ref) (f_17@@52 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@1) null (PredicateMaskField_14499 pm_f_3@@1))) o2_3@@52 f_17@@52) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@1) o2_3@@52 f_17@@52) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@52 f_17@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@1) o2_3@@52 f_17@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_14499_72689 pm_f_3@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22572) (ExhaleHeap@@2 T@PolymorphicMapType_22572) (Mask@@2 T@PolymorphicMapType_22593) (pm_f_3@@2 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_30568_29642 Mask@@2 null pm_f_3@@2) (IsWandField_30568_78997 pm_f_3@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@53 T@Ref) (f_17@@53 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@53 f_17@@53) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@2) o2_3@@53 f_17@@53) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@53 f_17@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@53 f_17@@53))
)) (forall ((o2_3@@54 T@Ref) (f_17@@54 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@54 f_17@@54) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@2) o2_3@@54 f_17@@54) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@54 f_17@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@54 f_17@@54))
))) (forall ((o2_3@@55 T@Ref) (f_17@@55 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@55 f_17@@55) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@2) o2_3@@55 f_17@@55) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@55 f_17@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@55 f_17@@55))
))) (forall ((o2_3@@56 T@Ref) (f_17@@56 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@56 f_17@@56) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@2) o2_3@@56 f_17@@56) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@56 f_17@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@56 f_17@@56))
))) (forall ((o2_3@@57 T@Ref) (f_17@@57 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@57 f_17@@57) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@2) o2_3@@57 f_17@@57) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@57 f_17@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@57 f_17@@57))
))) (forall ((o2_3@@58 T@Ref) (f_17@@58 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@58 f_17@@58) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@2) o2_3@@58 f_17@@58) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@58 f_17@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@58 f_17@@58))
))) (forall ((o2_3@@59 T@Ref) (f_17@@59 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@59 f_17@@59) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@2) o2_3@@59 f_17@@59) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@59 f_17@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@59 f_17@@59))
))) (forall ((o2_3@@60 T@Ref) (f_17@@60 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@60 f_17@@60) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@2) o2_3@@60 f_17@@60) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@60 f_17@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@60 f_17@@60))
))) (forall ((o2_3@@61 T@Ref) (f_17@@61 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@61 f_17@@61) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@2) o2_3@@61 f_17@@61) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@61 f_17@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@61 f_17@@61))
))) (forall ((o2_3@@62 T@Ref) (f_17@@62 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@62 f_17@@62) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@2) o2_3@@62 f_17@@62) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@62 f_17@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@62 f_17@@62))
))) (forall ((o2_3@@63 T@Ref) (f_17@@63 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@63 f_17@@63) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@2) o2_3@@63 f_17@@63) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@63 f_17@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@63 f_17@@63))
))) (forall ((o2_3@@64 T@Ref) (f_17@@64 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@64 f_17@@64) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@2) o2_3@@64 f_17@@64) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@64 f_17@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@64 f_17@@64))
))) (forall ((o2_3@@65 T@Ref) (f_17@@65 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@65 f_17@@65) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@2) o2_3@@65 f_17@@65) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@65 f_17@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@65 f_17@@65))
))) (forall ((o2_3@@66 T@Ref) (f_17@@66 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@66 f_17@@66) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@2) o2_3@@66 f_17@@66) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@66 f_17@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@66 f_17@@66))
))) (forall ((o2_3@@67 T@Ref) (f_17@@67 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@67 f_17@@67) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@2) o2_3@@67 f_17@@67) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@67 f_17@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@67 f_17@@67))
))) (forall ((o2_3@@68 T@Ref) (f_17@@68 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@68 f_17@@68) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@2) o2_3@@68 f_17@@68) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@68 f_17@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@68 f_17@@68))
))) (forall ((o2_3@@69 T@Ref) (f_17@@69 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@69 f_17@@69) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@2) o2_3@@69 f_17@@69) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@69 f_17@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@69 f_17@@69))
))) (forall ((o2_3@@70 T@Ref) (f_17@@70 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) null (WandMaskField_30568 pm_f_3@@2))) o2_3@@70 f_17@@70) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@2) o2_3@@70 f_17@@70) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@70 f_17@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@2) o2_3@@70 f_17@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_30568_78997 pm_f_3@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22572) (ExhaleHeap@@3 T@PolymorphicMapType_22572) (Mask@@3 T@PolymorphicMapType_22593) (pm_f_3@@3 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_29641_29642 Mask@@3 null pm_f_3@@3) (IsWandField_29641_78640 pm_f_3@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@71 T@Ref) (f_17@@71 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@71 f_17@@71) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@3) o2_3@@71 f_17@@71) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@71 f_17@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@71 f_17@@71))
)) (forall ((o2_3@@72 T@Ref) (f_17@@72 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@72 f_17@@72) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@3) o2_3@@72 f_17@@72) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@72 f_17@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@72 f_17@@72))
))) (forall ((o2_3@@73 T@Ref) (f_17@@73 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@73 f_17@@73) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@3) o2_3@@73 f_17@@73) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@73 f_17@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@73 f_17@@73))
))) (forall ((o2_3@@74 T@Ref) (f_17@@74 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@74 f_17@@74) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@3) o2_3@@74 f_17@@74) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@74 f_17@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@74 f_17@@74))
))) (forall ((o2_3@@75 T@Ref) (f_17@@75 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@75 f_17@@75) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@3) o2_3@@75 f_17@@75) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@75 f_17@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@75 f_17@@75))
))) (forall ((o2_3@@76 T@Ref) (f_17@@76 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@76 f_17@@76) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@3) o2_3@@76 f_17@@76) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@76 f_17@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@76 f_17@@76))
))) (forall ((o2_3@@77 T@Ref) (f_17@@77 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@77 f_17@@77) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@3) o2_3@@77 f_17@@77) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@77 f_17@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@77 f_17@@77))
))) (forall ((o2_3@@78 T@Ref) (f_17@@78 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@78 f_17@@78) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@3) o2_3@@78 f_17@@78) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@78 f_17@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@78 f_17@@78))
))) (forall ((o2_3@@79 T@Ref) (f_17@@79 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@79 f_17@@79) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@3) o2_3@@79 f_17@@79) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@79 f_17@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@79 f_17@@79))
))) (forall ((o2_3@@80 T@Ref) (f_17@@80 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@80 f_17@@80) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@3) o2_3@@80 f_17@@80) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@80 f_17@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@80 f_17@@80))
))) (forall ((o2_3@@81 T@Ref) (f_17@@81 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@81 f_17@@81) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@3) o2_3@@81 f_17@@81) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@81 f_17@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@81 f_17@@81))
))) (forall ((o2_3@@82 T@Ref) (f_17@@82 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@82 f_17@@82) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) o2_3@@82 f_17@@82) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@82 f_17@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@82 f_17@@82))
))) (forall ((o2_3@@83 T@Ref) (f_17@@83 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@83 f_17@@83) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@3) o2_3@@83 f_17@@83) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@83 f_17@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@83 f_17@@83))
))) (forall ((o2_3@@84 T@Ref) (f_17@@84 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@84 f_17@@84) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@3) o2_3@@84 f_17@@84) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@84 f_17@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@84 f_17@@84))
))) (forall ((o2_3@@85 T@Ref) (f_17@@85 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@85 f_17@@85) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@3) o2_3@@85 f_17@@85) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@85 f_17@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@85 f_17@@85))
))) (forall ((o2_3@@86 T@Ref) (f_17@@86 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@86 f_17@@86) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@3) o2_3@@86 f_17@@86) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@86 f_17@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@86 f_17@@86))
))) (forall ((o2_3@@87 T@Ref) (f_17@@87 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@87 f_17@@87) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@3) o2_3@@87 f_17@@87) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@87 f_17@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@87 f_17@@87))
))) (forall ((o2_3@@88 T@Ref) (f_17@@88 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@3) null (WandMaskField_29641 pm_f_3@@3))) o2_3@@88 f_17@@88) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@3) o2_3@@88 f_17@@88) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@88 f_17@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@3) o2_3@@88 f_17@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_29641_78640 pm_f_3@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22572) (ExhaleHeap@@4 T@PolymorphicMapType_22572) (Mask@@4 T@PolymorphicMapType_22593) (pm_f_3@@4 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_14499_29642 Mask@@4 null pm_f_3@@4) (IsWandField_14499_78283 pm_f_3@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_3@@89 T@Ref) (f_17@@89 T@Field_28740_3565) ) (!  (=> (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@89 f_17@@89) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@4) o2_3@@89 f_17@@89) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@89 f_17@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@89 f_17@@89))
)) (forall ((o2_3@@90 T@Ref) (f_17@@90 T@Field_22632_53) ) (!  (=> (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@90 f_17@@90) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@4) o2_3@@90 f_17@@90) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@90 f_17@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@90 f_17@@90))
))) (forall ((o2_3@@91 T@Ref) (f_17@@91 T@Field_22645_22646) ) (!  (=> (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@91 f_17@@91) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@4) o2_3@@91 f_17@@91) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@91 f_17@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@91 f_17@@91))
))) (forall ((o2_3@@92 T@Ref) (f_17@@92 T@Field_28816_28818) ) (!  (=> (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@92 f_17@@92) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@4) o2_3@@92 f_17@@92) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@92 f_17@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@92 f_17@@92))
))) (forall ((o2_3@@93 T@Ref) (f_17@@93 T@Field_14499_29642) ) (!  (=> (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@93 f_17@@93) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@4) o2_3@@93 f_17@@93) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@93 f_17@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@93 f_17@@93))
))) (forall ((o2_3@@94 T@Ref) (f_17@@94 T@Field_14499_29659) ) (!  (=> (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@94 f_17@@94) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) o2_3@@94 f_17@@94) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@94 f_17@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@94 f_17@@94))
))) (forall ((o2_3@@95 T@Ref) (f_17@@95 T@Field_29641_3565) ) (!  (=> (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@95 f_17@@95) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@4) o2_3@@95 f_17@@95) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@95 f_17@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@95 f_17@@95))
))) (forall ((o2_3@@96 T@Ref) (f_17@@96 T@Field_29641_53) ) (!  (=> (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@96 f_17@@96) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@4) o2_3@@96 f_17@@96) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@96 f_17@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@96 f_17@@96))
))) (forall ((o2_3@@97 T@Ref) (f_17@@97 T@Field_29641_22646) ) (!  (=> (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@97 f_17@@97) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@4) o2_3@@97 f_17@@97) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@97 f_17@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@97 f_17@@97))
))) (forall ((o2_3@@98 T@Ref) (f_17@@98 T@Field_29641_28818) ) (!  (=> (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@98 f_17@@98) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@4) o2_3@@98 f_17@@98) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@98 f_17@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@98 f_17@@98))
))) (forall ((o2_3@@99 T@Ref) (f_17@@99 T@Field_29641_29642) ) (!  (=> (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@99 f_17@@99) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@4) o2_3@@99 f_17@@99) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@99 f_17@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@99 f_17@@99))
))) (forall ((o2_3@@100 T@Ref) (f_17@@100 T@Field_29654_29659) ) (!  (=> (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@100 f_17@@100) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@4) o2_3@@100 f_17@@100) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@100 f_17@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@100 f_17@@100))
))) (forall ((o2_3@@101 T@Ref) (f_17@@101 T@Field_30568_3565) ) (!  (=> (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@101 f_17@@101) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@4) o2_3@@101 f_17@@101) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@101 f_17@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@101 f_17@@101))
))) (forall ((o2_3@@102 T@Ref) (f_17@@102 T@Field_30568_53) ) (!  (=> (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@102 f_17@@102) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@4) o2_3@@102 f_17@@102) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@102 f_17@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@102 f_17@@102))
))) (forall ((o2_3@@103 T@Ref) (f_17@@103 T@Field_30568_22646) ) (!  (=> (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@103 f_17@@103) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@4) o2_3@@103 f_17@@103) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@103 f_17@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@103 f_17@@103))
))) (forall ((o2_3@@104 T@Ref) (f_17@@104 T@Field_30568_28818) ) (!  (=> (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@104 f_17@@104) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@4) o2_3@@104 f_17@@104) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@104 f_17@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@104 f_17@@104))
))) (forall ((o2_3@@105 T@Ref) (f_17@@105 T@Field_30568_30569) ) (!  (=> (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@105 f_17@@105) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@4) o2_3@@105 f_17@@105) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@105 f_17@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@105 f_17@@105))
))) (forall ((o2_3@@106 T@Ref) (f_17@@106 T@Field_30580_30585) ) (!  (=> (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@4) null (WandMaskField_14499 pm_f_3@@4))) o2_3@@106 f_17@@106) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@4) o2_3@@106 f_17@@106) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@106 f_17@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@4) o2_3@@106 f_17@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_14499_78283 pm_f_3@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_22572) (Heap1 T@PolymorphicMapType_22572) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22572) (Mask@@5 T@PolymorphicMapType_22593) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22572) (Heap1@@0 T@PolymorphicMapType_22572) (Heap2 T@PolymorphicMapType_22572) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30580_30585) ) (!  (not (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_77194#PolymorphicMapType_23121| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_30568_30569) ) (!  (not (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_30568_28818) ) (!  (not (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_30568_22646) ) (!  (not (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_30568_53) ) (!  (not (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_53#PolymorphicMapType_23121| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_30568_3565) ) (!  (not (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_30568_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_29654_29659) ) (!  (not (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_75942#PolymorphicMapType_23121| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_29641_29642) ) (!  (not (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_29641_28818) ) (!  (not (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_29641_22646) ) (!  (not (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_29641_53) ) (!  (not (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_53#PolymorphicMapType_23121| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_29641_3565) ) (!  (not (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_29641_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14499_29659) ) (!  (not (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_74690#PolymorphicMapType_23121| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_14499_29642) ) (!  (not (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_29642#PolymorphicMapType_23121| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_28816_28818) ) (!  (not (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_28818#PolymorphicMapType_23121| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_22645_22646) ) (!  (not (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_22646#PolymorphicMapType_23121| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_22632_53) ) (!  (not (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_53#PolymorphicMapType_23121| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_28740_3565) ) (!  (not (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23121_14499_3565#PolymorphicMapType_23121| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22572) (xs T@Seq_28873) (i Int) ) (! (dummyFunction_14537 (|get_val#triggerStateless| xs i))
 :qid |stdinbpl.652:15|
 :skolemid |59|
 :pattern ( (|get_val'| Heap@@6 xs i))
)))
(assert (forall ((s@@1 T@Seq_28873) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_14522| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_14522| (|Seq#Drop_14522| s@@1 n@@1) j) (|Seq#Index_14522| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.381:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_14522| (|Seq#Drop_14522| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3443) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3443| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3443| (|Seq#Drop_3443| s@@2 n@@2) j@@0) (|Seq#Index_3443| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.381:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3443| (|Seq#Drop_3443| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22572) (Mask@@6 T@PolymorphicMapType_22593) (xs@@0 T@Seq_28873) (i@@0 Int) ) (!  (=> (state Heap@@7 Mask@@6) (= (|get_val'| Heap@@7 xs@@0 i@@0) (|get_val#frame| EmptyFrame xs@@0 i@@0)))
 :qid |stdinbpl.665:15|
 :skolemid |61|
 :pattern ( (state Heap@@7 Mask@@6) (|get_val'| Heap@@7 xs@@0 i@@0))
)))
(assert (= (|Seq#Length_14522| |Seq#Empty_14522|) 0))
(assert (= (|Seq#Length_3443| |Seq#Empty_3443|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_14545_14546 (pred_1 x))
 :qid |stdinbpl.715:15|
 :skolemid |63|
 :pattern ( (pred_1 x))
)))
(assert (forall ((i@@1 Int) ) (! (IsPredicateField_14569_14570 (pred2 i@@1))
 :qid |stdinbpl.770:15|
 :skolemid |69|
 :pattern ( (pred2 i@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22572) (x@@0 T@Ref) ) (! (|pred#everUsed_14545| (pred_1 x@@0))
 :qid |stdinbpl.734:15|
 :skolemid |67|
 :pattern ( (|pred#trigger_14545| Heap@@8 (pred_1 x@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22572) (i@@2 Int) ) (! (|pred2#everUsed_14569| (pred2 i@@2))
 :qid |stdinbpl.789:15|
 :skolemid |73|
 :pattern ( (|pred2#trigger_14569| Heap@@9 (pred2 i@@2)))
)))
(assert (forall ((s@@3 T@Seq_28873) (i@@3 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_14522| s@@3))) (and (=> (= i@@3 n@@3) (= (|Seq#Index_14522| (|Seq#Update_14522| s@@3 i@@3 v) n@@3) v)) (=> (not (= i@@3 n@@3)) (= (|Seq#Index_14522| (|Seq#Update_14522| s@@3 i@@3 v) n@@3) (|Seq#Index_14522| s@@3 n@@3)))))
 :qid |stdinbpl.336:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_14522| (|Seq#Update_14522| s@@3 i@@3 v) n@@3))
 :pattern ( (|Seq#Index_14522| s@@3 n@@3) (|Seq#Update_14522| s@@3 i@@3 v))
)))
(assert (forall ((s@@4 T@Seq_3443) (i@@4 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3443| s@@4))) (and (=> (= i@@4 n@@4) (= (|Seq#Index_3443| (|Seq#Update_3443| s@@4 i@@4 v@@0) n@@4) v@@0)) (=> (not (= i@@4 n@@4)) (= (|Seq#Index_3443| (|Seq#Update_3443| s@@4 i@@4 v@@0) n@@4) (|Seq#Index_3443| s@@4 n@@4)))))
 :qid |stdinbpl.336:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3443| (|Seq#Update_3443| s@@4 i@@4 v@@0) n@@4))
 :pattern ( (|Seq#Index_3443| s@@4 n@@4) (|Seq#Update_3443| s@@4 i@@4 v@@0))
)))
(assert (forall ((s@@5 T@Seq_28873) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_14522| s@@5)) (= (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_14522| s@@5) n@@5) (= (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)) (|Seq#Length_14522| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)) 0)))
 :qid |stdinbpl.347:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_14522| (|Seq#Take_14522| s@@5 n@@5)))
 :pattern ( (|Seq#Take_14522| s@@5 n@@5) (|Seq#Length_14522| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3443) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3443| s@@6)) (= (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3443| s@@6) n@@6) (= (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)) (|Seq#Length_3443| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)) 0)))
 :qid |stdinbpl.347:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3443| (|Seq#Take_3443| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3443| s@@6 n@@6) (|Seq#Length_3443| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3443| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.621:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3443| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_28873) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_14583| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_14583| s@@7 x@@1)) (< (|Seq#Skolem_14583| s@@7 x@@1) (|Seq#Length_14522| s@@7))) (= (|Seq#Index_14522| s@@7 (|Seq#Skolem_14583| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.479:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_14583| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_3443) (x@@2 Int) ) (!  (=> (|Seq#Contains_3443| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_3443| s@@8 x@@2)) (< (|Seq#Skolem_3443| s@@8 x@@2) (|Seq#Length_3443| s@@8))) (= (|Seq#Index_3443| s@@8 (|Seq#Skolem_3443| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.479:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3443| s@@8 x@@2))
)))
(assert (forall ((s@@9 T@Seq_28873) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_14522| s@@9 n@@7) s@@9))
 :qid |stdinbpl.463:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_14522| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3443) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3443| s@@10 n@@8) s@@10))
 :qid |stdinbpl.463:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3443| s@@10 n@@8))
)))
(assert (forall ((i@@5 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@5 j@@1) (- i@@5 j@@1))
 :qid |stdinbpl.316:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@5 j@@1))
)))
(assert (forall ((i@@6 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@6 j@@2) (+ i@@6 j@@2))
 :qid |stdinbpl.314:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@6 j@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22572) (ExhaleHeap@@5 T@PolymorphicMapType_22572) (Mask@@7 T@PolymorphicMapType_22593) (pm_f_3@@5 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_30568_29642 Mask@@7 null pm_f_3@@5) (IsPredicateField_14569_14570 pm_f_3@@5)) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@10) null (PredicateMaskField_14569 pm_f_3@@5)) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@5) null (PredicateMaskField_14569 pm_f_3@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsPredicateField_14569_14570 pm_f_3@@5) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@5) null (PredicateMaskField_14569 pm_f_3@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22572) (ExhaleHeap@@6 T@PolymorphicMapType_22572) (Mask@@8 T@PolymorphicMapType_22593) (pm_f_3@@6 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_29641_29642 Mask@@8 null pm_f_3@@6) (IsPredicateField_14545_14546 pm_f_3@@6)) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@11) null (PredicateMaskField_14545 pm_f_3@@6)) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@6) null (PredicateMaskField_14545 pm_f_3@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsPredicateField_14545_14546 pm_f_3@@6) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@6) null (PredicateMaskField_14545 pm_f_3@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22572) (ExhaleHeap@@7 T@PolymorphicMapType_22572) (Mask@@9 T@PolymorphicMapType_22593) (pm_f_3@@7 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_14499_29642 Mask@@9 null pm_f_3@@7) (IsPredicateField_14499_72689 pm_f_3@@7)) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@12) null (PredicateMaskField_14499 pm_f_3@@7)) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@7) null (PredicateMaskField_14499 pm_f_3@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (IsPredicateField_14499_72689 pm_f_3@@7) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@7) null (PredicateMaskField_14499 pm_f_3@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22572) (ExhaleHeap@@8 T@PolymorphicMapType_22572) (Mask@@10 T@PolymorphicMapType_22593) (pm_f_3@@8 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_30568_29642 Mask@@10 null pm_f_3@@8) (IsWandField_30568_78997 pm_f_3@@8)) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@13) null (WandMaskField_30568 pm_f_3@@8)) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@8) null (WandMaskField_30568 pm_f_3@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (IsWandField_30568_78997 pm_f_3@@8) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@8) null (WandMaskField_30568 pm_f_3@@8)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22572) (ExhaleHeap@@9 T@PolymorphicMapType_22572) (Mask@@11 T@PolymorphicMapType_22593) (pm_f_3@@9 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_29641_29642 Mask@@11 null pm_f_3@@9) (IsWandField_29641_78640 pm_f_3@@9)) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@14) null (WandMaskField_29641 pm_f_3@@9)) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@9) null (WandMaskField_29641 pm_f_3@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (IsWandField_29641_78640 pm_f_3@@9) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@9) null (WandMaskField_29641 pm_f_3@@9)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22572) (ExhaleHeap@@10 T@PolymorphicMapType_22572) (Mask@@12 T@PolymorphicMapType_22593) (pm_f_3@@10 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_14499_29642 Mask@@12 null pm_f_3@@10) (IsWandField_14499_78283 pm_f_3@@10)) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@15) null (WandMaskField_14499 pm_f_3@@10)) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@10) null (WandMaskField_14499 pm_f_3@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12) (IsWandField_14499_78283 pm_f_3@@10) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@10) null (WandMaskField_14499 pm_f_3@@10)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_14583| (|Seq#Singleton_14522| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.604:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_14583| (|Seq#Singleton_14522| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3443| (|Seq#Singleton_3443| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.604:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3443| (|Seq#Singleton_3443| x@@4) y@@0))
)))
(assert (forall ((s@@11 T@Seq_28873) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_14522| s@@11))) (= (|Seq#Index_14522| (|Seq#Take_14522| s@@11 n@@9) j@@3) (|Seq#Index_14522| s@@11 j@@3)))
 :qid |stdinbpl.355:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_14522| (|Seq#Take_14522| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_14522| s@@11 j@@3) (|Seq#Take_14522| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3443) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3443| s@@12))) (= (|Seq#Index_3443| (|Seq#Take_3443| s@@12 n@@10) j@@4) (|Seq#Index_3443| s@@12 j@@4)))
 :qid |stdinbpl.355:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3443| (|Seq#Take_3443| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3443| s@@12 j@@4) (|Seq#Take_3443| s@@12 n@@10))
)))
(assert (forall ((x@@5 T@Ref) (x2 T@Ref) ) (!  (=> (= (pred_1 x@@5) (pred_1 x2)) (= x@@5 x2))
 :qid |stdinbpl.725:15|
 :skolemid |65|
 :pattern ( (pred_1 x@@5) (pred_1 x2))
)))
(assert (forall ((x@@6 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|pred#sm| x@@6) (|pred#sm| x2@@0)) (= x@@6 x2@@0))
 :qid |stdinbpl.729:15|
 :skolemid |66|
 :pattern ( (|pred#sm| x@@6) (|pred#sm| x2@@0))
)))
(assert (forall ((i@@7 Int) (i2 Int) ) (!  (=> (= (pred2 i@@7) (pred2 i2)) (= i@@7 i2))
 :qid |stdinbpl.780:15|
 :skolemid |71|
 :pattern ( (pred2 i@@7) (pred2 i2))
)))
(assert (forall ((i@@8 Int) (i2@@0 Int) ) (!  (=> (= (|pred2#sm| i@@8) (|pred2#sm| i2@@0)) (= i@@8 i2@@0))
 :qid |stdinbpl.784:15|
 :skolemid |72|
 :pattern ( (|pred2#sm| i@@8) (|pred2#sm| i2@@0))
)))
(assert (forall ((s@@13 T@Seq_28873) (t T@Seq_28873) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_14522| s@@13))) (< n@@11 (|Seq#Length_14522| (|Seq#Append_28873| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_14522| s@@13)) (|Seq#Length_14522| s@@13)) n@@11) (= (|Seq#Take_14522| (|Seq#Append_28873| s@@13 t) n@@11) (|Seq#Append_28873| s@@13 (|Seq#Take_14522| t (|Seq#Sub| n@@11 (|Seq#Length_14522| s@@13)))))))
 :qid |stdinbpl.440:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_14522| (|Seq#Append_28873| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3443) (t@@0 T@Seq_3443) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3443| s@@14))) (< n@@12 (|Seq#Length_3443| (|Seq#Append_3443| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3443| s@@14)) (|Seq#Length_3443| s@@14)) n@@12) (= (|Seq#Take_3443| (|Seq#Append_3443| s@@14 t@@0) n@@12) (|Seq#Append_3443| s@@14 (|Seq#Take_3443| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3443| s@@14)))))))
 :qid |stdinbpl.440:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3443| (|Seq#Append_3443| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22572) (ExhaleHeap@@11 T@PolymorphicMapType_22572) (Mask@@13 T@PolymorphicMapType_22593) (o_11 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (=> (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@16) o_11 $allocated) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@11) o_11 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@11) o_11 $allocated))
)))
(assert (forall ((p T@Field_30568_30569) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_30568_30568 p v_1 p w))
 :qid |stdinbpl.258:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30568_30568 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_29641_29642) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_29641_29641 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.258:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29641_29641 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_14499_29642) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_22632_22632 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.258:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22632_22632 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_28873) (s1 T@Seq_28873) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_14522|)) (not (= s1 |Seq#Empty_14522|))) (<= (|Seq#Length_14522| s0) n@@13)) (< n@@13 (|Seq#Length_14522| (|Seq#Append_28873| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_14522| s0)) (|Seq#Length_14522| s0)) n@@13) (= (|Seq#Index_14522| (|Seq#Append_28873| s0 s1) n@@13) (|Seq#Index_14522| s1 (|Seq#Sub| n@@13 (|Seq#Length_14522| s0))))))
 :qid |stdinbpl.327:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_14522| (|Seq#Append_28873| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3443) (s1@@0 T@Seq_3443) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3443|)) (not (= s1@@0 |Seq#Empty_3443|))) (<= (|Seq#Length_3443| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3443| (|Seq#Append_3443| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3443| s0@@0)) (|Seq#Length_3443| s0@@0)) n@@14) (= (|Seq#Index_3443| (|Seq#Append_3443| s0@@0 s1@@0) n@@14) (|Seq#Index_3443| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3443| s0@@0))))))
 :qid |stdinbpl.327:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3443| (|Seq#Append_3443| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_14499_3565 f_7)))
(assert  (not (IsWandField_14499_3565 f_7)))
(assert  (not (IsPredicateField_14499_3565 g)))
(assert  (not (IsWandField_14499_3565 g)))
(assert  (not (IsPredicateField_14503_28837 vals)))
(assert  (not (IsWandField_14503_28860 vals)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22572) (ExhaleHeap@@12 T@PolymorphicMapType_22572) (Mask@@14 T@PolymorphicMapType_22593) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14) (succHeap Heap@@17 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22593) (o_2@@17 T@Ref) (f_4@@17 T@Field_30580_30585) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@15) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14569_91152 f_4@@17))) (not (IsWandField_14569_91168 f_4@@17))) (<= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@15) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@15) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22593) (o_2@@18 T@Ref) (f_4@@18 T@Field_30568_28818) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@16) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14569_28818 f_4@@18))) (not (IsWandField_14569_28818 f_4@@18))) (<= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@16) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@16) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22593) (o_2@@19 T@Ref) (f_4@@19 T@Field_30568_22646) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@17) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14569_22646 f_4@@19))) (not (IsWandField_14569_22646 f_4@@19))) (<= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@17) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@17) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22593) (o_2@@20 T@Ref) (f_4@@20 T@Field_30568_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@18) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_14569_53 f_4@@20))) (not (IsWandField_14569_53 f_4@@20))) (<= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@18) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@18) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22593) (o_2@@21 T@Ref) (f_4@@21 T@Field_30568_30569) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@19) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_14569_14570 f_4@@21))) (not (IsWandField_30568_78997 f_4@@21))) (<= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@19) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@19) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22593) (o_2@@22 T@Ref) (f_4@@22 T@Field_30568_3565) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@20) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_14569_3565 f_4@@22))) (not (IsWandField_14569_3565 f_4@@22))) (<= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@20) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@20) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22593) (o_2@@23 T@Ref) (f_4@@23 T@Field_29654_29659) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@21) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_14545_90153 f_4@@23))) (not (IsWandField_14545_90169 f_4@@23))) (<= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@21) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@21) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22593) (o_2@@24 T@Ref) (f_4@@24 T@Field_29641_28818) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@22) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_14545_28818 f_4@@24))) (not (IsWandField_14545_28818 f_4@@24))) (<= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@22) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@22) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22593) (o_2@@25 T@Ref) (f_4@@25 T@Field_29641_22646) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@23) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_14545_22646 f_4@@25))) (not (IsWandField_14545_22646 f_4@@25))) (<= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@23) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@23) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22593) (o_2@@26 T@Ref) (f_4@@26 T@Field_29641_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@24) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_14545_53 f_4@@26))) (not (IsWandField_14545_53 f_4@@26))) (<= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@24) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@24) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22593) (o_2@@27 T@Ref) (f_4@@27 T@Field_29641_29642) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@25) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_14545_14546 f_4@@27))) (not (IsWandField_29641_78640 f_4@@27))) (<= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@25) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@25) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22593) (o_2@@28 T@Ref) (f_4@@28 T@Field_29641_3565) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@26) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_14545_3565 f_4@@28))) (not (IsWandField_14545_3565 f_4@@28))) (<= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@26) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@26) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22593) (o_2@@29 T@Ref) (f_4@@29 T@Field_14499_29659) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@27) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_14499_89154 f_4@@29))) (not (IsWandField_14499_89170 f_4@@29))) (<= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@27) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@27) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22593) (o_2@@30 T@Ref) (f_4@@30 T@Field_28816_28818) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@28) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_14503_28837 f_4@@30))) (not (IsWandField_14503_28860 f_4@@30))) (<= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@28) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@28) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22593) (o_2@@31 T@Ref) (f_4@@31 T@Field_22645_22646) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@29) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_14499_22646 f_4@@31))) (not (IsWandField_14499_22646 f_4@@31))) (<= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@29) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@29) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22593) (o_2@@32 T@Ref) (f_4@@32 T@Field_22632_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@30) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_14499_53 f_4@@32))) (not (IsWandField_14499_53 f_4@@32))) (<= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@30) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@30) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22593) (o_2@@33 T@Ref) (f_4@@33 T@Field_14499_29642) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@31) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_14499_72689 f_4@@33))) (not (IsWandField_14499_78283 f_4@@33))) (<= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@31) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@31) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_22593) (o_2@@34 T@Ref) (f_4@@34 T@Field_28740_3565) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@32) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_14499_3565 f_4@@34))) (not (IsWandField_14499_3565 f_4@@34))) (<= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@32) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@32) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_22593) (o_2@@35 T@Ref) (f_4@@35 T@Field_30580_30585) ) (! (= (HasDirectPerm_30568_72401 Mask@@33 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| Mask@@33) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_72401 Mask@@33 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_22593) (o_2@@36 T@Ref) (f_4@@36 T@Field_30568_30569) ) (! (= (HasDirectPerm_30568_29642 Mask@@34 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| Mask@@34) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_29642 Mask@@34 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_22593) (o_2@@37 T@Ref) (f_4@@37 T@Field_30568_28818) ) (! (= (HasDirectPerm_30568_28818 Mask@@35 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| Mask@@35) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_28818 Mask@@35 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_22593) (o_2@@38 T@Ref) (f_4@@38 T@Field_30568_22646) ) (! (= (HasDirectPerm_30568_22646 Mask@@36 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| Mask@@36) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_22646 Mask@@36 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_22593) (o_2@@39 T@Ref) (f_4@@39 T@Field_30568_53) ) (! (= (HasDirectPerm_30568_53 Mask@@37 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| Mask@@37) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_53 Mask@@37 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_22593) (o_2@@40 T@Ref) (f_4@@40 T@Field_30568_3565) ) (! (= (HasDirectPerm_30568_3565 Mask@@38 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| Mask@@38) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30568_3565 Mask@@38 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_22593) (o_2@@41 T@Ref) (f_4@@41 T@Field_29654_29659) ) (! (= (HasDirectPerm_29641_71054 Mask@@39 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| Mask@@39) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_71054 Mask@@39 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_22593) (o_2@@42 T@Ref) (f_4@@42 T@Field_29641_29642) ) (! (= (HasDirectPerm_29641_29642 Mask@@40 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| Mask@@40) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_29642 Mask@@40 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_22593) (o_2@@43 T@Ref) (f_4@@43 T@Field_29641_28818) ) (! (= (HasDirectPerm_29641_28818 Mask@@41 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| Mask@@41) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_28818 Mask@@41 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_22593) (o_2@@44 T@Ref) (f_4@@44 T@Field_29641_22646) ) (! (= (HasDirectPerm_29641_22646 Mask@@42 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| Mask@@42) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_22646 Mask@@42 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_22593) (o_2@@45 T@Ref) (f_4@@45 T@Field_29641_53) ) (! (= (HasDirectPerm_29641_53 Mask@@43 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| Mask@@43) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_53 Mask@@43 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_22593) (o_2@@46 T@Ref) (f_4@@46 T@Field_29641_3565) ) (! (= (HasDirectPerm_29641_3565 Mask@@44 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| Mask@@44) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29641_3565 Mask@@44 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_22593) (o_2@@47 T@Ref) (f_4@@47 T@Field_14499_29659) ) (! (= (HasDirectPerm_14499_69664 Mask@@45 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| Mask@@45) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_69664 Mask@@45 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_22593) (o_2@@48 T@Ref) (f_4@@48 T@Field_14499_29642) ) (! (= (HasDirectPerm_14499_29642 Mask@@46 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| Mask@@46) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_29642 Mask@@46 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_22593) (o_2@@49 T@Ref) (f_4@@49 T@Field_28816_28818) ) (! (= (HasDirectPerm_14499_28818 Mask@@47 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| Mask@@47) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_28818 Mask@@47 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_22593) (o_2@@50 T@Ref) (f_4@@50 T@Field_22645_22646) ) (! (= (HasDirectPerm_14499_22646 Mask@@48 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| Mask@@48) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_22646 Mask@@48 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_22593) (o_2@@51 T@Ref) (f_4@@51 T@Field_22632_53) ) (! (= (HasDirectPerm_14499_53 Mask@@49 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| Mask@@49) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_53 Mask@@49 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_22593) (o_2@@52 T@Ref) (f_4@@52 T@Field_28740_3565) ) (! (= (HasDirectPerm_14499_3565 Mask@@50 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| Mask@@50) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14499_3565 Mask@@50 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.246:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3443| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.619:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3443| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22572) (ExhaleHeap@@13 T@PolymorphicMapType_22572) (Mask@@51 T@PolymorphicMapType_22593) (o_11@@0 T@Ref) (f_17@@107 T@Field_30580_30585) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@51) (=> (HasDirectPerm_30568_72401 Mask@@51 o_11@@0 f_17@@107) (= (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@18) o_11@@0 f_17@@107) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@13) o_11@@0 f_17@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@51) (select (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| ExhaleHeap@@13) o_11@@0 f_17@@107))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22572) (ExhaleHeap@@14 T@PolymorphicMapType_22572) (Mask@@52 T@PolymorphicMapType_22593) (o_11@@1 T@Ref) (f_17@@108 T@Field_30568_30569) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@52) (=> (HasDirectPerm_30568_29642 Mask@@52 o_11@@1 f_17@@108) (= (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@19) o_11@@1 f_17@@108) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@14) o_11@@1 f_17@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@52) (select (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| ExhaleHeap@@14) o_11@@1 f_17@@108))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22572) (ExhaleHeap@@15 T@PolymorphicMapType_22572) (Mask@@53 T@PolymorphicMapType_22593) (o_11@@2 T@Ref) (f_17@@109 T@Field_30568_28818) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@53) (=> (HasDirectPerm_30568_28818 Mask@@53 o_11@@2 f_17@@109) (= (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@20) o_11@@2 f_17@@109) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@15) o_11@@2 f_17@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@53) (select (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| ExhaleHeap@@15) o_11@@2 f_17@@109))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22572) (ExhaleHeap@@16 T@PolymorphicMapType_22572) (Mask@@54 T@PolymorphicMapType_22593) (o_11@@3 T@Ref) (f_17@@110 T@Field_30568_22646) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@54) (=> (HasDirectPerm_30568_22646 Mask@@54 o_11@@3 f_17@@110) (= (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@21) o_11@@3 f_17@@110) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@16) o_11@@3 f_17@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@54) (select (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| ExhaleHeap@@16) o_11@@3 f_17@@110))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22572) (ExhaleHeap@@17 T@PolymorphicMapType_22572) (Mask@@55 T@PolymorphicMapType_22593) (o_11@@4 T@Ref) (f_17@@111 T@Field_30568_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@55) (=> (HasDirectPerm_30568_53 Mask@@55 o_11@@4 f_17@@111) (= (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@22) o_11@@4 f_17@@111) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@17) o_11@@4 f_17@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@55) (select (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| ExhaleHeap@@17) o_11@@4 f_17@@111))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22572) (ExhaleHeap@@18 T@PolymorphicMapType_22572) (Mask@@56 T@PolymorphicMapType_22593) (o_11@@5 T@Ref) (f_17@@112 T@Field_30568_3565) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@56) (=> (HasDirectPerm_30568_3565 Mask@@56 o_11@@5 f_17@@112) (= (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@23) o_11@@5 f_17@@112) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@18) o_11@@5 f_17@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@56) (select (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| ExhaleHeap@@18) o_11@@5 f_17@@112))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22572) (ExhaleHeap@@19 T@PolymorphicMapType_22572) (Mask@@57 T@PolymorphicMapType_22593) (o_11@@6 T@Ref) (f_17@@113 T@Field_29654_29659) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@57) (=> (HasDirectPerm_29641_71054 Mask@@57 o_11@@6 f_17@@113) (= (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@24) o_11@@6 f_17@@113) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@19) o_11@@6 f_17@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@57) (select (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| ExhaleHeap@@19) o_11@@6 f_17@@113))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22572) (ExhaleHeap@@20 T@PolymorphicMapType_22572) (Mask@@58 T@PolymorphicMapType_22593) (o_11@@7 T@Ref) (f_17@@114 T@Field_29641_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@58) (=> (HasDirectPerm_29641_29642 Mask@@58 o_11@@7 f_17@@114) (= (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@25) o_11@@7 f_17@@114) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@20) o_11@@7 f_17@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@58) (select (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| ExhaleHeap@@20) o_11@@7 f_17@@114))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22572) (ExhaleHeap@@21 T@PolymorphicMapType_22572) (Mask@@59 T@PolymorphicMapType_22593) (o_11@@8 T@Ref) (f_17@@115 T@Field_29641_28818) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@59) (=> (HasDirectPerm_29641_28818 Mask@@59 o_11@@8 f_17@@115) (= (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@26) o_11@@8 f_17@@115) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@21) o_11@@8 f_17@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@59) (select (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| ExhaleHeap@@21) o_11@@8 f_17@@115))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22572) (ExhaleHeap@@22 T@PolymorphicMapType_22572) (Mask@@60 T@PolymorphicMapType_22593) (o_11@@9 T@Ref) (f_17@@116 T@Field_29641_22646) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@60) (=> (HasDirectPerm_29641_22646 Mask@@60 o_11@@9 f_17@@116) (= (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@27) o_11@@9 f_17@@116) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@22) o_11@@9 f_17@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@60) (select (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| ExhaleHeap@@22) o_11@@9 f_17@@116))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22572) (ExhaleHeap@@23 T@PolymorphicMapType_22572) (Mask@@61 T@PolymorphicMapType_22593) (o_11@@10 T@Ref) (f_17@@117 T@Field_29641_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@61) (=> (HasDirectPerm_29641_53 Mask@@61 o_11@@10 f_17@@117) (= (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@28) o_11@@10 f_17@@117) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@23) o_11@@10 f_17@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@61) (select (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| ExhaleHeap@@23) o_11@@10 f_17@@117))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22572) (ExhaleHeap@@24 T@PolymorphicMapType_22572) (Mask@@62 T@PolymorphicMapType_22593) (o_11@@11 T@Ref) (f_17@@118 T@Field_29641_3565) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@62) (=> (HasDirectPerm_29641_3565 Mask@@62 o_11@@11 f_17@@118) (= (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@29) o_11@@11 f_17@@118) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@24) o_11@@11 f_17@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@62) (select (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| ExhaleHeap@@24) o_11@@11 f_17@@118))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22572) (ExhaleHeap@@25 T@PolymorphicMapType_22572) (Mask@@63 T@PolymorphicMapType_22593) (o_11@@12 T@Ref) (f_17@@119 T@Field_14499_29659) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@63) (=> (HasDirectPerm_14499_69664 Mask@@63 o_11@@12 f_17@@119) (= (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@30) o_11@@12 f_17@@119) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@25) o_11@@12 f_17@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@63) (select (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| ExhaleHeap@@25) o_11@@12 f_17@@119))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22572) (ExhaleHeap@@26 T@PolymorphicMapType_22572) (Mask@@64 T@PolymorphicMapType_22593) (o_11@@13 T@Ref) (f_17@@120 T@Field_14499_29642) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@64) (=> (HasDirectPerm_14499_29642 Mask@@64 o_11@@13 f_17@@120) (= (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@31) o_11@@13 f_17@@120) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@26) o_11@@13 f_17@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@64) (select (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| ExhaleHeap@@26) o_11@@13 f_17@@120))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22572) (ExhaleHeap@@27 T@PolymorphicMapType_22572) (Mask@@65 T@PolymorphicMapType_22593) (o_11@@14 T@Ref) (f_17@@121 T@Field_28816_28818) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@65) (=> (HasDirectPerm_14499_28818 Mask@@65 o_11@@14 f_17@@121) (= (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@32) o_11@@14 f_17@@121) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@27) o_11@@14 f_17@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@65) (select (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| ExhaleHeap@@27) o_11@@14 f_17@@121))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22572) (ExhaleHeap@@28 T@PolymorphicMapType_22572) (Mask@@66 T@PolymorphicMapType_22593) (o_11@@15 T@Ref) (f_17@@122 T@Field_22645_22646) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@66) (=> (HasDirectPerm_14499_22646 Mask@@66 o_11@@15 f_17@@122) (= (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@33) o_11@@15 f_17@@122) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@28) o_11@@15 f_17@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@66) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| ExhaleHeap@@28) o_11@@15 f_17@@122))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22572) (ExhaleHeap@@29 T@PolymorphicMapType_22572) (Mask@@67 T@PolymorphicMapType_22593) (o_11@@16 T@Ref) (f_17@@123 T@Field_22632_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@67) (=> (HasDirectPerm_14499_53 Mask@@67 o_11@@16 f_17@@123) (= (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@34) o_11@@16 f_17@@123) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@29) o_11@@16 f_17@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@67) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| ExhaleHeap@@29) o_11@@16 f_17@@123))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22572) (ExhaleHeap@@30 T@PolymorphicMapType_22572) (Mask@@68 T@PolymorphicMapType_22593) (o_11@@17 T@Ref) (f_17@@124 T@Field_28740_3565) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@68) (=> (HasDirectPerm_14499_3565 Mask@@68 o_11@@17 f_17@@124) (= (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@35) o_11@@17 f_17@@124) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@30) o_11@@17 f_17@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@68) (select (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| ExhaleHeap@@30) o_11@@17 f_17@@124))
)))
(assert (forall ((s0@@1 T@Seq_28873) (s1@@1 T@Seq_28873) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_14522|)) (not (= s1@@1 |Seq#Empty_14522|))) (= (|Seq#Length_14522| (|Seq#Append_28873| s0@@1 s1@@1)) (+ (|Seq#Length_14522| s0@@1) (|Seq#Length_14522| s1@@1))))
 :qid |stdinbpl.296:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_14522| (|Seq#Append_28873| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3443) (s1@@2 T@Seq_3443) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3443|)) (not (= s1@@2 |Seq#Empty_3443|))) (= (|Seq#Length_3443| (|Seq#Append_3443| s0@@2 s1@@2)) (+ (|Seq#Length_3443| s0@@2) (|Seq#Length_3443| s1@@2))))
 :qid |stdinbpl.296:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3443| (|Seq#Append_3443| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_30580_30585) ) (! (= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_30568_28818) ) (! (= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_30568_22646) ) (! (= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_30568_53) ) (! (= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_30568_30569) ) (! (= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_30568_3565) ) (! (= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_29654_29659) ) (! (= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_29641_28818) ) (! (= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_29641_22646) ) (! (= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_29641_53) ) (! (= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_29641_29642) ) (! (= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_29641_3565) ) (! (= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_14499_29659) ) (! (= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_28816_28818) ) (! (= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_22645_22646) ) (! (= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_22632_53) ) (! (= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_14499_29642) ) (! (= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_28740_3565) ) (! (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@15 T@Seq_28873) (t@@1 T@Seq_28873) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_14522| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_14522| s@@15)) (|Seq#Length_14522| s@@15)) n@@15) (= (|Seq#Drop_14522| (|Seq#Append_28873| s@@15 t@@1) n@@15) (|Seq#Drop_14522| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_14522| s@@15))))))
 :qid |stdinbpl.453:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_14522| (|Seq#Append_28873| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3443) (t@@2 T@Seq_3443) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3443| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3443| s@@16)) (|Seq#Length_3443| s@@16)) n@@16) (= (|Seq#Drop_3443| (|Seq#Append_3443| s@@16 t@@2) n@@16) (|Seq#Drop_3443| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3443| s@@16))))))
 :qid |stdinbpl.453:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3443| (|Seq#Append_3443| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22572) (xs@@1 T@Seq_28873) (i@@9 Int) ) (!  (and (= (get_val Heap@@36 xs@@1 i@@9) (|get_val'| Heap@@36 xs@@1 i@@9)) (dummyFunction_14537 (|get_val#triggerStateless| xs@@1 i@@9)))
 :qid |stdinbpl.648:15|
 :skolemid |58|
 :pattern ( (get_val Heap@@36 xs@@1 i@@9))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22593) (SummandMask1 T@PolymorphicMapType_22593) (SummandMask2 T@PolymorphicMapType_22593) (o_2@@71 T@Ref) (f_4@@71 T@Field_30580_30585) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22593_14569_87009#PolymorphicMapType_22593| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22593) (SummandMask1@@0 T@PolymorphicMapType_22593) (SummandMask2@@0 T@PolymorphicMapType_22593) (o_2@@72 T@Ref) (f_4@@72 T@Field_30568_28818) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22593_14569_28818#PolymorphicMapType_22593| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22593) (SummandMask1@@1 T@PolymorphicMapType_22593) (SummandMask2@@1 T@PolymorphicMapType_22593) (o_2@@73 T@Ref) (f_4@@73 T@Field_30568_22646) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22593_14569_22646#PolymorphicMapType_22593| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22593) (SummandMask1@@2 T@PolymorphicMapType_22593) (SummandMask2@@2 T@PolymorphicMapType_22593) (o_2@@74 T@Ref) (f_4@@74 T@Field_30568_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22593_14569_53#PolymorphicMapType_22593| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22593) (SummandMask1@@3 T@PolymorphicMapType_22593) (SummandMask2@@3 T@PolymorphicMapType_22593) (o_2@@75 T@Ref) (f_4@@75 T@Field_30568_30569) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22593_14569_14570#PolymorphicMapType_22593| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22593) (SummandMask1@@4 T@PolymorphicMapType_22593) (SummandMask2@@4 T@PolymorphicMapType_22593) (o_2@@76 T@Ref) (f_4@@76 T@Field_30568_3565) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22593_14569_3565#PolymorphicMapType_22593| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22593) (SummandMask1@@5 T@PolymorphicMapType_22593) (SummandMask2@@5 T@PolymorphicMapType_22593) (o_2@@77 T@Ref) (f_4@@77 T@Field_29654_29659) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22593_14545_86515#PolymorphicMapType_22593| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22593) (SummandMask1@@6 T@PolymorphicMapType_22593) (SummandMask2@@6 T@PolymorphicMapType_22593) (o_2@@78 T@Ref) (f_4@@78 T@Field_29641_28818) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22593_14545_28818#PolymorphicMapType_22593| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22593) (SummandMask1@@7 T@PolymorphicMapType_22593) (SummandMask2@@7 T@PolymorphicMapType_22593) (o_2@@79 T@Ref) (f_4@@79 T@Field_29641_22646) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22593_14545_22646#PolymorphicMapType_22593| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22593) (SummandMask1@@8 T@PolymorphicMapType_22593) (SummandMask2@@8 T@PolymorphicMapType_22593) (o_2@@80 T@Ref) (f_4@@80 T@Field_29641_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22593_14545_53#PolymorphicMapType_22593| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_22593) (SummandMask1@@9 T@PolymorphicMapType_22593) (SummandMask2@@9 T@PolymorphicMapType_22593) (o_2@@81 T@Ref) (f_4@@81 T@Field_29641_29642) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22593_14545_14546#PolymorphicMapType_22593| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_22593) (SummandMask1@@10 T@PolymorphicMapType_22593) (SummandMask2@@10 T@PolymorphicMapType_22593) (o_2@@82 T@Ref) (f_4@@82 T@Field_29641_3565) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22593_14545_3565#PolymorphicMapType_22593| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_22593) (SummandMask1@@11 T@PolymorphicMapType_22593) (SummandMask2@@11 T@PolymorphicMapType_22593) (o_2@@83 T@Ref) (f_4@@83 T@Field_14499_29659) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22593_14499_86021#PolymorphicMapType_22593| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_22593) (SummandMask1@@12 T@PolymorphicMapType_22593) (SummandMask2@@12 T@PolymorphicMapType_22593) (o_2@@84 T@Ref) (f_4@@84 T@Field_28816_28818) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22593_14499_28818#PolymorphicMapType_22593| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_22593) (SummandMask1@@13 T@PolymorphicMapType_22593) (SummandMask2@@13 T@PolymorphicMapType_22593) (o_2@@85 T@Ref) (f_4@@85 T@Field_22645_22646) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_22593_14499_22646#PolymorphicMapType_22593| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_22593) (SummandMask1@@14 T@PolymorphicMapType_22593) (SummandMask2@@14 T@PolymorphicMapType_22593) (o_2@@86 T@Ref) (f_4@@86 T@Field_22632_53) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_22593_14499_53#PolymorphicMapType_22593| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_22593) (SummandMask1@@15 T@PolymorphicMapType_22593) (SummandMask2@@15 T@PolymorphicMapType_22593) (o_2@@87 T@Ref) (f_4@@87 T@Field_14499_29642) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_22593_14499_14546#PolymorphicMapType_22593| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_22593) (SummandMask1@@16 T@PolymorphicMapType_22593) (SummandMask2@@16 T@PolymorphicMapType_22593) (o_2@@88 T@Ref) (f_4@@88 T@Field_28740_3565) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_22593_14499_3565#PolymorphicMapType_22593| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3443| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3443| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.618:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3443| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_28873) (b T@Seq_28873) ) (!  (=> (|Seq#Equal_28873| a b) (= a b))
 :qid |stdinbpl.591:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_28873| a b))
)))
(assert (forall ((a@@0 T@Seq_3443) (b@@0 T@Seq_3443) ) (!  (=> (|Seq#Equal_3443| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.591:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3443| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_28873) (i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_14522| s@@17))) (|Seq#ContainsTrigger_14583| s@@17 (|Seq#Index_14522| s@@17 i@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_14522| s@@17 i@@10))
)))
(assert (forall ((s@@18 T@Seq_3443) (i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_3443| s@@18))) (|Seq#ContainsTrigger_3443| s@@18 (|Seq#Index_3443| s@@18 i@@11)))
 :qid |stdinbpl.484:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3443| s@@18 i@@11))
)))
(assert (forall ((s0@@3 T@Seq_28873) (s1@@3 T@Seq_28873) ) (!  (and (=> (= s0@@3 |Seq#Empty_14522|) (= (|Seq#Append_28873| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_14522|) (= (|Seq#Append_28873| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.302:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_28873| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3443) (s1@@4 T@Seq_3443) ) (!  (and (=> (= s0@@4 |Seq#Empty_3443|) (= (|Seq#Append_3443| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3443|) (= (|Seq#Append_3443| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.302:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3443| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_14522| (|Seq#Singleton_14522| t@@3) 0) t@@3)
 :qid |stdinbpl.306:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_14522| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3443| (|Seq#Singleton_3443| t@@4) 0) t@@4)
 :qid |stdinbpl.306:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3443| t@@4))
)))
(assert (forall ((s@@19 T@Seq_28873) ) (! (<= 0 (|Seq#Length_14522| s@@19))
 :qid |stdinbpl.285:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_14522| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3443) ) (! (<= 0 (|Seq#Length_3443| s@@20))
 :qid |stdinbpl.285:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3443| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_28873) (s1@@5 T@Seq_28873) ) (!  (=> (|Seq#Equal_28873| s0@@5 s1@@5) (and (= (|Seq#Length_14522| s0@@5) (|Seq#Length_14522| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_14522| s0@@5))) (= (|Seq#Index_14522| s0@@5 j@@6) (|Seq#Index_14522| s1@@5 j@@6)))
 :qid |stdinbpl.581:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_14522| s0@@5 j@@6))
 :pattern ( (|Seq#Index_14522| s1@@5 j@@6))
))))
 :qid |stdinbpl.578:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_28873| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3443) (s1@@6 T@Seq_3443) ) (!  (=> (|Seq#Equal_3443| s0@@6 s1@@6) (and (= (|Seq#Length_3443| s0@@6) (|Seq#Length_3443| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3443| s0@@6))) (= (|Seq#Index_3443| s0@@6 j@@7) (|Seq#Index_3443| s1@@6 j@@7)))
 :qid |stdinbpl.581:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3443| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3443| s1@@6 j@@7))
))))
 :qid |stdinbpl.578:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3443| s0@@6 s1@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_14545_14546 (pred_1 x@@7)) 0)
 :qid |stdinbpl.719:15|
 :skolemid |64|
 :pattern ( (pred_1 x@@7))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_14522| (|Seq#Singleton_14522| t@@5)) 1)
 :qid |stdinbpl.293:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_14522| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3443| (|Seq#Singleton_3443| t@@6)) 1)
 :qid |stdinbpl.293:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3443| t@@6))
)))
(assert (forall ((i@@12 Int) ) (! (= (getPredWandId_14569_14570 (pred2 i@@12)) 1)
 :qid |stdinbpl.774:15|
 :skolemid |70|
 :pattern ( (pred2 i@@12))
)))
(assert (forall ((s@@21 T@Seq_28873) (t@@7 T@Seq_28873) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_14522| s@@21))) (= (|Seq#Take_14522| (|Seq#Append_28873| s@@21 t@@7) n@@17) (|Seq#Take_14522| s@@21 n@@17)))
 :qid |stdinbpl.435:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_14522| (|Seq#Append_28873| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3443) (t@@8 T@Seq_3443) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3443| s@@22))) (= (|Seq#Take_3443| (|Seq#Append_3443| s@@22 t@@8) n@@18) (|Seq#Take_3443| s@@22 n@@18)))
 :qid |stdinbpl.435:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3443| (|Seq#Append_3443| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_28873) (i@@13 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length_14522| s@@23))) (= (|Seq#Length_14522| (|Seq#Update_14522| s@@23 i@@13 v@@2)) (|Seq#Length_14522| s@@23)))
 :qid |stdinbpl.334:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_14522| (|Seq#Update_14522| s@@23 i@@13 v@@2)))
 :pattern ( (|Seq#Length_14522| s@@23) (|Seq#Update_14522| s@@23 i@@13 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3443) (i@@14 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3443| s@@24))) (= (|Seq#Length_3443| (|Seq#Update_3443| s@@24 i@@14 v@@3)) (|Seq#Length_3443| s@@24)))
 :qid |stdinbpl.334:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3443| (|Seq#Update_3443| s@@24 i@@14 v@@3)))
 :pattern ( (|Seq#Length_3443| s@@24) (|Seq#Update_3443| s@@24 i@@14 v@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22572) (o_10 T@Ref) (f_18 T@Field_30568_28818) (v@@4 T@Seq_3443) ) (! (succHeap Heap@@37 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@37) (store (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@37) o_10 f_18 v@@4) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@37) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@37) (store (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@37) o_10 f_18 v@@4) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22572) (o_10@@0 T@Ref) (f_18@@0 T@Field_30580_30585) (v@@5 T@PolymorphicMapType_23121) ) (! (succHeap Heap@@38 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@38) (store (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@38) o_10@@0 f_18@@0 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@38) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@38) (store (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@38) o_10@@0 f_18@@0 v@@5)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22572) (o_10@@1 T@Ref) (f_18@@1 T@Field_30568_30569) (v@@6 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@39) (store (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@39) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@39) (store (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@39) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@39) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_22572) (o_10@@2 T@Ref) (f_18@@2 T@Field_30568_3565) (v@@7 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@40) (store (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@40) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@40) (store (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@40) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@40) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_22572) (o_10@@3 T@Ref) (f_18@@3 T@Field_30568_22646) (v@@8 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@41) (store (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@41) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@41) (store (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@41) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@41) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_22572) (o_10@@4 T@Ref) (f_18@@4 T@Field_30568_53) (v@@9 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@42) (store (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@42) o_10@@4 f_18@@4 v@@9) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@42) (store (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@42) o_10@@4 f_18@@4 v@@9) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@42) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_22572) (o_10@@5 T@Ref) (f_18@@5 T@Field_29641_28818) (v@@10 T@Seq_3443) ) (! (succHeap Heap@@43 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@43) (store (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@43) o_10@@5 f_18@@5 v@@10) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@43) (store (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@43) o_10@@5 f_18@@5 v@@10) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@43) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_22572) (o_10@@6 T@Ref) (f_18@@6 T@Field_29654_29659) (v@@11 T@PolymorphicMapType_23121) ) (! (succHeap Heap@@44 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@44) (store (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@44) o_10@@6 f_18@@6 v@@11) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@44) (store (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@44) o_10@@6 f_18@@6 v@@11) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@44) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_22572) (o_10@@7 T@Ref) (f_18@@7 T@Field_29641_29642) (v@@12 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@45) (store (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@45) o_10@@7 f_18@@7 v@@12) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@45) (store (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@45) o_10@@7 f_18@@7 v@@12) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@45) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_22572) (o_10@@8 T@Ref) (f_18@@8 T@Field_29641_3565) (v@@13 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@46) (store (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@46) o_10@@8 f_18@@8 v@@13) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@46) (store (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@46) o_10@@8 f_18@@8 v@@13) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@46) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_22572) (o_10@@9 T@Ref) (f_18@@9 T@Field_29641_22646) (v@@14 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@47) (store (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@47) o_10@@9 f_18@@9 v@@14) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@47) (store (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@47) o_10@@9 f_18@@9 v@@14) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@47) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_22572) (o_10@@10 T@Ref) (f_18@@10 T@Field_29641_53) (v@@15 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@48) (store (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@48) o_10@@10 f_18@@10 v@@15) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@48) (store (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@48) o_10@@10 f_18@@10 v@@15) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@48) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_22572) (o_10@@11 T@Ref) (f_18@@11 T@Field_28816_28818) (v@@16 T@Seq_3443) ) (! (succHeap Heap@@49 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@49) (store (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@49) o_10@@11 f_18@@11 v@@16) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@49) (store (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@49) o_10@@11 f_18@@11 v@@16) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@49) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_22572) (o_10@@12 T@Ref) (f_18@@12 T@Field_14499_29659) (v@@17 T@PolymorphicMapType_23121) ) (! (succHeap Heap@@50 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@50) (store (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@50) o_10@@12 f_18@@12 v@@17) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@50) (store (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@50) o_10@@12 f_18@@12 v@@17) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@50) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_22572) (o_10@@13 T@Ref) (f_18@@13 T@Field_14499_29642) (v@@18 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@51) (store (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@51) o_10@@13 f_18@@13 v@@18) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@51) (store (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@51) o_10@@13 f_18@@13 v@@18) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@51) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_22572) (o_10@@14 T@Ref) (f_18@@14 T@Field_28740_3565) (v@@19 Int) ) (! (succHeap Heap@@52 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@52) (store (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@52) o_10@@14 f_18@@14 v@@19) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@52) (store (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@52) o_10@@14 f_18@@14 v@@19) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@52) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_22572) (o_10@@15 T@Ref) (f_18@@15 T@Field_22645_22646) (v@@20 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@53) (store (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@53) o_10@@15 f_18@@15 v@@20) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@53) (store (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@53) o_10@@15 f_18@@15 v@@20) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@53) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_22572) (o_10@@16 T@Ref) (f_18@@16 T@Field_22632_53) (v@@21 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_22572 (store (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@54) o_10@@16 f_18@@16 v@@21) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22572 (store (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@54) o_10@@16 f_18@@16 v@@21) (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14545_14546#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14549_38282#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14569_14570#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_29642#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_14499_69706#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_29641_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_3565#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_53#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_22646#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_28818#PolymorphicMapType_22572| Heap@@54) (|PolymorphicMapType_22572_30568_72443#PolymorphicMapType_22572| Heap@@54)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_14545 (pred_1 x@@8)) (|pred#sm| x@@8))
 :qid |stdinbpl.711:15|
 :skolemid |62|
 :pattern ( (PredicateMaskField_14545 (pred_1 x@@8)))
)))
(assert (forall ((i@@15 Int) ) (! (= (PredicateMaskField_14569 (pred2 i@@15)) (|pred2#sm| i@@15))
 :qid |stdinbpl.766:15|
 :skolemid |68|
 :pattern ( (PredicateMaskField_14569 (pred2 i@@15)))
)))
(assert (forall ((s@@25 T@Seq_28873) (t@@9 T@Seq_28873) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_14522| s@@25))) (= (|Seq#Drop_14522| (|Seq#Append_28873| s@@25 t@@9) n@@19) (|Seq#Append_28873| (|Seq#Drop_14522| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.449:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_14522| (|Seq#Append_28873| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3443) (t@@10 T@Seq_3443) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3443| s@@26))) (= (|Seq#Drop_3443| (|Seq#Append_3443| s@@26 t@@10) n@@20) (|Seq#Append_3443| (|Seq#Drop_3443| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.449:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3443| (|Seq#Append_3443| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_28873) (n@@21 Int) (i@@16 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@16)) (< i@@16 (|Seq#Length_14522| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@16 n@@21) n@@21) i@@16) (= (|Seq#Index_14522| (|Seq#Drop_14522| s@@27 n@@21) (|Seq#Sub| i@@16 n@@21)) (|Seq#Index_14522| s@@27 i@@16))))
 :qid |stdinbpl.385:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_14522| s@@27 n@@21) (|Seq#Index_14522| s@@27 i@@16))
)))
(assert (forall ((s@@28 T@Seq_3443) (n@@22 Int) (i@@17 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@17)) (< i@@17 (|Seq#Length_3443| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@17 n@@22) n@@22) i@@17) (= (|Seq#Index_3443| (|Seq#Drop_3443| s@@28 n@@22) (|Seq#Sub| i@@17 n@@22)) (|Seq#Index_3443| s@@28 i@@17))))
 :qid |stdinbpl.385:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3443| s@@28 n@@22) (|Seq#Index_3443| s@@28 i@@17))
)))
(assert (forall ((s0@@7 T@Seq_28873) (s1@@7 T@Seq_28873) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_14522|)) (not (= s1@@7 |Seq#Empty_14522|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_14522| s0@@7))) (= (|Seq#Index_14522| (|Seq#Append_28873| s0@@7 s1@@7) n@@23) (|Seq#Index_14522| s0@@7 n@@23)))
 :qid |stdinbpl.325:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_14522| (|Seq#Append_28873| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_14522| s0@@7 n@@23) (|Seq#Append_28873| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3443) (s1@@8 T@Seq_3443) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3443|)) (not (= s1@@8 |Seq#Empty_3443|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3443| s0@@8))) (= (|Seq#Index_3443| (|Seq#Append_3443| s0@@8 s1@@8) n@@24) (|Seq#Index_3443| s0@@8 n@@24)))
 :qid |stdinbpl.325:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3443| (|Seq#Append_3443| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3443| s0@@8 n@@24) (|Seq#Append_3443| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_28873) (s1@@9 T@Seq_28873) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_14522|)) (not (= s1@@9 |Seq#Empty_14522|))) (<= 0 m)) (< m (|Seq#Length_14522| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_14522| s0@@9)) (|Seq#Length_14522| s0@@9)) m) (= (|Seq#Index_14522| (|Seq#Append_28873| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_14522| s0@@9))) (|Seq#Index_14522| s1@@9 m))))
 :qid |stdinbpl.330:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_14522| s1@@9 m) (|Seq#Append_28873| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3443) (s1@@10 T@Seq_3443) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3443|)) (not (= s1@@10 |Seq#Empty_3443|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3443| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3443| s0@@10)) (|Seq#Length_3443| s0@@10)) m@@0) (= (|Seq#Index_3443| (|Seq#Append_3443| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3443| s0@@10))) (|Seq#Index_3443| s1@@10 m@@0))))
 :qid |stdinbpl.330:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3443| s1@@10 m@@0) (|Seq#Append_3443| s0@@10 s1@@10))
)))
(assert (forall ((o_10@@17 T@Ref) (f_16 T@Field_22645_22646) (Heap@@55 T@PolymorphicMapType_22572) ) (!  (=> (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@55) o_10@@17 $allocated) (select (|PolymorphicMapType_22572_14221_53#PolymorphicMapType_22572| Heap@@55) (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@55) o_10@@17 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22572_14224_14225#PolymorphicMapType_22572| Heap@@55) o_10@@17 f_16))
)))
(assert (forall ((s@@29 T@Seq_28873) (x@@9 T@Ref) (i@@18 Int) ) (!  (=> (and (and (<= 0 i@@18) (< i@@18 (|Seq#Length_14522| s@@29))) (= (|Seq#Index_14522| s@@29 i@@18) x@@9)) (|Seq#Contains_14583| s@@29 x@@9))
 :qid |stdinbpl.482:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_14583| s@@29 x@@9) (|Seq#Index_14522| s@@29 i@@18))
)))
(assert (forall ((s@@30 T@Seq_3443) (x@@10 Int) (i@@19 Int) ) (!  (=> (and (and (<= 0 i@@19) (< i@@19 (|Seq#Length_3443| s@@30))) (= (|Seq#Index_3443| s@@30 i@@19) x@@10)) (|Seq#Contains_3443| s@@30 x@@10))
 :qid |stdinbpl.482:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3443| s@@30 x@@10) (|Seq#Index_3443| s@@30 i@@19))
)))
(assert (forall ((s0@@11 T@Seq_28873) (s1@@11 T@Seq_28873) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_28873| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28873| s0@@11 s1@@11))) (not (= (|Seq#Length_14522| s0@@11) (|Seq#Length_14522| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28873| s0@@11 s1@@11))) (= (|Seq#Length_14522| s0@@11) (|Seq#Length_14522| s1@@11))) (= (|Seq#SkolemDiff_28873| s0@@11 s1@@11) (|Seq#SkolemDiff_28873| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_28873| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_28873| s0@@11 s1@@11) (|Seq#Length_14522| s0@@11))) (not (= (|Seq#Index_14522| s0@@11 (|Seq#SkolemDiff_28873| s0@@11 s1@@11)) (|Seq#Index_14522| s1@@11 (|Seq#SkolemDiff_28873| s0@@11 s1@@11))))))
 :qid |stdinbpl.586:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_28873| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3443) (s1@@12 T@Seq_3443) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3443| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3443| s0@@12 s1@@12))) (not (= (|Seq#Length_3443| s0@@12) (|Seq#Length_3443| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3443| s0@@12 s1@@12))) (= (|Seq#Length_3443| s0@@12) (|Seq#Length_3443| s1@@12))) (= (|Seq#SkolemDiff_3443| s0@@12 s1@@12) (|Seq#SkolemDiff_3443| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3443| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3443| s0@@12 s1@@12) (|Seq#Length_3443| s0@@12))) (not (= (|Seq#Index_3443| s0@@12 (|Seq#SkolemDiff_3443| s0@@12 s1@@12)) (|Seq#Index_3443| s1@@12 (|Seq#SkolemDiff_3443| s0@@12 s1@@12))))))
 :qid |stdinbpl.586:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3443| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_30568_30569) (v_1@@2 T@FrameType) (q T@Field_30568_30569) (w@@2 T@FrameType) (r T@Field_30568_30569) (u T@FrameType) ) (!  (=> (and (InsidePredicate_30568_30568 p@@3 v_1@@2 q w@@2) (InsidePredicate_30568_30568 q w@@2 r u)) (InsidePredicate_30568_30568 p@@3 v_1@@2 r u))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_30568 p@@3 v_1@@2 q w@@2) (InsidePredicate_30568_30568 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_30568_30569) (v_1@@3 T@FrameType) (q@@0 T@Field_30568_30569) (w@@3 T@FrameType) (r@@0 T@Field_29641_29642) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_30568 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30568_29641 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_30568_29641 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_30568 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_30568_29641 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_30568_30569) (v_1@@4 T@FrameType) (q@@1 T@Field_30568_30569) (w@@4 T@FrameType) (r@@1 T@Field_14499_29642) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_30568 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30568_22632 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_30568_22632 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_30568 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_30568_22632 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_30568_30569) (v_1@@5 T@FrameType) (q@@2 T@Field_29641_29642) (w@@5 T@FrameType) (r@@2 T@Field_30568_30569) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_29641 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_29641_30568 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_30568_30568 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_29641 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_29641_30568 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_30568_30569) (v_1@@6 T@FrameType) (q@@3 T@Field_29641_29642) (w@@6 T@FrameType) (r@@3 T@Field_29641_29642) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_29641 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_29641_29641 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_30568_29641 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_29641 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_29641_29641 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_30568_30569) (v_1@@7 T@FrameType) (q@@4 T@Field_29641_29642) (w@@7 T@FrameType) (r@@4 T@Field_14499_29642) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_29641 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_29641_22632 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_30568_22632 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_29641 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_29641_22632 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_30568_30569) (v_1@@8 T@FrameType) (q@@5 T@Field_14499_29642) (w@@8 T@FrameType) (r@@5 T@Field_30568_30569) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_22632 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_22632_30568 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_30568_30568 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_22632 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_22632_30568 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_30568_30569) (v_1@@9 T@FrameType) (q@@6 T@Field_14499_29642) (w@@9 T@FrameType) (r@@6 T@Field_29641_29642) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_22632 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_22632_29641 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_30568_29641 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_22632 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_22632_29641 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_30568_30569) (v_1@@10 T@FrameType) (q@@7 T@Field_14499_29642) (w@@10 T@FrameType) (r@@7 T@Field_14499_29642) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_30568_22632 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_22632_22632 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_30568_22632 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30568_22632 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_22632_22632 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_29641_29642) (v_1@@11 T@FrameType) (q@@8 T@Field_30568_30569) (w@@11 T@FrameType) (r@@8 T@Field_30568_30569) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_30568 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30568_30568 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_29641_30568 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_30568 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_30568_30568 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_29641_29642) (v_1@@12 T@FrameType) (q@@9 T@Field_30568_30569) (w@@12 T@FrameType) (r@@9 T@Field_29641_29642) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_30568 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30568_29641 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_29641_29641 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_30568 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_30568_29641 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_29641_29642) (v_1@@13 T@FrameType) (q@@10 T@Field_30568_30569) (w@@13 T@FrameType) (r@@10 T@Field_14499_29642) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_30568 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30568_22632 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_29641_22632 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_30568 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_30568_22632 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_29641_29642) (v_1@@14 T@FrameType) (q@@11 T@Field_29641_29642) (w@@14 T@FrameType) (r@@11 T@Field_30568_30569) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_29641 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_29641_30568 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_29641_30568 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_29641 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_29641_30568 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_29641_29642) (v_1@@15 T@FrameType) (q@@12 T@Field_29641_29642) (w@@15 T@FrameType) (r@@12 T@Field_29641_29642) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_29641 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_29641_29641 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_29641_29641 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_29641 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_29641_29641 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_29641_29642) (v_1@@16 T@FrameType) (q@@13 T@Field_29641_29642) (w@@16 T@FrameType) (r@@13 T@Field_14499_29642) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_29641 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_29641_22632 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_29641_22632 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_29641 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_29641_22632 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_29641_29642) (v_1@@17 T@FrameType) (q@@14 T@Field_14499_29642) (w@@17 T@FrameType) (r@@14 T@Field_30568_30569) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_22632 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_22632_30568 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_29641_30568 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_22632 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_22632_30568 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_29641_29642) (v_1@@18 T@FrameType) (q@@15 T@Field_14499_29642) (w@@18 T@FrameType) (r@@15 T@Field_29641_29642) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_22632 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_22632_29641 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_29641_29641 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_22632 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_22632_29641 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_29641_29642) (v_1@@19 T@FrameType) (q@@16 T@Field_14499_29642) (w@@19 T@FrameType) (r@@16 T@Field_14499_29642) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_29641_22632 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_22632_22632 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_29641_22632 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29641_22632 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_22632_22632 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_14499_29642) (v_1@@20 T@FrameType) (q@@17 T@Field_30568_30569) (w@@20 T@FrameType) (r@@17 T@Field_30568_30569) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_30568 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30568_30568 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_22632_30568 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_30568 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_30568_30568 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_14499_29642) (v_1@@21 T@FrameType) (q@@18 T@Field_30568_30569) (w@@21 T@FrameType) (r@@18 T@Field_29641_29642) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_30568 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30568_29641 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_22632_29641 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_30568 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_30568_29641 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_14499_29642) (v_1@@22 T@FrameType) (q@@19 T@Field_30568_30569) (w@@22 T@FrameType) (r@@19 T@Field_14499_29642) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_30568 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30568_22632 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_22632_22632 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_30568 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_30568_22632 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_14499_29642) (v_1@@23 T@FrameType) (q@@20 T@Field_29641_29642) (w@@23 T@FrameType) (r@@20 T@Field_30568_30569) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_29641 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_29641_30568 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_22632_30568 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_29641 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_29641_30568 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_14499_29642) (v_1@@24 T@FrameType) (q@@21 T@Field_29641_29642) (w@@24 T@FrameType) (r@@21 T@Field_29641_29642) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_29641 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_29641_29641 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_22632_29641 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_29641 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_29641_29641 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_14499_29642) (v_1@@25 T@FrameType) (q@@22 T@Field_29641_29642) (w@@25 T@FrameType) (r@@22 T@Field_14499_29642) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_29641 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_29641_22632 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_22632_22632 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_29641 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_29641_22632 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_14499_29642) (v_1@@26 T@FrameType) (q@@23 T@Field_14499_29642) (w@@26 T@FrameType) (r@@23 T@Field_30568_30569) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_22632 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_22632_30568 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_22632_30568 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_22632 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_22632_30568 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_14499_29642) (v_1@@27 T@FrameType) (q@@24 T@Field_14499_29642) (w@@27 T@FrameType) (r@@24 T@Field_29641_29642) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_22632 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_22632_29641 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_22632_29641 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_22632 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_22632_29641 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_14499_29642) (v_1@@28 T@FrameType) (q@@25 T@Field_14499_29642) (w@@28 T@FrameType) (r@@25 T@Field_14499_29642) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_22632_22632 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_22632_22632 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_22632_22632 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.253:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22632_22632 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_22632_22632 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@31 T@Seq_28873) ) (!  (=> (= (|Seq#Length_14522| s@@31) 0) (= s@@31 |Seq#Empty_14522|))
 :qid |stdinbpl.289:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_14522| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3443) ) (!  (=> (= (|Seq#Length_3443| s@@32) 0) (= s@@32 |Seq#Empty_3443|))
 :qid |stdinbpl.289:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3443| s@@32))
)))
(assert (forall ((s@@33 T@Seq_28873) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_14522| s@@33 n@@25) |Seq#Empty_14522|))
 :qid |stdinbpl.465:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_14522| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3443) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3443| s@@34 n@@26) |Seq#Empty_3443|))
 :qid |stdinbpl.465:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3443| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@56 T@PolymorphicMapType_22572) (Mask@@69 T@PolymorphicMapType_22593) (xs@@2 T@Seq_28873) (i@@20 Int) ) (!  (=> (and (state Heap@@56 Mask@@69) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@20) (< i@@20 (|Seq#Length_14522| xs@@2))) (= (get_val Heap@@56 xs@@2 i@@20) (|Seq#Index_14522| xs@@2 i@@20))))
 :qid |stdinbpl.658:15|
 :skolemid |60|
 :pattern ( (state Heap@@56 Mask@@69) (get_val Heap@@56 xs@@2 i@@20))
)))
; Valid

