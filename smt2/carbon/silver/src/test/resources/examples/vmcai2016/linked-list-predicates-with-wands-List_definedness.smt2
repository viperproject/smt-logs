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
(declare-sort T@Field_104420_53 0)
(declare-sort T@Field_104433_104434 0)
(declare-sort T@Field_111885_3835 0)
(declare-sort T@Field_112561_112562 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_117635_117640 0)
(declare-sort T@Field_140838_140839 0)
(declare-sort T@Field_143227_143232 0)
(declare-sort T@Field_110473_110478 0)
(declare-sort T@Field_51392_51662 0)
(declare-sort T@Field_51392_110478 0)
(declare-sort T@Field_51661_3835 0)
(declare-sort T@Field_51661_51395 0)
(declare-sort T@Field_51661_3895 0)
(declare-sort T@Field_51712_3835 0)
(declare-sort T@Field_51712_51395 0)
(declare-sort T@Field_51712_3895 0)
(declare-sort T@Field_110450_3043 0)
(declare-sort T@Field_110450_51395 0)
(declare-sort T@Field_110499_110500 0)
(declare-sort T@Field_110450_3895 0)
(declare-datatypes ((T@PolymorphicMapType_104381 0)) (((PolymorphicMapType_104381 (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| (Array T@Ref T@Field_112561_112562 Real)) (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| (Array T@Ref T@Field_111885_3835 Real)) (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_104433_104434 Real)) (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| (Array T@Ref T@Field_140838_140839 Real)) (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_104420_53 Real)) (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| (Array T@Ref T@Field_110450_3043 Real)) (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| (Array T@Ref T@Field_51661_3835 Real)) (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_51661_51395 Real)) (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_51661_3895 Real)) (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| (Array T@Ref T@Field_117635_117640 Real)) (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| (Array T@Ref T@Field_51392_51662 Real)) (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| (Array T@Ref T@Field_51392_110478 Real)) (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| (Array T@Ref T@Field_51712_3835 Real)) (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_51712_51395 Real)) (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_51712_3895 Real)) (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| (Array T@Ref T@Field_143227_143232 Real)) (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| (Array T@Ref T@Field_110499_110500 Real)) (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_110450_51395 Real)) (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_110450_3895 Real)) (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| (Array T@Ref T@Field_110473_110478 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_104909 0)) (((PolymorphicMapType_104909 (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_111885_3835 Bool)) (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_104433_104434 Bool)) (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (Array T@Ref T@Field_104420_53 Bool)) (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (Array T@Ref T@Field_51392_110478 Bool)) (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_51392_51662 Bool)) (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_110450_3043 Bool)) (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_110450_51395 Bool)) (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (Array T@Ref T@Field_110450_3895 Bool)) (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (Array T@Ref T@Field_110473_110478 Bool)) (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_110499_110500 Bool)) (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_51661_3835 Bool)) (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_51661_51395 Bool)) (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (Array T@Ref T@Field_51661_3895 Bool)) (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (Array T@Ref T@Field_117635_117640 Bool)) (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_112561_112562 Bool)) (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_51712_3835 Bool)) (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_51712_51395 Bool)) (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (Array T@Ref T@Field_51712_3895 Bool)) (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (Array T@Ref T@Field_143227_143232 Bool)) (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_140838_140839 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_104360 0)) (((PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| (Array T@Ref T@Field_104420_53 Bool)) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| (Array T@Ref T@Field_104433_104434 T@Ref)) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_111885_3835 Int)) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| (Array T@Ref T@Field_112561_112562 T@FrameType)) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| (Array T@Ref T@Field_117635_117640 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| (Array T@Ref T@Field_140838_140839 T@FrameType)) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| (Array T@Ref T@Field_143227_143232 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| (Array T@Ref T@Field_110473_110478 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| (Array T@Ref T@Field_51392_51662 T@FrameType)) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| (Array T@Ref T@Field_51392_110478 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_51661_3835 Int)) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| (Array T@Ref T@Field_51661_51395 T@Ref)) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| (Array T@Ref T@Field_51661_3895 Bool)) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_51712_3835 Int)) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| (Array T@Ref T@Field_51712_51395 T@Ref)) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| (Array T@Ref T@Field_51712_3895 Bool)) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_110450_3043 Int)) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| (Array T@Ref T@Field_110450_51395 T@Ref)) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| (Array T@Ref T@Field_110499_110500 T@FrameType)) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| (Array T@Ref T@Field_110450_3895 Bool)) ) ) ))
(declare-fun $allocated () T@Field_104420_53)
(declare-fun data () T@Field_111885_3835)
(declare-fun next () T@Field_104433_104434)
(declare-fun head_2 () T@Field_104433_104434)
(declare-fun held () T@Field_111885_3835)
(declare-fun changed () T@Field_104420_53)
(declare-fun state (T@PolymorphicMapType_104360 T@PolymorphicMapType_104381) Bool)
(declare-fun lengthNodes (T@PolymorphicMapType_104360 T@Ref T@Ref) Int)
(declare-fun |lengthNodes#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |lseg#trigger_51661| (T@PolymorphicMapType_104360 T@Field_112561_112562) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_112561_112562)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |lengthNodes'| (T@PolymorphicMapType_104360 T@Ref T@Ref) Int)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_8705| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_104360 T@PolymorphicMapType_104360) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_104360 T@PolymorphicMapType_104360) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_104381) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_104909)
(declare-fun |contentNodes'| (T@PolymorphicMapType_104360 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#triggerStateless| (T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#frame| (T@FrameType T@Ref T@Ref) T@Seq_2867)
(declare-fun null () T@Ref)
(declare-fun |lengthNodes#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_51661_51662 (T@Field_112561_112562) Bool)
(declare-fun dummyFunction_112185 (T@Seq_2867) Bool)
(declare-fun dummyFunction_7424 (Int) Bool)
(declare-fun |lseg#everUsed_51661| (T@Field_112561_112562) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_4057| () T@Seq_2867)
(declare-fun List (T@Ref) T@Field_140838_140839)
(declare-fun IsPredicateField_51712_51713 (T@Field_140838_140839) Bool)
(declare-fun |content'| (T@PolymorphicMapType_104360 T@Ref) T@Seq_2867)
(declare-fun |content#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |length'| (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |peek'| (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun |peek#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_51712| (T@PolymorphicMapType_104360 T@Field_140838_140839) Bool)
(declare-fun |List#everUsed_51712| (T@Field_140838_140839) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_8705| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |peek#trigger| (T@FrameType T@Ref) Bool)
(declare-fun length (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun content (T@PolymorphicMapType_104360 T@Ref) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun peek (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_104360 T@PolymorphicMapType_104360 T@PolymorphicMapType_104381) Bool)
(declare-fun IsPredicateField_51301_51302 (T@Field_110499_110500) Bool)
(declare-fun PredicateMaskField_110450 (T@Field_110499_110500) T@Field_110473_110478)
(declare-fun HasDirectPerm_110450_51662 (T@PolymorphicMapType_104381 T@Ref T@Field_110499_110500) Bool)
(declare-fun PredicateMaskField_51712 (T@Field_140838_140839) T@Field_143227_143232)
(declare-fun HasDirectPerm_51712_51713 (T@PolymorphicMapType_104381 T@Ref T@Field_140838_140839) Bool)
(declare-fun PredicateMaskField_51661 (T@Field_112561_112562) T@Field_117635_117640)
(declare-fun HasDirectPerm_51661_51662 (T@PolymorphicMapType_104381 T@Ref T@Field_112561_112562) Bool)
(declare-fun IsPredicateField_51392_421068 (T@Field_51392_51662) Bool)
(declare-fun PredicateMaskField_51392 (T@Field_51392_51662) T@Field_51392_110478)
(declare-fun HasDirectPerm_51392_51662 (T@PolymorphicMapType_104381 T@Ref T@Field_51392_51662) Bool)
(declare-fun IsWandField_51301_51302 (T@Field_110499_110500) Bool)
(declare-fun WandMaskField_51301 (T@Field_110499_110500) T@Field_110473_110478)
(declare-fun IsWandField_51712_428428 (T@Field_140838_140839) Bool)
(declare-fun WandMaskField_51712 (T@Field_140838_140839) T@Field_143227_143232)
(declare-fun IsWandField_51661_428071 (T@Field_112561_112562) Bool)
(declare-fun WandMaskField_51661 (T@Field_112561_112562) T@Field_117635_117640)
(declare-fun IsWandField_51392_427714 (T@Field_51392_51662) Bool)
(declare-fun WandMaskField_51392 (T@Field_51392_51662) T@Field_51392_110478)
(declare-fun |Seq#Singleton_3835| (Int) T@Seq_2867)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_117635_117640)
(declare-fun |List#sm| (T@Ref) T@Field_143227_143232)
(declare-fun |Seq#Append_3835| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |lengthNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun contentNodes (T@PolymorphicMapType_104360 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_104360)
(declare-fun ZeroMask () T@PolymorphicMapType_104381)
(declare-fun InsidePredicate_110450_110450 (T@Field_110499_110500 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_104420 (T@Field_51392_51662 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_140838 (T@Field_140838_140839 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_51661 (T@Field_112561_112562 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun IsPredicateField_51392_3835 (T@Field_111885_3835) Bool)
(declare-fun IsWandField_51392_3835 (T@Field_111885_3835) Bool)
(declare-fun IsPredicateField_51394_51395 (T@Field_104433_104434) Bool)
(declare-fun IsWandField_51394_51395 (T@Field_104433_104434) Bool)
(declare-fun IsPredicateField_51402_3895 (T@Field_104420_53) Bool)
(declare-fun IsWandField_51402_3895 (T@Field_104420_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_51274_442391 (T@Field_110473_110478) Bool)
(declare-fun IsWandField_51274_442407 (T@Field_110473_110478) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_51274_3895 (T@Field_110450_3895) Bool)
(declare-fun IsWandField_51274_3895 (T@Field_110450_3895) Bool)
(declare-fun IsPredicateField_51274_51395 (T@Field_110450_51395) Bool)
(declare-fun IsWandField_51274_51395 (T@Field_110450_51395) Bool)
(declare-fun IsPredicateField_51274_3043 (T@Field_110450_3043) Bool)
(declare-fun IsWandField_51274_3043 (T@Field_110450_3043) Bool)
(declare-fun IsPredicateField_51712_441574 (T@Field_143227_143232) Bool)
(declare-fun IsWandField_51712_441590 (T@Field_143227_143232) Bool)
(declare-fun IsPredicateField_51712_3895 (T@Field_51712_3895) Bool)
(declare-fun IsWandField_51712_3895 (T@Field_51712_3895) Bool)
(declare-fun IsPredicateField_51712_51395 (T@Field_51712_51395) Bool)
(declare-fun IsWandField_51712_51395 (T@Field_51712_51395) Bool)
(declare-fun IsPredicateField_51712_3835 (T@Field_51712_3835) Bool)
(declare-fun IsWandField_51712_3835 (T@Field_51712_3835) Bool)
(declare-fun IsPredicateField_51392_440743 (T@Field_51392_110478) Bool)
(declare-fun IsWandField_51392_440759 (T@Field_51392_110478) Bool)
(declare-fun IsPredicateField_51661_439954 (T@Field_117635_117640) Bool)
(declare-fun IsWandField_51661_439970 (T@Field_117635_117640) Bool)
(declare-fun IsPredicateField_51661_3895 (T@Field_51661_3895) Bool)
(declare-fun IsWandField_51661_3895 (T@Field_51661_3895) Bool)
(declare-fun IsPredicateField_51661_51395 (T@Field_51661_51395) Bool)
(declare-fun IsWandField_51661_51395 (T@Field_51661_51395) Bool)
(declare-fun IsPredicateField_51661_3835 (T@Field_51661_3835) Bool)
(declare-fun IsWandField_51661_3835 (T@Field_51661_3835) Bool)
(declare-fun HasDirectPerm_110450_420823 (T@PolymorphicMapType_104381 T@Ref T@Field_110473_110478) Bool)
(declare-fun HasDirectPerm_110450_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_110450_3895) Bool)
(declare-fun HasDirectPerm_110450_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_110450_51395) Bool)
(declare-fun HasDirectPerm_110450_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_110450_3043) Bool)
(declare-fun HasDirectPerm_51712_419689 (T@PolymorphicMapType_104381 T@Ref T@Field_143227_143232) Bool)
(declare-fun HasDirectPerm_51712_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_51712_3895) Bool)
(declare-fun HasDirectPerm_51712_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_51712_51395) Bool)
(declare-fun HasDirectPerm_51712_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_51712_3835) Bool)
(declare-fun HasDirectPerm_51661_418591 (T@PolymorphicMapType_104381 T@Ref T@Field_117635_117640) Bool)
(declare-fun HasDirectPerm_51661_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_51661_3895) Bool)
(declare-fun HasDirectPerm_51661_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_51661_51395) Bool)
(declare-fun HasDirectPerm_51661_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_51661_3835) Bool)
(declare-fun HasDirectPerm_51392_417450 (T@PolymorphicMapType_104381 T@Ref T@Field_51392_110478) Bool)
(declare-fun HasDirectPerm_51402_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_104420_53) Bool)
(declare-fun HasDirectPerm_51394_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_104433_104434) Bool)
(declare-fun HasDirectPerm_51392_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_111885_3835) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_104381 T@PolymorphicMapType_104381 T@PolymorphicMapType_104381) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref T@Ref T@Ref Int Int T@Ref T@Ref T@Ref T@Ref T@Seq_2867 T@Ref T@Ref) T@Field_110499_110500)
(declare-fun |wand#sm| (T@Ref T@Ref T@Ref T@Ref Int Int T@Ref T@Ref T@Ref T@Ref T@Seq_2867 T@Ref T@Ref) T@Field_110473_110478)
(declare-fun |content#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Seq#Equal_3938| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_51661_51662 (T@Field_112561_112562) Int)
(declare-fun wand (T@Ref T@Ref T@Ref T@Ref Int Int T@Ref T@Ref T@Ref T@Ref T@Seq_2867 T@Ref T@Ref) T@Field_110450_3043)
(declare-fun |content#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |peek#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_51712_51713 (T@Field_140838_140839) Int)
(declare-fun getPredWandId_51274_3043 (T@Field_110450_3043) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_110450_140838 (T@Field_110499_110500 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_110450_104420 (T@Field_110499_110500 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun InsidePredicate_110450_51661 (T@Field_110499_110500 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_140838 (T@Field_51392_51662 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_110450 (T@Field_51392_51662 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_51661 (T@Field_51392_51662 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_110450 (T@Field_140838_140839 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_104420 (T@Field_140838_140839 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_51661 (T@Field_140838_140839 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_140838 (T@Field_112561_112562 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_110450 (T@Field_112561_112562 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_104420 (T@Field_112561_112562 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(assert (and (distinct $allocated changed)(distinct data held)(distinct next head_2))
)
(assert (forall ((Heap T@PolymorphicMapType_104360) (Mask T@PolymorphicMapType_104381) (this T@Ref) (end T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 3)) (= (lengthNodes Heap this end) (ite (= this end) 0 (+ 1 (|lengthNodes'| Heap (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap) this next) end)))))
 :qid |stdinbpl.997:15|
 :skolemid |84|
 :pattern ( (state Heap Mask) (lengthNodes Heap this end))
 :pattern ( (state Heap Mask) (|lengthNodes#triggerStateless| this end) (|lseg#trigger_51661| Heap (lseg this end)))
)))
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_8705| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_8705| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_8705| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.280:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_8705| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_8705| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_104360) (Heap1 T@PolymorphicMapType_104360) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_104360) (Mask@@0 T@PolymorphicMapType_104381) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_104360) (Heap1@@0 T@PolymorphicMapType_104360) (Heap2 T@PolymorphicMapType_104360) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_140838_140839) ) (!  (not (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_143227_143232) ) (!  (not (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_51712_3895) ) (!  (not (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_51712_51395) ) (!  (not (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_51712_3835) ) (!  (not (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_112561_112562) ) (!  (not (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_117635_117640) ) (!  (not (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_51661_3895) ) (!  (not (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_51661_51395) ) (!  (not (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_51661_3835) ) (!  (not (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_110499_110500) ) (!  (not (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_110473_110478) ) (!  (not (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_110450_3895) ) (!  (not (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_110450_51395) ) (!  (not (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_110450_3043) ) (!  (not (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_51392_51662) ) (!  (not (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_51392_110478) ) (!  (not (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_104420_53) ) (!  (not (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_104433_104434) ) (!  (not (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_111885_3835) ) (!  (not (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_104360) (Mask@@1 T@PolymorphicMapType_104381) (this@@0 T@Ref) (end@@0 T@Ref) ) (!  (=> (state Heap@@1 Mask@@1) (= (|contentNodes'| Heap@@1 this@@0 end@@0) (|contentNodes#frame| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@1) null (lseg this@@0 end@@0)) this@@0 end@@0)))
 :qid |stdinbpl.628:15|
 :skolemid |68|
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes'| Heap@@1 this@@0 end@@0))
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes#triggerStateless| this@@0 end@@0) (|lseg#trigger_51661| Heap@@1 (lseg this@@0 end@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_104360) (Mask@@2 T@PolymorphicMapType_104381) (this@@1 T@Ref) (end@@1 T@Ref) ) (!  (=> (state Heap@@2 Mask@@2) (= (|lengthNodes'| Heap@@2 this@@1 end@@1) (|lengthNodes#frame| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@2) null (lseg this@@1 end@@1)) this@@1 end@@1)))
 :qid |stdinbpl.1004:15|
 :skolemid |85|
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes'| Heap@@2 this@@1 end@@1))
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes#triggerStateless| this@@1 end@@1) (|lseg#trigger_51661| Heap@@2 (lseg this@@1 end@@1)))
)))
(assert (forall ((this@@2 T@Ref) (end@@2 T@Ref) ) (! (IsPredicateField_51661_51662 (lseg this@@2 end@@2))
 :qid |stdinbpl.1771:15|
 :skolemid |115|
 :pattern ( (lseg this@@2 end@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_104360) (this@@3 T@Ref) (end@@3 T@Ref) ) (! (dummyFunction_112185 (|contentNodes#triggerStateless| this@@3 end@@3))
 :qid |stdinbpl.615:15|
 :skolemid |66|
 :pattern ( (|contentNodes'| Heap@@3 this@@3 end@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_104360) (this@@4 T@Ref) (end@@4 T@Ref) ) (! (dummyFunction_7424 (|lengthNodes#triggerStateless| this@@4 end@@4))
 :qid |stdinbpl.991:15|
 :skolemid |83|
 :pattern ( (|lengthNodes'| Heap@@4 this@@4 end@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_104360) (this@@5 T@Ref) (end@@5 T@Ref) ) (! (|lseg#everUsed_51661| (lseg this@@5 end@@5))
 :qid |stdinbpl.1790:15|
 :skolemid |119|
 :pattern ( (|lseg#trigger_51661| Heap@@5 (lseg this@@5 end@@5)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_8705| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.301:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_8705| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_4057|) 0))
(assert (forall ((this@@6 T@Ref) ) (! (IsPredicateField_51712_51713 (List this@@6))
 :qid |stdinbpl.2000:15|
 :skolemid |125|
 :pattern ( (List this@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_104360) (this@@7 T@Ref) ) (! (dummyFunction_112185 (|content#triggerStateless| this@@7))
 :qid |stdinbpl.1207:15|
 :skolemid |91|
 :pattern ( (|content'| Heap@@6 this@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_104360) (this@@8 T@Ref) ) (! (dummyFunction_7424 (|length#triggerStateless| this@@8))
 :qid |stdinbpl.1364:15|
 :skolemid |99|
 :pattern ( (|length'| Heap@@7 this@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_104360) (this@@9 T@Ref) ) (! (dummyFunction_7424 (|peek#triggerStateless| this@@9))
 :qid |stdinbpl.1508:15|
 :skolemid |105|
 :pattern ( (|peek'| Heap@@8 this@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_104360) (this@@10 T@Ref) ) (! (|List#everUsed_51712| (List this@@10))
 :qid |stdinbpl.2019:15|
 :skolemid |129|
 :pattern ( (|List#trigger_51712| Heap@@9 (List this@@10)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.256:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)) 0)))
 :qid |stdinbpl.267:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)))
 :pattern ( (|Seq#Take_8705| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.541:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_104360) (Mask@@3 T@PolymorphicMapType_104381) (this@@11 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@3) (or (< AssumeFunctionsAbove 0) (|peek#trigger| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@10) null (List this@@11)) this@@11))) (=> (< 0 (length Heap@@10 this@@11)) (= (|peek'| Heap@@10 this@@11) (|Seq#Index_2867| (content Heap@@10 this@@11) 0))))
 :qid |stdinbpl.1527:15|
 :skolemid |108|
 :pattern ( (state Heap@@10 Mask@@3) (|peek'| Heap@@10 this@@11))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.399:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_104360) (this@@12 T@Ref) ) (!  (and (= (content Heap@@11 this@@12) (|content'| Heap@@11 this@@12)) (dummyFunction_112185 (|content#triggerStateless| this@@12)))
 :qid |stdinbpl.1203:15|
 :skolemid |90|
 :pattern ( (content Heap@@11 this@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_104360) (this@@13 T@Ref) ) (!  (and (= (length Heap@@12 this@@13) (|length'| Heap@@12 this@@13)) (dummyFunction_7424 (|length#triggerStateless| this@@13)))
 :qid |stdinbpl.1360:15|
 :skolemid |98|
 :pattern ( (length Heap@@12 this@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_104360) (this@@14 T@Ref) ) (!  (and (= (peek Heap@@13 this@@14) (|peek'| Heap@@13 this@@14)) (dummyFunction_7424 (|peek#triggerStateless| this@@14)))
 :qid |stdinbpl.1504:15|
 :skolemid |104|
 :pattern ( (peek Heap@@13 this@@14))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_8705| s@@4 n@@3) s@@4))
 :qid |stdinbpl.383:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8705| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.236:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_104360) (ExhaleHeap T@PolymorphicMapType_104360) (Mask@@4 T@PolymorphicMapType_104381) (pm_f_45 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_110450_51662 Mask@@4 null pm_f_45) (IsPredicateField_51301_51302 pm_f_45)) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@14) null (PredicateMaskField_110450 pm_f_45)) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap) null (PredicateMaskField_110450 pm_f_45)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (IsPredicateField_51301_51302 pm_f_45) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap) null (PredicateMaskField_110450 pm_f_45)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_104360) (ExhaleHeap@@0 T@PolymorphicMapType_104360) (Mask@@5 T@PolymorphicMapType_104381) (pm_f_45@@0 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_51712_51713 Mask@@5 null pm_f_45@@0) (IsPredicateField_51712_51713 pm_f_45@@0)) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@15) null (PredicateMaskField_51712 pm_f_45@@0)) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@0) null (PredicateMaskField_51712 pm_f_45@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (IsPredicateField_51712_51713 pm_f_45@@0) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@0) null (PredicateMaskField_51712 pm_f_45@@0)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_104360) (ExhaleHeap@@1 T@PolymorphicMapType_104360) (Mask@@6 T@PolymorphicMapType_104381) (pm_f_45@@1 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_51661_51662 Mask@@6 null pm_f_45@@1) (IsPredicateField_51661_51662 pm_f_45@@1)) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@16) null (PredicateMaskField_51661 pm_f_45@@1)) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@1) null (PredicateMaskField_51661 pm_f_45@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (IsPredicateField_51661_51662 pm_f_45@@1) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@1) null (PredicateMaskField_51661 pm_f_45@@1)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_104360) (ExhaleHeap@@2 T@PolymorphicMapType_104360) (Mask@@7 T@PolymorphicMapType_104381) (pm_f_45@@2 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_51392_51662 Mask@@7 null pm_f_45@@2) (IsPredicateField_51392_421068 pm_f_45@@2)) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@17) null (PredicateMaskField_51392 pm_f_45@@2)) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@2) null (PredicateMaskField_51392 pm_f_45@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (IsPredicateField_51392_421068 pm_f_45@@2) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@2) null (PredicateMaskField_51392 pm_f_45@@2)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_104360) (ExhaleHeap@@3 T@PolymorphicMapType_104360) (Mask@@8 T@PolymorphicMapType_104381) (pm_f_45@@3 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (=> (and (HasDirectPerm_110450_51662 Mask@@8 null pm_f_45@@3) (IsWandField_51301_51302 pm_f_45@@3)) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@18) null (WandMaskField_51301 pm_f_45@@3)) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@3) null (WandMaskField_51301 pm_f_45@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (IsWandField_51301_51302 pm_f_45@@3) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@3) null (WandMaskField_51301 pm_f_45@@3)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_104360) (ExhaleHeap@@4 T@PolymorphicMapType_104360) (Mask@@9 T@PolymorphicMapType_104381) (pm_f_45@@4 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (=> (and (HasDirectPerm_51712_51713 Mask@@9 null pm_f_45@@4) (IsWandField_51712_428428 pm_f_45@@4)) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@19) null (WandMaskField_51712 pm_f_45@@4)) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@4) null (WandMaskField_51712 pm_f_45@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (IsWandField_51712_428428 pm_f_45@@4) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@4) null (WandMaskField_51712 pm_f_45@@4)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_104360) (ExhaleHeap@@5 T@PolymorphicMapType_104360) (Mask@@10 T@PolymorphicMapType_104381) (pm_f_45@@5 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@10) (=> (and (HasDirectPerm_51661_51662 Mask@@10 null pm_f_45@@5) (IsWandField_51661_428071 pm_f_45@@5)) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@20) null (WandMaskField_51661 pm_f_45@@5)) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@5) null (WandMaskField_51661 pm_f_45@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@10) (IsWandField_51661_428071 pm_f_45@@5) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@5) null (WandMaskField_51661 pm_f_45@@5)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_104360) (ExhaleHeap@@6 T@PolymorphicMapType_104360) (Mask@@11 T@PolymorphicMapType_104381) (pm_f_45@@6 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@11) (=> (and (HasDirectPerm_51392_51662 Mask@@11 null pm_f_45@@6) (IsWandField_51392_427714 pm_f_45@@6)) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@21) null (WandMaskField_51392 pm_f_45@@6)) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@6) null (WandMaskField_51392 pm_f_45@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@11) (IsWandField_51392_427714 pm_f_45@@6) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@6) null (WandMaskField_51392 pm_f_45@@6)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3835| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.524:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3835| x@@0) y))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_104360) (Mask@@12 T@PolymorphicMapType_104381) (this@@15 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@12) (< AssumeFunctionsAbove 0)) (=> (< 0 (length Heap@@22 this@@15)) (= (peek Heap@@22 this@@15) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@22) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@22) this@@15 head_2) data))))
 :qid |stdinbpl.1514:15|
 :skolemid |106|
 :pattern ( (state Heap@@22 Mask@@12) (peek Heap@@22 this@@15))
 :pattern ( (state Heap@@22 Mask@@12) (|peek#triggerStateless| this@@15) (|List#trigger_51712| Heap@@22 (List this@@15)))
)))
(assert (forall ((this@@16 T@Ref) (end@@6 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg this@@16 end@@6) (lseg this2 end2)) (and (= this@@16 this2) (= end@@6 end2)))
 :qid |stdinbpl.1781:15|
 :skolemid |117|
 :pattern ( (lseg this@@16 end@@6) (lseg this2 end2))
)))
(assert (forall ((this@@17 T@Ref) (end@@7 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| this@@17 end@@7) (|lseg#sm| this2@@0 end2@@0)) (and (= this@@17 this2@@0) (= end@@7 end2@@0)))
 :qid |stdinbpl.1785:15|
 :skolemid |118|
 :pattern ( (|lseg#sm| this@@17 end@@7) (|lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_104360) (ExhaleHeap@@7 T@PolymorphicMapType_104360) (Mask@@13 T@PolymorphicMapType_104381) (pm_f_45@@7 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@13) (=> (and (HasDirectPerm_110450_51662 Mask@@13 null pm_f_45@@7) (IsPredicateField_51301_51302 pm_f_45@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45 T@Ref) (f_142 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45 f_142) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@23) o2_45 f_142) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45 f_142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45 f_142))
)) (forall ((o2_45@@0 T@Ref) (f_142@@0 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@0 f_142@@0) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@23) o2_45@@0 f_142@@0) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@0 f_142@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@0 f_142@@0))
))) (forall ((o2_45@@1 T@Ref) (f_142@@1 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@1 f_142@@1) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@23) o2_45@@1 f_142@@1) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@1 f_142@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@1 f_142@@1))
))) (forall ((o2_45@@2 T@Ref) (f_142@@2 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@2 f_142@@2) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@23) o2_45@@2 f_142@@2) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@2 f_142@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@2 f_142@@2))
))) (forall ((o2_45@@3 T@Ref) (f_142@@3 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@3 f_142@@3) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@23) o2_45@@3 f_142@@3) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@3 f_142@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@3 f_142@@3))
))) (forall ((o2_45@@4 T@Ref) (f_142@@4 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@4 f_142@@4) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@23) o2_45@@4 f_142@@4) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@4 f_142@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@4 f_142@@4))
))) (forall ((o2_45@@5 T@Ref) (f_142@@5 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@5 f_142@@5) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@23) o2_45@@5 f_142@@5) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@5 f_142@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@5 f_142@@5))
))) (forall ((o2_45@@6 T@Ref) (f_142@@6 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@6 f_142@@6) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@23) o2_45@@6 f_142@@6) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@6 f_142@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@6 f_142@@6))
))) (forall ((o2_45@@7 T@Ref) (f_142@@7 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@7 f_142@@7) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) o2_45@@7 f_142@@7) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@7 f_142@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@7 f_142@@7))
))) (forall ((o2_45@@8 T@Ref) (f_142@@8 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@8 f_142@@8) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@23) o2_45@@8 f_142@@8) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@8 f_142@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@8 f_142@@8))
))) (forall ((o2_45@@9 T@Ref) (f_142@@9 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@9 f_142@@9) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@23) o2_45@@9 f_142@@9) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@9 f_142@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@9 f_142@@9))
))) (forall ((o2_45@@10 T@Ref) (f_142@@10 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@10 f_142@@10) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@23) o2_45@@10 f_142@@10) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@10 f_142@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@10 f_142@@10))
))) (forall ((o2_45@@11 T@Ref) (f_142@@11 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@11 f_142@@11) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@23) o2_45@@11 f_142@@11) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@11 f_142@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@11 f_142@@11))
))) (forall ((o2_45@@12 T@Ref) (f_142@@12 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@12 f_142@@12) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@23) o2_45@@12 f_142@@12) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@12 f_142@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@12 f_142@@12))
))) (forall ((o2_45@@13 T@Ref) (f_142@@13 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@13 f_142@@13) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@23) o2_45@@13 f_142@@13) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@13 f_142@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@13 f_142@@13))
))) (forall ((o2_45@@14 T@Ref) (f_142@@14 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@14 f_142@@14) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@23) o2_45@@14 f_142@@14) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@14 f_142@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@14 f_142@@14))
))) (forall ((o2_45@@15 T@Ref) (f_142@@15 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@15 f_142@@15) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@23) o2_45@@15 f_142@@15) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@15 f_142@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@15 f_142@@15))
))) (forall ((o2_45@@16 T@Ref) (f_142@@16 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@16 f_142@@16) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@23) o2_45@@16 f_142@@16) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@16 f_142@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@16 f_142@@16))
))) (forall ((o2_45@@17 T@Ref) (f_142@@17 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@17 f_142@@17) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@23) o2_45@@17 f_142@@17) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@17 f_142@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@17 f_142@@17))
))) (forall ((o2_45@@18 T@Ref) (f_142@@18 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@18 f_142@@18) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@23) o2_45@@18 f_142@@18) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@18 f_142@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@18 f_142@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@13) (IsPredicateField_51301_51302 pm_f_45@@7))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_104360) (ExhaleHeap@@8 T@PolymorphicMapType_104360) (Mask@@14 T@PolymorphicMapType_104381) (pm_f_45@@8 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@14) (=> (and (HasDirectPerm_51712_51713 Mask@@14 null pm_f_45@@8) (IsPredicateField_51712_51713 pm_f_45@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@19 T@Ref) (f_142@@19 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@19 f_142@@19) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@19 f_142@@19) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@19 f_142@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@19 f_142@@19))
)) (forall ((o2_45@@20 T@Ref) (f_142@@20 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@20 f_142@@20) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@24) o2_45@@20 f_142@@20) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@20 f_142@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@20 f_142@@20))
))) (forall ((o2_45@@21 T@Ref) (f_142@@21 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@21 f_142@@21) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@24) o2_45@@21 f_142@@21) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@21 f_142@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@21 f_142@@21))
))) (forall ((o2_45@@22 T@Ref) (f_142@@22 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@22 f_142@@22) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@24) o2_45@@22 f_142@@22) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@22 f_142@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@22 f_142@@22))
))) (forall ((o2_45@@23 T@Ref) (f_142@@23 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@23 f_142@@23) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@24) o2_45@@23 f_142@@23) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@23 f_142@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@23 f_142@@23))
))) (forall ((o2_45@@24 T@Ref) (f_142@@24 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@24 f_142@@24) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@24 f_142@@24) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@24 f_142@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@24 f_142@@24))
))) (forall ((o2_45@@25 T@Ref) (f_142@@25 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@25 f_142@@25) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@24) o2_45@@25 f_142@@25) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@25 f_142@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@25 f_142@@25))
))) (forall ((o2_45@@26 T@Ref) (f_142@@26 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@26 f_142@@26) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@24) o2_45@@26 f_142@@26) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@26 f_142@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@26 f_142@@26))
))) (forall ((o2_45@@27 T@Ref) (f_142@@27 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@27 f_142@@27) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@24) o2_45@@27 f_142@@27) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@27 f_142@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@27 f_142@@27))
))) (forall ((o2_45@@28 T@Ref) (f_142@@28 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@28 f_142@@28) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@24) o2_45@@28 f_142@@28) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@28 f_142@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@28 f_142@@28))
))) (forall ((o2_45@@29 T@Ref) (f_142@@29 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@29 f_142@@29) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@29 f_142@@29) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@29 f_142@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@29 f_142@@29))
))) (forall ((o2_45@@30 T@Ref) (f_142@@30 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@30 f_142@@30) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@24) o2_45@@30 f_142@@30) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@30 f_142@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@30 f_142@@30))
))) (forall ((o2_45@@31 T@Ref) (f_142@@31 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@31 f_142@@31) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@24) o2_45@@31 f_142@@31) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@31 f_142@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@31 f_142@@31))
))) (forall ((o2_45@@32 T@Ref) (f_142@@32 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@32 f_142@@32) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@24) o2_45@@32 f_142@@32) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@32 f_142@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@32 f_142@@32))
))) (forall ((o2_45@@33 T@Ref) (f_142@@33 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@33 f_142@@33) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@24) o2_45@@33 f_142@@33) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@33 f_142@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@33 f_142@@33))
))) (forall ((o2_45@@34 T@Ref) (f_142@@34 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@34 f_142@@34) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@34 f_142@@34) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@34 f_142@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@34 f_142@@34))
))) (forall ((o2_45@@35 T@Ref) (f_142@@35 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@35 f_142@@35) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@24) o2_45@@35 f_142@@35) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@35 f_142@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@35 f_142@@35))
))) (forall ((o2_45@@36 T@Ref) (f_142@@36 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@36 f_142@@36) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@24) o2_45@@36 f_142@@36) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@36 f_142@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@36 f_142@@36))
))) (forall ((o2_45@@37 T@Ref) (f_142@@37 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@37 f_142@@37) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) o2_45@@37 f_142@@37) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@37 f_142@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@37 f_142@@37))
))) (forall ((o2_45@@38 T@Ref) (f_142@@38 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@38 f_142@@38) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@24) o2_45@@38 f_142@@38) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@38 f_142@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@38 f_142@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@14) (IsPredicateField_51712_51713 pm_f_45@@8))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_104360) (ExhaleHeap@@9 T@PolymorphicMapType_104360) (Mask@@15 T@PolymorphicMapType_104381) (pm_f_45@@9 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@15) (=> (and (HasDirectPerm_51661_51662 Mask@@15 null pm_f_45@@9) (IsPredicateField_51661_51662 pm_f_45@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@39 T@Ref) (f_142@@39 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@39 f_142@@39) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@39 f_142@@39) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@39 f_142@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@39 f_142@@39))
)) (forall ((o2_45@@40 T@Ref) (f_142@@40 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@40 f_142@@40) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@25) o2_45@@40 f_142@@40) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@40 f_142@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@40 f_142@@40))
))) (forall ((o2_45@@41 T@Ref) (f_142@@41 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@41 f_142@@41) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@25) o2_45@@41 f_142@@41) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@41 f_142@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@41 f_142@@41))
))) (forall ((o2_45@@42 T@Ref) (f_142@@42 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@42 f_142@@42) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@25) o2_45@@42 f_142@@42) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@42 f_142@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@42 f_142@@42))
))) (forall ((o2_45@@43 T@Ref) (f_142@@43 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@43 f_142@@43) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@25) o2_45@@43 f_142@@43) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@43 f_142@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@43 f_142@@43))
))) (forall ((o2_45@@44 T@Ref) (f_142@@44 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@44 f_142@@44) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@44 f_142@@44) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@44 f_142@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@44 f_142@@44))
))) (forall ((o2_45@@45 T@Ref) (f_142@@45 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@45 f_142@@45) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@25) o2_45@@45 f_142@@45) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@45 f_142@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@45 f_142@@45))
))) (forall ((o2_45@@46 T@Ref) (f_142@@46 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@46 f_142@@46) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@25) o2_45@@46 f_142@@46) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@46 f_142@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@46 f_142@@46))
))) (forall ((o2_45@@47 T@Ref) (f_142@@47 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@47 f_142@@47) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@25) o2_45@@47 f_142@@47) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@47 f_142@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@47 f_142@@47))
))) (forall ((o2_45@@48 T@Ref) (f_142@@48 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@48 f_142@@48) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@25) o2_45@@48 f_142@@48) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@48 f_142@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@48 f_142@@48))
))) (forall ((o2_45@@49 T@Ref) (f_142@@49 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@49 f_142@@49) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@49 f_142@@49) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@49 f_142@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@49 f_142@@49))
))) (forall ((o2_45@@50 T@Ref) (f_142@@50 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@50 f_142@@50) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@25) o2_45@@50 f_142@@50) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@50 f_142@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@50 f_142@@50))
))) (forall ((o2_45@@51 T@Ref) (f_142@@51 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@51 f_142@@51) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@25) o2_45@@51 f_142@@51) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@51 f_142@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@51 f_142@@51))
))) (forall ((o2_45@@52 T@Ref) (f_142@@52 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@52 f_142@@52) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) o2_45@@52 f_142@@52) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@52 f_142@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@52 f_142@@52))
))) (forall ((o2_45@@53 T@Ref) (f_142@@53 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@53 f_142@@53) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@25) o2_45@@53 f_142@@53) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@53 f_142@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@53 f_142@@53))
))) (forall ((o2_45@@54 T@Ref) (f_142@@54 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@54 f_142@@54) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@54 f_142@@54) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@54 f_142@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@54 f_142@@54))
))) (forall ((o2_45@@55 T@Ref) (f_142@@55 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@55 f_142@@55) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@25) o2_45@@55 f_142@@55) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@55 f_142@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@55 f_142@@55))
))) (forall ((o2_45@@56 T@Ref) (f_142@@56 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@56 f_142@@56) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@25) o2_45@@56 f_142@@56) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@56 f_142@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@56 f_142@@56))
))) (forall ((o2_45@@57 T@Ref) (f_142@@57 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@57 f_142@@57) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@25) o2_45@@57 f_142@@57) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@57 f_142@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@57 f_142@@57))
))) (forall ((o2_45@@58 T@Ref) (f_142@@58 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@58 f_142@@58) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@25) o2_45@@58 f_142@@58) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@58 f_142@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@58 f_142@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@15) (IsPredicateField_51661_51662 pm_f_45@@9))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_104360) (ExhaleHeap@@10 T@PolymorphicMapType_104360) (Mask@@16 T@PolymorphicMapType_104381) (pm_f_45@@10 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@16) (=> (and (HasDirectPerm_51392_51662 Mask@@16 null pm_f_45@@10) (IsPredicateField_51392_421068 pm_f_45@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@59 T@Ref) (f_142@@59 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@59 f_142@@59) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@59 f_142@@59) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@59 f_142@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@59 f_142@@59))
)) (forall ((o2_45@@60 T@Ref) (f_142@@60 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@60 f_142@@60) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@26) o2_45@@60 f_142@@60) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@60 f_142@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@60 f_142@@60))
))) (forall ((o2_45@@61 T@Ref) (f_142@@61 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@61 f_142@@61) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@26) o2_45@@61 f_142@@61) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@61 f_142@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@61 f_142@@61))
))) (forall ((o2_45@@62 T@Ref) (f_142@@62 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@62 f_142@@62) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) o2_45@@62 f_142@@62) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@62 f_142@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@62 f_142@@62))
))) (forall ((o2_45@@63 T@Ref) (f_142@@63 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@63 f_142@@63) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@26) o2_45@@63 f_142@@63) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@63 f_142@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@63 f_142@@63))
))) (forall ((o2_45@@64 T@Ref) (f_142@@64 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@64 f_142@@64) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@64 f_142@@64) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@64 f_142@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@64 f_142@@64))
))) (forall ((o2_45@@65 T@Ref) (f_142@@65 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@65 f_142@@65) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@26) o2_45@@65 f_142@@65) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@65 f_142@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@65 f_142@@65))
))) (forall ((o2_45@@66 T@Ref) (f_142@@66 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@66 f_142@@66) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@26) o2_45@@66 f_142@@66) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@66 f_142@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@66 f_142@@66))
))) (forall ((o2_45@@67 T@Ref) (f_142@@67 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@67 f_142@@67) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@26) o2_45@@67 f_142@@67) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@67 f_142@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@67 f_142@@67))
))) (forall ((o2_45@@68 T@Ref) (f_142@@68 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@68 f_142@@68) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@26) o2_45@@68 f_142@@68) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@68 f_142@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@68 f_142@@68))
))) (forall ((o2_45@@69 T@Ref) (f_142@@69 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@69 f_142@@69) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@69 f_142@@69) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@69 f_142@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@69 f_142@@69))
))) (forall ((o2_45@@70 T@Ref) (f_142@@70 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@70 f_142@@70) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@26) o2_45@@70 f_142@@70) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@70 f_142@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@70 f_142@@70))
))) (forall ((o2_45@@71 T@Ref) (f_142@@71 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@71 f_142@@71) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@26) o2_45@@71 f_142@@71) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@71 f_142@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@71 f_142@@71))
))) (forall ((o2_45@@72 T@Ref) (f_142@@72 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@72 f_142@@72) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@26) o2_45@@72 f_142@@72) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@72 f_142@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@72 f_142@@72))
))) (forall ((o2_45@@73 T@Ref) (f_142@@73 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@73 f_142@@73) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@26) o2_45@@73 f_142@@73) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@73 f_142@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@73 f_142@@73))
))) (forall ((o2_45@@74 T@Ref) (f_142@@74 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@74 f_142@@74) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@74 f_142@@74) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@74 f_142@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@74 f_142@@74))
))) (forall ((o2_45@@75 T@Ref) (f_142@@75 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@75 f_142@@75) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@26) o2_45@@75 f_142@@75) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@75 f_142@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@75 f_142@@75))
))) (forall ((o2_45@@76 T@Ref) (f_142@@76 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@76 f_142@@76) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@26) o2_45@@76 f_142@@76) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@76 f_142@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@76 f_142@@76))
))) (forall ((o2_45@@77 T@Ref) (f_142@@77 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@77 f_142@@77) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@26) o2_45@@77 f_142@@77) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@77 f_142@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@77 f_142@@77))
))) (forall ((o2_45@@78 T@Ref) (f_142@@78 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@78 f_142@@78) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@26) o2_45@@78 f_142@@78) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@78 f_142@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@78 f_142@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@16) (IsPredicateField_51392_421068 pm_f_45@@10))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_104360) (ExhaleHeap@@11 T@PolymorphicMapType_104360) (Mask@@17 T@PolymorphicMapType_104381) (pm_f_45@@11 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@11 Mask@@17) (=> (and (HasDirectPerm_110450_51662 Mask@@17 null pm_f_45@@11) (IsWandField_51301_51302 pm_f_45@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@79 T@Ref) (f_142@@79 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@79 f_142@@79) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@79 f_142@@79) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@79 f_142@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@79 f_142@@79))
)) (forall ((o2_45@@80 T@Ref) (f_142@@80 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@80 f_142@@80) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@27) o2_45@@80 f_142@@80) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@80 f_142@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@80 f_142@@80))
))) (forall ((o2_45@@81 T@Ref) (f_142@@81 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@81 f_142@@81) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@27) o2_45@@81 f_142@@81) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@81 f_142@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@81 f_142@@81))
))) (forall ((o2_45@@82 T@Ref) (f_142@@82 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@82 f_142@@82) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@27) o2_45@@82 f_142@@82) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@82 f_142@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@82 f_142@@82))
))) (forall ((o2_45@@83 T@Ref) (f_142@@83 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@83 f_142@@83) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@27) o2_45@@83 f_142@@83) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@83 f_142@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@83 f_142@@83))
))) (forall ((o2_45@@84 T@Ref) (f_142@@84 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@84 f_142@@84) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@84 f_142@@84) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@84 f_142@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@84 f_142@@84))
))) (forall ((o2_45@@85 T@Ref) (f_142@@85 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@85 f_142@@85) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@27) o2_45@@85 f_142@@85) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@85 f_142@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@85 f_142@@85))
))) (forall ((o2_45@@86 T@Ref) (f_142@@86 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@86 f_142@@86) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@27) o2_45@@86 f_142@@86) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@86 f_142@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@86 f_142@@86))
))) (forall ((o2_45@@87 T@Ref) (f_142@@87 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@87 f_142@@87) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) o2_45@@87 f_142@@87) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@87 f_142@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@87 f_142@@87))
))) (forall ((o2_45@@88 T@Ref) (f_142@@88 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@88 f_142@@88) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@27) o2_45@@88 f_142@@88) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@88 f_142@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@88 f_142@@88))
))) (forall ((o2_45@@89 T@Ref) (f_142@@89 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@89 f_142@@89) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@89 f_142@@89) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@89 f_142@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@89 f_142@@89))
))) (forall ((o2_45@@90 T@Ref) (f_142@@90 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@90 f_142@@90) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@27) o2_45@@90 f_142@@90) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@90 f_142@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@90 f_142@@90))
))) (forall ((o2_45@@91 T@Ref) (f_142@@91 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@91 f_142@@91) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@27) o2_45@@91 f_142@@91) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@91 f_142@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@91 f_142@@91))
))) (forall ((o2_45@@92 T@Ref) (f_142@@92 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@92 f_142@@92) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@27) o2_45@@92 f_142@@92) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@92 f_142@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@92 f_142@@92))
))) (forall ((o2_45@@93 T@Ref) (f_142@@93 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@93 f_142@@93) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@27) o2_45@@93 f_142@@93) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@93 f_142@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@93 f_142@@93))
))) (forall ((o2_45@@94 T@Ref) (f_142@@94 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@94 f_142@@94) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@94 f_142@@94) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@94 f_142@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@94 f_142@@94))
))) (forall ((o2_45@@95 T@Ref) (f_142@@95 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@95 f_142@@95) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@27) o2_45@@95 f_142@@95) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@95 f_142@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@95 f_142@@95))
))) (forall ((o2_45@@96 T@Ref) (f_142@@96 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@96 f_142@@96) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@27) o2_45@@96 f_142@@96) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@96 f_142@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@96 f_142@@96))
))) (forall ((o2_45@@97 T@Ref) (f_142@@97 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@97 f_142@@97) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@27) o2_45@@97 f_142@@97) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@97 f_142@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@97 f_142@@97))
))) (forall ((o2_45@@98 T@Ref) (f_142@@98 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@98 f_142@@98) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@27) o2_45@@98 f_142@@98) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@98 f_142@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@98 f_142@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@11 Mask@@17) (IsWandField_51301_51302 pm_f_45@@11))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_104360) (ExhaleHeap@@12 T@PolymorphicMapType_104360) (Mask@@18 T@PolymorphicMapType_104381) (pm_f_45@@12 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@12 Mask@@18) (=> (and (HasDirectPerm_51712_51713 Mask@@18 null pm_f_45@@12) (IsWandField_51712_428428 pm_f_45@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@99 T@Ref) (f_142@@99 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@99 f_142@@99) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@99 f_142@@99) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@99 f_142@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@99 f_142@@99))
)) (forall ((o2_45@@100 T@Ref) (f_142@@100 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@100 f_142@@100) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@28) o2_45@@100 f_142@@100) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@100 f_142@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@100 f_142@@100))
))) (forall ((o2_45@@101 T@Ref) (f_142@@101 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@101 f_142@@101) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@28) o2_45@@101 f_142@@101) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@101 f_142@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@101 f_142@@101))
))) (forall ((o2_45@@102 T@Ref) (f_142@@102 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@102 f_142@@102) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@28) o2_45@@102 f_142@@102) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@102 f_142@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@102 f_142@@102))
))) (forall ((o2_45@@103 T@Ref) (f_142@@103 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@103 f_142@@103) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@28) o2_45@@103 f_142@@103) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@103 f_142@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@103 f_142@@103))
))) (forall ((o2_45@@104 T@Ref) (f_142@@104 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@104 f_142@@104) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@104 f_142@@104) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@104 f_142@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@104 f_142@@104))
))) (forall ((o2_45@@105 T@Ref) (f_142@@105 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@105 f_142@@105) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@28) o2_45@@105 f_142@@105) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@105 f_142@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@105 f_142@@105))
))) (forall ((o2_45@@106 T@Ref) (f_142@@106 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@106 f_142@@106) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@28) o2_45@@106 f_142@@106) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@106 f_142@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@106 f_142@@106))
))) (forall ((o2_45@@107 T@Ref) (f_142@@107 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@107 f_142@@107) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@28) o2_45@@107 f_142@@107) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@107 f_142@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@107 f_142@@107))
))) (forall ((o2_45@@108 T@Ref) (f_142@@108 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@108 f_142@@108) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@28) o2_45@@108 f_142@@108) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@108 f_142@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@108 f_142@@108))
))) (forall ((o2_45@@109 T@Ref) (f_142@@109 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@109 f_142@@109) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@109 f_142@@109) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@109 f_142@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@109 f_142@@109))
))) (forall ((o2_45@@110 T@Ref) (f_142@@110 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@110 f_142@@110) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@28) o2_45@@110 f_142@@110) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@110 f_142@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@110 f_142@@110))
))) (forall ((o2_45@@111 T@Ref) (f_142@@111 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@111 f_142@@111) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@28) o2_45@@111 f_142@@111) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@111 f_142@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@111 f_142@@111))
))) (forall ((o2_45@@112 T@Ref) (f_142@@112 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@112 f_142@@112) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@28) o2_45@@112 f_142@@112) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@112 f_142@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@112 f_142@@112))
))) (forall ((o2_45@@113 T@Ref) (f_142@@113 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@113 f_142@@113) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@28) o2_45@@113 f_142@@113) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@113 f_142@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@113 f_142@@113))
))) (forall ((o2_45@@114 T@Ref) (f_142@@114 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@114 f_142@@114) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@114 f_142@@114) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@114 f_142@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@114 f_142@@114))
))) (forall ((o2_45@@115 T@Ref) (f_142@@115 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@115 f_142@@115) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@28) o2_45@@115 f_142@@115) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@115 f_142@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@115 f_142@@115))
))) (forall ((o2_45@@116 T@Ref) (f_142@@116 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@116 f_142@@116) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@28) o2_45@@116 f_142@@116) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@116 f_142@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@116 f_142@@116))
))) (forall ((o2_45@@117 T@Ref) (f_142@@117 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@117 f_142@@117) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) o2_45@@117 f_142@@117) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@117 f_142@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@117 f_142@@117))
))) (forall ((o2_45@@118 T@Ref) (f_142@@118 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@118 f_142@@118) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@28) o2_45@@118 f_142@@118) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@118 f_142@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@118 f_142@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@12 Mask@@18) (IsWandField_51712_428428 pm_f_45@@12))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_104360) (ExhaleHeap@@13 T@PolymorphicMapType_104360) (Mask@@19 T@PolymorphicMapType_104381) (pm_f_45@@13 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@13 Mask@@19) (=> (and (HasDirectPerm_51661_51662 Mask@@19 null pm_f_45@@13) (IsWandField_51661_428071 pm_f_45@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@119 T@Ref) (f_142@@119 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@119 f_142@@119) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@119 f_142@@119) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@119 f_142@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@119 f_142@@119))
)) (forall ((o2_45@@120 T@Ref) (f_142@@120 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@120 f_142@@120) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@29) o2_45@@120 f_142@@120) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@120 f_142@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@120 f_142@@120))
))) (forall ((o2_45@@121 T@Ref) (f_142@@121 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@121 f_142@@121) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@29) o2_45@@121 f_142@@121) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@121 f_142@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@121 f_142@@121))
))) (forall ((o2_45@@122 T@Ref) (f_142@@122 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@122 f_142@@122) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@29) o2_45@@122 f_142@@122) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@122 f_142@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@122 f_142@@122))
))) (forall ((o2_45@@123 T@Ref) (f_142@@123 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@123 f_142@@123) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@29) o2_45@@123 f_142@@123) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@123 f_142@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@123 f_142@@123))
))) (forall ((o2_45@@124 T@Ref) (f_142@@124 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@124 f_142@@124) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@124 f_142@@124) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@124 f_142@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@124 f_142@@124))
))) (forall ((o2_45@@125 T@Ref) (f_142@@125 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@125 f_142@@125) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@29) o2_45@@125 f_142@@125) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@125 f_142@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@125 f_142@@125))
))) (forall ((o2_45@@126 T@Ref) (f_142@@126 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@126 f_142@@126) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@29) o2_45@@126 f_142@@126) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@126 f_142@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@126 f_142@@126))
))) (forall ((o2_45@@127 T@Ref) (f_142@@127 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@127 f_142@@127) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@29) o2_45@@127 f_142@@127) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@127 f_142@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@127 f_142@@127))
))) (forall ((o2_45@@128 T@Ref) (f_142@@128 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@128 f_142@@128) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@29) o2_45@@128 f_142@@128) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@128 f_142@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@128 f_142@@128))
))) (forall ((o2_45@@129 T@Ref) (f_142@@129 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@129 f_142@@129) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@129 f_142@@129) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@129 f_142@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@129 f_142@@129))
))) (forall ((o2_45@@130 T@Ref) (f_142@@130 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@130 f_142@@130) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@29) o2_45@@130 f_142@@130) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@130 f_142@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@130 f_142@@130))
))) (forall ((o2_45@@131 T@Ref) (f_142@@131 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@131 f_142@@131) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@29) o2_45@@131 f_142@@131) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@131 f_142@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@131 f_142@@131))
))) (forall ((o2_45@@132 T@Ref) (f_142@@132 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@132 f_142@@132) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) o2_45@@132 f_142@@132) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@132 f_142@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@132 f_142@@132))
))) (forall ((o2_45@@133 T@Ref) (f_142@@133 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@133 f_142@@133) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@29) o2_45@@133 f_142@@133) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@133 f_142@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@133 f_142@@133))
))) (forall ((o2_45@@134 T@Ref) (f_142@@134 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@134 f_142@@134) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@134 f_142@@134) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@134 f_142@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@134 f_142@@134))
))) (forall ((o2_45@@135 T@Ref) (f_142@@135 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@135 f_142@@135) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@29) o2_45@@135 f_142@@135) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@135 f_142@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@135 f_142@@135))
))) (forall ((o2_45@@136 T@Ref) (f_142@@136 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@136 f_142@@136) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@29) o2_45@@136 f_142@@136) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@136 f_142@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@136 f_142@@136))
))) (forall ((o2_45@@137 T@Ref) (f_142@@137 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@137 f_142@@137) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@29) o2_45@@137 f_142@@137) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@137 f_142@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@137 f_142@@137))
))) (forall ((o2_45@@138 T@Ref) (f_142@@138 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@138 f_142@@138) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@29) o2_45@@138 f_142@@138) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@138 f_142@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@138 f_142@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@13 Mask@@19) (IsWandField_51661_428071 pm_f_45@@13))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_104360) (ExhaleHeap@@14 T@PolymorphicMapType_104360) (Mask@@20 T@PolymorphicMapType_104381) (pm_f_45@@14 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@14 Mask@@20) (=> (and (HasDirectPerm_51392_51662 Mask@@20 null pm_f_45@@14) (IsWandField_51392_427714 pm_f_45@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@139 T@Ref) (f_142@@139 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@139 f_142@@139) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@139 f_142@@139) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@139 f_142@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@139 f_142@@139))
)) (forall ((o2_45@@140 T@Ref) (f_142@@140 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@140 f_142@@140) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@30) o2_45@@140 f_142@@140) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@140 f_142@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@140 f_142@@140))
))) (forall ((o2_45@@141 T@Ref) (f_142@@141 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@141 f_142@@141) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@30) o2_45@@141 f_142@@141) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@141 f_142@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@141 f_142@@141))
))) (forall ((o2_45@@142 T@Ref) (f_142@@142 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@142 f_142@@142) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) o2_45@@142 f_142@@142) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@142 f_142@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@142 f_142@@142))
))) (forall ((o2_45@@143 T@Ref) (f_142@@143 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@143 f_142@@143) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@30) o2_45@@143 f_142@@143) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@143 f_142@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@143 f_142@@143))
))) (forall ((o2_45@@144 T@Ref) (f_142@@144 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@144 f_142@@144) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@144 f_142@@144) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@144 f_142@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@144 f_142@@144))
))) (forall ((o2_45@@145 T@Ref) (f_142@@145 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@145 f_142@@145) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@30) o2_45@@145 f_142@@145) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@145 f_142@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@145 f_142@@145))
))) (forall ((o2_45@@146 T@Ref) (f_142@@146 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@146 f_142@@146) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@30) o2_45@@146 f_142@@146) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@146 f_142@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@146 f_142@@146))
))) (forall ((o2_45@@147 T@Ref) (f_142@@147 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@147 f_142@@147) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@30) o2_45@@147 f_142@@147) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@147 f_142@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@147 f_142@@147))
))) (forall ((o2_45@@148 T@Ref) (f_142@@148 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@148 f_142@@148) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@30) o2_45@@148 f_142@@148) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@148 f_142@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@148 f_142@@148))
))) (forall ((o2_45@@149 T@Ref) (f_142@@149 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@149 f_142@@149) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@149 f_142@@149) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@149 f_142@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@149 f_142@@149))
))) (forall ((o2_45@@150 T@Ref) (f_142@@150 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@150 f_142@@150) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@30) o2_45@@150 f_142@@150) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@150 f_142@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@150 f_142@@150))
))) (forall ((o2_45@@151 T@Ref) (f_142@@151 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@151 f_142@@151) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@30) o2_45@@151 f_142@@151) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@151 f_142@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@151 f_142@@151))
))) (forall ((o2_45@@152 T@Ref) (f_142@@152 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@152 f_142@@152) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@30) o2_45@@152 f_142@@152) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@152 f_142@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@152 f_142@@152))
))) (forall ((o2_45@@153 T@Ref) (f_142@@153 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@153 f_142@@153) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@30) o2_45@@153 f_142@@153) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@153 f_142@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@153 f_142@@153))
))) (forall ((o2_45@@154 T@Ref) (f_142@@154 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@154 f_142@@154) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@154 f_142@@154) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@154 f_142@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@154 f_142@@154))
))) (forall ((o2_45@@155 T@Ref) (f_142@@155 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@155 f_142@@155) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@30) o2_45@@155 f_142@@155) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@155 f_142@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@155 f_142@@155))
))) (forall ((o2_45@@156 T@Ref) (f_142@@156 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@156 f_142@@156) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@30) o2_45@@156 f_142@@156) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@156 f_142@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@156 f_142@@156))
))) (forall ((o2_45@@157 T@Ref) (f_142@@157 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@157 f_142@@157) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@30) o2_45@@157 f_142@@157) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@157 f_142@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@157 f_142@@157))
))) (forall ((o2_45@@158 T@Ref) (f_142@@158 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@158 f_142@@158) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@30) o2_45@@158 f_142@@158) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@158 f_142@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@158 f_142@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@14 Mask@@20) (IsWandField_51392_427714 pm_f_45@@14))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_8705| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_8705| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_8705| s@@5 n@@4))
)))
(assert (forall ((this@@18 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (List this@@18) (List this2@@1)) (= this@@18 this2@@1))
 :qid |stdinbpl.2010:15|
 :skolemid |127|
 :pattern ( (List this@@18) (List this2@@1))
)))
(assert (forall ((this@@19 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|List#sm| this@@19) (|List#sm| this2@@2)) (= this@@19 this2@@2))
 :qid |stdinbpl.2014:15|
 :skolemid |128|
 :pattern ( (|List#sm| this@@19) (|List#sm| this2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3835| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_8705| (|Seq#Append_3835| s@@6 t) n@@5) (|Seq#Append_3835| s@@6 (|Seq#Take_8705| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.360:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8705| (|Seq#Append_3835| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_104360) (Mask@@21 T@PolymorphicMapType_104381) (this@@20 T@Ref) (end@@8 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@21) (or (< AssumeFunctionsAbove 3) (|lengthNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@31) null (lseg this@@20 end@@8)) this@@20 end@@8))) (= (|lengthNodes'| Heap@@31 this@@20 end@@8) (|Seq#Length_2867| (contentNodes Heap@@31 this@@20 end@@8))))
 :qid |stdinbpl.1010:15|
 :skolemid |86|
 :pattern ( (state Heap@@31 Mask@@21) (|lengthNodes'| Heap@@31 this@@20 end@@8))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_104360) (Mask@@22 T@PolymorphicMapType_104381) (this@@21 T@Ref) (end@@9 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@22) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@32) null (lseg this@@21 end@@9)) this@@21 end@@9))) (forall ((i@@2 Int) (j_9 Int) ) (!  (=> (and (<= 0 i@@2) (and (< i@@2 j_9) (< j_9 (|Seq#Length_2867| (|contentNodes'| Heap@@32 this@@21 end@@9))))) (<= (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) j_9)))
 :qid |stdinbpl.644:127|
 :skolemid |71|
 :pattern ( (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) j_9))
)))
 :qid |stdinbpl.642:15|
 :skolemid |72|
 :pattern ( (state Heap@@32 Mask@@22) (|contentNodes'| Heap@@32 this@@21 end@@9))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@33 T@PolymorphicMapType_104360) (ExhaleHeap@@15 T@PolymorphicMapType_104360) (Mask@@23 T@PolymorphicMapType_104381) (o_192 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@23) (=> (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@33) o_192 $allocated) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@15) o_192 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@23) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@15) o_192 $allocated))
)))
(assert (forall ((p T@Field_110499_110500) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_110450_110450 p v_1 p w))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_110450_110450 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_51392_51662) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_104420_104420 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_104420_104420 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_140838_140839) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_51712_140838 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_51712_140838 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_112561_112562) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_51661_51661 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_51661_51661 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4057|)) (not (= s1 |Seq#Empty_4057|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3835| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3835| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.247:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3835| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_51392_3835 data)))
(assert  (not (IsWandField_51392_3835 data)))
(assert  (not (IsPredicateField_51394_51395 next)))
(assert  (not (IsWandField_51394_51395 next)))
(assert  (not (IsPredicateField_51394_51395 head_2)))
(assert  (not (IsWandField_51394_51395 head_2)))
(assert  (not (IsPredicateField_51392_3835 held)))
(assert  (not (IsWandField_51392_3835 held)))
(assert  (not (IsPredicateField_51402_3895 changed)))
(assert  (not (IsWandField_51402_3895 changed)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_104360) (ExhaleHeap@@16 T@PolymorphicMapType_104360) (Mask@@24 T@PolymorphicMapType_104381) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@24) (succHeap Heap@@34 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_104381) (o_2@@19 T@Ref) (f_4@@19 T@Field_110473_110478) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@25) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_51274_442391 f_4@@19))) (not (IsWandField_51274_442407 f_4@@19))) (<= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@25) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@25) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_104381) (o_2@@20 T@Ref) (f_4@@20 T@Field_110450_3895) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@26) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_51274_3895 f_4@@20))) (not (IsWandField_51274_3895 f_4@@20))) (<= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@26) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@26) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_104381) (o_2@@21 T@Ref) (f_4@@21 T@Field_110450_51395) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@27) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_51274_51395 f_4@@21))) (not (IsWandField_51274_51395 f_4@@21))) (<= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@27) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@27) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_104381) (o_2@@22 T@Ref) (f_4@@22 T@Field_110450_3043) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@28) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_51274_3043 f_4@@22))) (not (IsWandField_51274_3043 f_4@@22))) (<= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@28) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@28) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_104381) (o_2@@23 T@Ref) (f_4@@23 T@Field_110499_110500) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@29) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_51301_51302 f_4@@23))) (not (IsWandField_51301_51302 f_4@@23))) (<= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@29) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@29) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_104381) (o_2@@24 T@Ref) (f_4@@24 T@Field_143227_143232) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@30) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_51712_441574 f_4@@24))) (not (IsWandField_51712_441590 f_4@@24))) (<= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@30) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@30) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_104381) (o_2@@25 T@Ref) (f_4@@25 T@Field_51712_3895) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@31) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_51712_3895 f_4@@25))) (not (IsWandField_51712_3895 f_4@@25))) (<= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@31) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@31) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_104381) (o_2@@26 T@Ref) (f_4@@26 T@Field_51712_51395) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@32) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_51712_51395 f_4@@26))) (not (IsWandField_51712_51395 f_4@@26))) (<= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@32) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@32) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_104381) (o_2@@27 T@Ref) (f_4@@27 T@Field_51712_3835) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@33) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_51712_3835 f_4@@27))) (not (IsWandField_51712_3835 f_4@@27))) (<= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@33) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@33) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_104381) (o_2@@28 T@Ref) (f_4@@28 T@Field_140838_140839) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@34) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_51712_51713 f_4@@28))) (not (IsWandField_51712_428428 f_4@@28))) (<= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@34) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@34) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_104381) (o_2@@29 T@Ref) (f_4@@29 T@Field_51392_110478) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@35) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_51392_440743 f_4@@29))) (not (IsWandField_51392_440759 f_4@@29))) (<= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@35) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@35) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_104381) (o_2@@30 T@Ref) (f_4@@30 T@Field_104420_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@36) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_51402_3895 f_4@@30))) (not (IsWandField_51402_3895 f_4@@30))) (<= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@36) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@36) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_104381) (o_2@@31 T@Ref) (f_4@@31 T@Field_104433_104434) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@37) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_51394_51395 f_4@@31))) (not (IsWandField_51394_51395 f_4@@31))) (<= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@37) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@37) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_104381) (o_2@@32 T@Ref) (f_4@@32 T@Field_111885_3835) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@38) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_51392_3835 f_4@@32))) (not (IsWandField_51392_3835 f_4@@32))) (<= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@38) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@38) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_104381) (o_2@@33 T@Ref) (f_4@@33 T@Field_51392_51662) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@39) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_51392_421068 f_4@@33))) (not (IsWandField_51392_427714 f_4@@33))) (<= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@39) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@39) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_104381) (o_2@@34 T@Ref) (f_4@@34 T@Field_117635_117640) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@40) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_51661_439954 f_4@@34))) (not (IsWandField_51661_439970 f_4@@34))) (<= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@40) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@40) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_104381) (o_2@@35 T@Ref) (f_4@@35 T@Field_51661_3895) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@41) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_51661_3895 f_4@@35))) (not (IsWandField_51661_3895 f_4@@35))) (<= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@41) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@41) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_104381) (o_2@@36 T@Ref) (f_4@@36 T@Field_51661_51395) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@42) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_51661_51395 f_4@@36))) (not (IsWandField_51661_51395 f_4@@36))) (<= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@42) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@42) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_104381) (o_2@@37 T@Ref) (f_4@@37 T@Field_51661_3835) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@43) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_51661_3835 f_4@@37))) (not (IsWandField_51661_3835 f_4@@37))) (<= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@43) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@43) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_104381) (o_2@@38 T@Ref) (f_4@@38 T@Field_112561_112562) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@44) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_51661_51662 f_4@@38))) (not (IsWandField_51661_428071 f_4@@38))) (<= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@44) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@44) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_104381) (o_2@@39 T@Ref) (f_4@@39 T@Field_110473_110478) ) (! (= (HasDirectPerm_110450_420823 Mask@@45 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@45) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_420823 Mask@@45 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_104381) (o_2@@40 T@Ref) (f_4@@40 T@Field_110450_3895) ) (! (= (HasDirectPerm_110450_3895 Mask@@46 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@46) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_3895 Mask@@46 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_104381) (o_2@@41 T@Ref) (f_4@@41 T@Field_110499_110500) ) (! (= (HasDirectPerm_110450_51662 Mask@@47 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@47) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_51662 Mask@@47 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_104381) (o_2@@42 T@Ref) (f_4@@42 T@Field_110450_51395) ) (! (= (HasDirectPerm_110450_51395 Mask@@48 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@48) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_51395 Mask@@48 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_104381) (o_2@@43 T@Ref) (f_4@@43 T@Field_110450_3043) ) (! (= (HasDirectPerm_110450_3835 Mask@@49 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@49) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_3835 Mask@@49 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_104381) (o_2@@44 T@Ref) (f_4@@44 T@Field_143227_143232) ) (! (= (HasDirectPerm_51712_419689 Mask@@50 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@50) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_419689 Mask@@50 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_104381) (o_2@@45 T@Ref) (f_4@@45 T@Field_51712_3895) ) (! (= (HasDirectPerm_51712_3895 Mask@@51 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@51) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_3895 Mask@@51 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_104381) (o_2@@46 T@Ref) (f_4@@46 T@Field_140838_140839) ) (! (= (HasDirectPerm_51712_51713 Mask@@52 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@52) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_51713 Mask@@52 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_104381) (o_2@@47 T@Ref) (f_4@@47 T@Field_51712_51395) ) (! (= (HasDirectPerm_51712_51395 Mask@@53 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@53) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_51395 Mask@@53 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_104381) (o_2@@48 T@Ref) (f_4@@48 T@Field_51712_3835) ) (! (= (HasDirectPerm_51712_3835 Mask@@54 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@54) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_3835 Mask@@54 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_104381) (o_2@@49 T@Ref) (f_4@@49 T@Field_117635_117640) ) (! (= (HasDirectPerm_51661_418591 Mask@@55 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@55) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_418591 Mask@@55 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_104381) (o_2@@50 T@Ref) (f_4@@50 T@Field_51661_3895) ) (! (= (HasDirectPerm_51661_3895 Mask@@56 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@56) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_3895 Mask@@56 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_104381) (o_2@@51 T@Ref) (f_4@@51 T@Field_112561_112562) ) (! (= (HasDirectPerm_51661_51662 Mask@@57 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@57) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_51662 Mask@@57 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_104381) (o_2@@52 T@Ref) (f_4@@52 T@Field_51661_51395) ) (! (= (HasDirectPerm_51661_51395 Mask@@58 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@58) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_51395 Mask@@58 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_104381) (o_2@@53 T@Ref) (f_4@@53 T@Field_51661_3835) ) (! (= (HasDirectPerm_51661_3835 Mask@@59 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@59) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_3835 Mask@@59 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_104381) (o_2@@54 T@Ref) (f_4@@54 T@Field_51392_110478) ) (! (= (HasDirectPerm_51392_417450 Mask@@60 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@60) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51392_417450 Mask@@60 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_104381) (o_2@@55 T@Ref) (f_4@@55 T@Field_104420_53) ) (! (= (HasDirectPerm_51402_3895 Mask@@61 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@61) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51402_3895 Mask@@61 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_104381) (o_2@@56 T@Ref) (f_4@@56 T@Field_51392_51662) ) (! (= (HasDirectPerm_51392_51662 Mask@@62 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@62) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51392_51662 Mask@@62 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_104381) (o_2@@57 T@Ref) (f_4@@57 T@Field_104433_104434) ) (! (= (HasDirectPerm_51394_51395 Mask@@63 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@63) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51394_51395 Mask@@63 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_104381) (o_2@@58 T@Ref) (f_4@@58 T@Field_111885_3835) ) (! (= (HasDirectPerm_51392_3835 Mask@@64 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@64) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51392_3835 Mask@@64 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.166:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.539:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_104360) (ExhaleHeap@@17 T@PolymorphicMapType_104360) (Mask@@65 T@PolymorphicMapType_104381) (o_192@@0 T@Ref) (f_142@@159 T@Field_110473_110478) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@65) (=> (HasDirectPerm_110450_420823 Mask@@65 o_192@@0 f_142@@159) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@35) o_192@@0 f_142@@159) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@17) o_192@@0 f_142@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@65) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@17) o_192@@0 f_142@@159))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_104360) (ExhaleHeap@@18 T@PolymorphicMapType_104360) (Mask@@66 T@PolymorphicMapType_104381) (o_192@@1 T@Ref) (f_142@@160 T@Field_110450_3895) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@66) (=> (HasDirectPerm_110450_3895 Mask@@66 o_192@@1 f_142@@160) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@36) o_192@@1 f_142@@160) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@18) o_192@@1 f_142@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@66) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@18) o_192@@1 f_142@@160))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_104360) (ExhaleHeap@@19 T@PolymorphicMapType_104360) (Mask@@67 T@PolymorphicMapType_104381) (o_192@@2 T@Ref) (f_142@@161 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@67) (=> (HasDirectPerm_110450_51662 Mask@@67 o_192@@2 f_142@@161) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@37) o_192@@2 f_142@@161) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@19) o_192@@2 f_142@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@67) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@19) o_192@@2 f_142@@161))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_104360) (ExhaleHeap@@20 T@PolymorphicMapType_104360) (Mask@@68 T@PolymorphicMapType_104381) (o_192@@3 T@Ref) (f_142@@162 T@Field_110450_51395) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@68) (=> (HasDirectPerm_110450_51395 Mask@@68 o_192@@3 f_142@@162) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@38) o_192@@3 f_142@@162) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@20) o_192@@3 f_142@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@68) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@20) o_192@@3 f_142@@162))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_104360) (ExhaleHeap@@21 T@PolymorphicMapType_104360) (Mask@@69 T@PolymorphicMapType_104381) (o_192@@4 T@Ref) (f_142@@163 T@Field_110450_3043) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@69) (=> (HasDirectPerm_110450_3835 Mask@@69 o_192@@4 f_142@@163) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@39) o_192@@4 f_142@@163) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@21) o_192@@4 f_142@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@69) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@21) o_192@@4 f_142@@163))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_104360) (ExhaleHeap@@22 T@PolymorphicMapType_104360) (Mask@@70 T@PolymorphicMapType_104381) (o_192@@5 T@Ref) (f_142@@164 T@Field_143227_143232) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@22 Mask@@70) (=> (HasDirectPerm_51712_419689 Mask@@70 o_192@@5 f_142@@164) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@40) o_192@@5 f_142@@164) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@22) o_192@@5 f_142@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@22 Mask@@70) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@22) o_192@@5 f_142@@164))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_104360) (ExhaleHeap@@23 T@PolymorphicMapType_104360) (Mask@@71 T@PolymorphicMapType_104381) (o_192@@6 T@Ref) (f_142@@165 T@Field_51712_3895) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@23 Mask@@71) (=> (HasDirectPerm_51712_3895 Mask@@71 o_192@@6 f_142@@165) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@41) o_192@@6 f_142@@165) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@23) o_192@@6 f_142@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@23 Mask@@71) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@23) o_192@@6 f_142@@165))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_104360) (ExhaleHeap@@24 T@PolymorphicMapType_104360) (Mask@@72 T@PolymorphicMapType_104381) (o_192@@7 T@Ref) (f_142@@166 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@24 Mask@@72) (=> (HasDirectPerm_51712_51713 Mask@@72 o_192@@7 f_142@@166) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@42) o_192@@7 f_142@@166) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@24) o_192@@7 f_142@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@24 Mask@@72) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@24) o_192@@7 f_142@@166))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_104360) (ExhaleHeap@@25 T@PolymorphicMapType_104360) (Mask@@73 T@PolymorphicMapType_104381) (o_192@@8 T@Ref) (f_142@@167 T@Field_51712_51395) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@25 Mask@@73) (=> (HasDirectPerm_51712_51395 Mask@@73 o_192@@8 f_142@@167) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@43) o_192@@8 f_142@@167) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@25) o_192@@8 f_142@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@25 Mask@@73) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@25) o_192@@8 f_142@@167))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_104360) (ExhaleHeap@@26 T@PolymorphicMapType_104360) (Mask@@74 T@PolymorphicMapType_104381) (o_192@@9 T@Ref) (f_142@@168 T@Field_51712_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@26 Mask@@74) (=> (HasDirectPerm_51712_3835 Mask@@74 o_192@@9 f_142@@168) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@44) o_192@@9 f_142@@168) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@26) o_192@@9 f_142@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@26 Mask@@74) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@26) o_192@@9 f_142@@168))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_104360) (ExhaleHeap@@27 T@PolymorphicMapType_104360) (Mask@@75 T@PolymorphicMapType_104381) (o_192@@10 T@Ref) (f_142@@169 T@Field_117635_117640) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@27 Mask@@75) (=> (HasDirectPerm_51661_418591 Mask@@75 o_192@@10 f_142@@169) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@45) o_192@@10 f_142@@169) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@27) o_192@@10 f_142@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@27 Mask@@75) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@27) o_192@@10 f_142@@169))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_104360) (ExhaleHeap@@28 T@PolymorphicMapType_104360) (Mask@@76 T@PolymorphicMapType_104381) (o_192@@11 T@Ref) (f_142@@170 T@Field_51661_3895) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@28 Mask@@76) (=> (HasDirectPerm_51661_3895 Mask@@76 o_192@@11 f_142@@170) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@46) o_192@@11 f_142@@170) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@28) o_192@@11 f_142@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@28 Mask@@76) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@28) o_192@@11 f_142@@170))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_104360) (ExhaleHeap@@29 T@PolymorphicMapType_104360) (Mask@@77 T@PolymorphicMapType_104381) (o_192@@12 T@Ref) (f_142@@171 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@29 Mask@@77) (=> (HasDirectPerm_51661_51662 Mask@@77 o_192@@12 f_142@@171) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@47) o_192@@12 f_142@@171) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@29) o_192@@12 f_142@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@29 Mask@@77) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@29) o_192@@12 f_142@@171))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_104360) (ExhaleHeap@@30 T@PolymorphicMapType_104360) (Mask@@78 T@PolymorphicMapType_104381) (o_192@@13 T@Ref) (f_142@@172 T@Field_51661_51395) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@30 Mask@@78) (=> (HasDirectPerm_51661_51395 Mask@@78 o_192@@13 f_142@@172) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@48) o_192@@13 f_142@@172) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@30) o_192@@13 f_142@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@30 Mask@@78) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@30) o_192@@13 f_142@@172))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_104360) (ExhaleHeap@@31 T@PolymorphicMapType_104360) (Mask@@79 T@PolymorphicMapType_104381) (o_192@@14 T@Ref) (f_142@@173 T@Field_51661_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@31 Mask@@79) (=> (HasDirectPerm_51661_3835 Mask@@79 o_192@@14 f_142@@173) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@49) o_192@@14 f_142@@173) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@31) o_192@@14 f_142@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@31 Mask@@79) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@31) o_192@@14 f_142@@173))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_104360) (ExhaleHeap@@32 T@PolymorphicMapType_104360) (Mask@@80 T@PolymorphicMapType_104381) (o_192@@15 T@Ref) (f_142@@174 T@Field_51392_110478) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@32 Mask@@80) (=> (HasDirectPerm_51392_417450 Mask@@80 o_192@@15 f_142@@174) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@50) o_192@@15 f_142@@174) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@32) o_192@@15 f_142@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@32 Mask@@80) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@32) o_192@@15 f_142@@174))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_104360) (ExhaleHeap@@33 T@PolymorphicMapType_104360) (Mask@@81 T@PolymorphicMapType_104381) (o_192@@16 T@Ref) (f_142@@175 T@Field_104420_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@33 Mask@@81) (=> (HasDirectPerm_51402_3895 Mask@@81 o_192@@16 f_142@@175) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@51) o_192@@16 f_142@@175) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@33) o_192@@16 f_142@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@33 Mask@@81) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@33) o_192@@16 f_142@@175))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_104360) (ExhaleHeap@@34 T@PolymorphicMapType_104360) (Mask@@82 T@PolymorphicMapType_104381) (o_192@@17 T@Ref) (f_142@@176 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@34 Mask@@82) (=> (HasDirectPerm_51392_51662 Mask@@82 o_192@@17 f_142@@176) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@52) o_192@@17 f_142@@176) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@34) o_192@@17 f_142@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@34 Mask@@82) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@34) o_192@@17 f_142@@176))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_104360) (ExhaleHeap@@35 T@PolymorphicMapType_104360) (Mask@@83 T@PolymorphicMapType_104381) (o_192@@18 T@Ref) (f_142@@177 T@Field_104433_104434) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@35 Mask@@83) (=> (HasDirectPerm_51394_51395 Mask@@83 o_192@@18 f_142@@177) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@53) o_192@@18 f_142@@177) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@35) o_192@@18 f_142@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@35 Mask@@83) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@35) o_192@@18 f_142@@177))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_104360) (ExhaleHeap@@36 T@PolymorphicMapType_104360) (Mask@@84 T@PolymorphicMapType_104381) (o_192@@19 T@Ref) (f_142@@178 T@Field_111885_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@36 Mask@@84) (=> (HasDirectPerm_51392_3835 Mask@@84 o_192@@19 f_142@@178) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@54) o_192@@19 f_142@@178) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@36) o_192@@19 f_142@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@36 Mask@@84) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@36) o_192@@19 f_142@@178))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_4057|)) (not (= s1@@0 |Seq#Empty_4057|))) (= (|Seq#Length_2867| (|Seq#Append_3835| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.216:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3835| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_110473_110478) ) (! (= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_110450_3895) ) (! (= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_110450_51395) ) (! (= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_110450_3043) ) (! (= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_110499_110500) ) (! (= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_143227_143232) ) (! (= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_51712_3895) ) (! (= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_51712_51395) ) (! (= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_51712_3835) ) (! (= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_140838_140839) ) (! (= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_51392_110478) ) (! (= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_104420_53) ) (! (= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_104433_104434) ) (! (= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_111885_3835) ) (! (= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_51392_51662) ) (! (= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_117635_117640) ) (! (= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_51661_3895) ) (! (= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_51661_51395) ) (! (= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_51661_3835) ) (! (= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_112561_112562) ) (! (= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_8705| (|Seq#Append_3835| s@@7 t@@0) n@@7) (|Seq#Drop_8705| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.373:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8705| (|Seq#Append_3835| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_104360) (this@@22 T@Ref) (end@@10 T@Ref) ) (!  (and (= (contentNodes Heap@@55 this@@22 end@@10) (|contentNodes'| Heap@@55 this@@22 end@@10)) (dummyFunction_112185 (|contentNodes#triggerStateless| this@@22 end@@10)))
 :qid |stdinbpl.611:15|
 :skolemid |65|
 :pattern ( (contentNodes Heap@@55 this@@22 end@@10))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_104360) (this@@23 T@Ref) (end@@11 T@Ref) ) (!  (and (= (lengthNodes Heap@@56 this@@23 end@@11) (|lengthNodes'| Heap@@56 this@@23 end@@11)) (dummyFunction_7424 (|lengthNodes#triggerStateless| this@@23 end@@11)))
 :qid |stdinbpl.987:15|
 :skolemid |82|
 :pattern ( (lengthNodes Heap@@56 this@@23 end@@11))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_104360) (Mask@@85 T@PolymorphicMapType_104381) (this@@24 T@Ref) (end@@12 T@Ref) ) (!  (=> (and (state Heap@@57 Mask@@85) (< AssumeFunctionsAbove 4)) (= (contentNodes Heap@@57 this@@24 end@@12) (ite (= this@@24 end@@12) |Seq#Empty_4057| (|Seq#Append_3835| (|Seq#Singleton_3835| (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@57) this@@24 data)) (|contentNodes'| Heap@@57 (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@57) this@@24 next) end@@12)))))
 :qid |stdinbpl.621:15|
 :skolemid |67|
 :pattern ( (state Heap@@57 Mask@@85) (contentNodes Heap@@57 this@@24 end@@12))
 :pattern ( (state Heap@@57 Mask@@85) (|contentNodes#triggerStateless| this@@24 end@@12) (|lseg#trigger_51661| Heap@@57 (lseg this@@24 end@@12)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_104381) (SummandMask1 T@PolymorphicMapType_104381) (SummandMask2 T@PolymorphicMapType_104381) (o_2@@79 T@Ref) (f_4@@79 T@Field_110473_110478) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_104381) (SummandMask1@@0 T@PolymorphicMapType_104381) (SummandMask2@@0 T@PolymorphicMapType_104381) (o_2@@80 T@Ref) (f_4@@80 T@Field_110450_3895) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_104381) (SummandMask1@@1 T@PolymorphicMapType_104381) (SummandMask2@@1 T@PolymorphicMapType_104381) (o_2@@81 T@Ref) (f_4@@81 T@Field_110450_51395) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_104381) (SummandMask1@@2 T@PolymorphicMapType_104381) (SummandMask2@@2 T@PolymorphicMapType_104381) (o_2@@82 T@Ref) (f_4@@82 T@Field_110450_3043) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_104381) (SummandMask1@@3 T@PolymorphicMapType_104381) (SummandMask2@@3 T@PolymorphicMapType_104381) (o_2@@83 T@Ref) (f_4@@83 T@Field_110499_110500) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_104381) (SummandMask1@@4 T@PolymorphicMapType_104381) (SummandMask2@@4 T@PolymorphicMapType_104381) (o_2@@84 T@Ref) (f_4@@84 T@Field_143227_143232) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_104381) (SummandMask1@@5 T@PolymorphicMapType_104381) (SummandMask2@@5 T@PolymorphicMapType_104381) (o_2@@85 T@Ref) (f_4@@85 T@Field_51712_3895) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_104381) (SummandMask1@@6 T@PolymorphicMapType_104381) (SummandMask2@@6 T@PolymorphicMapType_104381) (o_2@@86 T@Ref) (f_4@@86 T@Field_51712_51395) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_104381) (SummandMask1@@7 T@PolymorphicMapType_104381) (SummandMask2@@7 T@PolymorphicMapType_104381) (o_2@@87 T@Ref) (f_4@@87 T@Field_51712_3835) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_104381) (SummandMask1@@8 T@PolymorphicMapType_104381) (SummandMask2@@8 T@PolymorphicMapType_104381) (o_2@@88 T@Ref) (f_4@@88 T@Field_140838_140839) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_104381) (SummandMask1@@9 T@PolymorphicMapType_104381) (SummandMask2@@9 T@PolymorphicMapType_104381) (o_2@@89 T@Ref) (f_4@@89 T@Field_51392_110478) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_104381) (SummandMask1@@10 T@PolymorphicMapType_104381) (SummandMask2@@10 T@PolymorphicMapType_104381) (o_2@@90 T@Ref) (f_4@@90 T@Field_104420_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_104381) (SummandMask1@@11 T@PolymorphicMapType_104381) (SummandMask2@@11 T@PolymorphicMapType_104381) (o_2@@91 T@Ref) (f_4@@91 T@Field_104433_104434) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_104381) (SummandMask1@@12 T@PolymorphicMapType_104381) (SummandMask2@@12 T@PolymorphicMapType_104381) (o_2@@92 T@Ref) (f_4@@92 T@Field_111885_3835) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_104381) (SummandMask1@@13 T@PolymorphicMapType_104381) (SummandMask2@@13 T@PolymorphicMapType_104381) (o_2@@93 T@Ref) (f_4@@93 T@Field_51392_51662) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_104381) (SummandMask1@@14 T@PolymorphicMapType_104381) (SummandMask2@@14 T@PolymorphicMapType_104381) (o_2@@94 T@Ref) (f_4@@94 T@Field_117635_117640) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_104381) (SummandMask1@@15 T@PolymorphicMapType_104381) (SummandMask2@@15 T@PolymorphicMapType_104381) (o_2@@95 T@Ref) (f_4@@95 T@Field_51661_3895) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_104381) (SummandMask1@@16 T@PolymorphicMapType_104381) (SummandMask2@@16 T@PolymorphicMapType_104381) (o_2@@96 T@Ref) (f_4@@96 T@Field_51661_51395) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_104381) (SummandMask1@@17 T@PolymorphicMapType_104381) (SummandMask2@@17 T@PolymorphicMapType_104381) (o_2@@97 T@Ref) (f_4@@97 T@Field_51661_3835) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_104381) (SummandMask1@@18 T@PolymorphicMapType_104381) (SummandMask2@@18 T@PolymorphicMapType_104381) (o_2@@98 T@Ref) (f_4@@98 T@Field_112561_112562) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.538:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 T@Ref) (arg4 T@Ref) (arg5 Int) (arg6 Int) (arg7 T@Ref) (arg8 T@Ref) (arg9 T@Ref) (arg10 T@Ref) (arg11 T@Seq_2867) (arg12 T@Ref) (arg13 T@Ref) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11 arg12 arg13) (WandMaskField_51301 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11 arg12 arg13)))
 :qid |stdinbpl.571:15|
 :skolemid |62|
 :pattern ( (WandMaskField_51301 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11 arg12 arg13)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_104360) (Mask@@86 T@PolymorphicMapType_104381) (this@@25 T@Ref) (end@@13 T@Ref) ) (!  (=> (and (state Heap@@58 Mask@@86) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@58) null (lseg this@@25 end@@13)) this@@25 end@@13))) (=> (not (= this@@25 end@@13)) (and (> (|Seq#Length_2867| (|contentNodes'| Heap@@58 this@@25 end@@13)) 0) (= (|Seq#Index_2867| (|contentNodes'| Heap@@58 this@@25 end@@13) 0) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@58) this@@25 data)))))
 :qid |stdinbpl.638:15|
 :skolemid |70|
 :pattern ( (state Heap@@58 Mask@@86) (|contentNodes'| Heap@@58 this@@25 end@@13))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_104360) (Mask@@87 T@PolymorphicMapType_104381) (this@@26 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@87) (or (< AssumeFunctionsAbove 2) (|content#trigger| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@59) null (List this@@26)) this@@26))) (forall ((i@@3 Int) (j_9@@0 Int) ) (!  (=> (and (<= 0 i@@3) (and (< i@@3 j_9@@0) (< j_9@@0 (|Seq#Length_2867| (|content'| Heap@@59 this@@26))))) (<= (|Seq#Index_2867| (|content'| Heap@@59 this@@26) i@@3) (|Seq#Index_2867| (|content'| Heap@@59 this@@26) j_9@@0)))
 :qid |stdinbpl.1228:112|
 :skolemid |94|
 :pattern ( (|Seq#Index_2867| (|content'| Heap@@59 this@@26) i@@3) (|Seq#Index_2867| (|content'| Heap@@59 this@@26) j_9@@0))
)))
 :qid |stdinbpl.1226:15|
 :skolemid |95|
 :pattern ( (state Heap@@59 Mask@@87) (|content'| Heap@@59 this@@26))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3938| a b) (= a b))
 :qid |stdinbpl.511:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3938| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@4)))
 :qid |stdinbpl.404:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@4))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_4057|) (= (|Seq#Append_3835| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_4057|) (= (|Seq#Append_3835| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.222:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3835| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3835| t@@1) 0) t@@1)
 :qid |stdinbpl.226:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3835| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.205:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((this@@27 T@Ref) (end@@14 T@Ref) ) (! (= (getPredWandId_51661_51662 (lseg this@@27 end@@14)) 0)
 :qid |stdinbpl.1775:15|
 :skolemid |116|
 :pattern ( (lseg this@@27 end@@14))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3938| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.501:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.498:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3938| s0@@2 s1@@2))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5@@0 Int) (arg6@@0 Int) (arg7@@0 T@Ref) (arg8@@0 T@Ref) (arg9@@0 T@Ref) (arg10@@0 T@Ref) (arg11@@0 T@Seq_2867) (arg12@@0 T@Ref) (arg13@@0 T@Ref) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 Int) (arg6_2 Int) (arg7_2 T@Ref) (arg8_2 T@Ref) (arg9_2 T@Ref) (arg10_2 T@Ref) (arg11_2 T@Seq_2867) (arg12_2 T@Ref) (arg13_2 T@Ref) ) (!  (=> (= (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9@@0 arg10@@0 arg11@@0 arg12@@0 arg13@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2 arg9_2 arg10_2 arg11_2 arg12_2 arg13_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (and (= arg5@@0 arg5_2) (and (= arg6@@0 arg6_2) (and (= arg7@@0 arg7_2) (and (= arg8@@0 arg8_2) (and (= arg9@@0 arg9_2) (and (= arg10@@0 arg10_2) (and (= arg11@@0 arg11_2) (and (= arg12@@0 arg12_2) (= arg13@@0 arg13_2))))))))))))))
 :qid |stdinbpl.579:15|
 :skolemid |64|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9@@0 arg10@@0 arg11@@0 arg12@@0 arg13@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2 arg9_2 arg10_2 arg11_2 arg12_2 arg13_2))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_104360) (Mask@@88 T@PolymorphicMapType_104381) (this@@28 T@Ref) ) (!  (=> (state Heap@@60 Mask@@88) (= (|content'| Heap@@60 this@@28) (|content#frame| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@60) null (List this@@28)) this@@28)))
 :qid |stdinbpl.1220:15|
 :skolemid |93|
 :pattern ( (state Heap@@60 Mask@@88) (|content'| Heap@@60 this@@28))
 :pattern ( (state Heap@@60 Mask@@88) (|content#triggerStateless| this@@28) (|List#trigger_51712| Heap@@60 (List this@@28)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_104360) (Mask@@89 T@PolymorphicMapType_104381) (this@@29 T@Ref) ) (!  (=> (state Heap@@61 Mask@@89) (= (|length'| Heap@@61 this@@29) (|length#frame| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@61) null (List this@@29)) this@@29)))
 :qid |stdinbpl.1377:15|
 :skolemid |101|
 :pattern ( (state Heap@@61 Mask@@89) (|length'| Heap@@61 this@@29))
 :pattern ( (state Heap@@61 Mask@@89) (|length#triggerStateless| this@@29) (|List#trigger_51712| Heap@@61 (List this@@29)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_104360) (Mask@@90 T@PolymorphicMapType_104381) (this@@30 T@Ref) ) (!  (=> (state Heap@@62 Mask@@90) (= (|peek'| Heap@@62 this@@30) (|peek#frame| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@62) null (List this@@30)) this@@30)))
 :qid |stdinbpl.1521:15|
 :skolemid |107|
 :pattern ( (state Heap@@62 Mask@@90) (|peek'| Heap@@62 this@@30))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3835| t@@2)) 1)
 :qid |stdinbpl.213:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3835| t@@2))
)))
(assert (forall ((this@@31 T@Ref) ) (! (= (getPredWandId_51712_51713 (List this@@31)) 1)
 :qid |stdinbpl.2004:15|
 :skolemid |126|
 :pattern ( (List this@@31))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@1 Int) (arg6@@1 Int) (arg7@@1 T@Ref) (arg8@@1 T@Ref) (arg9@@1 T@Ref) (arg10@@1 T@Ref) (arg11@@1 T@Seq_2867) (arg12@@1 T@Ref) (arg13@@1 T@Ref) ) (! (IsWandField_51274_3043 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@1 arg10@@1 arg11@@1 arg12@@1 arg13@@1))
 :qid |stdinbpl.555:15|
 :skolemid |58|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@1 arg10@@1 arg11@@1 arg12@@1 arg13@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@2 Int) (arg6@@2 Int) (arg7@@2 T@Ref) (arg8@@2 T@Ref) (arg9@@2 T@Ref) (arg10@@2 T@Ref) (arg11@@2 T@Seq_2867) (arg12@@2 T@Ref) (arg13@@2 T@Ref) ) (! (IsWandField_51301_51302 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@2 arg10@@2 arg11@@2 arg12@@2 arg13@@2))
 :qid |stdinbpl.559:15|
 :skolemid |59|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@2 arg10@@2 arg11@@2 arg12@@2 arg13@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@3 Int) (arg6@@3 Int) (arg7@@3 T@Ref) (arg8@@3 T@Ref) (arg9@@3 T@Ref) (arg10@@3 T@Ref) (arg11@@3 T@Seq_2867) (arg12@@3 T@Ref) (arg13@@3 T@Ref) ) (!  (not (IsPredicateField_51274_3043 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@3 arg10@@3 arg11@@3 arg12@@3 arg13@@3)))
 :qid |stdinbpl.563:15|
 :skolemid |60|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@3 arg10@@3 arg11@@3 arg12@@3 arg13@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@4 Int) (arg6@@4 Int) (arg7@@4 T@Ref) (arg8@@4 T@Ref) (arg9@@4 T@Ref) (arg10@@4 T@Ref) (arg11@@4 T@Seq_2867) (arg12@@4 T@Ref) (arg13@@4 T@Ref) ) (!  (not (IsPredicateField_51301_51302 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@4 arg10@@4 arg11@@4 arg12@@4 arg13@@4)))
 :qid |stdinbpl.567:15|
 :skolemid |61|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@4 arg10@@4 arg11@@4 arg12@@4 arg13@@4))
)))
(assert (forall ((this@@32 T@Ref) (end@@15 T@Ref) ) (! (= (PredicateMaskField_51661 (lseg this@@32 end@@15)) (|lseg#sm| this@@32 end@@15))
 :qid |stdinbpl.1767:15|
 :skolemid |114|
 :pattern ( (PredicateMaskField_51661 (lseg this@@32 end@@15)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_8705| (|Seq#Append_3835| s@@10 t@@3) n@@8) (|Seq#Take_8705| s@@10 n@@8)))
 :qid |stdinbpl.355:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8705| (|Seq#Append_3835| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@5 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.254:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@5 v@@1))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_104360) (o_191 T@Ref) (f_191 T@Field_110473_110478) (v@@2 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@63 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@63) (store (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@63) o_191 f_191 v@@2) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@63) (store (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@63) o_191 f_191 v@@2) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_104360) (o_191@@0 T@Ref) (f_191@@0 T@Field_110499_110500) (v@@3 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@64) (store (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@64) o_191@@0 f_191@@0 v@@3) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@64) (store (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@64) o_191@@0 f_191@@0 v@@3) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_104360) (o_191@@1 T@Ref) (f_191@@1 T@Field_110450_3043) (v@@4 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@65) (store (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@65) o_191@@1 f_191@@1 v@@4) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@65) (store (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@65) o_191@@1 f_191@@1 v@@4) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_104360) (o_191@@2 T@Ref) (f_191@@2 T@Field_110450_51395) (v@@5 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@66) (store (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@66) o_191@@2 f_191@@2 v@@5) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@66) (store (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@66) o_191@@2 f_191@@2 v@@5) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_104360) (o_191@@3 T@Ref) (f_191@@3 T@Field_110450_3895) (v@@6 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@67) (store (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@67) o_191@@3 f_191@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@67) (store (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@67) o_191@@3 f_191@@3 v@@6)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_104360) (o_191@@4 T@Ref) (f_191@@4 T@Field_143227_143232) (v@@7 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@68 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@68) (store (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@68) o_191@@4 f_191@@4 v@@7) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@68) (store (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@68) o_191@@4 f_191@@4 v@@7) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_104360) (o_191@@5 T@Ref) (f_191@@5 T@Field_140838_140839) (v@@8 T@FrameType) ) (! (succHeap Heap@@69 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@69) (store (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@69) o_191@@5 f_191@@5 v@@8) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@69) (store (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@69) o_191@@5 f_191@@5 v@@8) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_104360) (o_191@@6 T@Ref) (f_191@@6 T@Field_51712_3835) (v@@9 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@70) (store (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@70) o_191@@6 f_191@@6 v@@9) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@70) (store (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@70) o_191@@6 f_191@@6 v@@9) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_104360) (o_191@@7 T@Ref) (f_191@@7 T@Field_51712_51395) (v@@10 T@Ref) ) (! (succHeap Heap@@71 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@71) (store (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@71) o_191@@7 f_191@@7 v@@10) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@71) (store (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@71) o_191@@7 f_191@@7 v@@10) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_104360) (o_191@@8 T@Ref) (f_191@@8 T@Field_51712_3895) (v@@11 Bool) ) (! (succHeap Heap@@72 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@72) (store (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@72) o_191@@8 f_191@@8 v@@11) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@72) (store (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@72) o_191@@8 f_191@@8 v@@11) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_104360) (o_191@@9 T@Ref) (f_191@@9 T@Field_117635_117640) (v@@12 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@73 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@73) (store (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@73) o_191@@9 f_191@@9 v@@12) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@73) (store (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@73) o_191@@9 f_191@@9 v@@12) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_104360) (o_191@@10 T@Ref) (f_191@@10 T@Field_112561_112562) (v@@13 T@FrameType) ) (! (succHeap Heap@@74 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@74) (store (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@74) o_191@@10 f_191@@10 v@@13) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@74) (store (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@74) o_191@@10 f_191@@10 v@@13) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_104360) (o_191@@11 T@Ref) (f_191@@11 T@Field_51661_3835) (v@@14 Int) ) (! (succHeap Heap@@75 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@75) (store (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@75) o_191@@11 f_191@@11 v@@14) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@75) (store (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@75) o_191@@11 f_191@@11 v@@14) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_104360) (o_191@@12 T@Ref) (f_191@@12 T@Field_51661_51395) (v@@15 T@Ref) ) (! (succHeap Heap@@76 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@76) (store (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@76) o_191@@12 f_191@@12 v@@15) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@76) (store (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@76) o_191@@12 f_191@@12 v@@15) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_104360) (o_191@@13 T@Ref) (f_191@@13 T@Field_51661_3895) (v@@16 Bool) ) (! (succHeap Heap@@77 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@77) (store (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@77) o_191@@13 f_191@@13 v@@16) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@77) (store (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@77) o_191@@13 f_191@@13 v@@16) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_104360) (o_191@@14 T@Ref) (f_191@@14 T@Field_51392_110478) (v@@17 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@78 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@78) (store (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@78) o_191@@14 f_191@@14 v@@17) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@78) (store (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@78) o_191@@14 f_191@@14 v@@17) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_104360) (o_191@@15 T@Ref) (f_191@@15 T@Field_51392_51662) (v@@18 T@FrameType) ) (! (succHeap Heap@@79 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@79) (store (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@79) o_191@@15 f_191@@15 v@@18) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@79) (store (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@79) o_191@@15 f_191@@15 v@@18) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_104360) (o_191@@16 T@Ref) (f_191@@16 T@Field_111885_3835) (v@@19 Int) ) (! (succHeap Heap@@80 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@80) (store (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@80) o_191@@16 f_191@@16 v@@19) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@80) (store (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@80) o_191@@16 f_191@@16 v@@19) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_104360) (o_191@@17 T@Ref) (f_191@@17 T@Field_104433_104434) (v@@20 T@Ref) ) (! (succHeap Heap@@81 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@81) (store (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@81) o_191@@17 f_191@@17 v@@20) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@81) (store (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@81) o_191@@17 f_191@@17 v@@20) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_104360) (o_191@@18 T@Ref) (f_191@@18 T@Field_104420_53) (v@@21 Bool) ) (! (succHeap Heap@@82 (PolymorphicMapType_104360 (store (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@82) o_191@@18 f_191@@18 v@@21) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (store (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@82) o_191@@18 f_191@@18 v@@21) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@82)))
)))
(assert (forall ((this@@33 T@Ref) ) (! (= (PredicateMaskField_51712 (List this@@33)) (|List#sm| this@@33))
 :qid |stdinbpl.1996:15|
 :skolemid |124|
 :pattern ( (PredicateMaskField_51712 (List this@@33)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_8705| (|Seq#Append_3835| s@@12 t@@4) n@@9) (|Seq#Append_3835| (|Seq#Drop_8705| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.369:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8705| (|Seq#Append_3835| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@6 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@6)) (< i@@6 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@6 n@@10) n@@10) i@@6) (= (|Seq#Index_2867| (|Seq#Drop_8705| s@@13 n@@10) (|Seq#Sub| i@@6 n@@10)) (|Seq#Index_2867| s@@13 i@@6))))
 :qid |stdinbpl.305:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8705| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@6))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@5 Int) (arg6@@5 Int) (arg7@@5 T@Ref) (arg8@@5 T@Ref) (arg9@@5 T@Ref) (arg10@@5 T@Ref) (arg11@@5 T@Seq_2867) (arg12@@5 T@Ref) (arg13@@5 T@Ref) ) (! (= (getPredWandId_51274_3043 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5 arg9@@5 arg10@@5 arg11@@5 arg12@@5 arg13@@5)) 2)
 :qid |stdinbpl.575:15|
 :skolemid |63|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5 arg9@@5 arg10@@5 arg11@@5 arg12@@5 arg13@@5))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_4057|)) (not (= s1@@3 |Seq#Empty_4057|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3835| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.245:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3835| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3835| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_4057|)) (not (= s1@@4 |Seq#Empty_4057|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3835| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.250:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3835| s0@@4 s1@@4))
)))
(assert (forall ((o_191@@19 T@Ref) (f_139 T@Field_104433_104434) (Heap@@83 T@PolymorphicMapType_104360) ) (!  (=> (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@83) o_191@@19 $allocated) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@83) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@83) o_191@@19 f_139) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@83) o_191@@19 f_139))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@7 Int) ) (!  (=> (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@7) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.402:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@7))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3938| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3938| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3938| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.506:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3938| s0@@5 s1@@5))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_104360) (Mask@@91 T@PolymorphicMapType_104381) (this@@34 T@Ref) ) (!  (=> (and (state Heap@@84 Mask@@91) (< AssumeFunctionsAbove 1)) (= (length Heap@@84 this@@34) (lengthNodes Heap@@84 (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@84) this@@34 head_2) null)))
 :qid |stdinbpl.1370:15|
 :skolemid |100|
 :pattern ( (state Heap@@84 Mask@@91) (length Heap@@84 this@@34))
 :pattern ( (state Heap@@84 Mask@@91) (|length#triggerStateless| this@@34) (|List#trigger_51712| Heap@@84 (List this@@34)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_104360) (Mask@@92 T@PolymorphicMapType_104381) (this@@35 T@Ref) ) (!  (=> (and (state Heap@@85 Mask@@92) (< AssumeFunctionsAbove 2)) (= (content Heap@@85 this@@35) (contentNodes Heap@@85 (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@85) this@@35 head_2) null)))
 :qid |stdinbpl.1213:15|
 :skolemid |92|
 :pattern ( (state Heap@@85 Mask@@92) (content Heap@@85 this@@35))
 :pattern ( (state Heap@@85 Mask@@92) (|content#triggerStateless| this@@35) (|List#trigger_51712| Heap@@85 (List this@@35)))
)))
(assert (forall ((p@@4 T@Field_110499_110500) (v_1@@3 T@FrameType) (q T@Field_110499_110500) (w@@3 T@FrameType) (r T@Field_140838_140839) (u T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@4 v_1@@3 q w@@3) (InsidePredicate_110450_140838 q w@@3 r u)) (InsidePredicate_110450_140838 p@@4 v_1@@3 r u))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@4 v_1@@3 q w@@3) (InsidePredicate_110450_140838 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_110499_110500) (v_1@@4 T@FrameType) (q@@0 T@Field_110499_110500) (w@@4 T@FrameType) (r@@0 T@Field_110499_110500) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_110450_110450 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_110450_110450 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_110450_110450 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_110499_110500) (v_1@@5 T@FrameType) (q@@1 T@Field_110499_110500) (w@@5 T@FrameType) (r@@1 T@Field_51392_51662) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_110450_104420 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_110450_104420 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_110450_104420 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_110499_110500) (v_1@@6 T@FrameType) (q@@2 T@Field_110499_110500) (w@@6 T@FrameType) (r@@2 T@Field_112561_112562) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_110450_51661 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_110450_51661 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_110450_51661 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_110499_110500) (v_1@@7 T@FrameType) (q@@3 T@Field_51392_51662) (w@@7 T@FrameType) (r@@3 T@Field_140838_140839) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_104420_140838 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_110450_140838 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_104420_140838 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_110499_110500) (v_1@@8 T@FrameType) (q@@4 T@Field_51392_51662) (w@@8 T@FrameType) (r@@4 T@Field_110499_110500) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_104420_110450 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_110450_110450 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_104420_110450 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_110499_110500) (v_1@@9 T@FrameType) (q@@5 T@Field_51392_51662) (w@@9 T@FrameType) (r@@5 T@Field_51392_51662) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_104420_104420 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_110450_104420 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_104420_104420 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_110499_110500) (v_1@@10 T@FrameType) (q@@6 T@Field_51392_51662) (w@@10 T@FrameType) (r@@6 T@Field_112561_112562) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_104420_51661 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_110450_51661 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_104420_51661 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_110499_110500) (v_1@@11 T@FrameType) (q@@7 T@Field_140838_140839) (w@@11 T@FrameType) (r@@7 T@Field_140838_140839) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_51712_140838 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_110450_140838 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_51712_140838 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_110499_110500) (v_1@@12 T@FrameType) (q@@8 T@Field_140838_140839) (w@@12 T@FrameType) (r@@8 T@Field_110499_110500) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_51712_110450 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_110450_110450 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_51712_110450 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_110499_110500) (v_1@@13 T@FrameType) (q@@9 T@Field_140838_140839) (w@@13 T@FrameType) (r@@9 T@Field_51392_51662) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_51712_104420 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_110450_104420 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_51712_104420 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_110499_110500) (v_1@@14 T@FrameType) (q@@10 T@Field_140838_140839) (w@@14 T@FrameType) (r@@10 T@Field_112561_112562) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_51712_51661 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_110450_51661 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_51712_51661 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_110499_110500) (v_1@@15 T@FrameType) (q@@11 T@Field_112561_112562) (w@@15 T@FrameType) (r@@11 T@Field_140838_140839) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_51661_140838 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_110450_140838 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_51661_140838 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_110499_110500) (v_1@@16 T@FrameType) (q@@12 T@Field_112561_112562) (w@@16 T@FrameType) (r@@12 T@Field_110499_110500) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_51661_110450 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_110450_110450 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_51661_110450 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_110499_110500) (v_1@@17 T@FrameType) (q@@13 T@Field_112561_112562) (w@@17 T@FrameType) (r@@13 T@Field_51392_51662) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_51661_104420 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_110450_104420 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_51661_104420 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_110499_110500) (v_1@@18 T@FrameType) (q@@14 T@Field_112561_112562) (w@@18 T@FrameType) (r@@14 T@Field_112561_112562) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_51661_51661 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_110450_51661 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_51661_51661 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_51392_51662) (v_1@@19 T@FrameType) (q@@15 T@Field_110499_110500) (w@@19 T@FrameType) (r@@15 T@Field_140838_140839) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_110450_140838 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_104420_140838 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_110450_140838 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_51392_51662) (v_1@@20 T@FrameType) (q@@16 T@Field_110499_110500) (w@@20 T@FrameType) (r@@16 T@Field_110499_110500) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_110450_110450 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_104420_110450 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_110450_110450 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_51392_51662) (v_1@@21 T@FrameType) (q@@17 T@Field_110499_110500) (w@@21 T@FrameType) (r@@17 T@Field_51392_51662) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_110450_104420 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_104420_104420 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_110450_104420 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_51392_51662) (v_1@@22 T@FrameType) (q@@18 T@Field_110499_110500) (w@@22 T@FrameType) (r@@18 T@Field_112561_112562) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_110450_51661 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_104420_51661 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_110450_51661 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_51392_51662) (v_1@@23 T@FrameType) (q@@19 T@Field_51392_51662) (w@@23 T@FrameType) (r@@19 T@Field_140838_140839) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_104420_140838 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_104420_140838 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_104420_140838 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_51392_51662) (v_1@@24 T@FrameType) (q@@20 T@Field_51392_51662) (w@@24 T@FrameType) (r@@20 T@Field_110499_110500) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_104420_110450 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_104420_110450 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_104420_110450 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_51392_51662) (v_1@@25 T@FrameType) (q@@21 T@Field_51392_51662) (w@@25 T@FrameType) (r@@21 T@Field_51392_51662) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_104420_104420 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_104420_104420 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_104420_104420 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_51392_51662) (v_1@@26 T@FrameType) (q@@22 T@Field_51392_51662) (w@@26 T@FrameType) (r@@22 T@Field_112561_112562) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_104420_51661 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_104420_51661 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_104420_51661 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_51392_51662) (v_1@@27 T@FrameType) (q@@23 T@Field_140838_140839) (w@@27 T@FrameType) (r@@23 T@Field_140838_140839) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_51712_140838 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_104420_140838 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_51712_140838 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_51392_51662) (v_1@@28 T@FrameType) (q@@24 T@Field_140838_140839) (w@@28 T@FrameType) (r@@24 T@Field_110499_110500) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_51712_110450 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_104420_110450 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_51712_110450 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_51392_51662) (v_1@@29 T@FrameType) (q@@25 T@Field_140838_140839) (w@@29 T@FrameType) (r@@25 T@Field_51392_51662) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_51712_104420 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_104420_104420 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_51712_104420 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_51392_51662) (v_1@@30 T@FrameType) (q@@26 T@Field_140838_140839) (w@@30 T@FrameType) (r@@26 T@Field_112561_112562) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_51712_51661 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_104420_51661 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_51712_51661 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_51392_51662) (v_1@@31 T@FrameType) (q@@27 T@Field_112561_112562) (w@@31 T@FrameType) (r@@27 T@Field_140838_140839) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_51661_140838 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_104420_140838 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_51661_140838 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_51392_51662) (v_1@@32 T@FrameType) (q@@28 T@Field_112561_112562) (w@@32 T@FrameType) (r@@28 T@Field_110499_110500) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_51661_110450 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_104420_110450 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_51661_110450 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_51392_51662) (v_1@@33 T@FrameType) (q@@29 T@Field_112561_112562) (w@@33 T@FrameType) (r@@29 T@Field_51392_51662) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_51661_104420 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_104420_104420 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_51661_104420 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_51392_51662) (v_1@@34 T@FrameType) (q@@30 T@Field_112561_112562) (w@@34 T@FrameType) (r@@30 T@Field_112561_112562) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_51661_51661 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_104420_51661 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_51661_51661 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_140838_140839) (v_1@@35 T@FrameType) (q@@31 T@Field_110499_110500) (w@@35 T@FrameType) (r@@31 T@Field_140838_140839) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_110450_140838 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_51712_140838 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_110450_140838 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_140838_140839) (v_1@@36 T@FrameType) (q@@32 T@Field_110499_110500) (w@@36 T@FrameType) (r@@32 T@Field_110499_110500) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_110450_110450 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_51712_110450 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_110450_110450 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_140838_140839) (v_1@@37 T@FrameType) (q@@33 T@Field_110499_110500) (w@@37 T@FrameType) (r@@33 T@Field_51392_51662) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_110450_104420 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_51712_104420 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_110450_104420 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_140838_140839) (v_1@@38 T@FrameType) (q@@34 T@Field_110499_110500) (w@@38 T@FrameType) (r@@34 T@Field_112561_112562) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_110450_51661 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_51712_51661 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_110450_51661 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_140838_140839) (v_1@@39 T@FrameType) (q@@35 T@Field_51392_51662) (w@@39 T@FrameType) (r@@35 T@Field_140838_140839) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_104420_140838 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_51712_140838 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_104420_140838 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_140838_140839) (v_1@@40 T@FrameType) (q@@36 T@Field_51392_51662) (w@@40 T@FrameType) (r@@36 T@Field_110499_110500) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_104420_110450 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_51712_110450 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_104420_110450 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_140838_140839) (v_1@@41 T@FrameType) (q@@37 T@Field_51392_51662) (w@@41 T@FrameType) (r@@37 T@Field_51392_51662) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_104420_104420 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_51712_104420 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_104420_104420 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_140838_140839) (v_1@@42 T@FrameType) (q@@38 T@Field_51392_51662) (w@@42 T@FrameType) (r@@38 T@Field_112561_112562) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_104420_51661 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_51712_51661 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_104420_51661 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_140838_140839) (v_1@@43 T@FrameType) (q@@39 T@Field_140838_140839) (w@@43 T@FrameType) (r@@39 T@Field_140838_140839) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_51712_140838 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_51712_140838 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_51712_140838 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_140838_140839) (v_1@@44 T@FrameType) (q@@40 T@Field_140838_140839) (w@@44 T@FrameType) (r@@40 T@Field_110499_110500) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_51712_110450 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_51712_110450 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_51712_110450 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_140838_140839) (v_1@@45 T@FrameType) (q@@41 T@Field_140838_140839) (w@@45 T@FrameType) (r@@41 T@Field_51392_51662) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_51712_104420 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_51712_104420 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_51712_104420 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_140838_140839) (v_1@@46 T@FrameType) (q@@42 T@Field_140838_140839) (w@@46 T@FrameType) (r@@42 T@Field_112561_112562) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_51712_51661 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_51712_51661 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_51712_51661 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_140838_140839) (v_1@@47 T@FrameType) (q@@43 T@Field_112561_112562) (w@@47 T@FrameType) (r@@43 T@Field_140838_140839) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_51661_140838 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_51712_140838 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_51661_140838 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_140838_140839) (v_1@@48 T@FrameType) (q@@44 T@Field_112561_112562) (w@@48 T@FrameType) (r@@44 T@Field_110499_110500) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_51661_110450 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_51712_110450 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_51661_110450 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_140838_140839) (v_1@@49 T@FrameType) (q@@45 T@Field_112561_112562) (w@@49 T@FrameType) (r@@45 T@Field_51392_51662) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_51661_104420 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_51712_104420 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_51661_104420 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_140838_140839) (v_1@@50 T@FrameType) (q@@46 T@Field_112561_112562) (w@@50 T@FrameType) (r@@46 T@Field_112561_112562) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_51661_51661 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_51712_51661 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_51661_51661 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_112561_112562) (v_1@@51 T@FrameType) (q@@47 T@Field_110499_110500) (w@@51 T@FrameType) (r@@47 T@Field_140838_140839) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_110450_140838 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_51661_140838 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_110450_140838 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_112561_112562) (v_1@@52 T@FrameType) (q@@48 T@Field_110499_110500) (w@@52 T@FrameType) (r@@48 T@Field_110499_110500) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_110450_110450 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_51661_110450 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_110450_110450 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_112561_112562) (v_1@@53 T@FrameType) (q@@49 T@Field_110499_110500) (w@@53 T@FrameType) (r@@49 T@Field_51392_51662) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_110450_104420 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_51661_104420 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_110450_104420 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_112561_112562) (v_1@@54 T@FrameType) (q@@50 T@Field_110499_110500) (w@@54 T@FrameType) (r@@50 T@Field_112561_112562) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_110450_51661 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_51661_51661 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_110450_51661 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_112561_112562) (v_1@@55 T@FrameType) (q@@51 T@Field_51392_51662) (w@@55 T@FrameType) (r@@51 T@Field_140838_140839) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_104420_140838 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_51661_140838 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_104420_140838 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_112561_112562) (v_1@@56 T@FrameType) (q@@52 T@Field_51392_51662) (w@@56 T@FrameType) (r@@52 T@Field_110499_110500) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_104420_110450 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_51661_110450 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_104420_110450 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_112561_112562) (v_1@@57 T@FrameType) (q@@53 T@Field_51392_51662) (w@@57 T@FrameType) (r@@53 T@Field_51392_51662) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_104420_104420 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_51661_104420 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_104420_104420 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_112561_112562) (v_1@@58 T@FrameType) (q@@54 T@Field_51392_51662) (w@@58 T@FrameType) (r@@54 T@Field_112561_112562) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_104420_51661 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_51661_51661 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_104420_51661 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_112561_112562) (v_1@@59 T@FrameType) (q@@55 T@Field_140838_140839) (w@@59 T@FrameType) (r@@55 T@Field_140838_140839) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_51712_140838 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_51661_140838 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_51712_140838 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_112561_112562) (v_1@@60 T@FrameType) (q@@56 T@Field_140838_140839) (w@@60 T@FrameType) (r@@56 T@Field_110499_110500) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_51712_110450 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_51661_110450 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_51712_110450 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_112561_112562) (v_1@@61 T@FrameType) (q@@57 T@Field_140838_140839) (w@@61 T@FrameType) (r@@57 T@Field_51392_51662) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_51712_104420 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_51661_104420 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_51712_104420 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_112561_112562) (v_1@@62 T@FrameType) (q@@58 T@Field_140838_140839) (w@@62 T@FrameType) (r@@58 T@Field_112561_112562) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_51712_51661 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_51661_51661 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_51712_51661 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_112561_112562) (v_1@@63 T@FrameType) (q@@59 T@Field_112561_112562) (w@@63 T@FrameType) (r@@59 T@Field_140838_140839) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_51661_140838 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_51661_140838 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_51661_140838 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_112561_112562) (v_1@@64 T@FrameType) (q@@60 T@Field_112561_112562) (w@@64 T@FrameType) (r@@60 T@Field_110499_110500) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_51661_110450 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_51661_110450 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_51661_110450 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_112561_112562) (v_1@@65 T@FrameType) (q@@61 T@Field_112561_112562) (w@@65 T@FrameType) (r@@61 T@Field_51392_51662) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_51661_104420 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_51661_104420 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_51661_104420 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_112561_112562) (v_1@@66 T@FrameType) (q@@62 T@Field_112561_112562) (w@@66 T@FrameType) (r@@62 T@Field_112561_112562) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_51661_51661 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_51661_51661 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_51661_51661 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_104360) (Mask@@93 T@PolymorphicMapType_104381) (this@@36 T@Ref) (end@@16 T@Ref) ) (!  (=> (and (state Heap@@86 Mask@@93) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@86) null (lseg this@@36 end@@16)) this@@36 end@@16))) (=> (= this@@36 end@@16) (|Seq#Equal_3938| (|contentNodes'| Heap@@86 this@@36 end@@16) |Seq#Empty_4057|)))
 :qid |stdinbpl.634:15|
 :skolemid |69|
 :pattern ( (state Heap@@86 Mask@@93) (|contentNodes'| Heap@@86 this@@36 end@@16))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_4057|))
 :qid |stdinbpl.209:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_8705| s@@16 n@@12) |Seq#Empty_4057|))
 :qid |stdinbpl.385:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8705| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@87 T@PolymorphicMapType_104360) (Mask@@94 T@PolymorphicMapType_104381) (this@@37 T@Ref) ) (!  (=> (and (state Heap@@87 Mask@@94) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@87) null (List this@@37)) this@@37))) (= (|length'| Heap@@87 this@@37) (|Seq#Length_2867| (content Heap@@87 this@@37))))
 :qid |stdinbpl.1383:15|
 :skolemid |102|
 :pattern ( (state Heap@@87 Mask@@94) (|length'| Heap@@87 this@@37))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@88 () T@PolymorphicMapType_104360)
(declare-fun this@@38 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_104381)
(set-info :boogie-vc-id |List#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (and (state Heap@@88 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@88) this@@38 $allocated))) (and (and (not (= this@@38 null)) (= Mask@0 (PolymorphicMapType_104381 (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ZeroMask) (store (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ZeroMask) this@@38 head_2 (+ (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ZeroMask) this@@38 head_2) FullPerm)) (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ZeroMask) (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ZeroMask)))) (and (state Heap@@88 Mask@0) (= (ControlFlow 0 2) (- 0 1))))) (HasDirectPerm_51394_51395 Mask@0 this@@38 head_2))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-sort T@Field_104420_53 0)
(declare-sort T@Field_104433_104434 0)
(declare-sort T@Field_111885_3835 0)
(declare-sort T@Field_112561_112562 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_117635_117640 0)
(declare-sort T@Field_140838_140839 0)
(declare-sort T@Field_143227_143232 0)
(declare-sort T@Field_110473_110478 0)
(declare-sort T@Field_51392_51662 0)
(declare-sort T@Field_51392_110478 0)
(declare-sort T@Field_51661_3835 0)
(declare-sort T@Field_51661_51395 0)
(declare-sort T@Field_51661_3895 0)
(declare-sort T@Field_51712_3835 0)
(declare-sort T@Field_51712_51395 0)
(declare-sort T@Field_51712_3895 0)
(declare-sort T@Field_110450_3043 0)
(declare-sort T@Field_110450_51395 0)
(declare-sort T@Field_110499_110500 0)
(declare-sort T@Field_110450_3895 0)
(declare-datatypes ((T@PolymorphicMapType_104381 0)) (((PolymorphicMapType_104381 (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| (Array T@Ref T@Field_112561_112562 Real)) (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| (Array T@Ref T@Field_111885_3835 Real)) (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_104433_104434 Real)) (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| (Array T@Ref T@Field_140838_140839 Real)) (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_104420_53 Real)) (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| (Array T@Ref T@Field_110450_3043 Real)) (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| (Array T@Ref T@Field_51661_3835 Real)) (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_51661_51395 Real)) (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_51661_3895 Real)) (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| (Array T@Ref T@Field_117635_117640 Real)) (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| (Array T@Ref T@Field_51392_51662 Real)) (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| (Array T@Ref T@Field_51392_110478 Real)) (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| (Array T@Ref T@Field_51712_3835 Real)) (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_51712_51395 Real)) (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_51712_3895 Real)) (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| (Array T@Ref T@Field_143227_143232 Real)) (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| (Array T@Ref T@Field_110499_110500 Real)) (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| (Array T@Ref T@Field_110450_51395 Real)) (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| (Array T@Ref T@Field_110450_3895 Real)) (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| (Array T@Ref T@Field_110473_110478 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_104909 0)) (((PolymorphicMapType_104909 (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_111885_3835 Bool)) (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_104433_104434 Bool)) (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (Array T@Ref T@Field_104420_53 Bool)) (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (Array T@Ref T@Field_51392_110478 Bool)) (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_51392_51662 Bool)) (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_110450_3043 Bool)) (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_110450_51395 Bool)) (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (Array T@Ref T@Field_110450_3895 Bool)) (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (Array T@Ref T@Field_110473_110478 Bool)) (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_110499_110500 Bool)) (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_51661_3835 Bool)) (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_51661_51395 Bool)) (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (Array T@Ref T@Field_51661_3895 Bool)) (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (Array T@Ref T@Field_117635_117640 Bool)) (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_112561_112562 Bool)) (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (Array T@Ref T@Field_51712_3835 Bool)) (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (Array T@Ref T@Field_51712_51395 Bool)) (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (Array T@Ref T@Field_51712_3895 Bool)) (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (Array T@Ref T@Field_143227_143232 Bool)) (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (Array T@Ref T@Field_140838_140839 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_104360 0)) (((PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| (Array T@Ref T@Field_104420_53 Bool)) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| (Array T@Ref T@Field_104433_104434 T@Ref)) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_111885_3835 Int)) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| (Array T@Ref T@Field_112561_112562 T@FrameType)) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| (Array T@Ref T@Field_117635_117640 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| (Array T@Ref T@Field_140838_140839 T@FrameType)) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| (Array T@Ref T@Field_143227_143232 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| (Array T@Ref T@Field_110473_110478 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| (Array T@Ref T@Field_51392_51662 T@FrameType)) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| (Array T@Ref T@Field_51392_110478 T@PolymorphicMapType_104909)) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_51661_3835 Int)) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| (Array T@Ref T@Field_51661_51395 T@Ref)) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| (Array T@Ref T@Field_51661_3895 Bool)) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_51712_3835 Int)) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| (Array T@Ref T@Field_51712_51395 T@Ref)) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| (Array T@Ref T@Field_51712_3895 Bool)) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| (Array T@Ref T@Field_110450_3043 Int)) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| (Array T@Ref T@Field_110450_51395 T@Ref)) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| (Array T@Ref T@Field_110499_110500 T@FrameType)) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| (Array T@Ref T@Field_110450_3895 Bool)) ) ) ))
(declare-fun $allocated () T@Field_104420_53)
(declare-fun data () T@Field_111885_3835)
(declare-fun next () T@Field_104433_104434)
(declare-fun head_2 () T@Field_104433_104434)
(declare-fun held () T@Field_111885_3835)
(declare-fun changed () T@Field_104420_53)
(declare-fun state (T@PolymorphicMapType_104360 T@PolymorphicMapType_104381) Bool)
(declare-fun lengthNodes (T@PolymorphicMapType_104360 T@Ref T@Ref) Int)
(declare-fun |lengthNodes#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |lseg#trigger_51661| (T@PolymorphicMapType_104360 T@Field_112561_112562) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_112561_112562)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |lengthNodes'| (T@PolymorphicMapType_104360 T@Ref T@Ref) Int)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_8705| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_104360 T@PolymorphicMapType_104360) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_104360 T@PolymorphicMapType_104360) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_104381) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_104909)
(declare-fun |contentNodes'| (T@PolymorphicMapType_104360 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#triggerStateless| (T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#frame| (T@FrameType T@Ref T@Ref) T@Seq_2867)
(declare-fun null () T@Ref)
(declare-fun |lengthNodes#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_51661_51662 (T@Field_112561_112562) Bool)
(declare-fun dummyFunction_112185 (T@Seq_2867) Bool)
(declare-fun dummyFunction_7424 (Int) Bool)
(declare-fun |lseg#everUsed_51661| (T@Field_112561_112562) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_4057| () T@Seq_2867)
(declare-fun List (T@Ref) T@Field_140838_140839)
(declare-fun IsPredicateField_51712_51713 (T@Field_140838_140839) Bool)
(declare-fun |content'| (T@PolymorphicMapType_104360 T@Ref) T@Seq_2867)
(declare-fun |content#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |length'| (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |peek'| (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun |peek#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_51712| (T@PolymorphicMapType_104360 T@Field_140838_140839) Bool)
(declare-fun |List#everUsed_51712| (T@Field_140838_140839) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_8705| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |peek#trigger| (T@FrameType T@Ref) Bool)
(declare-fun length (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun content (T@PolymorphicMapType_104360 T@Ref) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun peek (T@PolymorphicMapType_104360 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_104360 T@PolymorphicMapType_104360 T@PolymorphicMapType_104381) Bool)
(declare-fun IsPredicateField_51301_51302 (T@Field_110499_110500) Bool)
(declare-fun PredicateMaskField_110450 (T@Field_110499_110500) T@Field_110473_110478)
(declare-fun HasDirectPerm_110450_51662 (T@PolymorphicMapType_104381 T@Ref T@Field_110499_110500) Bool)
(declare-fun PredicateMaskField_51712 (T@Field_140838_140839) T@Field_143227_143232)
(declare-fun HasDirectPerm_51712_51713 (T@PolymorphicMapType_104381 T@Ref T@Field_140838_140839) Bool)
(declare-fun PredicateMaskField_51661 (T@Field_112561_112562) T@Field_117635_117640)
(declare-fun HasDirectPerm_51661_51662 (T@PolymorphicMapType_104381 T@Ref T@Field_112561_112562) Bool)
(declare-fun IsPredicateField_51392_421068 (T@Field_51392_51662) Bool)
(declare-fun PredicateMaskField_51392 (T@Field_51392_51662) T@Field_51392_110478)
(declare-fun HasDirectPerm_51392_51662 (T@PolymorphicMapType_104381 T@Ref T@Field_51392_51662) Bool)
(declare-fun IsWandField_51301_51302 (T@Field_110499_110500) Bool)
(declare-fun WandMaskField_51301 (T@Field_110499_110500) T@Field_110473_110478)
(declare-fun IsWandField_51712_428428 (T@Field_140838_140839) Bool)
(declare-fun WandMaskField_51712 (T@Field_140838_140839) T@Field_143227_143232)
(declare-fun IsWandField_51661_428071 (T@Field_112561_112562) Bool)
(declare-fun WandMaskField_51661 (T@Field_112561_112562) T@Field_117635_117640)
(declare-fun IsWandField_51392_427714 (T@Field_51392_51662) Bool)
(declare-fun WandMaskField_51392 (T@Field_51392_51662) T@Field_51392_110478)
(declare-fun |Seq#Singleton_3835| (Int) T@Seq_2867)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_117635_117640)
(declare-fun |List#sm| (T@Ref) T@Field_143227_143232)
(declare-fun |Seq#Append_3835| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |lengthNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun contentNodes (T@PolymorphicMapType_104360 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_104360)
(declare-fun ZeroMask () T@PolymorphicMapType_104381)
(declare-fun InsidePredicate_110450_110450 (T@Field_110499_110500 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_104420 (T@Field_51392_51662 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_140838 (T@Field_140838_140839 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_51661 (T@Field_112561_112562 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun IsPredicateField_51392_3835 (T@Field_111885_3835) Bool)
(declare-fun IsWandField_51392_3835 (T@Field_111885_3835) Bool)
(declare-fun IsPredicateField_51394_51395 (T@Field_104433_104434) Bool)
(declare-fun IsWandField_51394_51395 (T@Field_104433_104434) Bool)
(declare-fun IsPredicateField_51402_3895 (T@Field_104420_53) Bool)
(declare-fun IsWandField_51402_3895 (T@Field_104420_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_51274_442391 (T@Field_110473_110478) Bool)
(declare-fun IsWandField_51274_442407 (T@Field_110473_110478) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_51274_3895 (T@Field_110450_3895) Bool)
(declare-fun IsWandField_51274_3895 (T@Field_110450_3895) Bool)
(declare-fun IsPredicateField_51274_51395 (T@Field_110450_51395) Bool)
(declare-fun IsWandField_51274_51395 (T@Field_110450_51395) Bool)
(declare-fun IsPredicateField_51274_3043 (T@Field_110450_3043) Bool)
(declare-fun IsWandField_51274_3043 (T@Field_110450_3043) Bool)
(declare-fun IsPredicateField_51712_441574 (T@Field_143227_143232) Bool)
(declare-fun IsWandField_51712_441590 (T@Field_143227_143232) Bool)
(declare-fun IsPredicateField_51712_3895 (T@Field_51712_3895) Bool)
(declare-fun IsWandField_51712_3895 (T@Field_51712_3895) Bool)
(declare-fun IsPredicateField_51712_51395 (T@Field_51712_51395) Bool)
(declare-fun IsWandField_51712_51395 (T@Field_51712_51395) Bool)
(declare-fun IsPredicateField_51712_3835 (T@Field_51712_3835) Bool)
(declare-fun IsWandField_51712_3835 (T@Field_51712_3835) Bool)
(declare-fun IsPredicateField_51392_440743 (T@Field_51392_110478) Bool)
(declare-fun IsWandField_51392_440759 (T@Field_51392_110478) Bool)
(declare-fun IsPredicateField_51661_439954 (T@Field_117635_117640) Bool)
(declare-fun IsWandField_51661_439970 (T@Field_117635_117640) Bool)
(declare-fun IsPredicateField_51661_3895 (T@Field_51661_3895) Bool)
(declare-fun IsWandField_51661_3895 (T@Field_51661_3895) Bool)
(declare-fun IsPredicateField_51661_51395 (T@Field_51661_51395) Bool)
(declare-fun IsWandField_51661_51395 (T@Field_51661_51395) Bool)
(declare-fun IsPredicateField_51661_3835 (T@Field_51661_3835) Bool)
(declare-fun IsWandField_51661_3835 (T@Field_51661_3835) Bool)
(declare-fun HasDirectPerm_110450_420823 (T@PolymorphicMapType_104381 T@Ref T@Field_110473_110478) Bool)
(declare-fun HasDirectPerm_110450_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_110450_3895) Bool)
(declare-fun HasDirectPerm_110450_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_110450_51395) Bool)
(declare-fun HasDirectPerm_110450_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_110450_3043) Bool)
(declare-fun HasDirectPerm_51712_419689 (T@PolymorphicMapType_104381 T@Ref T@Field_143227_143232) Bool)
(declare-fun HasDirectPerm_51712_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_51712_3895) Bool)
(declare-fun HasDirectPerm_51712_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_51712_51395) Bool)
(declare-fun HasDirectPerm_51712_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_51712_3835) Bool)
(declare-fun HasDirectPerm_51661_418591 (T@PolymorphicMapType_104381 T@Ref T@Field_117635_117640) Bool)
(declare-fun HasDirectPerm_51661_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_51661_3895) Bool)
(declare-fun HasDirectPerm_51661_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_51661_51395) Bool)
(declare-fun HasDirectPerm_51661_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_51661_3835) Bool)
(declare-fun HasDirectPerm_51392_417450 (T@PolymorphicMapType_104381 T@Ref T@Field_51392_110478) Bool)
(declare-fun HasDirectPerm_51402_3895 (T@PolymorphicMapType_104381 T@Ref T@Field_104420_53) Bool)
(declare-fun HasDirectPerm_51394_51395 (T@PolymorphicMapType_104381 T@Ref T@Field_104433_104434) Bool)
(declare-fun HasDirectPerm_51392_3835 (T@PolymorphicMapType_104381 T@Ref T@Field_111885_3835) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_104381 T@PolymorphicMapType_104381 T@PolymorphicMapType_104381) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref T@Ref T@Ref Int Int T@Ref T@Ref T@Ref T@Ref T@Seq_2867 T@Ref T@Ref) T@Field_110499_110500)
(declare-fun |wand#sm| (T@Ref T@Ref T@Ref T@Ref Int Int T@Ref T@Ref T@Ref T@Ref T@Seq_2867 T@Ref T@Ref) T@Field_110473_110478)
(declare-fun |content#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Seq#Equal_3938| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_51661_51662 (T@Field_112561_112562) Int)
(declare-fun wand (T@Ref T@Ref T@Ref T@Ref Int Int T@Ref T@Ref T@Ref T@Ref T@Seq_2867 T@Ref T@Ref) T@Field_110450_3043)
(declare-fun |content#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |peek#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_51712_51713 (T@Field_140838_140839) Int)
(declare-fun getPredWandId_51274_3043 (T@Field_110450_3043) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_110450_140838 (T@Field_110499_110500 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_110450_104420 (T@Field_110499_110500 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun InsidePredicate_110450_51661 (T@Field_110499_110500 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_140838 (T@Field_51392_51662 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_110450 (T@Field_51392_51662 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_104420_51661 (T@Field_51392_51662 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_110450 (T@Field_140838_140839 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_104420 (T@Field_140838_140839 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun InsidePredicate_51712_51661 (T@Field_140838_140839 T@FrameType T@Field_112561_112562 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_140838 (T@Field_112561_112562 T@FrameType T@Field_140838_140839 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_110450 (T@Field_112561_112562 T@FrameType T@Field_110499_110500 T@FrameType) Bool)
(declare-fun InsidePredicate_51661_104420 (T@Field_112561_112562 T@FrameType T@Field_51392_51662 T@FrameType) Bool)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(assert (and (distinct $allocated changed)(distinct data held)(distinct next head_2))
)
(assert (forall ((Heap T@PolymorphicMapType_104360) (Mask T@PolymorphicMapType_104381) (this T@Ref) (end T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 3)) (= (lengthNodes Heap this end) (ite (= this end) 0 (+ 1 (|lengthNodes'| Heap (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap) this next) end)))))
 :qid |stdinbpl.997:15|
 :skolemid |84|
 :pattern ( (state Heap Mask) (lengthNodes Heap this end))
 :pattern ( (state Heap Mask) (|lengthNodes#triggerStateless| this end) (|lseg#trigger_51661| Heap (lseg this end)))
)))
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_8705| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_8705| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_8705| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.280:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_8705| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_8705| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_104360) (Heap1 T@PolymorphicMapType_104360) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_104360) (Mask@@0 T@PolymorphicMapType_104381) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_104360) (Heap1@@0 T@PolymorphicMapType_104360) (Heap2 T@PolymorphicMapType_104360) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_140838_140839) ) (!  (not (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_143227_143232) ) (!  (not (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_51712_3895) ) (!  (not (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_51712_51395) ) (!  (not (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_51712_3835) ) (!  (not (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_112561_112562) ) (!  (not (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_117635_117640) ) (!  (not (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_51661_3895) ) (!  (not (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_51661_51395) ) (!  (not (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_51661_3835) ) (!  (not (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_110499_110500) ) (!  (not (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_110473_110478) ) (!  (not (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_110450_3895) ) (!  (not (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_110450_51395) ) (!  (not (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_110450_3043) ) (!  (not (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_51392_51662) ) (!  (not (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_51392_110478) ) (!  (not (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_104420_53) ) (!  (not (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_104433_104434) ) (!  (not (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_111885_3835) ) (!  (not (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_104360) (Mask@@1 T@PolymorphicMapType_104381) (this@@0 T@Ref) (end@@0 T@Ref) ) (!  (=> (state Heap@@1 Mask@@1) (= (|contentNodes'| Heap@@1 this@@0 end@@0) (|contentNodes#frame| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@1) null (lseg this@@0 end@@0)) this@@0 end@@0)))
 :qid |stdinbpl.628:15|
 :skolemid |68|
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes'| Heap@@1 this@@0 end@@0))
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes#triggerStateless| this@@0 end@@0) (|lseg#trigger_51661| Heap@@1 (lseg this@@0 end@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_104360) (Mask@@2 T@PolymorphicMapType_104381) (this@@1 T@Ref) (end@@1 T@Ref) ) (!  (=> (state Heap@@2 Mask@@2) (= (|lengthNodes'| Heap@@2 this@@1 end@@1) (|lengthNodes#frame| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@2) null (lseg this@@1 end@@1)) this@@1 end@@1)))
 :qid |stdinbpl.1004:15|
 :skolemid |85|
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes'| Heap@@2 this@@1 end@@1))
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes#triggerStateless| this@@1 end@@1) (|lseg#trigger_51661| Heap@@2 (lseg this@@1 end@@1)))
)))
(assert (forall ((this@@2 T@Ref) (end@@2 T@Ref) ) (! (IsPredicateField_51661_51662 (lseg this@@2 end@@2))
 :qid |stdinbpl.1771:15|
 :skolemid |115|
 :pattern ( (lseg this@@2 end@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_104360) (this@@3 T@Ref) (end@@3 T@Ref) ) (! (dummyFunction_112185 (|contentNodes#triggerStateless| this@@3 end@@3))
 :qid |stdinbpl.615:15|
 :skolemid |66|
 :pattern ( (|contentNodes'| Heap@@3 this@@3 end@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_104360) (this@@4 T@Ref) (end@@4 T@Ref) ) (! (dummyFunction_7424 (|lengthNodes#triggerStateless| this@@4 end@@4))
 :qid |stdinbpl.991:15|
 :skolemid |83|
 :pattern ( (|lengthNodes'| Heap@@4 this@@4 end@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_104360) (this@@5 T@Ref) (end@@5 T@Ref) ) (! (|lseg#everUsed_51661| (lseg this@@5 end@@5))
 :qid |stdinbpl.1790:15|
 :skolemid |119|
 :pattern ( (|lseg#trigger_51661| Heap@@5 (lseg this@@5 end@@5)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_8705| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.301:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_8705| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_4057|) 0))
(assert (forall ((this@@6 T@Ref) ) (! (IsPredicateField_51712_51713 (List this@@6))
 :qid |stdinbpl.2000:15|
 :skolemid |125|
 :pattern ( (List this@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_104360) (this@@7 T@Ref) ) (! (dummyFunction_112185 (|content#triggerStateless| this@@7))
 :qid |stdinbpl.1207:15|
 :skolemid |91|
 :pattern ( (|content'| Heap@@6 this@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_104360) (this@@8 T@Ref) ) (! (dummyFunction_7424 (|length#triggerStateless| this@@8))
 :qid |stdinbpl.1364:15|
 :skolemid |99|
 :pattern ( (|length'| Heap@@7 this@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_104360) (this@@9 T@Ref) ) (! (dummyFunction_7424 (|peek#triggerStateless| this@@9))
 :qid |stdinbpl.1508:15|
 :skolemid |105|
 :pattern ( (|peek'| Heap@@8 this@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_104360) (this@@10 T@Ref) ) (! (|List#everUsed_51712| (List this@@10))
 :qid |stdinbpl.2019:15|
 :skolemid |129|
 :pattern ( (|List#trigger_51712| Heap@@9 (List this@@10)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.256:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)) 0)))
 :qid |stdinbpl.267:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_8705| s@@2 n@@2)))
 :pattern ( (|Seq#Take_8705| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.541:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_104360) (Mask@@3 T@PolymorphicMapType_104381) (this@@11 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@3) (or (< AssumeFunctionsAbove 0) (|peek#trigger| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@10) null (List this@@11)) this@@11))) (=> (< 0 (length Heap@@10 this@@11)) (= (|peek'| Heap@@10 this@@11) (|Seq#Index_2867| (content Heap@@10 this@@11) 0))))
 :qid |stdinbpl.1527:15|
 :skolemid |108|
 :pattern ( (state Heap@@10 Mask@@3) (|peek'| Heap@@10 this@@11))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.399:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_104360) (this@@12 T@Ref) ) (!  (and (= (content Heap@@11 this@@12) (|content'| Heap@@11 this@@12)) (dummyFunction_112185 (|content#triggerStateless| this@@12)))
 :qid |stdinbpl.1203:15|
 :skolemid |90|
 :pattern ( (content Heap@@11 this@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_104360) (this@@13 T@Ref) ) (!  (and (= (length Heap@@12 this@@13) (|length'| Heap@@12 this@@13)) (dummyFunction_7424 (|length#triggerStateless| this@@13)))
 :qid |stdinbpl.1360:15|
 :skolemid |98|
 :pattern ( (length Heap@@12 this@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_104360) (this@@14 T@Ref) ) (!  (and (= (peek Heap@@13 this@@14) (|peek'| Heap@@13 this@@14)) (dummyFunction_7424 (|peek#triggerStateless| this@@14)))
 :qid |stdinbpl.1504:15|
 :skolemid |104|
 :pattern ( (peek Heap@@13 this@@14))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_8705| s@@4 n@@3) s@@4))
 :qid |stdinbpl.383:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8705| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.236:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_104360) (ExhaleHeap T@PolymorphicMapType_104360) (Mask@@4 T@PolymorphicMapType_104381) (pm_f_45 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_110450_51662 Mask@@4 null pm_f_45) (IsPredicateField_51301_51302 pm_f_45)) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@14) null (PredicateMaskField_110450 pm_f_45)) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap) null (PredicateMaskField_110450 pm_f_45)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (IsPredicateField_51301_51302 pm_f_45) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap) null (PredicateMaskField_110450 pm_f_45)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_104360) (ExhaleHeap@@0 T@PolymorphicMapType_104360) (Mask@@5 T@PolymorphicMapType_104381) (pm_f_45@@0 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_51712_51713 Mask@@5 null pm_f_45@@0) (IsPredicateField_51712_51713 pm_f_45@@0)) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@15) null (PredicateMaskField_51712 pm_f_45@@0)) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@0) null (PredicateMaskField_51712 pm_f_45@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (IsPredicateField_51712_51713 pm_f_45@@0) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@0) null (PredicateMaskField_51712 pm_f_45@@0)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_104360) (ExhaleHeap@@1 T@PolymorphicMapType_104360) (Mask@@6 T@PolymorphicMapType_104381) (pm_f_45@@1 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_51661_51662 Mask@@6 null pm_f_45@@1) (IsPredicateField_51661_51662 pm_f_45@@1)) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@16) null (PredicateMaskField_51661 pm_f_45@@1)) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@1) null (PredicateMaskField_51661 pm_f_45@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (IsPredicateField_51661_51662 pm_f_45@@1) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@1) null (PredicateMaskField_51661 pm_f_45@@1)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_104360) (ExhaleHeap@@2 T@PolymorphicMapType_104360) (Mask@@7 T@PolymorphicMapType_104381) (pm_f_45@@2 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_51392_51662 Mask@@7 null pm_f_45@@2) (IsPredicateField_51392_421068 pm_f_45@@2)) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@17) null (PredicateMaskField_51392 pm_f_45@@2)) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@2) null (PredicateMaskField_51392 pm_f_45@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (IsPredicateField_51392_421068 pm_f_45@@2) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@2) null (PredicateMaskField_51392 pm_f_45@@2)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_104360) (ExhaleHeap@@3 T@PolymorphicMapType_104360) (Mask@@8 T@PolymorphicMapType_104381) (pm_f_45@@3 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (=> (and (HasDirectPerm_110450_51662 Mask@@8 null pm_f_45@@3) (IsWandField_51301_51302 pm_f_45@@3)) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@18) null (WandMaskField_51301 pm_f_45@@3)) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@3) null (WandMaskField_51301 pm_f_45@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (IsWandField_51301_51302 pm_f_45@@3) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@3) null (WandMaskField_51301 pm_f_45@@3)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_104360) (ExhaleHeap@@4 T@PolymorphicMapType_104360) (Mask@@9 T@PolymorphicMapType_104381) (pm_f_45@@4 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (=> (and (HasDirectPerm_51712_51713 Mask@@9 null pm_f_45@@4) (IsWandField_51712_428428 pm_f_45@@4)) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@19) null (WandMaskField_51712 pm_f_45@@4)) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@4) null (WandMaskField_51712 pm_f_45@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (IsWandField_51712_428428 pm_f_45@@4) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@4) null (WandMaskField_51712 pm_f_45@@4)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_104360) (ExhaleHeap@@5 T@PolymorphicMapType_104360) (Mask@@10 T@PolymorphicMapType_104381) (pm_f_45@@5 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@10) (=> (and (HasDirectPerm_51661_51662 Mask@@10 null pm_f_45@@5) (IsWandField_51661_428071 pm_f_45@@5)) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@20) null (WandMaskField_51661 pm_f_45@@5)) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@5) null (WandMaskField_51661 pm_f_45@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@10) (IsWandField_51661_428071 pm_f_45@@5) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@5) null (WandMaskField_51661 pm_f_45@@5)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_104360) (ExhaleHeap@@6 T@PolymorphicMapType_104360) (Mask@@11 T@PolymorphicMapType_104381) (pm_f_45@@6 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@11) (=> (and (HasDirectPerm_51392_51662 Mask@@11 null pm_f_45@@6) (IsWandField_51392_427714 pm_f_45@@6)) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@21) null (WandMaskField_51392 pm_f_45@@6)) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@6) null (WandMaskField_51392 pm_f_45@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@11) (IsWandField_51392_427714 pm_f_45@@6) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@6) null (WandMaskField_51392 pm_f_45@@6)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3835| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.524:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3835| x@@0) y))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_104360) (Mask@@12 T@PolymorphicMapType_104381) (this@@15 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@12) (< AssumeFunctionsAbove 0)) (=> (< 0 (length Heap@@22 this@@15)) (= (peek Heap@@22 this@@15) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@22) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@22) this@@15 head_2) data))))
 :qid |stdinbpl.1514:15|
 :skolemid |106|
 :pattern ( (state Heap@@22 Mask@@12) (peek Heap@@22 this@@15))
 :pattern ( (state Heap@@22 Mask@@12) (|peek#triggerStateless| this@@15) (|List#trigger_51712| Heap@@22 (List this@@15)))
)))
(assert (forall ((this@@16 T@Ref) (end@@6 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg this@@16 end@@6) (lseg this2 end2)) (and (= this@@16 this2) (= end@@6 end2)))
 :qid |stdinbpl.1781:15|
 :skolemid |117|
 :pattern ( (lseg this@@16 end@@6) (lseg this2 end2))
)))
(assert (forall ((this@@17 T@Ref) (end@@7 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| this@@17 end@@7) (|lseg#sm| this2@@0 end2@@0)) (and (= this@@17 this2@@0) (= end@@7 end2@@0)))
 :qid |stdinbpl.1785:15|
 :skolemid |118|
 :pattern ( (|lseg#sm| this@@17 end@@7) (|lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_104360) (ExhaleHeap@@7 T@PolymorphicMapType_104360) (Mask@@13 T@PolymorphicMapType_104381) (pm_f_45@@7 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@13) (=> (and (HasDirectPerm_110450_51662 Mask@@13 null pm_f_45@@7) (IsPredicateField_51301_51302 pm_f_45@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45 T@Ref) (f_142 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45 f_142) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@23) o2_45 f_142) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45 f_142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45 f_142))
)) (forall ((o2_45@@0 T@Ref) (f_142@@0 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@0 f_142@@0) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@23) o2_45@@0 f_142@@0) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@0 f_142@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@0 f_142@@0))
))) (forall ((o2_45@@1 T@Ref) (f_142@@1 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@1 f_142@@1) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@23) o2_45@@1 f_142@@1) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@1 f_142@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@1 f_142@@1))
))) (forall ((o2_45@@2 T@Ref) (f_142@@2 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@2 f_142@@2) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@23) o2_45@@2 f_142@@2) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@2 f_142@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@2 f_142@@2))
))) (forall ((o2_45@@3 T@Ref) (f_142@@3 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@3 f_142@@3) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@23) o2_45@@3 f_142@@3) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@3 f_142@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@3 f_142@@3))
))) (forall ((o2_45@@4 T@Ref) (f_142@@4 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@4 f_142@@4) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@23) o2_45@@4 f_142@@4) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@4 f_142@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@4 f_142@@4))
))) (forall ((o2_45@@5 T@Ref) (f_142@@5 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@5 f_142@@5) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@23) o2_45@@5 f_142@@5) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@5 f_142@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@5 f_142@@5))
))) (forall ((o2_45@@6 T@Ref) (f_142@@6 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@6 f_142@@6) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@23) o2_45@@6 f_142@@6) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@6 f_142@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@6 f_142@@6))
))) (forall ((o2_45@@7 T@Ref) (f_142@@7 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@7 f_142@@7) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) o2_45@@7 f_142@@7) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@7 f_142@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@7 f_142@@7))
))) (forall ((o2_45@@8 T@Ref) (f_142@@8 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@8 f_142@@8) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@23) o2_45@@8 f_142@@8) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@8 f_142@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@8 f_142@@8))
))) (forall ((o2_45@@9 T@Ref) (f_142@@9 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@9 f_142@@9) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@23) o2_45@@9 f_142@@9) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@9 f_142@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@9 f_142@@9))
))) (forall ((o2_45@@10 T@Ref) (f_142@@10 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@10 f_142@@10) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@23) o2_45@@10 f_142@@10) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@10 f_142@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@10 f_142@@10))
))) (forall ((o2_45@@11 T@Ref) (f_142@@11 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@11 f_142@@11) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@23) o2_45@@11 f_142@@11) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@11 f_142@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@11 f_142@@11))
))) (forall ((o2_45@@12 T@Ref) (f_142@@12 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@12 f_142@@12) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@23) o2_45@@12 f_142@@12) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@12 f_142@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@12 f_142@@12))
))) (forall ((o2_45@@13 T@Ref) (f_142@@13 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@13 f_142@@13) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@23) o2_45@@13 f_142@@13) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@13 f_142@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@13 f_142@@13))
))) (forall ((o2_45@@14 T@Ref) (f_142@@14 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@14 f_142@@14) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@23) o2_45@@14 f_142@@14) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@14 f_142@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@14 f_142@@14))
))) (forall ((o2_45@@15 T@Ref) (f_142@@15 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@15 f_142@@15) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@23) o2_45@@15 f_142@@15) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@15 f_142@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@15 f_142@@15))
))) (forall ((o2_45@@16 T@Ref) (f_142@@16 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@16 f_142@@16) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@23) o2_45@@16 f_142@@16) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@16 f_142@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@16 f_142@@16))
))) (forall ((o2_45@@17 T@Ref) (f_142@@17 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@17 f_142@@17) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@23) o2_45@@17 f_142@@17) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@17 f_142@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@17 f_142@@17))
))) (forall ((o2_45@@18 T@Ref) (f_142@@18 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@23) null (PredicateMaskField_110450 pm_f_45@@7))) o2_45@@18 f_142@@18) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@23) o2_45@@18 f_142@@18) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@18 f_142@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@7) o2_45@@18 f_142@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@13) (IsPredicateField_51301_51302 pm_f_45@@7))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_104360) (ExhaleHeap@@8 T@PolymorphicMapType_104360) (Mask@@14 T@PolymorphicMapType_104381) (pm_f_45@@8 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@14) (=> (and (HasDirectPerm_51712_51713 Mask@@14 null pm_f_45@@8) (IsPredicateField_51712_51713 pm_f_45@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@19 T@Ref) (f_142@@19 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@19 f_142@@19) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@19 f_142@@19) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@19 f_142@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@19 f_142@@19))
)) (forall ((o2_45@@20 T@Ref) (f_142@@20 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@20 f_142@@20) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@24) o2_45@@20 f_142@@20) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@20 f_142@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@20 f_142@@20))
))) (forall ((o2_45@@21 T@Ref) (f_142@@21 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@21 f_142@@21) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@24) o2_45@@21 f_142@@21) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@21 f_142@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@21 f_142@@21))
))) (forall ((o2_45@@22 T@Ref) (f_142@@22 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@22 f_142@@22) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@24) o2_45@@22 f_142@@22) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@22 f_142@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@22 f_142@@22))
))) (forall ((o2_45@@23 T@Ref) (f_142@@23 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@23 f_142@@23) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@24) o2_45@@23 f_142@@23) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@23 f_142@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@23 f_142@@23))
))) (forall ((o2_45@@24 T@Ref) (f_142@@24 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@24 f_142@@24) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@24 f_142@@24) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@24 f_142@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@24 f_142@@24))
))) (forall ((o2_45@@25 T@Ref) (f_142@@25 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@25 f_142@@25) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@24) o2_45@@25 f_142@@25) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@25 f_142@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@25 f_142@@25))
))) (forall ((o2_45@@26 T@Ref) (f_142@@26 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@26 f_142@@26) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@24) o2_45@@26 f_142@@26) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@26 f_142@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@26 f_142@@26))
))) (forall ((o2_45@@27 T@Ref) (f_142@@27 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@27 f_142@@27) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@24) o2_45@@27 f_142@@27) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@27 f_142@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@27 f_142@@27))
))) (forall ((o2_45@@28 T@Ref) (f_142@@28 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@28 f_142@@28) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@24) o2_45@@28 f_142@@28) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@28 f_142@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@28 f_142@@28))
))) (forall ((o2_45@@29 T@Ref) (f_142@@29 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@29 f_142@@29) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@29 f_142@@29) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@29 f_142@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@29 f_142@@29))
))) (forall ((o2_45@@30 T@Ref) (f_142@@30 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@30 f_142@@30) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@24) o2_45@@30 f_142@@30) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@30 f_142@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@30 f_142@@30))
))) (forall ((o2_45@@31 T@Ref) (f_142@@31 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@31 f_142@@31) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@24) o2_45@@31 f_142@@31) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@31 f_142@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@31 f_142@@31))
))) (forall ((o2_45@@32 T@Ref) (f_142@@32 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@32 f_142@@32) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@24) o2_45@@32 f_142@@32) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@32 f_142@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@32 f_142@@32))
))) (forall ((o2_45@@33 T@Ref) (f_142@@33 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@33 f_142@@33) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@24) o2_45@@33 f_142@@33) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@33 f_142@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@33 f_142@@33))
))) (forall ((o2_45@@34 T@Ref) (f_142@@34 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@34 f_142@@34) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@24) o2_45@@34 f_142@@34) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@34 f_142@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@34 f_142@@34))
))) (forall ((o2_45@@35 T@Ref) (f_142@@35 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@35 f_142@@35) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@24) o2_45@@35 f_142@@35) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@35 f_142@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@35 f_142@@35))
))) (forall ((o2_45@@36 T@Ref) (f_142@@36 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@36 f_142@@36) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@24) o2_45@@36 f_142@@36) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@36 f_142@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@36 f_142@@36))
))) (forall ((o2_45@@37 T@Ref) (f_142@@37 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@37 f_142@@37) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) o2_45@@37 f_142@@37) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@37 f_142@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@37 f_142@@37))
))) (forall ((o2_45@@38 T@Ref) (f_142@@38 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@24) null (PredicateMaskField_51712 pm_f_45@@8))) o2_45@@38 f_142@@38) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@24) o2_45@@38 f_142@@38) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@38 f_142@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@8) o2_45@@38 f_142@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@14) (IsPredicateField_51712_51713 pm_f_45@@8))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_104360) (ExhaleHeap@@9 T@PolymorphicMapType_104360) (Mask@@15 T@PolymorphicMapType_104381) (pm_f_45@@9 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@15) (=> (and (HasDirectPerm_51661_51662 Mask@@15 null pm_f_45@@9) (IsPredicateField_51661_51662 pm_f_45@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@39 T@Ref) (f_142@@39 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@39 f_142@@39) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@39 f_142@@39) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@39 f_142@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@39 f_142@@39))
)) (forall ((o2_45@@40 T@Ref) (f_142@@40 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@40 f_142@@40) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@25) o2_45@@40 f_142@@40) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@40 f_142@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@40 f_142@@40))
))) (forall ((o2_45@@41 T@Ref) (f_142@@41 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@41 f_142@@41) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@25) o2_45@@41 f_142@@41) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@41 f_142@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@41 f_142@@41))
))) (forall ((o2_45@@42 T@Ref) (f_142@@42 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@42 f_142@@42) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@25) o2_45@@42 f_142@@42) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@42 f_142@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@42 f_142@@42))
))) (forall ((o2_45@@43 T@Ref) (f_142@@43 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@43 f_142@@43) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@25) o2_45@@43 f_142@@43) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@43 f_142@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@43 f_142@@43))
))) (forall ((o2_45@@44 T@Ref) (f_142@@44 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@44 f_142@@44) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@44 f_142@@44) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@44 f_142@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@44 f_142@@44))
))) (forall ((o2_45@@45 T@Ref) (f_142@@45 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@45 f_142@@45) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@25) o2_45@@45 f_142@@45) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@45 f_142@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@45 f_142@@45))
))) (forall ((o2_45@@46 T@Ref) (f_142@@46 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@46 f_142@@46) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@25) o2_45@@46 f_142@@46) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@46 f_142@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@46 f_142@@46))
))) (forall ((o2_45@@47 T@Ref) (f_142@@47 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@47 f_142@@47) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@25) o2_45@@47 f_142@@47) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@47 f_142@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@47 f_142@@47))
))) (forall ((o2_45@@48 T@Ref) (f_142@@48 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@48 f_142@@48) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@25) o2_45@@48 f_142@@48) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@48 f_142@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@48 f_142@@48))
))) (forall ((o2_45@@49 T@Ref) (f_142@@49 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@49 f_142@@49) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@49 f_142@@49) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@49 f_142@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@49 f_142@@49))
))) (forall ((o2_45@@50 T@Ref) (f_142@@50 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@50 f_142@@50) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@25) o2_45@@50 f_142@@50) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@50 f_142@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@50 f_142@@50))
))) (forall ((o2_45@@51 T@Ref) (f_142@@51 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@51 f_142@@51) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@25) o2_45@@51 f_142@@51) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@51 f_142@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@51 f_142@@51))
))) (forall ((o2_45@@52 T@Ref) (f_142@@52 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@52 f_142@@52) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) o2_45@@52 f_142@@52) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@52 f_142@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@52 f_142@@52))
))) (forall ((o2_45@@53 T@Ref) (f_142@@53 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@53 f_142@@53) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@25) o2_45@@53 f_142@@53) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@53 f_142@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@53 f_142@@53))
))) (forall ((o2_45@@54 T@Ref) (f_142@@54 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@54 f_142@@54) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@25) o2_45@@54 f_142@@54) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@54 f_142@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@54 f_142@@54))
))) (forall ((o2_45@@55 T@Ref) (f_142@@55 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@55 f_142@@55) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@25) o2_45@@55 f_142@@55) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@55 f_142@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@55 f_142@@55))
))) (forall ((o2_45@@56 T@Ref) (f_142@@56 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@56 f_142@@56) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@25) o2_45@@56 f_142@@56) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@56 f_142@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@56 f_142@@56))
))) (forall ((o2_45@@57 T@Ref) (f_142@@57 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@57 f_142@@57) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@25) o2_45@@57 f_142@@57) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@57 f_142@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@57 f_142@@57))
))) (forall ((o2_45@@58 T@Ref) (f_142@@58 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@25) null (PredicateMaskField_51661 pm_f_45@@9))) o2_45@@58 f_142@@58) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@25) o2_45@@58 f_142@@58) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@58 f_142@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@9) o2_45@@58 f_142@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@15) (IsPredicateField_51661_51662 pm_f_45@@9))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_104360) (ExhaleHeap@@10 T@PolymorphicMapType_104360) (Mask@@16 T@PolymorphicMapType_104381) (pm_f_45@@10 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@16) (=> (and (HasDirectPerm_51392_51662 Mask@@16 null pm_f_45@@10) (IsPredicateField_51392_421068 pm_f_45@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@59 T@Ref) (f_142@@59 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@59 f_142@@59) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@59 f_142@@59) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@59 f_142@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@59 f_142@@59))
)) (forall ((o2_45@@60 T@Ref) (f_142@@60 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@60 f_142@@60) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@26) o2_45@@60 f_142@@60) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@60 f_142@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@60 f_142@@60))
))) (forall ((o2_45@@61 T@Ref) (f_142@@61 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@61 f_142@@61) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@26) o2_45@@61 f_142@@61) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@61 f_142@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@61 f_142@@61))
))) (forall ((o2_45@@62 T@Ref) (f_142@@62 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@62 f_142@@62) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) o2_45@@62 f_142@@62) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@62 f_142@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@62 f_142@@62))
))) (forall ((o2_45@@63 T@Ref) (f_142@@63 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@63 f_142@@63) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@26) o2_45@@63 f_142@@63) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@63 f_142@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@63 f_142@@63))
))) (forall ((o2_45@@64 T@Ref) (f_142@@64 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@64 f_142@@64) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@64 f_142@@64) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@64 f_142@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@64 f_142@@64))
))) (forall ((o2_45@@65 T@Ref) (f_142@@65 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@65 f_142@@65) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@26) o2_45@@65 f_142@@65) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@65 f_142@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@65 f_142@@65))
))) (forall ((o2_45@@66 T@Ref) (f_142@@66 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@66 f_142@@66) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@26) o2_45@@66 f_142@@66) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@66 f_142@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@66 f_142@@66))
))) (forall ((o2_45@@67 T@Ref) (f_142@@67 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@67 f_142@@67) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@26) o2_45@@67 f_142@@67) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@67 f_142@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@67 f_142@@67))
))) (forall ((o2_45@@68 T@Ref) (f_142@@68 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@68 f_142@@68) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@26) o2_45@@68 f_142@@68) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@68 f_142@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@68 f_142@@68))
))) (forall ((o2_45@@69 T@Ref) (f_142@@69 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@69 f_142@@69) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@69 f_142@@69) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@69 f_142@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@69 f_142@@69))
))) (forall ((o2_45@@70 T@Ref) (f_142@@70 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@70 f_142@@70) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@26) o2_45@@70 f_142@@70) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@70 f_142@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@70 f_142@@70))
))) (forall ((o2_45@@71 T@Ref) (f_142@@71 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@71 f_142@@71) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@26) o2_45@@71 f_142@@71) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@71 f_142@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@71 f_142@@71))
))) (forall ((o2_45@@72 T@Ref) (f_142@@72 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@72 f_142@@72) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@26) o2_45@@72 f_142@@72) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@72 f_142@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@72 f_142@@72))
))) (forall ((o2_45@@73 T@Ref) (f_142@@73 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@73 f_142@@73) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@26) o2_45@@73 f_142@@73) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@73 f_142@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@73 f_142@@73))
))) (forall ((o2_45@@74 T@Ref) (f_142@@74 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@74 f_142@@74) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@26) o2_45@@74 f_142@@74) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@74 f_142@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@74 f_142@@74))
))) (forall ((o2_45@@75 T@Ref) (f_142@@75 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@75 f_142@@75) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@26) o2_45@@75 f_142@@75) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@75 f_142@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@75 f_142@@75))
))) (forall ((o2_45@@76 T@Ref) (f_142@@76 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@76 f_142@@76) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@26) o2_45@@76 f_142@@76) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@76 f_142@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@76 f_142@@76))
))) (forall ((o2_45@@77 T@Ref) (f_142@@77 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@77 f_142@@77) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@26) o2_45@@77 f_142@@77) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@77 f_142@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@77 f_142@@77))
))) (forall ((o2_45@@78 T@Ref) (f_142@@78 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@26) null (PredicateMaskField_51392 pm_f_45@@10))) o2_45@@78 f_142@@78) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@26) o2_45@@78 f_142@@78) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@78 f_142@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@10) o2_45@@78 f_142@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@10 Mask@@16) (IsPredicateField_51392_421068 pm_f_45@@10))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_104360) (ExhaleHeap@@11 T@PolymorphicMapType_104360) (Mask@@17 T@PolymorphicMapType_104381) (pm_f_45@@11 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@11 Mask@@17) (=> (and (HasDirectPerm_110450_51662 Mask@@17 null pm_f_45@@11) (IsWandField_51301_51302 pm_f_45@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@79 T@Ref) (f_142@@79 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@79 f_142@@79) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@79 f_142@@79) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@79 f_142@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@79 f_142@@79))
)) (forall ((o2_45@@80 T@Ref) (f_142@@80 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@80 f_142@@80) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@27) o2_45@@80 f_142@@80) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@80 f_142@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@80 f_142@@80))
))) (forall ((o2_45@@81 T@Ref) (f_142@@81 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@81 f_142@@81) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@27) o2_45@@81 f_142@@81) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@81 f_142@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@81 f_142@@81))
))) (forall ((o2_45@@82 T@Ref) (f_142@@82 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@82 f_142@@82) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@27) o2_45@@82 f_142@@82) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@82 f_142@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@82 f_142@@82))
))) (forall ((o2_45@@83 T@Ref) (f_142@@83 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@83 f_142@@83) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@27) o2_45@@83 f_142@@83) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@83 f_142@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@83 f_142@@83))
))) (forall ((o2_45@@84 T@Ref) (f_142@@84 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@84 f_142@@84) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@84 f_142@@84) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@84 f_142@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@84 f_142@@84))
))) (forall ((o2_45@@85 T@Ref) (f_142@@85 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@85 f_142@@85) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@27) o2_45@@85 f_142@@85) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@85 f_142@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@85 f_142@@85))
))) (forall ((o2_45@@86 T@Ref) (f_142@@86 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@86 f_142@@86) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@27) o2_45@@86 f_142@@86) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@86 f_142@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@86 f_142@@86))
))) (forall ((o2_45@@87 T@Ref) (f_142@@87 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@87 f_142@@87) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) o2_45@@87 f_142@@87) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@87 f_142@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@87 f_142@@87))
))) (forall ((o2_45@@88 T@Ref) (f_142@@88 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@88 f_142@@88) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@27) o2_45@@88 f_142@@88) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@88 f_142@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@88 f_142@@88))
))) (forall ((o2_45@@89 T@Ref) (f_142@@89 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@89 f_142@@89) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@89 f_142@@89) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@89 f_142@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@89 f_142@@89))
))) (forall ((o2_45@@90 T@Ref) (f_142@@90 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@90 f_142@@90) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@27) o2_45@@90 f_142@@90) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@90 f_142@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@90 f_142@@90))
))) (forall ((o2_45@@91 T@Ref) (f_142@@91 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@91 f_142@@91) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@27) o2_45@@91 f_142@@91) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@91 f_142@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@91 f_142@@91))
))) (forall ((o2_45@@92 T@Ref) (f_142@@92 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@92 f_142@@92) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@27) o2_45@@92 f_142@@92) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@92 f_142@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@92 f_142@@92))
))) (forall ((o2_45@@93 T@Ref) (f_142@@93 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@93 f_142@@93) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@27) o2_45@@93 f_142@@93) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@93 f_142@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@93 f_142@@93))
))) (forall ((o2_45@@94 T@Ref) (f_142@@94 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@94 f_142@@94) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@27) o2_45@@94 f_142@@94) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@94 f_142@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@94 f_142@@94))
))) (forall ((o2_45@@95 T@Ref) (f_142@@95 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@95 f_142@@95) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@27) o2_45@@95 f_142@@95) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@95 f_142@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@95 f_142@@95))
))) (forall ((o2_45@@96 T@Ref) (f_142@@96 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@96 f_142@@96) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@27) o2_45@@96 f_142@@96) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@96 f_142@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@96 f_142@@96))
))) (forall ((o2_45@@97 T@Ref) (f_142@@97 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@97 f_142@@97) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@27) o2_45@@97 f_142@@97) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@97 f_142@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@97 f_142@@97))
))) (forall ((o2_45@@98 T@Ref) (f_142@@98 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@27) null (WandMaskField_51301 pm_f_45@@11))) o2_45@@98 f_142@@98) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@27) o2_45@@98 f_142@@98) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@98 f_142@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@11) o2_45@@98 f_142@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@11 Mask@@17) (IsWandField_51301_51302 pm_f_45@@11))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_104360) (ExhaleHeap@@12 T@PolymorphicMapType_104360) (Mask@@18 T@PolymorphicMapType_104381) (pm_f_45@@12 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@12 Mask@@18) (=> (and (HasDirectPerm_51712_51713 Mask@@18 null pm_f_45@@12) (IsWandField_51712_428428 pm_f_45@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@99 T@Ref) (f_142@@99 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@99 f_142@@99) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@99 f_142@@99) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@99 f_142@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@99 f_142@@99))
)) (forall ((o2_45@@100 T@Ref) (f_142@@100 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@100 f_142@@100) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@28) o2_45@@100 f_142@@100) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@100 f_142@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@100 f_142@@100))
))) (forall ((o2_45@@101 T@Ref) (f_142@@101 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@101 f_142@@101) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@28) o2_45@@101 f_142@@101) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@101 f_142@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@101 f_142@@101))
))) (forall ((o2_45@@102 T@Ref) (f_142@@102 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@102 f_142@@102) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@28) o2_45@@102 f_142@@102) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@102 f_142@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@102 f_142@@102))
))) (forall ((o2_45@@103 T@Ref) (f_142@@103 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@103 f_142@@103) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@28) o2_45@@103 f_142@@103) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@103 f_142@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@103 f_142@@103))
))) (forall ((o2_45@@104 T@Ref) (f_142@@104 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@104 f_142@@104) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@104 f_142@@104) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@104 f_142@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@104 f_142@@104))
))) (forall ((o2_45@@105 T@Ref) (f_142@@105 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@105 f_142@@105) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@28) o2_45@@105 f_142@@105) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@105 f_142@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@105 f_142@@105))
))) (forall ((o2_45@@106 T@Ref) (f_142@@106 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@106 f_142@@106) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@28) o2_45@@106 f_142@@106) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@106 f_142@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@106 f_142@@106))
))) (forall ((o2_45@@107 T@Ref) (f_142@@107 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@107 f_142@@107) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@28) o2_45@@107 f_142@@107) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@107 f_142@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@107 f_142@@107))
))) (forall ((o2_45@@108 T@Ref) (f_142@@108 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@108 f_142@@108) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@28) o2_45@@108 f_142@@108) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@108 f_142@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@108 f_142@@108))
))) (forall ((o2_45@@109 T@Ref) (f_142@@109 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@109 f_142@@109) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@109 f_142@@109) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@109 f_142@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@109 f_142@@109))
))) (forall ((o2_45@@110 T@Ref) (f_142@@110 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@110 f_142@@110) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@28) o2_45@@110 f_142@@110) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@110 f_142@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@110 f_142@@110))
))) (forall ((o2_45@@111 T@Ref) (f_142@@111 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@111 f_142@@111) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@28) o2_45@@111 f_142@@111) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@111 f_142@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@111 f_142@@111))
))) (forall ((o2_45@@112 T@Ref) (f_142@@112 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@112 f_142@@112) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@28) o2_45@@112 f_142@@112) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@112 f_142@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@112 f_142@@112))
))) (forall ((o2_45@@113 T@Ref) (f_142@@113 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@113 f_142@@113) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@28) o2_45@@113 f_142@@113) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@113 f_142@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@113 f_142@@113))
))) (forall ((o2_45@@114 T@Ref) (f_142@@114 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@114 f_142@@114) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@28) o2_45@@114 f_142@@114) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@114 f_142@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@114 f_142@@114))
))) (forall ((o2_45@@115 T@Ref) (f_142@@115 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@115 f_142@@115) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@28) o2_45@@115 f_142@@115) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@115 f_142@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@115 f_142@@115))
))) (forall ((o2_45@@116 T@Ref) (f_142@@116 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@116 f_142@@116) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@28) o2_45@@116 f_142@@116) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@116 f_142@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@116 f_142@@116))
))) (forall ((o2_45@@117 T@Ref) (f_142@@117 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@117 f_142@@117) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) o2_45@@117 f_142@@117) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@117 f_142@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@117 f_142@@117))
))) (forall ((o2_45@@118 T@Ref) (f_142@@118 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@28) null (WandMaskField_51712 pm_f_45@@12))) o2_45@@118 f_142@@118) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@28) o2_45@@118 f_142@@118) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@118 f_142@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@12) o2_45@@118 f_142@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@12 Mask@@18) (IsWandField_51712_428428 pm_f_45@@12))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_104360) (ExhaleHeap@@13 T@PolymorphicMapType_104360) (Mask@@19 T@PolymorphicMapType_104381) (pm_f_45@@13 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@13 Mask@@19) (=> (and (HasDirectPerm_51661_51662 Mask@@19 null pm_f_45@@13) (IsWandField_51661_428071 pm_f_45@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@119 T@Ref) (f_142@@119 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@119 f_142@@119) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@119 f_142@@119) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@119 f_142@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@119 f_142@@119))
)) (forall ((o2_45@@120 T@Ref) (f_142@@120 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@120 f_142@@120) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@29) o2_45@@120 f_142@@120) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@120 f_142@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@120 f_142@@120))
))) (forall ((o2_45@@121 T@Ref) (f_142@@121 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@121 f_142@@121) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@29) o2_45@@121 f_142@@121) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@121 f_142@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@121 f_142@@121))
))) (forall ((o2_45@@122 T@Ref) (f_142@@122 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@122 f_142@@122) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@29) o2_45@@122 f_142@@122) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@122 f_142@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@122 f_142@@122))
))) (forall ((o2_45@@123 T@Ref) (f_142@@123 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@123 f_142@@123) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@29) o2_45@@123 f_142@@123) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@123 f_142@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@123 f_142@@123))
))) (forall ((o2_45@@124 T@Ref) (f_142@@124 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@124 f_142@@124) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@124 f_142@@124) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@124 f_142@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@124 f_142@@124))
))) (forall ((o2_45@@125 T@Ref) (f_142@@125 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@125 f_142@@125) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@29) o2_45@@125 f_142@@125) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@125 f_142@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@125 f_142@@125))
))) (forall ((o2_45@@126 T@Ref) (f_142@@126 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@126 f_142@@126) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@29) o2_45@@126 f_142@@126) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@126 f_142@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@126 f_142@@126))
))) (forall ((o2_45@@127 T@Ref) (f_142@@127 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@127 f_142@@127) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@29) o2_45@@127 f_142@@127) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@127 f_142@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@127 f_142@@127))
))) (forall ((o2_45@@128 T@Ref) (f_142@@128 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@128 f_142@@128) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@29) o2_45@@128 f_142@@128) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@128 f_142@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@128 f_142@@128))
))) (forall ((o2_45@@129 T@Ref) (f_142@@129 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@129 f_142@@129) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@129 f_142@@129) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@129 f_142@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@129 f_142@@129))
))) (forall ((o2_45@@130 T@Ref) (f_142@@130 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@130 f_142@@130) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@29) o2_45@@130 f_142@@130) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@130 f_142@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@130 f_142@@130))
))) (forall ((o2_45@@131 T@Ref) (f_142@@131 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@131 f_142@@131) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@29) o2_45@@131 f_142@@131) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@131 f_142@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@131 f_142@@131))
))) (forall ((o2_45@@132 T@Ref) (f_142@@132 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@132 f_142@@132) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) o2_45@@132 f_142@@132) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@132 f_142@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@132 f_142@@132))
))) (forall ((o2_45@@133 T@Ref) (f_142@@133 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@133 f_142@@133) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@29) o2_45@@133 f_142@@133) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@133 f_142@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@133 f_142@@133))
))) (forall ((o2_45@@134 T@Ref) (f_142@@134 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@134 f_142@@134) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@29) o2_45@@134 f_142@@134) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@134 f_142@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@134 f_142@@134))
))) (forall ((o2_45@@135 T@Ref) (f_142@@135 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@135 f_142@@135) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@29) o2_45@@135 f_142@@135) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@135 f_142@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@135 f_142@@135))
))) (forall ((o2_45@@136 T@Ref) (f_142@@136 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@136 f_142@@136) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@29) o2_45@@136 f_142@@136) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@136 f_142@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@136 f_142@@136))
))) (forall ((o2_45@@137 T@Ref) (f_142@@137 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@137 f_142@@137) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@29) o2_45@@137 f_142@@137) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@137 f_142@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@137 f_142@@137))
))) (forall ((o2_45@@138 T@Ref) (f_142@@138 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@29) null (WandMaskField_51661 pm_f_45@@13))) o2_45@@138 f_142@@138) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@29) o2_45@@138 f_142@@138) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@138 f_142@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@13) o2_45@@138 f_142@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@13 Mask@@19) (IsWandField_51661_428071 pm_f_45@@13))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_104360) (ExhaleHeap@@14 T@PolymorphicMapType_104360) (Mask@@20 T@PolymorphicMapType_104381) (pm_f_45@@14 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@14 Mask@@20) (=> (and (HasDirectPerm_51392_51662 Mask@@20 null pm_f_45@@14) (IsWandField_51392_427714 pm_f_45@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@139 T@Ref) (f_142@@139 T@Field_111885_3835) ) (!  (=> (select (|PolymorphicMapType_104909_51392_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@139 f_142@@139) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@139 f_142@@139) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@139 f_142@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@139 f_142@@139))
)) (forall ((o2_45@@140 T@Ref) (f_142@@140 T@Field_104433_104434) ) (!  (=> (select (|PolymorphicMapType_104909_51394_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@140 f_142@@140) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@30) o2_45@@140 f_142@@140) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@140 f_142@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@140 f_142@@140))
))) (forall ((o2_45@@141 T@Ref) (f_142@@141 T@Field_104420_53) ) (!  (=> (select (|PolymorphicMapType_104909_51392_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@141 f_142@@141) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@30) o2_45@@141 f_142@@141) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@141 f_142@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@141 f_142@@141))
))) (forall ((o2_45@@142 T@Ref) (f_142@@142 T@Field_51392_110478) ) (!  (=> (select (|PolymorphicMapType_104909_51392_422996#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@142 f_142@@142) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) o2_45@@142 f_142@@142) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@142 f_142@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@142 f_142@@142))
))) (forall ((o2_45@@143 T@Ref) (f_142@@143 T@Field_51392_51662) ) (!  (=> (select (|PolymorphicMapType_104909_51392_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@143 f_142@@143) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@30) o2_45@@143 f_142@@143) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@143 f_142@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@143 f_142@@143))
))) (forall ((o2_45@@144 T@Ref) (f_142@@144 T@Field_110450_3043) ) (!  (=> (select (|PolymorphicMapType_104909_110450_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@144 f_142@@144) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@144 f_142@@144) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@144 f_142@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@144 f_142@@144))
))) (forall ((o2_45@@145 T@Ref) (f_142@@145 T@Field_110450_51395) ) (!  (=> (select (|PolymorphicMapType_104909_110450_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@145 f_142@@145) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@30) o2_45@@145 f_142@@145) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@145 f_142@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@145 f_142@@145))
))) (forall ((o2_45@@146 T@Ref) (f_142@@146 T@Field_110450_3895) ) (!  (=> (select (|PolymorphicMapType_104909_110450_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@146 f_142@@146) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@30) o2_45@@146 f_142@@146) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@146 f_142@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@146 f_142@@146))
))) (forall ((o2_45@@147 T@Ref) (f_142@@147 T@Field_110473_110478) ) (!  (=> (select (|PolymorphicMapType_104909_110450_424044#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@147 f_142@@147) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@30) o2_45@@147 f_142@@147) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@147 f_142@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@147 f_142@@147))
))) (forall ((o2_45@@148 T@Ref) (f_142@@148 T@Field_110499_110500) ) (!  (=> (select (|PolymorphicMapType_104909_110450_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@148 f_142@@148) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@30) o2_45@@148 f_142@@148) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@148 f_142@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@148 f_142@@148))
))) (forall ((o2_45@@149 T@Ref) (f_142@@149 T@Field_51661_3835) ) (!  (=> (select (|PolymorphicMapType_104909_112561_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@149 f_142@@149) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@149 f_142@@149) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@149 f_142@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@149 f_142@@149))
))) (forall ((o2_45@@150 T@Ref) (f_142@@150 T@Field_51661_51395) ) (!  (=> (select (|PolymorphicMapType_104909_112561_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@150 f_142@@150) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@30) o2_45@@150 f_142@@150) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@150 f_142@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@150 f_142@@150))
))) (forall ((o2_45@@151 T@Ref) (f_142@@151 T@Field_51661_3895) ) (!  (=> (select (|PolymorphicMapType_104909_112561_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@151 f_142@@151) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@30) o2_45@@151 f_142@@151) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@151 f_142@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@151 f_142@@151))
))) (forall ((o2_45@@152 T@Ref) (f_142@@152 T@Field_117635_117640) ) (!  (=> (select (|PolymorphicMapType_104909_112561_425092#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@152 f_142@@152) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@30) o2_45@@152 f_142@@152) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@152 f_142@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@152 f_142@@152))
))) (forall ((o2_45@@153 T@Ref) (f_142@@153 T@Field_112561_112562) ) (!  (=> (select (|PolymorphicMapType_104909_112561_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@153 f_142@@153) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@30) o2_45@@153 f_142@@153) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@153 f_142@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@153 f_142@@153))
))) (forall ((o2_45@@154 T@Ref) (f_142@@154 T@Field_51712_3835) ) (!  (=> (select (|PolymorphicMapType_104909_140838_3835#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@154 f_142@@154) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@30) o2_45@@154 f_142@@154) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@154 f_142@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@154 f_142@@154))
))) (forall ((o2_45@@155 T@Ref) (f_142@@155 T@Field_51712_51395) ) (!  (=> (select (|PolymorphicMapType_104909_140838_51395#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@155 f_142@@155) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@30) o2_45@@155 f_142@@155) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@155 f_142@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@155 f_142@@155))
))) (forall ((o2_45@@156 T@Ref) (f_142@@156 T@Field_51712_3895) ) (!  (=> (select (|PolymorphicMapType_104909_140838_53#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@156 f_142@@156) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@30) o2_45@@156 f_142@@156) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@156 f_142@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@156 f_142@@156))
))) (forall ((o2_45@@157 T@Ref) (f_142@@157 T@Field_143227_143232) ) (!  (=> (select (|PolymorphicMapType_104909_140838_426140#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@157 f_142@@157) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@30) o2_45@@157 f_142@@157) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@157 f_142@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@157 f_142@@157))
))) (forall ((o2_45@@158 T@Ref) (f_142@@158 T@Field_140838_140839) ) (!  (=> (select (|PolymorphicMapType_104909_140838_110500#PolymorphicMapType_104909| (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@30) null (WandMaskField_51392 pm_f_45@@14))) o2_45@@158 f_142@@158) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@30) o2_45@@158 f_142@@158) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@158 f_142@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@14) o2_45@@158 f_142@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@14 Mask@@20) (IsWandField_51392_427714 pm_f_45@@14))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_8705| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_8705| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_8705| s@@5 n@@4))
)))
(assert (forall ((this@@18 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (List this@@18) (List this2@@1)) (= this@@18 this2@@1))
 :qid |stdinbpl.2010:15|
 :skolemid |127|
 :pattern ( (List this@@18) (List this2@@1))
)))
(assert (forall ((this@@19 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|List#sm| this@@19) (|List#sm| this2@@2)) (= this@@19 this2@@2))
 :qid |stdinbpl.2014:15|
 :skolemid |128|
 :pattern ( (|List#sm| this@@19) (|List#sm| this2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3835| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_8705| (|Seq#Append_3835| s@@6 t) n@@5) (|Seq#Append_3835| s@@6 (|Seq#Take_8705| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.360:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8705| (|Seq#Append_3835| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_104360) (Mask@@21 T@PolymorphicMapType_104381) (this@@20 T@Ref) (end@@8 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@21) (or (< AssumeFunctionsAbove 3) (|lengthNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@31) null (lseg this@@20 end@@8)) this@@20 end@@8))) (= (|lengthNodes'| Heap@@31 this@@20 end@@8) (|Seq#Length_2867| (contentNodes Heap@@31 this@@20 end@@8))))
 :qid |stdinbpl.1010:15|
 :skolemid |86|
 :pattern ( (state Heap@@31 Mask@@21) (|lengthNodes'| Heap@@31 this@@20 end@@8))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_104360) (Mask@@22 T@PolymorphicMapType_104381) (this@@21 T@Ref) (end@@9 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@22) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@32) null (lseg this@@21 end@@9)) this@@21 end@@9))) (forall ((i@@2 Int) (j_9 Int) ) (!  (=> (and (<= 0 i@@2) (and (< i@@2 j_9) (< j_9 (|Seq#Length_2867| (|contentNodes'| Heap@@32 this@@21 end@@9))))) (<= (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) j_9)))
 :qid |stdinbpl.644:127|
 :skolemid |71|
 :pattern ( (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@32 this@@21 end@@9) j_9))
)))
 :qid |stdinbpl.642:15|
 :skolemid |72|
 :pattern ( (state Heap@@32 Mask@@22) (|contentNodes'| Heap@@32 this@@21 end@@9))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@33 T@PolymorphicMapType_104360) (ExhaleHeap@@15 T@PolymorphicMapType_104360) (Mask@@23 T@PolymorphicMapType_104381) (o_192 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@23) (=> (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@33) o_192 $allocated) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@15) o_192 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@23) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@15) o_192 $allocated))
)))
(assert (forall ((p T@Field_110499_110500) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_110450_110450 p v_1 p w))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_110450_110450 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_51392_51662) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_104420_104420 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_104420_104420 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_140838_140839) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_51712_140838 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_51712_140838 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_112561_112562) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_51661_51661 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_51661_51661 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4057|)) (not (= s1 |Seq#Empty_4057|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3835| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3835| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.247:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3835| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_51392_3835 data)))
(assert  (not (IsWandField_51392_3835 data)))
(assert  (not (IsPredicateField_51394_51395 next)))
(assert  (not (IsWandField_51394_51395 next)))
(assert  (not (IsPredicateField_51394_51395 head_2)))
(assert  (not (IsWandField_51394_51395 head_2)))
(assert  (not (IsPredicateField_51392_3835 held)))
(assert  (not (IsWandField_51392_3835 held)))
(assert  (not (IsPredicateField_51402_3895 changed)))
(assert  (not (IsWandField_51402_3895 changed)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_104360) (ExhaleHeap@@16 T@PolymorphicMapType_104360) (Mask@@24 T@PolymorphicMapType_104381) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@24) (succHeap Heap@@34 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_104381) (o_2@@19 T@Ref) (f_4@@19 T@Field_110473_110478) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@25) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_51274_442391 f_4@@19))) (not (IsWandField_51274_442407 f_4@@19))) (<= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@25) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@25) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_104381) (o_2@@20 T@Ref) (f_4@@20 T@Field_110450_3895) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@26) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_51274_3895 f_4@@20))) (not (IsWandField_51274_3895 f_4@@20))) (<= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@26) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@26) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_104381) (o_2@@21 T@Ref) (f_4@@21 T@Field_110450_51395) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@27) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_51274_51395 f_4@@21))) (not (IsWandField_51274_51395 f_4@@21))) (<= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@27) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@27) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_104381) (o_2@@22 T@Ref) (f_4@@22 T@Field_110450_3043) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@28) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_51274_3043 f_4@@22))) (not (IsWandField_51274_3043 f_4@@22))) (<= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@28) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@28) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_104381) (o_2@@23 T@Ref) (f_4@@23 T@Field_110499_110500) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@29) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_51301_51302 f_4@@23))) (not (IsWandField_51301_51302 f_4@@23))) (<= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@29) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@29) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_104381) (o_2@@24 T@Ref) (f_4@@24 T@Field_143227_143232) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@30) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_51712_441574 f_4@@24))) (not (IsWandField_51712_441590 f_4@@24))) (<= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@30) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@30) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_104381) (o_2@@25 T@Ref) (f_4@@25 T@Field_51712_3895) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@31) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_51712_3895 f_4@@25))) (not (IsWandField_51712_3895 f_4@@25))) (<= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@31) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@31) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_104381) (o_2@@26 T@Ref) (f_4@@26 T@Field_51712_51395) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@32) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_51712_51395 f_4@@26))) (not (IsWandField_51712_51395 f_4@@26))) (<= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@32) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@32) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_104381) (o_2@@27 T@Ref) (f_4@@27 T@Field_51712_3835) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@33) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_51712_3835 f_4@@27))) (not (IsWandField_51712_3835 f_4@@27))) (<= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@33) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@33) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_104381) (o_2@@28 T@Ref) (f_4@@28 T@Field_140838_140839) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@34) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_51712_51713 f_4@@28))) (not (IsWandField_51712_428428 f_4@@28))) (<= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@34) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@34) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_104381) (o_2@@29 T@Ref) (f_4@@29 T@Field_51392_110478) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@35) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_51392_440743 f_4@@29))) (not (IsWandField_51392_440759 f_4@@29))) (<= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@35) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@35) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_104381) (o_2@@30 T@Ref) (f_4@@30 T@Field_104420_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@36) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_51402_3895 f_4@@30))) (not (IsWandField_51402_3895 f_4@@30))) (<= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@36) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@36) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_104381) (o_2@@31 T@Ref) (f_4@@31 T@Field_104433_104434) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@37) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_51394_51395 f_4@@31))) (not (IsWandField_51394_51395 f_4@@31))) (<= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@37) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@37) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_104381) (o_2@@32 T@Ref) (f_4@@32 T@Field_111885_3835) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@38) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_51392_3835 f_4@@32))) (not (IsWandField_51392_3835 f_4@@32))) (<= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@38) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@38) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_104381) (o_2@@33 T@Ref) (f_4@@33 T@Field_51392_51662) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@39) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_51392_421068 f_4@@33))) (not (IsWandField_51392_427714 f_4@@33))) (<= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@39) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@39) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_104381) (o_2@@34 T@Ref) (f_4@@34 T@Field_117635_117640) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@40) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_51661_439954 f_4@@34))) (not (IsWandField_51661_439970 f_4@@34))) (<= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@40) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@40) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_104381) (o_2@@35 T@Ref) (f_4@@35 T@Field_51661_3895) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@41) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_51661_3895 f_4@@35))) (not (IsWandField_51661_3895 f_4@@35))) (<= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@41) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@41) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_104381) (o_2@@36 T@Ref) (f_4@@36 T@Field_51661_51395) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@42) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_51661_51395 f_4@@36))) (not (IsWandField_51661_51395 f_4@@36))) (<= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@42) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@42) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_104381) (o_2@@37 T@Ref) (f_4@@37 T@Field_51661_3835) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@43) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_51661_3835 f_4@@37))) (not (IsWandField_51661_3835 f_4@@37))) (<= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@43) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@43) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_104381) (o_2@@38 T@Ref) (f_4@@38 T@Field_112561_112562) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@44) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_51661_51662 f_4@@38))) (not (IsWandField_51661_428071 f_4@@38))) (<= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@44) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@44) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_104381) (o_2@@39 T@Ref) (f_4@@39 T@Field_110473_110478) ) (! (= (HasDirectPerm_110450_420823 Mask@@45 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| Mask@@45) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_420823 Mask@@45 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_104381) (o_2@@40 T@Ref) (f_4@@40 T@Field_110450_3895) ) (! (= (HasDirectPerm_110450_3895 Mask@@46 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| Mask@@46) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_3895 Mask@@46 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_104381) (o_2@@41 T@Ref) (f_4@@41 T@Field_110499_110500) ) (! (= (HasDirectPerm_110450_51662 Mask@@47 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| Mask@@47) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_51662 Mask@@47 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_104381) (o_2@@42 T@Ref) (f_4@@42 T@Field_110450_51395) ) (! (= (HasDirectPerm_110450_51395 Mask@@48 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| Mask@@48) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_51395 Mask@@48 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_104381) (o_2@@43 T@Ref) (f_4@@43 T@Field_110450_3043) ) (! (= (HasDirectPerm_110450_3835 Mask@@49 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| Mask@@49) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_110450_3835 Mask@@49 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_104381) (o_2@@44 T@Ref) (f_4@@44 T@Field_143227_143232) ) (! (= (HasDirectPerm_51712_419689 Mask@@50 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| Mask@@50) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_419689 Mask@@50 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_104381) (o_2@@45 T@Ref) (f_4@@45 T@Field_51712_3895) ) (! (= (HasDirectPerm_51712_3895 Mask@@51 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| Mask@@51) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_3895 Mask@@51 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_104381) (o_2@@46 T@Ref) (f_4@@46 T@Field_140838_140839) ) (! (= (HasDirectPerm_51712_51713 Mask@@52 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| Mask@@52) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_51713 Mask@@52 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_104381) (o_2@@47 T@Ref) (f_4@@47 T@Field_51712_51395) ) (! (= (HasDirectPerm_51712_51395 Mask@@53 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| Mask@@53) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_51395 Mask@@53 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_104381) (o_2@@48 T@Ref) (f_4@@48 T@Field_51712_3835) ) (! (= (HasDirectPerm_51712_3835 Mask@@54 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| Mask@@54) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51712_3835 Mask@@54 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_104381) (o_2@@49 T@Ref) (f_4@@49 T@Field_117635_117640) ) (! (= (HasDirectPerm_51661_418591 Mask@@55 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| Mask@@55) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_418591 Mask@@55 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_104381) (o_2@@50 T@Ref) (f_4@@50 T@Field_51661_3895) ) (! (= (HasDirectPerm_51661_3895 Mask@@56 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| Mask@@56) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_3895 Mask@@56 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_104381) (o_2@@51 T@Ref) (f_4@@51 T@Field_112561_112562) ) (! (= (HasDirectPerm_51661_51662 Mask@@57 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| Mask@@57) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_51662 Mask@@57 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_104381) (o_2@@52 T@Ref) (f_4@@52 T@Field_51661_51395) ) (! (= (HasDirectPerm_51661_51395 Mask@@58 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| Mask@@58) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_51395 Mask@@58 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_104381) (o_2@@53 T@Ref) (f_4@@53 T@Field_51661_3835) ) (! (= (HasDirectPerm_51661_3835 Mask@@59 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| Mask@@59) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51661_3835 Mask@@59 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_104381) (o_2@@54 T@Ref) (f_4@@54 T@Field_51392_110478) ) (! (= (HasDirectPerm_51392_417450 Mask@@60 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| Mask@@60) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51392_417450 Mask@@60 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_104381) (o_2@@55 T@Ref) (f_4@@55 T@Field_104420_53) ) (! (= (HasDirectPerm_51402_3895 Mask@@61 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| Mask@@61) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51402_3895 Mask@@61 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_104381) (o_2@@56 T@Ref) (f_4@@56 T@Field_51392_51662) ) (! (= (HasDirectPerm_51392_51662 Mask@@62 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| Mask@@62) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51392_51662 Mask@@62 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_104381) (o_2@@57 T@Ref) (f_4@@57 T@Field_104433_104434) ) (! (= (HasDirectPerm_51394_51395 Mask@@63 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| Mask@@63) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51394_51395 Mask@@63 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_104381) (o_2@@58 T@Ref) (f_4@@58 T@Field_111885_3835) ) (! (= (HasDirectPerm_51392_3835 Mask@@64 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| Mask@@64) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_51392_3835 Mask@@64 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.166:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.539:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_104360) (ExhaleHeap@@17 T@PolymorphicMapType_104360) (Mask@@65 T@PolymorphicMapType_104381) (o_192@@0 T@Ref) (f_142@@159 T@Field_110473_110478) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@65) (=> (HasDirectPerm_110450_420823 Mask@@65 o_192@@0 f_142@@159) (= (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@35) o_192@@0 f_142@@159) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@17) o_192@@0 f_142@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@65) (select (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| ExhaleHeap@@17) o_192@@0 f_142@@159))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_104360) (ExhaleHeap@@18 T@PolymorphicMapType_104360) (Mask@@66 T@PolymorphicMapType_104381) (o_192@@1 T@Ref) (f_142@@160 T@Field_110450_3895) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@66) (=> (HasDirectPerm_110450_3895 Mask@@66 o_192@@1 f_142@@160) (= (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@36) o_192@@1 f_142@@160) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@18) o_192@@1 f_142@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@66) (select (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| ExhaleHeap@@18) o_192@@1 f_142@@160))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_104360) (ExhaleHeap@@19 T@PolymorphicMapType_104360) (Mask@@67 T@PolymorphicMapType_104381) (o_192@@2 T@Ref) (f_142@@161 T@Field_110499_110500) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@67) (=> (HasDirectPerm_110450_51662 Mask@@67 o_192@@2 f_142@@161) (= (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@37) o_192@@2 f_142@@161) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@19) o_192@@2 f_142@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@67) (select (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| ExhaleHeap@@19) o_192@@2 f_142@@161))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_104360) (ExhaleHeap@@20 T@PolymorphicMapType_104360) (Mask@@68 T@PolymorphicMapType_104381) (o_192@@3 T@Ref) (f_142@@162 T@Field_110450_51395) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@68) (=> (HasDirectPerm_110450_51395 Mask@@68 o_192@@3 f_142@@162) (= (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@38) o_192@@3 f_142@@162) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@20) o_192@@3 f_142@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@68) (select (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| ExhaleHeap@@20) o_192@@3 f_142@@162))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_104360) (ExhaleHeap@@21 T@PolymorphicMapType_104360) (Mask@@69 T@PolymorphicMapType_104381) (o_192@@4 T@Ref) (f_142@@163 T@Field_110450_3043) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@69) (=> (HasDirectPerm_110450_3835 Mask@@69 o_192@@4 f_142@@163) (= (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@39) o_192@@4 f_142@@163) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@21) o_192@@4 f_142@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@69) (select (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| ExhaleHeap@@21) o_192@@4 f_142@@163))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_104360) (ExhaleHeap@@22 T@PolymorphicMapType_104360) (Mask@@70 T@PolymorphicMapType_104381) (o_192@@5 T@Ref) (f_142@@164 T@Field_143227_143232) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@22 Mask@@70) (=> (HasDirectPerm_51712_419689 Mask@@70 o_192@@5 f_142@@164) (= (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@40) o_192@@5 f_142@@164) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@22) o_192@@5 f_142@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@22 Mask@@70) (select (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| ExhaleHeap@@22) o_192@@5 f_142@@164))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_104360) (ExhaleHeap@@23 T@PolymorphicMapType_104360) (Mask@@71 T@PolymorphicMapType_104381) (o_192@@6 T@Ref) (f_142@@165 T@Field_51712_3895) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@23 Mask@@71) (=> (HasDirectPerm_51712_3895 Mask@@71 o_192@@6 f_142@@165) (= (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@41) o_192@@6 f_142@@165) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@23) o_192@@6 f_142@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@23 Mask@@71) (select (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| ExhaleHeap@@23) o_192@@6 f_142@@165))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_104360) (ExhaleHeap@@24 T@PolymorphicMapType_104360) (Mask@@72 T@PolymorphicMapType_104381) (o_192@@7 T@Ref) (f_142@@166 T@Field_140838_140839) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@24 Mask@@72) (=> (HasDirectPerm_51712_51713 Mask@@72 o_192@@7 f_142@@166) (= (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@42) o_192@@7 f_142@@166) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@24) o_192@@7 f_142@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@24 Mask@@72) (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| ExhaleHeap@@24) o_192@@7 f_142@@166))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_104360) (ExhaleHeap@@25 T@PolymorphicMapType_104360) (Mask@@73 T@PolymorphicMapType_104381) (o_192@@8 T@Ref) (f_142@@167 T@Field_51712_51395) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@25 Mask@@73) (=> (HasDirectPerm_51712_51395 Mask@@73 o_192@@8 f_142@@167) (= (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@43) o_192@@8 f_142@@167) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@25) o_192@@8 f_142@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@25 Mask@@73) (select (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| ExhaleHeap@@25) o_192@@8 f_142@@167))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_104360) (ExhaleHeap@@26 T@PolymorphicMapType_104360) (Mask@@74 T@PolymorphicMapType_104381) (o_192@@9 T@Ref) (f_142@@168 T@Field_51712_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@26 Mask@@74) (=> (HasDirectPerm_51712_3835 Mask@@74 o_192@@9 f_142@@168) (= (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@44) o_192@@9 f_142@@168) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@26) o_192@@9 f_142@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@26 Mask@@74) (select (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| ExhaleHeap@@26) o_192@@9 f_142@@168))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_104360) (ExhaleHeap@@27 T@PolymorphicMapType_104360) (Mask@@75 T@PolymorphicMapType_104381) (o_192@@10 T@Ref) (f_142@@169 T@Field_117635_117640) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@27 Mask@@75) (=> (HasDirectPerm_51661_418591 Mask@@75 o_192@@10 f_142@@169) (= (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@45) o_192@@10 f_142@@169) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@27) o_192@@10 f_142@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@27 Mask@@75) (select (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| ExhaleHeap@@27) o_192@@10 f_142@@169))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_104360) (ExhaleHeap@@28 T@PolymorphicMapType_104360) (Mask@@76 T@PolymorphicMapType_104381) (o_192@@11 T@Ref) (f_142@@170 T@Field_51661_3895) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@28 Mask@@76) (=> (HasDirectPerm_51661_3895 Mask@@76 o_192@@11 f_142@@170) (= (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@46) o_192@@11 f_142@@170) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@28) o_192@@11 f_142@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@28 Mask@@76) (select (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| ExhaleHeap@@28) o_192@@11 f_142@@170))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_104360) (ExhaleHeap@@29 T@PolymorphicMapType_104360) (Mask@@77 T@PolymorphicMapType_104381) (o_192@@12 T@Ref) (f_142@@171 T@Field_112561_112562) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@29 Mask@@77) (=> (HasDirectPerm_51661_51662 Mask@@77 o_192@@12 f_142@@171) (= (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@47) o_192@@12 f_142@@171) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@29) o_192@@12 f_142@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@29 Mask@@77) (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| ExhaleHeap@@29) o_192@@12 f_142@@171))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_104360) (ExhaleHeap@@30 T@PolymorphicMapType_104360) (Mask@@78 T@PolymorphicMapType_104381) (o_192@@13 T@Ref) (f_142@@172 T@Field_51661_51395) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@30 Mask@@78) (=> (HasDirectPerm_51661_51395 Mask@@78 o_192@@13 f_142@@172) (= (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@48) o_192@@13 f_142@@172) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@30) o_192@@13 f_142@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@30 Mask@@78) (select (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| ExhaleHeap@@30) o_192@@13 f_142@@172))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_104360) (ExhaleHeap@@31 T@PolymorphicMapType_104360) (Mask@@79 T@PolymorphicMapType_104381) (o_192@@14 T@Ref) (f_142@@173 T@Field_51661_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@31 Mask@@79) (=> (HasDirectPerm_51661_3835 Mask@@79 o_192@@14 f_142@@173) (= (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@49) o_192@@14 f_142@@173) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@31) o_192@@14 f_142@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@31 Mask@@79) (select (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| ExhaleHeap@@31) o_192@@14 f_142@@173))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_104360) (ExhaleHeap@@32 T@PolymorphicMapType_104360) (Mask@@80 T@PolymorphicMapType_104381) (o_192@@15 T@Ref) (f_142@@174 T@Field_51392_110478) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@32 Mask@@80) (=> (HasDirectPerm_51392_417450 Mask@@80 o_192@@15 f_142@@174) (= (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@50) o_192@@15 f_142@@174) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@32) o_192@@15 f_142@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@32 Mask@@80) (select (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| ExhaleHeap@@32) o_192@@15 f_142@@174))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_104360) (ExhaleHeap@@33 T@PolymorphicMapType_104360) (Mask@@81 T@PolymorphicMapType_104381) (o_192@@16 T@Ref) (f_142@@175 T@Field_104420_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@33 Mask@@81) (=> (HasDirectPerm_51402_3895 Mask@@81 o_192@@16 f_142@@175) (= (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@51) o_192@@16 f_142@@175) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@33) o_192@@16 f_142@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@33 Mask@@81) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| ExhaleHeap@@33) o_192@@16 f_142@@175))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_104360) (ExhaleHeap@@34 T@PolymorphicMapType_104360) (Mask@@82 T@PolymorphicMapType_104381) (o_192@@17 T@Ref) (f_142@@176 T@Field_51392_51662) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@34 Mask@@82) (=> (HasDirectPerm_51392_51662 Mask@@82 o_192@@17 f_142@@176) (= (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@52) o_192@@17 f_142@@176) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@34) o_192@@17 f_142@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@34 Mask@@82) (select (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| ExhaleHeap@@34) o_192@@17 f_142@@176))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_104360) (ExhaleHeap@@35 T@PolymorphicMapType_104360) (Mask@@83 T@PolymorphicMapType_104381) (o_192@@18 T@Ref) (f_142@@177 T@Field_104433_104434) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@35 Mask@@83) (=> (HasDirectPerm_51394_51395 Mask@@83 o_192@@18 f_142@@177) (= (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@53) o_192@@18 f_142@@177) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@35) o_192@@18 f_142@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@35 Mask@@83) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| ExhaleHeap@@35) o_192@@18 f_142@@177))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_104360) (ExhaleHeap@@36 T@PolymorphicMapType_104360) (Mask@@84 T@PolymorphicMapType_104381) (o_192@@19 T@Ref) (f_142@@178 T@Field_111885_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@36 Mask@@84) (=> (HasDirectPerm_51392_3835 Mask@@84 o_192@@19 f_142@@178) (= (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@54) o_192@@19 f_142@@178) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@36) o_192@@19 f_142@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@36 Mask@@84) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| ExhaleHeap@@36) o_192@@19 f_142@@178))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_4057|)) (not (= s1@@0 |Seq#Empty_4057|))) (= (|Seq#Length_2867| (|Seq#Append_3835| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.216:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3835| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_110473_110478) ) (! (= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_110450_3895) ) (! (= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_110450_51395) ) (! (= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_110450_3043) ) (! (= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_110499_110500) ) (! (= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_143227_143232) ) (! (= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_51712_3895) ) (! (= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_51712_51395) ) (! (= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_51712_3835) ) (! (= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_140838_140839) ) (! (= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_51392_110478) ) (! (= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_104420_53) ) (! (= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_104433_104434) ) (! (= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_111885_3835) ) (! (= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_51392_51662) ) (! (= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_117635_117640) ) (! (= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_51661_3895) ) (! (= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_51661_51395) ) (! (= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_51661_3835) ) (! (= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_112561_112562) ) (! (= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_8705| (|Seq#Append_3835| s@@7 t@@0) n@@7) (|Seq#Drop_8705| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.373:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8705| (|Seq#Append_3835| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_104360) (this@@22 T@Ref) (end@@10 T@Ref) ) (!  (and (= (contentNodes Heap@@55 this@@22 end@@10) (|contentNodes'| Heap@@55 this@@22 end@@10)) (dummyFunction_112185 (|contentNodes#triggerStateless| this@@22 end@@10)))
 :qid |stdinbpl.611:15|
 :skolemid |65|
 :pattern ( (contentNodes Heap@@55 this@@22 end@@10))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_104360) (this@@23 T@Ref) (end@@11 T@Ref) ) (!  (and (= (lengthNodes Heap@@56 this@@23 end@@11) (|lengthNodes'| Heap@@56 this@@23 end@@11)) (dummyFunction_7424 (|lengthNodes#triggerStateless| this@@23 end@@11)))
 :qid |stdinbpl.987:15|
 :skolemid |82|
 :pattern ( (lengthNodes Heap@@56 this@@23 end@@11))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_104360) (Mask@@85 T@PolymorphicMapType_104381) (this@@24 T@Ref) (end@@12 T@Ref) ) (!  (=> (and (state Heap@@57 Mask@@85) (< AssumeFunctionsAbove 4)) (= (contentNodes Heap@@57 this@@24 end@@12) (ite (= this@@24 end@@12) |Seq#Empty_4057| (|Seq#Append_3835| (|Seq#Singleton_3835| (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@57) this@@24 data)) (|contentNodes'| Heap@@57 (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@57) this@@24 next) end@@12)))))
 :qid |stdinbpl.621:15|
 :skolemid |67|
 :pattern ( (state Heap@@57 Mask@@85) (contentNodes Heap@@57 this@@24 end@@12))
 :pattern ( (state Heap@@57 Mask@@85) (|contentNodes#triggerStateless| this@@24 end@@12) (|lseg#trigger_51661| Heap@@57 (lseg this@@24 end@@12)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_104381) (SummandMask1 T@PolymorphicMapType_104381) (SummandMask2 T@PolymorphicMapType_104381) (o_2@@79 T@Ref) (f_4@@79 T@Field_110473_110478) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_104381_51274_437815#PolymorphicMapType_104381| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_104381) (SummandMask1@@0 T@PolymorphicMapType_104381) (SummandMask2@@0 T@PolymorphicMapType_104381) (o_2@@80 T@Ref) (f_4@@80 T@Field_110450_3895) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_104381_51274_3895#PolymorphicMapType_104381| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_104381) (SummandMask1@@1 T@PolymorphicMapType_104381) (SummandMask2@@1 T@PolymorphicMapType_104381) (o_2@@81 T@Ref) (f_4@@81 T@Field_110450_51395) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_104381_51274_51395#PolymorphicMapType_104381| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_104381) (SummandMask1@@2 T@PolymorphicMapType_104381) (SummandMask2@@2 T@PolymorphicMapType_104381) (o_2@@82 T@Ref) (f_4@@82 T@Field_110450_3043) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_104381_51274_3043#PolymorphicMapType_104381| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_104381) (SummandMask1@@3 T@PolymorphicMapType_104381) (SummandMask2@@3 T@PolymorphicMapType_104381) (o_2@@83 T@Ref) (f_4@@83 T@Field_110499_110500) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_104381_51274_51662#PolymorphicMapType_104381| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_104381) (SummandMask1@@4 T@PolymorphicMapType_104381) (SummandMask2@@4 T@PolymorphicMapType_104381) (o_2@@84 T@Ref) (f_4@@84 T@Field_143227_143232) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_104381_51712_437401#PolymorphicMapType_104381| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_104381) (SummandMask1@@5 T@PolymorphicMapType_104381) (SummandMask2@@5 T@PolymorphicMapType_104381) (o_2@@85 T@Ref) (f_4@@85 T@Field_51712_3895) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_104381_51712_3895#PolymorphicMapType_104381| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_104381) (SummandMask1@@6 T@PolymorphicMapType_104381) (SummandMask2@@6 T@PolymorphicMapType_104381) (o_2@@86 T@Ref) (f_4@@86 T@Field_51712_51395) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_104381_51712_51395#PolymorphicMapType_104381| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_104381) (SummandMask1@@7 T@PolymorphicMapType_104381) (SummandMask2@@7 T@PolymorphicMapType_104381) (o_2@@87 T@Ref) (f_4@@87 T@Field_51712_3835) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_104381_51712_3835#PolymorphicMapType_104381| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_104381) (SummandMask1@@8 T@PolymorphicMapType_104381) (SummandMask2@@8 T@PolymorphicMapType_104381) (o_2@@88 T@Ref) (f_4@@88 T@Field_140838_140839) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_104381_51712_51713#PolymorphicMapType_104381| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_104381) (SummandMask1@@9 T@PolymorphicMapType_104381) (SummandMask2@@9 T@PolymorphicMapType_104381) (o_2@@89 T@Ref) (f_4@@89 T@Field_51392_110478) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_104381_51392_436990#PolymorphicMapType_104381| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_104381) (SummandMask1@@10 T@PolymorphicMapType_104381) (SummandMask2@@10 T@PolymorphicMapType_104381) (o_2@@90 T@Ref) (f_4@@90 T@Field_104420_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_104381_51402_3895#PolymorphicMapType_104381| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_104381) (SummandMask1@@11 T@PolymorphicMapType_104381) (SummandMask2@@11 T@PolymorphicMapType_104381) (o_2@@91 T@Ref) (f_4@@91 T@Field_104433_104434) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_104381_51394_51395#PolymorphicMapType_104381| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_104381) (SummandMask1@@12 T@PolymorphicMapType_104381) (SummandMask2@@12 T@PolymorphicMapType_104381) (o_2@@92 T@Ref) (f_4@@92 T@Field_111885_3835) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_104381_51392_3835#PolymorphicMapType_104381| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_104381) (SummandMask1@@13 T@PolymorphicMapType_104381) (SummandMask2@@13 T@PolymorphicMapType_104381) (o_2@@93 T@Ref) (f_4@@93 T@Field_51392_51662) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_104381_51392_51662#PolymorphicMapType_104381| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_104381) (SummandMask1@@14 T@PolymorphicMapType_104381) (SummandMask2@@14 T@PolymorphicMapType_104381) (o_2@@94 T@Ref) (f_4@@94 T@Field_117635_117640) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_104381_51661_436603#PolymorphicMapType_104381| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_104381) (SummandMask1@@15 T@PolymorphicMapType_104381) (SummandMask2@@15 T@PolymorphicMapType_104381) (o_2@@95 T@Ref) (f_4@@95 T@Field_51661_3895) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_104381_51661_3895#PolymorphicMapType_104381| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_104381) (SummandMask1@@16 T@PolymorphicMapType_104381) (SummandMask2@@16 T@PolymorphicMapType_104381) (o_2@@96 T@Ref) (f_4@@96 T@Field_51661_51395) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_104381_51661_51395#PolymorphicMapType_104381| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_104381) (SummandMask1@@17 T@PolymorphicMapType_104381) (SummandMask2@@17 T@PolymorphicMapType_104381) (o_2@@97 T@Ref) (f_4@@97 T@Field_51661_3835) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_104381_51661_3835#PolymorphicMapType_104381| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_104381) (SummandMask1@@18 T@PolymorphicMapType_104381) (SummandMask2@@18 T@PolymorphicMapType_104381) (o_2@@98 T@Ref) (f_4@@98 T@Field_112561_112562) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_104381_51661_51662#PolymorphicMapType_104381| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.538:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 T@Ref) (arg4 T@Ref) (arg5 Int) (arg6 Int) (arg7 T@Ref) (arg8 T@Ref) (arg9 T@Ref) (arg10 T@Ref) (arg11 T@Seq_2867) (arg12 T@Ref) (arg13 T@Ref) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11 arg12 arg13) (WandMaskField_51301 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11 arg12 arg13)))
 :qid |stdinbpl.571:15|
 :skolemid |62|
 :pattern ( (WandMaskField_51301 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11 arg12 arg13)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_104360) (Mask@@86 T@PolymorphicMapType_104381) (this@@25 T@Ref) (end@@13 T@Ref) ) (!  (=> (and (state Heap@@58 Mask@@86) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@58) null (lseg this@@25 end@@13)) this@@25 end@@13))) (=> (not (= this@@25 end@@13)) (and (> (|Seq#Length_2867| (|contentNodes'| Heap@@58 this@@25 end@@13)) 0) (= (|Seq#Index_2867| (|contentNodes'| Heap@@58 this@@25 end@@13) 0) (select (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@58) this@@25 data)))))
 :qid |stdinbpl.638:15|
 :skolemid |70|
 :pattern ( (state Heap@@58 Mask@@86) (|contentNodes'| Heap@@58 this@@25 end@@13))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_104360) (Mask@@87 T@PolymorphicMapType_104381) (this@@26 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@87) (or (< AssumeFunctionsAbove 2) (|content#trigger| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@59) null (List this@@26)) this@@26))) (forall ((i@@3 Int) (j_9@@0 Int) ) (!  (=> (and (<= 0 i@@3) (and (< i@@3 j_9@@0) (< j_9@@0 (|Seq#Length_2867| (|content'| Heap@@59 this@@26))))) (<= (|Seq#Index_2867| (|content'| Heap@@59 this@@26) i@@3) (|Seq#Index_2867| (|content'| Heap@@59 this@@26) j_9@@0)))
 :qid |stdinbpl.1228:112|
 :skolemid |94|
 :pattern ( (|Seq#Index_2867| (|content'| Heap@@59 this@@26) i@@3) (|Seq#Index_2867| (|content'| Heap@@59 this@@26) j_9@@0))
)))
 :qid |stdinbpl.1226:15|
 :skolemid |95|
 :pattern ( (state Heap@@59 Mask@@87) (|content'| Heap@@59 this@@26))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3938| a b) (= a b))
 :qid |stdinbpl.511:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3938| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@4)))
 :qid |stdinbpl.404:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@4))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_4057|) (= (|Seq#Append_3835| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_4057|) (= (|Seq#Append_3835| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.222:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3835| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3835| t@@1) 0) t@@1)
 :qid |stdinbpl.226:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3835| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.205:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((this@@27 T@Ref) (end@@14 T@Ref) ) (! (= (getPredWandId_51661_51662 (lseg this@@27 end@@14)) 0)
 :qid |stdinbpl.1775:15|
 :skolemid |116|
 :pattern ( (lseg this@@27 end@@14))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3938| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.501:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.498:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3938| s0@@2 s1@@2))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5@@0 Int) (arg6@@0 Int) (arg7@@0 T@Ref) (arg8@@0 T@Ref) (arg9@@0 T@Ref) (arg10@@0 T@Ref) (arg11@@0 T@Seq_2867) (arg12@@0 T@Ref) (arg13@@0 T@Ref) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 Int) (arg6_2 Int) (arg7_2 T@Ref) (arg8_2 T@Ref) (arg9_2 T@Ref) (arg10_2 T@Ref) (arg11_2 T@Seq_2867) (arg12_2 T@Ref) (arg13_2 T@Ref) ) (!  (=> (= (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9@@0 arg10@@0 arg11@@0 arg12@@0 arg13@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2 arg9_2 arg10_2 arg11_2 arg12_2 arg13_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (and (= arg5@@0 arg5_2) (and (= arg6@@0 arg6_2) (and (= arg7@@0 arg7_2) (and (= arg8@@0 arg8_2) (and (= arg9@@0 arg9_2) (and (= arg10@@0 arg10_2) (and (= arg11@@0 arg11_2) (and (= arg12@@0 arg12_2) (= arg13@@0 arg13_2))))))))))))))
 :qid |stdinbpl.579:15|
 :skolemid |64|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0 arg9@@0 arg10@@0 arg11@@0 arg12@@0 arg13@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2 arg9_2 arg10_2 arg11_2 arg12_2 arg13_2))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_104360) (Mask@@88 T@PolymorphicMapType_104381) (this@@28 T@Ref) ) (!  (=> (state Heap@@60 Mask@@88) (= (|content'| Heap@@60 this@@28) (|content#frame| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@60) null (List this@@28)) this@@28)))
 :qid |stdinbpl.1220:15|
 :skolemid |93|
 :pattern ( (state Heap@@60 Mask@@88) (|content'| Heap@@60 this@@28))
 :pattern ( (state Heap@@60 Mask@@88) (|content#triggerStateless| this@@28) (|List#trigger_51712| Heap@@60 (List this@@28)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_104360) (Mask@@89 T@PolymorphicMapType_104381) (this@@29 T@Ref) ) (!  (=> (state Heap@@61 Mask@@89) (= (|length'| Heap@@61 this@@29) (|length#frame| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@61) null (List this@@29)) this@@29)))
 :qid |stdinbpl.1377:15|
 :skolemid |101|
 :pattern ( (state Heap@@61 Mask@@89) (|length'| Heap@@61 this@@29))
 :pattern ( (state Heap@@61 Mask@@89) (|length#triggerStateless| this@@29) (|List#trigger_51712| Heap@@61 (List this@@29)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_104360) (Mask@@90 T@PolymorphicMapType_104381) (this@@30 T@Ref) ) (!  (=> (state Heap@@62 Mask@@90) (= (|peek'| Heap@@62 this@@30) (|peek#frame| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@62) null (List this@@30)) this@@30)))
 :qid |stdinbpl.1521:15|
 :skolemid |107|
 :pattern ( (state Heap@@62 Mask@@90) (|peek'| Heap@@62 this@@30))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3835| t@@2)) 1)
 :qid |stdinbpl.213:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3835| t@@2))
)))
(assert (forall ((this@@31 T@Ref) ) (! (= (getPredWandId_51712_51713 (List this@@31)) 1)
 :qid |stdinbpl.2004:15|
 :skolemid |126|
 :pattern ( (List this@@31))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@1 Int) (arg6@@1 Int) (arg7@@1 T@Ref) (arg8@@1 T@Ref) (arg9@@1 T@Ref) (arg10@@1 T@Ref) (arg11@@1 T@Seq_2867) (arg12@@1 T@Ref) (arg13@@1 T@Ref) ) (! (IsWandField_51274_3043 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@1 arg10@@1 arg11@@1 arg12@@1 arg13@@1))
 :qid |stdinbpl.555:15|
 :skolemid |58|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1 arg9@@1 arg10@@1 arg11@@1 arg12@@1 arg13@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@2 Int) (arg6@@2 Int) (arg7@@2 T@Ref) (arg8@@2 T@Ref) (arg9@@2 T@Ref) (arg10@@2 T@Ref) (arg11@@2 T@Seq_2867) (arg12@@2 T@Ref) (arg13@@2 T@Ref) ) (! (IsWandField_51301_51302 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@2 arg10@@2 arg11@@2 arg12@@2 arg13@@2))
 :qid |stdinbpl.559:15|
 :skolemid |59|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2 arg9@@2 arg10@@2 arg11@@2 arg12@@2 arg13@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@3 Int) (arg6@@3 Int) (arg7@@3 T@Ref) (arg8@@3 T@Ref) (arg9@@3 T@Ref) (arg10@@3 T@Ref) (arg11@@3 T@Seq_2867) (arg12@@3 T@Ref) (arg13@@3 T@Ref) ) (!  (not (IsPredicateField_51274_3043 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@3 arg10@@3 arg11@@3 arg12@@3 arg13@@3)))
 :qid |stdinbpl.563:15|
 :skolemid |60|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3 arg9@@3 arg10@@3 arg11@@3 arg12@@3 arg13@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@4 Int) (arg6@@4 Int) (arg7@@4 T@Ref) (arg8@@4 T@Ref) (arg9@@4 T@Ref) (arg10@@4 T@Ref) (arg11@@4 T@Seq_2867) (arg12@@4 T@Ref) (arg13@@4 T@Ref) ) (!  (not (IsPredicateField_51301_51302 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@4 arg10@@4 arg11@@4 arg12@@4 arg13@@4)))
 :qid |stdinbpl.567:15|
 :skolemid |61|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4 arg9@@4 arg10@@4 arg11@@4 arg12@@4 arg13@@4))
)))
(assert (forall ((this@@32 T@Ref) (end@@15 T@Ref) ) (! (= (PredicateMaskField_51661 (lseg this@@32 end@@15)) (|lseg#sm| this@@32 end@@15))
 :qid |stdinbpl.1767:15|
 :skolemid |114|
 :pattern ( (PredicateMaskField_51661 (lseg this@@32 end@@15)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_8705| (|Seq#Append_3835| s@@10 t@@3) n@@8) (|Seq#Take_8705| s@@10 n@@8)))
 :qid |stdinbpl.355:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8705| (|Seq#Append_3835| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@5 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.254:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@5 v@@1))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_104360) (o_191 T@Ref) (f_191 T@Field_110473_110478) (v@@2 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@63 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@63) (store (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@63) o_191 f_191 v@@2) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@63) (store (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@63) o_191 f_191 v@@2) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@63) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_104360) (o_191@@0 T@Ref) (f_191@@0 T@Field_110499_110500) (v@@3 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@64) (store (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@64) o_191@@0 f_191@@0 v@@3) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@64) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@64) (store (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@64) o_191@@0 f_191@@0 v@@3) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_104360) (o_191@@1 T@Ref) (f_191@@1 T@Field_110450_3043) (v@@4 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@65) (store (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@65) o_191@@1 f_191@@1 v@@4) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@65) (store (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@65) o_191@@1 f_191@@1 v@@4) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@65) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_104360) (o_191@@2 T@Ref) (f_191@@2 T@Field_110450_51395) (v@@5 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@66) (store (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@66) o_191@@2 f_191@@2 v@@5) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@66) (store (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@66) o_191@@2 f_191@@2 v@@5) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@66) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_104360) (o_191@@3 T@Ref) (f_191@@3 T@Field_110450_3895) (v@@6 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@67) (store (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@67) o_191@@3 f_191@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@67) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@67) (store (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@67) o_191@@3 f_191@@3 v@@6)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_104360) (o_191@@4 T@Ref) (f_191@@4 T@Field_143227_143232) (v@@7 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@68 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@68) (store (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@68) o_191@@4 f_191@@4 v@@7) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@68) (store (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@68) o_191@@4 f_191@@4 v@@7) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@68) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_104360) (o_191@@5 T@Ref) (f_191@@5 T@Field_140838_140839) (v@@8 T@FrameType) ) (! (succHeap Heap@@69 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@69) (store (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@69) o_191@@5 f_191@@5 v@@8) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@69) (store (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@69) o_191@@5 f_191@@5 v@@8) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@69) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_104360) (o_191@@6 T@Ref) (f_191@@6 T@Field_51712_3835) (v@@9 Int) ) (! (succHeap Heap@@70 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@70) (store (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@70) o_191@@6 f_191@@6 v@@9) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@70) (store (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@70) o_191@@6 f_191@@6 v@@9) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@70) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_104360) (o_191@@7 T@Ref) (f_191@@7 T@Field_51712_51395) (v@@10 T@Ref) ) (! (succHeap Heap@@71 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@71) (store (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@71) o_191@@7 f_191@@7 v@@10) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@71) (store (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@71) o_191@@7 f_191@@7 v@@10) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@71) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_104360) (o_191@@8 T@Ref) (f_191@@8 T@Field_51712_3895) (v@@11 Bool) ) (! (succHeap Heap@@72 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@72) (store (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@72) o_191@@8 f_191@@8 v@@11) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@72) (store (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@72) o_191@@8 f_191@@8 v@@11) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@72) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_104360) (o_191@@9 T@Ref) (f_191@@9 T@Field_117635_117640) (v@@12 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@73 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@73) (store (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@73) o_191@@9 f_191@@9 v@@12) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@73) (store (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@73) o_191@@9 f_191@@9 v@@12) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@73) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_104360) (o_191@@10 T@Ref) (f_191@@10 T@Field_112561_112562) (v@@13 T@FrameType) ) (! (succHeap Heap@@74 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@74) (store (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@74) o_191@@10 f_191@@10 v@@13) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@74) (store (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@74) o_191@@10 f_191@@10 v@@13) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@74) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_104360) (o_191@@11 T@Ref) (f_191@@11 T@Field_51661_3835) (v@@14 Int) ) (! (succHeap Heap@@75 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@75) (store (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@75) o_191@@11 f_191@@11 v@@14) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@75) (store (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@75) o_191@@11 f_191@@11 v@@14) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@75) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_104360) (o_191@@12 T@Ref) (f_191@@12 T@Field_51661_51395) (v@@15 T@Ref) ) (! (succHeap Heap@@76 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@76) (store (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@76) o_191@@12 f_191@@12 v@@15) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@76) (store (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@76) o_191@@12 f_191@@12 v@@15) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@76) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_104360) (o_191@@13 T@Ref) (f_191@@13 T@Field_51661_3895) (v@@16 Bool) ) (! (succHeap Heap@@77 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@77) (store (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@77) o_191@@13 f_191@@13 v@@16) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@77) (store (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@77) o_191@@13 f_191@@13 v@@16) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@77) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_104360) (o_191@@14 T@Ref) (f_191@@14 T@Field_51392_110478) (v@@17 T@PolymorphicMapType_104909) ) (! (succHeap Heap@@78 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@78) (store (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@78) o_191@@14 f_191@@14 v@@17) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@78) (store (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@78) o_191@@14 f_191@@14 v@@17) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@78) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_104360) (o_191@@15 T@Ref) (f_191@@15 T@Field_51392_51662) (v@@18 T@FrameType) ) (! (succHeap Heap@@79 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@79) (store (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@79) o_191@@15 f_191@@15 v@@18) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@79) (store (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@79) o_191@@15 f_191@@15 v@@18) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@79) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_104360) (o_191@@16 T@Ref) (f_191@@16 T@Field_111885_3835) (v@@19 Int) ) (! (succHeap Heap@@80 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@80) (store (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@80) o_191@@16 f_191@@16 v@@19) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@80) (store (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@80) o_191@@16 f_191@@16 v@@19) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@80) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_104360) (o_191@@17 T@Ref) (f_191@@17 T@Field_104433_104434) (v@@20 T@Ref) ) (! (succHeap Heap@@81 (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@81) (store (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@81) o_191@@17 f_191@@17 v@@20) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@81) (store (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@81) o_191@@17 f_191@@17 v@@20) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@81) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_104360) (o_191@@18 T@Ref) (f_191@@18 T@Field_104420_53) (v@@21 Bool) ) (! (succHeap Heap@@82 (PolymorphicMapType_104360 (store (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@82) o_191@@18 f_191@@18 v@@21) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_104360 (store (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@82) o_191@@18 f_191@@18 v@@21) (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51666_117796#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51716_143319#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51287_240350#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51392_417492#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51661_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_51712_3895#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3835#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51395#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_51662#PolymorphicMapType_104360| Heap@@82) (|PolymorphicMapType_104360_110450_3895#PolymorphicMapType_104360| Heap@@82)))
)))
(assert (forall ((this@@33 T@Ref) ) (! (= (PredicateMaskField_51712 (List this@@33)) (|List#sm| this@@33))
 :qid |stdinbpl.1996:15|
 :skolemid |124|
 :pattern ( (PredicateMaskField_51712 (List this@@33)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_8705| (|Seq#Append_3835| s@@12 t@@4) n@@9) (|Seq#Append_3835| (|Seq#Drop_8705| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.369:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8705| (|Seq#Append_3835| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@6 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@6)) (< i@@6 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@6 n@@10) n@@10) i@@6) (= (|Seq#Index_2867| (|Seq#Drop_8705| s@@13 n@@10) (|Seq#Sub| i@@6 n@@10)) (|Seq#Index_2867| s@@13 i@@6))))
 :qid |stdinbpl.305:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8705| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@6))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@5 Int) (arg6@@5 Int) (arg7@@5 T@Ref) (arg8@@5 T@Ref) (arg9@@5 T@Ref) (arg10@@5 T@Ref) (arg11@@5 T@Seq_2867) (arg12@@5 T@Ref) (arg13@@5 T@Ref) ) (! (= (getPredWandId_51274_3043 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5 arg9@@5 arg10@@5 arg11@@5 arg12@@5 arg13@@5)) 2)
 :qid |stdinbpl.575:15|
 :skolemid |63|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5 arg9@@5 arg10@@5 arg11@@5 arg12@@5 arg13@@5))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_4057|)) (not (= s1@@3 |Seq#Empty_4057|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3835| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.245:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3835| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3835| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_4057|)) (not (= s1@@4 |Seq#Empty_4057|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3835| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.250:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3835| s0@@4 s1@@4))
)))
(assert (forall ((o_191@@19 T@Ref) (f_139 T@Field_104433_104434) (Heap@@83 T@PolymorphicMapType_104360) ) (!  (=> (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@83) o_191@@19 $allocated) (select (|PolymorphicMapType_104360_51075_53#PolymorphicMapType_104360| Heap@@83) (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@83) o_191@@19 f_139) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@83) o_191@@19 f_139))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@7 Int) ) (!  (=> (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@7) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.402:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@7))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3938| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3938| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3938| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.506:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3938| s0@@5 s1@@5))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_104360) (Mask@@91 T@PolymorphicMapType_104381) (this@@34 T@Ref) ) (!  (=> (and (state Heap@@84 Mask@@91) (< AssumeFunctionsAbove 1)) (= (length Heap@@84 this@@34) (lengthNodes Heap@@84 (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@84) this@@34 head_2) null)))
 :qid |stdinbpl.1370:15|
 :skolemid |100|
 :pattern ( (state Heap@@84 Mask@@91) (length Heap@@84 this@@34))
 :pattern ( (state Heap@@84 Mask@@91) (|length#triggerStateless| this@@34) (|List#trigger_51712| Heap@@84 (List this@@34)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_104360) (Mask@@92 T@PolymorphicMapType_104381) (this@@35 T@Ref) ) (!  (=> (and (state Heap@@85 Mask@@92) (< AssumeFunctionsAbove 2)) (= (content Heap@@85 this@@35) (contentNodes Heap@@85 (select (|PolymorphicMapType_104360_51078_51079#PolymorphicMapType_104360| Heap@@85) this@@35 head_2) null)))
 :qid |stdinbpl.1213:15|
 :skolemid |92|
 :pattern ( (state Heap@@85 Mask@@92) (content Heap@@85 this@@35))
 :pattern ( (state Heap@@85 Mask@@92) (|content#triggerStateless| this@@35) (|List#trigger_51712| Heap@@85 (List this@@35)))
)))
(assert (forall ((p@@4 T@Field_110499_110500) (v_1@@3 T@FrameType) (q T@Field_110499_110500) (w@@3 T@FrameType) (r T@Field_140838_140839) (u T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@4 v_1@@3 q w@@3) (InsidePredicate_110450_140838 q w@@3 r u)) (InsidePredicate_110450_140838 p@@4 v_1@@3 r u))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@4 v_1@@3 q w@@3) (InsidePredicate_110450_140838 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_110499_110500) (v_1@@4 T@FrameType) (q@@0 T@Field_110499_110500) (w@@4 T@FrameType) (r@@0 T@Field_110499_110500) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_110450_110450 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_110450_110450 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_110450_110450 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_110499_110500) (v_1@@5 T@FrameType) (q@@1 T@Field_110499_110500) (w@@5 T@FrameType) (r@@1 T@Field_51392_51662) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_110450_104420 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_110450_104420 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_110450_104420 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_110499_110500) (v_1@@6 T@FrameType) (q@@2 T@Field_110499_110500) (w@@6 T@FrameType) (r@@2 T@Field_112561_112562) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_110450 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_110450_51661 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_110450_51661 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_110450 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_110450_51661 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_110499_110500) (v_1@@7 T@FrameType) (q@@3 T@Field_51392_51662) (w@@7 T@FrameType) (r@@3 T@Field_140838_140839) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_104420_140838 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_110450_140838 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_104420_140838 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_110499_110500) (v_1@@8 T@FrameType) (q@@4 T@Field_51392_51662) (w@@8 T@FrameType) (r@@4 T@Field_110499_110500) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_104420_110450 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_110450_110450 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_104420_110450 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_110499_110500) (v_1@@9 T@FrameType) (q@@5 T@Field_51392_51662) (w@@9 T@FrameType) (r@@5 T@Field_51392_51662) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_104420_104420 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_110450_104420 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_104420_104420 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_110499_110500) (v_1@@10 T@FrameType) (q@@6 T@Field_51392_51662) (w@@10 T@FrameType) (r@@6 T@Field_112561_112562) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_104420 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_104420_51661 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_110450_51661 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_104420 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_104420_51661 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_110499_110500) (v_1@@11 T@FrameType) (q@@7 T@Field_140838_140839) (w@@11 T@FrameType) (r@@7 T@Field_140838_140839) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_51712_140838 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_110450_140838 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_51712_140838 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_110499_110500) (v_1@@12 T@FrameType) (q@@8 T@Field_140838_140839) (w@@12 T@FrameType) (r@@8 T@Field_110499_110500) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_51712_110450 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_110450_110450 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_51712_110450 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_110499_110500) (v_1@@13 T@FrameType) (q@@9 T@Field_140838_140839) (w@@13 T@FrameType) (r@@9 T@Field_51392_51662) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_51712_104420 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_110450_104420 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_51712_104420 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_110499_110500) (v_1@@14 T@FrameType) (q@@10 T@Field_140838_140839) (w@@14 T@FrameType) (r@@10 T@Field_112561_112562) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_140838 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_51712_51661 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_110450_51661 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_140838 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_51712_51661 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_110499_110500) (v_1@@15 T@FrameType) (q@@11 T@Field_112561_112562) (w@@15 T@FrameType) (r@@11 T@Field_140838_140839) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_51661_140838 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_110450_140838 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_51661_140838 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_110499_110500) (v_1@@16 T@FrameType) (q@@12 T@Field_112561_112562) (w@@16 T@FrameType) (r@@12 T@Field_110499_110500) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_51661_110450 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_110450_110450 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_51661_110450 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_110499_110500) (v_1@@17 T@FrameType) (q@@13 T@Field_112561_112562) (w@@17 T@FrameType) (r@@13 T@Field_51392_51662) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_51661_104420 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_110450_104420 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_51661_104420 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_110499_110500) (v_1@@18 T@FrameType) (q@@14 T@Field_112561_112562) (w@@18 T@FrameType) (r@@14 T@Field_112561_112562) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_110450_51661 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_51661_51661 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_110450_51661 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_110450_51661 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_51661_51661 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_51392_51662) (v_1@@19 T@FrameType) (q@@15 T@Field_110499_110500) (w@@19 T@FrameType) (r@@15 T@Field_140838_140839) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_110450_140838 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_104420_140838 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_110450_140838 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_51392_51662) (v_1@@20 T@FrameType) (q@@16 T@Field_110499_110500) (w@@20 T@FrameType) (r@@16 T@Field_110499_110500) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_110450_110450 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_104420_110450 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_110450_110450 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_51392_51662) (v_1@@21 T@FrameType) (q@@17 T@Field_110499_110500) (w@@21 T@FrameType) (r@@17 T@Field_51392_51662) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_110450_104420 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_104420_104420 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_110450_104420 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_51392_51662) (v_1@@22 T@FrameType) (q@@18 T@Field_110499_110500) (w@@22 T@FrameType) (r@@18 T@Field_112561_112562) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_110450 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_110450_51661 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_104420_51661 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_110450 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_110450_51661 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_51392_51662) (v_1@@23 T@FrameType) (q@@19 T@Field_51392_51662) (w@@23 T@FrameType) (r@@19 T@Field_140838_140839) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_104420_140838 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_104420_140838 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_104420_140838 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_51392_51662) (v_1@@24 T@FrameType) (q@@20 T@Field_51392_51662) (w@@24 T@FrameType) (r@@20 T@Field_110499_110500) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_104420_110450 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_104420_110450 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_104420_110450 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_51392_51662) (v_1@@25 T@FrameType) (q@@21 T@Field_51392_51662) (w@@25 T@FrameType) (r@@21 T@Field_51392_51662) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_104420_104420 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_104420_104420 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_104420_104420 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_51392_51662) (v_1@@26 T@FrameType) (q@@22 T@Field_51392_51662) (w@@26 T@FrameType) (r@@22 T@Field_112561_112562) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_104420 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_104420_51661 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_104420_51661 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_104420 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_104420_51661 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_51392_51662) (v_1@@27 T@FrameType) (q@@23 T@Field_140838_140839) (w@@27 T@FrameType) (r@@23 T@Field_140838_140839) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_51712_140838 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_104420_140838 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_51712_140838 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_51392_51662) (v_1@@28 T@FrameType) (q@@24 T@Field_140838_140839) (w@@28 T@FrameType) (r@@24 T@Field_110499_110500) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_51712_110450 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_104420_110450 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_51712_110450 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_51392_51662) (v_1@@29 T@FrameType) (q@@25 T@Field_140838_140839) (w@@29 T@FrameType) (r@@25 T@Field_51392_51662) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_51712_104420 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_104420_104420 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_51712_104420 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_51392_51662) (v_1@@30 T@FrameType) (q@@26 T@Field_140838_140839) (w@@30 T@FrameType) (r@@26 T@Field_112561_112562) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_140838 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_51712_51661 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_104420_51661 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_140838 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_51712_51661 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_51392_51662) (v_1@@31 T@FrameType) (q@@27 T@Field_112561_112562) (w@@31 T@FrameType) (r@@27 T@Field_140838_140839) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_51661_140838 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_104420_140838 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_51661_140838 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_51392_51662) (v_1@@32 T@FrameType) (q@@28 T@Field_112561_112562) (w@@32 T@FrameType) (r@@28 T@Field_110499_110500) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_51661_110450 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_104420_110450 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_51661_110450 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_51392_51662) (v_1@@33 T@FrameType) (q@@29 T@Field_112561_112562) (w@@33 T@FrameType) (r@@29 T@Field_51392_51662) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_51661_104420 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_104420_104420 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_51661_104420 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_51392_51662) (v_1@@34 T@FrameType) (q@@30 T@Field_112561_112562) (w@@34 T@FrameType) (r@@30 T@Field_112561_112562) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_104420_51661 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_51661_51661 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_104420_51661 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_104420_51661 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_51661_51661 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_140838_140839) (v_1@@35 T@FrameType) (q@@31 T@Field_110499_110500) (w@@35 T@FrameType) (r@@31 T@Field_140838_140839) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_110450_140838 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_51712_140838 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_110450_140838 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_140838_140839) (v_1@@36 T@FrameType) (q@@32 T@Field_110499_110500) (w@@36 T@FrameType) (r@@32 T@Field_110499_110500) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_110450_110450 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_51712_110450 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_110450_110450 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_140838_140839) (v_1@@37 T@FrameType) (q@@33 T@Field_110499_110500) (w@@37 T@FrameType) (r@@33 T@Field_51392_51662) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_110450_104420 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_51712_104420 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_110450_104420 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_140838_140839) (v_1@@38 T@FrameType) (q@@34 T@Field_110499_110500) (w@@38 T@FrameType) (r@@34 T@Field_112561_112562) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_110450 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_110450_51661 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_51712_51661 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_110450 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_110450_51661 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_140838_140839) (v_1@@39 T@FrameType) (q@@35 T@Field_51392_51662) (w@@39 T@FrameType) (r@@35 T@Field_140838_140839) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_104420_140838 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_51712_140838 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_104420_140838 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_140838_140839) (v_1@@40 T@FrameType) (q@@36 T@Field_51392_51662) (w@@40 T@FrameType) (r@@36 T@Field_110499_110500) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_104420_110450 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_51712_110450 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_104420_110450 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_140838_140839) (v_1@@41 T@FrameType) (q@@37 T@Field_51392_51662) (w@@41 T@FrameType) (r@@37 T@Field_51392_51662) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_104420_104420 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_51712_104420 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_104420_104420 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_140838_140839) (v_1@@42 T@FrameType) (q@@38 T@Field_51392_51662) (w@@42 T@FrameType) (r@@38 T@Field_112561_112562) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_104420 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_104420_51661 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_51712_51661 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_104420 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_104420_51661 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_140838_140839) (v_1@@43 T@FrameType) (q@@39 T@Field_140838_140839) (w@@43 T@FrameType) (r@@39 T@Field_140838_140839) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_51712_140838 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_51712_140838 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_51712_140838 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_140838_140839) (v_1@@44 T@FrameType) (q@@40 T@Field_140838_140839) (w@@44 T@FrameType) (r@@40 T@Field_110499_110500) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_51712_110450 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_51712_110450 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_51712_110450 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_140838_140839) (v_1@@45 T@FrameType) (q@@41 T@Field_140838_140839) (w@@45 T@FrameType) (r@@41 T@Field_51392_51662) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_51712_104420 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_51712_104420 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_51712_104420 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_140838_140839) (v_1@@46 T@FrameType) (q@@42 T@Field_140838_140839) (w@@46 T@FrameType) (r@@42 T@Field_112561_112562) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_140838 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_51712_51661 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_51712_51661 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_140838 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_51712_51661 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_140838_140839) (v_1@@47 T@FrameType) (q@@43 T@Field_112561_112562) (w@@47 T@FrameType) (r@@43 T@Field_140838_140839) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_51661_140838 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_51712_140838 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_51661_140838 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_140838_140839) (v_1@@48 T@FrameType) (q@@44 T@Field_112561_112562) (w@@48 T@FrameType) (r@@44 T@Field_110499_110500) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_51661_110450 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_51712_110450 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_51661_110450 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_140838_140839) (v_1@@49 T@FrameType) (q@@45 T@Field_112561_112562) (w@@49 T@FrameType) (r@@45 T@Field_51392_51662) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_51661_104420 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_51712_104420 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_51661_104420 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_140838_140839) (v_1@@50 T@FrameType) (q@@46 T@Field_112561_112562) (w@@50 T@FrameType) (r@@46 T@Field_112561_112562) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_51712_51661 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_51661_51661 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_51712_51661 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51712_51661 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_51661_51661 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_112561_112562) (v_1@@51 T@FrameType) (q@@47 T@Field_110499_110500) (w@@51 T@FrameType) (r@@47 T@Field_140838_140839) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_110450_140838 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_51661_140838 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_110450_140838 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_112561_112562) (v_1@@52 T@FrameType) (q@@48 T@Field_110499_110500) (w@@52 T@FrameType) (r@@48 T@Field_110499_110500) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_110450_110450 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_51661_110450 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_110450_110450 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_112561_112562) (v_1@@53 T@FrameType) (q@@49 T@Field_110499_110500) (w@@53 T@FrameType) (r@@49 T@Field_51392_51662) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_110450_104420 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_51661_104420 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_110450_104420 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_112561_112562) (v_1@@54 T@FrameType) (q@@50 T@Field_110499_110500) (w@@54 T@FrameType) (r@@50 T@Field_112561_112562) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_110450 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_110450_51661 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_51661_51661 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_110450 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_110450_51661 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_112561_112562) (v_1@@55 T@FrameType) (q@@51 T@Field_51392_51662) (w@@55 T@FrameType) (r@@51 T@Field_140838_140839) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_104420_140838 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_51661_140838 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_104420_140838 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_112561_112562) (v_1@@56 T@FrameType) (q@@52 T@Field_51392_51662) (w@@56 T@FrameType) (r@@52 T@Field_110499_110500) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_104420_110450 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_51661_110450 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_104420_110450 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_112561_112562) (v_1@@57 T@FrameType) (q@@53 T@Field_51392_51662) (w@@57 T@FrameType) (r@@53 T@Field_51392_51662) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_104420_104420 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_51661_104420 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_104420_104420 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_112561_112562) (v_1@@58 T@FrameType) (q@@54 T@Field_51392_51662) (w@@58 T@FrameType) (r@@54 T@Field_112561_112562) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_104420 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_104420_51661 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_51661_51661 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_104420 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_104420_51661 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_112561_112562) (v_1@@59 T@FrameType) (q@@55 T@Field_140838_140839) (w@@59 T@FrameType) (r@@55 T@Field_140838_140839) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_51712_140838 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_51661_140838 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_51712_140838 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_112561_112562) (v_1@@60 T@FrameType) (q@@56 T@Field_140838_140839) (w@@60 T@FrameType) (r@@56 T@Field_110499_110500) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_51712_110450 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_51661_110450 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_51712_110450 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_112561_112562) (v_1@@61 T@FrameType) (q@@57 T@Field_140838_140839) (w@@61 T@FrameType) (r@@57 T@Field_51392_51662) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_51712_104420 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_51661_104420 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_51712_104420 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_112561_112562) (v_1@@62 T@FrameType) (q@@58 T@Field_140838_140839) (w@@62 T@FrameType) (r@@58 T@Field_112561_112562) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_140838 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_51712_51661 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_51661_51661 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_140838 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_51712_51661 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_112561_112562) (v_1@@63 T@FrameType) (q@@59 T@Field_112561_112562) (w@@63 T@FrameType) (r@@59 T@Field_140838_140839) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_51661_140838 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_51661_140838 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_51661_140838 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_112561_112562) (v_1@@64 T@FrameType) (q@@60 T@Field_112561_112562) (w@@64 T@FrameType) (r@@60 T@Field_110499_110500) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_51661_110450 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_51661_110450 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_51661_110450 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_112561_112562) (v_1@@65 T@FrameType) (q@@61 T@Field_112561_112562) (w@@65 T@FrameType) (r@@61 T@Field_51392_51662) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_51661_104420 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_51661_104420 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_51661_104420 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_112561_112562) (v_1@@66 T@FrameType) (q@@62 T@Field_112561_112562) (w@@66 T@FrameType) (r@@62 T@Field_112561_112562) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_51661_51661 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_51661_51661 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_51661_51661 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_51661_51661 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_51661_51661 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_104360) (Mask@@93 T@PolymorphicMapType_104381) (this@@36 T@Ref) (end@@16 T@Ref) ) (!  (=> (and (state Heap@@86 Mask@@93) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_104360_51661_51662#PolymorphicMapType_104360| Heap@@86) null (lseg this@@36 end@@16)) this@@36 end@@16))) (=> (= this@@36 end@@16) (|Seq#Equal_3938| (|contentNodes'| Heap@@86 this@@36 end@@16) |Seq#Empty_4057|)))
 :qid |stdinbpl.634:15|
 :skolemid |69|
 :pattern ( (state Heap@@86 Mask@@93) (|contentNodes'| Heap@@86 this@@36 end@@16))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_4057|))
 :qid |stdinbpl.209:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_8705| s@@16 n@@12) |Seq#Empty_4057|))
 :qid |stdinbpl.385:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8705| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@87 T@PolymorphicMapType_104360) (Mask@@94 T@PolymorphicMapType_104381) (this@@37 T@Ref) ) (!  (=> (and (state Heap@@87 Mask@@94) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_104360_51712_51713#PolymorphicMapType_104360| Heap@@87) null (List this@@37)) this@@37))) (= (|length'| Heap@@87 this@@37) (|Seq#Length_2867| (content Heap@@87 this@@37))))
 :qid |stdinbpl.1383:15|
 :skolemid |102|
 :pattern ( (state Heap@@87 Mask@@94) (|length'| Heap@@87 this@@37))
)))
; Valid

