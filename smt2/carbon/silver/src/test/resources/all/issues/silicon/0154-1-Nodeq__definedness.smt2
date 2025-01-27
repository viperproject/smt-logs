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
(declare-sort T@Field_43461_53 0)
(declare-sort T@Field_43474_43475 0)
(declare-sort T@Field_47198_47199 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_46838_1204 0)
(declare-sort T@Field_49407_49412 0)
(declare-sort T@Field_51807_51808 0)
(declare-sort T@Field_53008_53009 0)
(declare-sort T@Field_53295_53300 0)
(declare-sort T@Field_51820_51825 0)
(declare-sort T@Field_20418_20460 0)
(declare-sort T@Field_20418_49412 0)
(declare-sort T@Field_20459_20419 0)
(declare-sort T@Field_20459_53 0)
(declare-sort T@Field_20459_1204 0)
(declare-sort T@Field_20484_20419 0)
(declare-sort T@Field_20484_53 0)
(declare-sort T@Field_20484_1204 0)
(declare-sort T@Field_20509_20419 0)
(declare-sort T@Field_20509_53 0)
(declare-sort T@Field_20509_1204 0)
(declare-datatypes ((T@PolymorphicMapType_43422 0)) (((PolymorphicMapType_43422 (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| (Array T@Ref T@Field_47198_47199 Real)) (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_43474_43475 Real)) (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_46838_1204 Real)) (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| (Array T@Ref T@Field_53008_53009 Real)) (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| (Array T@Ref T@Field_51807_51808 Real)) (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_20459_20419 Real)) (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_20459_1204 Real)) (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| (Array T@Ref T@Field_20459_53 Real)) (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| (Array T@Ref T@Field_49407_49412 Real)) (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| (Array T@Ref T@Field_20418_20460 Real)) (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| (Array T@Ref T@Field_43461_53 Real)) (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| (Array T@Ref T@Field_20418_49412 Real)) (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_20509_20419 Real)) (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_20509_1204 Real)) (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| (Array T@Ref T@Field_20509_53 Real)) (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| (Array T@Ref T@Field_53295_53300 Real)) (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_20484_20419 Real)) (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_20484_1204 Real)) (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| (Array T@Ref T@Field_20484_53 Real)) (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| (Array T@Ref T@Field_51820_51825 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43950 0)) (((PolymorphicMapType_43950 (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_43474_43475 Bool)) (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_46838_1204 Bool)) (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (Array T@Ref T@Field_43461_53 Bool)) (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_20418_20460 Bool)) (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (Array T@Ref T@Field_20418_49412 Bool)) (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_20459_20419 Bool)) (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_20459_1204 Bool)) (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (Array T@Ref T@Field_20459_53 Bool)) (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_47198_47199 Bool)) (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (Array T@Ref T@Field_49407_49412 Bool)) (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_20484_20419 Bool)) (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_20484_1204 Bool)) (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (Array T@Ref T@Field_20484_53 Bool)) (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_51807_51808 Bool)) (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (Array T@Ref T@Field_51820_51825 Bool)) (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_20509_20419 Bool)) (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_20509_1204 Bool)) (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (Array T@Ref T@Field_20509_53 Bool)) (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_53008_53009 Bool)) (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (Array T@Ref T@Field_53295_53300 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43401 0)) (((PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| (Array T@Ref T@Field_43461_53 Bool)) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| (Array T@Ref T@Field_43474_43475 T@Ref)) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| (Array T@Ref T@Field_47198_47199 T@FrameType)) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_46838_1204 Int)) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| (Array T@Ref T@Field_49407_49412 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| (Array T@Ref T@Field_51807_51808 T@FrameType)) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| (Array T@Ref T@Field_53008_53009 T@FrameType)) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| (Array T@Ref T@Field_53295_53300 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| (Array T@Ref T@Field_51820_51825 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| (Array T@Ref T@Field_20418_20460 T@FrameType)) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| (Array T@Ref T@Field_20418_49412 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| (Array T@Ref T@Field_20459_20419 T@Ref)) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| (Array T@Ref T@Field_20459_53 Bool)) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_20459_1204 Int)) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| (Array T@Ref T@Field_20484_20419 T@Ref)) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| (Array T@Ref T@Field_20484_53 Bool)) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_20484_1204 Int)) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| (Array T@Ref T@Field_20509_20419 T@Ref)) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| (Array T@Ref T@Field_20509_53 Bool)) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_20509_1204 Int)) ) ) ))
(declare-fun $allocated () T@Field_43461_53)
(declare-fun Nodenext$ () T@Field_43474_43475)
(declare-fun Nodevalue$ () T@Field_46838_1204)
(declare-fun succHeap (T@PolymorphicMapType_43401 T@PolymorphicMapType_43401) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_43401 T@PolymorphicMapType_43401) Bool)
(declare-fun state (T@PolymorphicMapType_43401 T@PolymorphicMapType_43422) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_43422) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_43950)
(declare-fun Nodevalid$ (T@Ref) T@Field_47198_47199)
(declare-fun IsPredicateField_20459_20460 (T@Field_47198_47199) Bool)
(declare-fun Nodep$ (T@Ref) T@Field_51807_51808)
(declare-fun IsPredicateField_20484_20485 (T@Field_51807_51808) Bool)
(declare-fun Nodeq$ (T@Ref) T@Field_53008_53009)
(declare-fun IsPredicateField_20509_20510 (T@Field_53008_53009) Bool)
(declare-fun |NodegetNext$'| (T@PolymorphicMapType_43401 T@Ref) T@Ref)
(declare-fun dummyFunction_20445 (T@Ref) Bool)
(declare-fun |NodegetNext$#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Nodevalid$#trigger_20459| (T@PolymorphicMapType_43401 T@Field_47198_47199) Bool)
(declare-fun |Nodevalid$#everUsed_20459| (T@Field_47198_47199) Bool)
(declare-fun |Nodep$#trigger_20484| (T@PolymorphicMapType_43401 T@Field_51807_51808) Bool)
(declare-fun |Nodep$#everUsed_20484| (T@Field_51807_51808) Bool)
(declare-fun |Nodeq$#trigger_20509| (T@PolymorphicMapType_43401 T@Field_53008_53009) Bool)
(declare-fun |Nodeq$#everUsed_20509| (T@Field_53008_53009) Bool)
(declare-fun NodegetNext$ (T@PolymorphicMapType_43401 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_43401 T@PolymorphicMapType_43401 T@PolymorphicMapType_43422) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20509 (T@Field_53008_53009) T@Field_53295_53300)
(declare-fun HasDirectPerm_20509_20510 (T@PolymorphicMapType_43422 T@Ref T@Field_53008_53009) Bool)
(declare-fun PredicateMaskField_20484 (T@Field_51807_51808) T@Field_51820_51825)
(declare-fun HasDirectPerm_20484_20485 (T@PolymorphicMapType_43422 T@Ref T@Field_51807_51808) Bool)
(declare-fun PredicateMaskField_20459 (T@Field_47198_47199) T@Field_49407_49412)
(declare-fun HasDirectPerm_20459_20460 (T@PolymorphicMapType_43422 T@Ref T@Field_47198_47199) Bool)
(declare-fun IsPredicateField_20418_178276 (T@Field_20418_20460) Bool)
(declare-fun PredicateMaskField_20418 (T@Field_20418_20460) T@Field_20418_49412)
(declare-fun HasDirectPerm_20418_20460 (T@PolymorphicMapType_43422 T@Ref T@Field_20418_20460) Bool)
(declare-fun IsWandField_20509_185968 (T@Field_53008_53009) Bool)
(declare-fun WandMaskField_20509 (T@Field_53008_53009) T@Field_53295_53300)
(declare-fun IsWandField_20484_185611 (T@Field_51807_51808) Bool)
(declare-fun WandMaskField_20484 (T@Field_51807_51808) T@Field_51820_51825)
(declare-fun IsWandField_20459_185254 (T@Field_47198_47199) Bool)
(declare-fun WandMaskField_20459 (T@Field_47198_47199) T@Field_49407_49412)
(declare-fun IsWandField_20418_184897 (T@Field_20418_20460) Bool)
(declare-fun WandMaskField_20418 (T@Field_20418_20460) T@Field_20418_49412)
(declare-fun |Nodevalid$#sm| (T@Ref) T@Field_49407_49412)
(declare-fun |Nodep$#sm| (T@Ref) T@Field_51820_51825)
(declare-fun |Nodeq$#sm| (T@Ref) T@Field_53295_53300)
(declare-fun dummyHeap () T@PolymorphicMapType_43401)
(declare-fun ZeroMask () T@PolymorphicMapType_43422)
(declare-fun InsidePredicate_43461_43461 (T@Field_20418_20460 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_20509 (T@Field_53008_53009 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_20484 (T@Field_51807_51808 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_20459 (T@Field_47198_47199 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun IsPredicateField_20418_20419 (T@Field_43474_43475) Bool)
(declare-fun IsWandField_20418_20419 (T@Field_43474_43475) Bool)
(declare-fun IsPredicateField_20421_1204 (T@Field_46838_1204) Bool)
(declare-fun IsWandField_20421_1204 (T@Field_46838_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20484_199643 (T@Field_51820_51825) Bool)
(declare-fun IsWandField_20484_199659 (T@Field_51820_51825) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20484_53 (T@Field_20484_53) Bool)
(declare-fun IsWandField_20484_53 (T@Field_20484_53) Bool)
(declare-fun IsPredicateField_20484_1204 (T@Field_20484_1204) Bool)
(declare-fun IsWandField_20484_1204 (T@Field_20484_1204) Bool)
(declare-fun IsPredicateField_20484_20419 (T@Field_20484_20419) Bool)
(declare-fun IsWandField_20484_20419 (T@Field_20484_20419) Bool)
(declare-fun IsPredicateField_20509_198812 (T@Field_53295_53300) Bool)
(declare-fun IsWandField_20509_198828 (T@Field_53295_53300) Bool)
(declare-fun IsPredicateField_20509_53 (T@Field_20509_53) Bool)
(declare-fun IsWandField_20509_53 (T@Field_20509_53) Bool)
(declare-fun IsPredicateField_20509_1204 (T@Field_20509_1204) Bool)
(declare-fun IsWandField_20509_1204 (T@Field_20509_1204) Bool)
(declare-fun IsPredicateField_20509_20419 (T@Field_20509_20419) Bool)
(declare-fun IsWandField_20509_20419 (T@Field_20509_20419) Bool)
(declare-fun IsPredicateField_20418_197981 (T@Field_20418_49412) Bool)
(declare-fun IsWandField_20418_197997 (T@Field_20418_49412) Bool)
(declare-fun IsPredicateField_20418_53 (T@Field_43461_53) Bool)
(declare-fun IsWandField_20418_53 (T@Field_43461_53) Bool)
(declare-fun IsPredicateField_20459_197178 (T@Field_49407_49412) Bool)
(declare-fun IsWandField_20459_197194 (T@Field_49407_49412) Bool)
(declare-fun IsPredicateField_20459_53 (T@Field_20459_53) Bool)
(declare-fun IsWandField_20459_53 (T@Field_20459_53) Bool)
(declare-fun IsPredicateField_20459_1204 (T@Field_20459_1204) Bool)
(declare-fun IsWandField_20459_1204 (T@Field_20459_1204) Bool)
(declare-fun IsPredicateField_20459_20419 (T@Field_20459_20419) Bool)
(declare-fun IsWandField_20459_20419 (T@Field_20459_20419) Bool)
(declare-fun HasDirectPerm_20509_178031 (T@PolymorphicMapType_43422 T@Ref T@Field_53295_53300) Bool)
(declare-fun HasDirectPerm_20509_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_20509_1204) Bool)
(declare-fun HasDirectPerm_20509_53 (T@PolymorphicMapType_43422 T@Ref T@Field_20509_53) Bool)
(declare-fun HasDirectPerm_20509_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_20509_20419) Bool)
(declare-fun HasDirectPerm_20484_176933 (T@PolymorphicMapType_43422 T@Ref T@Field_51820_51825) Bool)
(declare-fun HasDirectPerm_20484_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_20484_1204) Bool)
(declare-fun HasDirectPerm_20484_53 (T@PolymorphicMapType_43422 T@Ref T@Field_20484_53) Bool)
(declare-fun HasDirectPerm_20484_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_20484_20419) Bool)
(declare-fun HasDirectPerm_20459_175835 (T@PolymorphicMapType_43422 T@Ref T@Field_49407_49412) Bool)
(declare-fun HasDirectPerm_20459_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_20459_1204) Bool)
(declare-fun HasDirectPerm_20459_53 (T@PolymorphicMapType_43422 T@Ref T@Field_20459_53) Bool)
(declare-fun HasDirectPerm_20459_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_20459_20419) Bool)
(declare-fun HasDirectPerm_20418_174694 (T@PolymorphicMapType_43422 T@Ref T@Field_20418_49412) Bool)
(declare-fun HasDirectPerm_20418_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_46838_1204) Bool)
(declare-fun HasDirectPerm_20418_53 (T@PolymorphicMapType_43422 T@Ref T@Field_43461_53) Bool)
(declare-fun HasDirectPerm_20418_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_43474_43475) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_43422 T@PolymorphicMapType_43422 T@PolymorphicMapType_43422) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |NodegetNext$#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_20459_20460 (T@Field_47198_47199) Int)
(declare-fun getPredWandId_20484_20485 (T@Field_51807_51808) Int)
(declare-fun getPredWandId_20509_20510 (T@Field_53008_53009) Int)
(declare-fun InsidePredicate_43461_20484 (T@Field_20418_20460 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_43461_20509 (T@Field_20418_20460 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(declare-fun InsidePredicate_43461_20459 (T@Field_20418_20460 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_43461 (T@Field_51807_51808 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_20509 (T@Field_51807_51808 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_20459 (T@Field_51807_51808 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_43461 (T@Field_53008_53009 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_20484 (T@Field_53008_53009 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_20459 (T@Field_53008_53009 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_43461 (T@Field_47198_47199 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_20484 (T@Field_47198_47199 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_20509 (T@Field_47198_47199 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_43401) (Heap1 T@PolymorphicMapType_43401) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_43401) (Mask T@PolymorphicMapType_43422) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_43401) (Heap1@@0 T@PolymorphicMapType_43401) (Heap2 T@PolymorphicMapType_43401) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_53295_53300) ) (!  (not (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_53008_53009) ) (!  (not (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20509_53) ) (!  (not (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20509_1204) ) (!  (not (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20509_20419) ) (!  (not (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_51820_51825) ) (!  (not (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_51807_51808) ) (!  (not (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_20484_53) ) (!  (not (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20484_1204) ) (!  (not (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_20484_20419) ) (!  (not (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_49407_49412) ) (!  (not (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_47198_47199) ) (!  (not (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_20459_53) ) (!  (not (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_20459_1204) ) (!  (not (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_20459_20419) ) (!  (not (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_20418_49412) ) (!  (not (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_20418_20460) ) (!  (not (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_43461_53) ) (!  (not (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_46838_1204) ) (!  (not (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_43474_43475) ) (!  (not (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_20459_20460 (Nodevalid$ this))
 :qid |stdinbpl.316:15|
 :skolemid |28|
 :pattern ( (Nodevalid$ this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_20484_20485 (Nodep$ this@@0))
 :qid |stdinbpl.391:15|
 :skolemid |34|
 :pattern ( (Nodep$ this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_20509_20510 (Nodeq$ this@@1))
 :qid |stdinbpl.466:15|
 :skolemid |40|
 :pattern ( (Nodeq$ this@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_43401) (this@@2 T@Ref) ) (! (dummyFunction_20445 (|NodegetNext$#triggerStateless| this@@2))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|NodegetNext$'| Heap@@0 this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_43401) (this@@3 T@Ref) ) (! (|Nodevalid$#everUsed_20459| (Nodevalid$ this@@3))
 :qid |stdinbpl.335:15|
 :skolemid |32|
 :pattern ( (|Nodevalid$#trigger_20459| Heap@@1 (Nodevalid$ this@@3)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_43401) (this@@4 T@Ref) ) (! (|Nodep$#everUsed_20484| (Nodep$ this@@4))
 :qid |stdinbpl.410:15|
 :skolemid |38|
 :pattern ( (|Nodep$#trigger_20484| Heap@@2 (Nodep$ this@@4)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_43401) (this@@5 T@Ref) ) (! (|Nodeq$#everUsed_20509| (Nodeq$ this@@5))
 :qid |stdinbpl.485:15|
 :skolemid |44|
 :pattern ( (|Nodeq$#trigger_20509| Heap@@3 (Nodeq$ this@@5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_43401) (this@@6 T@Ref) ) (!  (and (= (NodegetNext$ Heap@@4 this@@6) (|NodegetNext$'| Heap@@4 this@@6)) (dummyFunction_20445 (|NodegetNext$#triggerStateless| this@@6)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (NodegetNext$ Heap@@4 this@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_43401) (ExhaleHeap T@PolymorphicMapType_43401) (Mask@@0 T@PolymorphicMapType_43422) (pm_f_43 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20509_20510 Mask@@0 null pm_f_43) (IsPredicateField_20509_20510 pm_f_43)) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@5) null (PredicateMaskField_20509 pm_f_43)) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap) null (PredicateMaskField_20509 pm_f_43)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_20509_20510 pm_f_43) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap) null (PredicateMaskField_20509 pm_f_43)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_43401) (ExhaleHeap@@0 T@PolymorphicMapType_43401) (Mask@@1 T@PolymorphicMapType_43422) (pm_f_43@@0 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20484_20485 Mask@@1 null pm_f_43@@0) (IsPredicateField_20484_20485 pm_f_43@@0)) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@6) null (PredicateMaskField_20484 pm_f_43@@0)) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@0) null (PredicateMaskField_20484 pm_f_43@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_20484_20485 pm_f_43@@0) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@0) null (PredicateMaskField_20484 pm_f_43@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_43401) (ExhaleHeap@@1 T@PolymorphicMapType_43401) (Mask@@2 T@PolymorphicMapType_43422) (pm_f_43@@1 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_20459_20460 Mask@@2 null pm_f_43@@1) (IsPredicateField_20459_20460 pm_f_43@@1)) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@7) null (PredicateMaskField_20459 pm_f_43@@1)) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@1) null (PredicateMaskField_20459 pm_f_43@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsPredicateField_20459_20460 pm_f_43@@1) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@1) null (PredicateMaskField_20459 pm_f_43@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_43401) (ExhaleHeap@@2 T@PolymorphicMapType_43401) (Mask@@3 T@PolymorphicMapType_43422) (pm_f_43@@2 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_20418_20460 Mask@@3 null pm_f_43@@2) (IsPredicateField_20418_178276 pm_f_43@@2)) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@8) null (PredicateMaskField_20418 pm_f_43@@2)) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@2) null (PredicateMaskField_20418 pm_f_43@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsPredicateField_20418_178276 pm_f_43@@2) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@2) null (PredicateMaskField_20418 pm_f_43@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_43401) (ExhaleHeap@@3 T@PolymorphicMapType_43401) (Mask@@4 T@PolymorphicMapType_43422) (pm_f_43@@3 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_20509_20510 Mask@@4 null pm_f_43@@3) (IsWandField_20509_185968 pm_f_43@@3)) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@9) null (WandMaskField_20509 pm_f_43@@3)) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@3) null (WandMaskField_20509 pm_f_43@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsWandField_20509_185968 pm_f_43@@3) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@3) null (WandMaskField_20509 pm_f_43@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_43401) (ExhaleHeap@@4 T@PolymorphicMapType_43401) (Mask@@5 T@PolymorphicMapType_43422) (pm_f_43@@4 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_20484_20485 Mask@@5 null pm_f_43@@4) (IsWandField_20484_185611 pm_f_43@@4)) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@10) null (WandMaskField_20484 pm_f_43@@4)) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@4) null (WandMaskField_20484 pm_f_43@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsWandField_20484_185611 pm_f_43@@4) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@4) null (WandMaskField_20484 pm_f_43@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_43401) (ExhaleHeap@@5 T@PolymorphicMapType_43401) (Mask@@6 T@PolymorphicMapType_43422) (pm_f_43@@5 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_20459_20460 Mask@@6 null pm_f_43@@5) (IsWandField_20459_185254 pm_f_43@@5)) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@11) null (WandMaskField_20459 pm_f_43@@5)) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@5) null (WandMaskField_20459 pm_f_43@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_20459_185254 pm_f_43@@5) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@5) null (WandMaskField_20459 pm_f_43@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_43401) (ExhaleHeap@@6 T@PolymorphicMapType_43401) (Mask@@7 T@PolymorphicMapType_43422) (pm_f_43@@6 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_20418_20460 Mask@@7 null pm_f_43@@6) (IsWandField_20418_184897 pm_f_43@@6)) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@12) null (WandMaskField_20418 pm_f_43@@6)) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@6) null (WandMaskField_20418 pm_f_43@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_20418_184897 pm_f_43@@6) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@6) null (WandMaskField_20418 pm_f_43@@6)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_43401) (ExhaleHeap@@7 T@PolymorphicMapType_43401) (Mask@@8 T@PolymorphicMapType_43422) (pm_f_43@@7 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_20509_20510 Mask@@8 null pm_f_43@@7) (IsPredicateField_20509_20510 pm_f_43@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43 T@Ref) (f_133 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43 f_133) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@13) o2_43 f_133) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43 f_133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43 f_133))
)) (forall ((o2_43@@0 T@Ref) (f_133@@0 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@0 f_133@@0) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@0 f_133@@0) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@0 f_133@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@0 f_133@@0))
))) (forall ((o2_43@@1 T@Ref) (f_133@@1 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@1 f_133@@1) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@13) o2_43@@1 f_133@@1) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@1 f_133@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@1 f_133@@1))
))) (forall ((o2_43@@2 T@Ref) (f_133@@2 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@2 f_133@@2) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@13) o2_43@@2 f_133@@2) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@2 f_133@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@2 f_133@@2))
))) (forall ((o2_43@@3 T@Ref) (f_133@@3 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@3 f_133@@3) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@13) o2_43@@3 f_133@@3) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@3 f_133@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@3 f_133@@3))
))) (forall ((o2_43@@4 T@Ref) (f_133@@4 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@4 f_133@@4) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@13) o2_43@@4 f_133@@4) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@4 f_133@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@4 f_133@@4))
))) (forall ((o2_43@@5 T@Ref) (f_133@@5 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@5 f_133@@5) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@5 f_133@@5) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@5 f_133@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@5 f_133@@5))
))) (forall ((o2_43@@6 T@Ref) (f_133@@6 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@6 f_133@@6) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@13) o2_43@@6 f_133@@6) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@6 f_133@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@6 f_133@@6))
))) (forall ((o2_43@@7 T@Ref) (f_133@@7 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@7 f_133@@7) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@13) o2_43@@7 f_133@@7) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@7 f_133@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@7 f_133@@7))
))) (forall ((o2_43@@8 T@Ref) (f_133@@8 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@8 f_133@@8) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@13) o2_43@@8 f_133@@8) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@8 f_133@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@8 f_133@@8))
))) (forall ((o2_43@@9 T@Ref) (f_133@@9 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@9 f_133@@9) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@13) o2_43@@9 f_133@@9) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@9 f_133@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@9 f_133@@9))
))) (forall ((o2_43@@10 T@Ref) (f_133@@10 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@10 f_133@@10) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@10 f_133@@10) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@10 f_133@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@10 f_133@@10))
))) (forall ((o2_43@@11 T@Ref) (f_133@@11 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@11 f_133@@11) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@13) o2_43@@11 f_133@@11) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@11 f_133@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@11 f_133@@11))
))) (forall ((o2_43@@12 T@Ref) (f_133@@12 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@12 f_133@@12) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@13) o2_43@@12 f_133@@12) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@12 f_133@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@12 f_133@@12))
))) (forall ((o2_43@@13 T@Ref) (f_133@@13 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@13 f_133@@13) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@13) o2_43@@13 f_133@@13) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@13 f_133@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@13 f_133@@13))
))) (forall ((o2_43@@14 T@Ref) (f_133@@14 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@14 f_133@@14) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@13) o2_43@@14 f_133@@14) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@14 f_133@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@14 f_133@@14))
))) (forall ((o2_43@@15 T@Ref) (f_133@@15 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@15 f_133@@15) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@15 f_133@@15) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@15 f_133@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@15 f_133@@15))
))) (forall ((o2_43@@16 T@Ref) (f_133@@16 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@16 f_133@@16) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@13) o2_43@@16 f_133@@16) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@16 f_133@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@16 f_133@@16))
))) (forall ((o2_43@@17 T@Ref) (f_133@@17 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@17 f_133@@17) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@13) o2_43@@17 f_133@@17) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@17 f_133@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@17 f_133@@17))
))) (forall ((o2_43@@18 T@Ref) (f_133@@18 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@18 f_133@@18) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) o2_43@@18 f_133@@18) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@18 f_133@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@18 f_133@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (IsPredicateField_20509_20510 pm_f_43@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_43401) (ExhaleHeap@@8 T@PolymorphicMapType_43401) (Mask@@9 T@PolymorphicMapType_43422) (pm_f_43@@8 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_20484_20485 Mask@@9 null pm_f_43@@8) (IsPredicateField_20484_20485 pm_f_43@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@19 T@Ref) (f_133@@19 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@19 f_133@@19) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@14) o2_43@@19 f_133@@19) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@19 f_133@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@19 f_133@@19))
)) (forall ((o2_43@@20 T@Ref) (f_133@@20 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@20 f_133@@20) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@20 f_133@@20) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@20 f_133@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@20 f_133@@20))
))) (forall ((o2_43@@21 T@Ref) (f_133@@21 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@21 f_133@@21) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@14) o2_43@@21 f_133@@21) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@21 f_133@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@21 f_133@@21))
))) (forall ((o2_43@@22 T@Ref) (f_133@@22 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@22 f_133@@22) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@14) o2_43@@22 f_133@@22) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@22 f_133@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@22 f_133@@22))
))) (forall ((o2_43@@23 T@Ref) (f_133@@23 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@23 f_133@@23) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@14) o2_43@@23 f_133@@23) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@23 f_133@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@23 f_133@@23))
))) (forall ((o2_43@@24 T@Ref) (f_133@@24 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@24 f_133@@24) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@14) o2_43@@24 f_133@@24) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@24 f_133@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@24 f_133@@24))
))) (forall ((o2_43@@25 T@Ref) (f_133@@25 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@25 f_133@@25) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@25 f_133@@25) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@25 f_133@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@25 f_133@@25))
))) (forall ((o2_43@@26 T@Ref) (f_133@@26 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@26 f_133@@26) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@14) o2_43@@26 f_133@@26) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@26 f_133@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@26 f_133@@26))
))) (forall ((o2_43@@27 T@Ref) (f_133@@27 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@27 f_133@@27) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@14) o2_43@@27 f_133@@27) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@27 f_133@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@27 f_133@@27))
))) (forall ((o2_43@@28 T@Ref) (f_133@@28 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@28 f_133@@28) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@14) o2_43@@28 f_133@@28) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@28 f_133@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@28 f_133@@28))
))) (forall ((o2_43@@29 T@Ref) (f_133@@29 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@29 f_133@@29) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@14) o2_43@@29 f_133@@29) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@29 f_133@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@29 f_133@@29))
))) (forall ((o2_43@@30 T@Ref) (f_133@@30 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@30 f_133@@30) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@30 f_133@@30) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@30 f_133@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@30 f_133@@30))
))) (forall ((o2_43@@31 T@Ref) (f_133@@31 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@31 f_133@@31) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@14) o2_43@@31 f_133@@31) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@31 f_133@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@31 f_133@@31))
))) (forall ((o2_43@@32 T@Ref) (f_133@@32 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@32 f_133@@32) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@14) o2_43@@32 f_133@@32) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@32 f_133@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@32 f_133@@32))
))) (forall ((o2_43@@33 T@Ref) (f_133@@33 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@33 f_133@@33) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) o2_43@@33 f_133@@33) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@33 f_133@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@33 f_133@@33))
))) (forall ((o2_43@@34 T@Ref) (f_133@@34 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@34 f_133@@34) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@14) o2_43@@34 f_133@@34) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@34 f_133@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@34 f_133@@34))
))) (forall ((o2_43@@35 T@Ref) (f_133@@35 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@35 f_133@@35) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@35 f_133@@35) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@35 f_133@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@35 f_133@@35))
))) (forall ((o2_43@@36 T@Ref) (f_133@@36 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@36 f_133@@36) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@14) o2_43@@36 f_133@@36) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@36 f_133@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@36 f_133@@36))
))) (forall ((o2_43@@37 T@Ref) (f_133@@37 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@37 f_133@@37) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@14) o2_43@@37 f_133@@37) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@37 f_133@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@37 f_133@@37))
))) (forall ((o2_43@@38 T@Ref) (f_133@@38 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@38 f_133@@38) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@14) o2_43@@38 f_133@@38) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@38 f_133@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@38 f_133@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (IsPredicateField_20484_20485 pm_f_43@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_43401) (ExhaleHeap@@9 T@PolymorphicMapType_43401) (Mask@@10 T@PolymorphicMapType_43422) (pm_f_43@@9 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_20459_20460 Mask@@10 null pm_f_43@@9) (IsPredicateField_20459_20460 pm_f_43@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@39 T@Ref) (f_133@@39 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@39 f_133@@39) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@15) o2_43@@39 f_133@@39) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@39 f_133@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@39 f_133@@39))
)) (forall ((o2_43@@40 T@Ref) (f_133@@40 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@40 f_133@@40) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@40 f_133@@40) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@40 f_133@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@40 f_133@@40))
))) (forall ((o2_43@@41 T@Ref) (f_133@@41 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@41 f_133@@41) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@15) o2_43@@41 f_133@@41) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@41 f_133@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@41 f_133@@41))
))) (forall ((o2_43@@42 T@Ref) (f_133@@42 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@42 f_133@@42) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@15) o2_43@@42 f_133@@42) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@42 f_133@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@42 f_133@@42))
))) (forall ((o2_43@@43 T@Ref) (f_133@@43 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@43 f_133@@43) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@15) o2_43@@43 f_133@@43) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@43 f_133@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@43 f_133@@43))
))) (forall ((o2_43@@44 T@Ref) (f_133@@44 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@44 f_133@@44) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@15) o2_43@@44 f_133@@44) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@44 f_133@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@44 f_133@@44))
))) (forall ((o2_43@@45 T@Ref) (f_133@@45 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@45 f_133@@45) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@45 f_133@@45) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@45 f_133@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@45 f_133@@45))
))) (forall ((o2_43@@46 T@Ref) (f_133@@46 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@46 f_133@@46) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@15) o2_43@@46 f_133@@46) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@46 f_133@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@46 f_133@@46))
))) (forall ((o2_43@@47 T@Ref) (f_133@@47 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@47 f_133@@47) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@15) o2_43@@47 f_133@@47) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@47 f_133@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@47 f_133@@47))
))) (forall ((o2_43@@48 T@Ref) (f_133@@48 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@48 f_133@@48) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) o2_43@@48 f_133@@48) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@48 f_133@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@48 f_133@@48))
))) (forall ((o2_43@@49 T@Ref) (f_133@@49 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@49 f_133@@49) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@15) o2_43@@49 f_133@@49) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@49 f_133@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@49 f_133@@49))
))) (forall ((o2_43@@50 T@Ref) (f_133@@50 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@50 f_133@@50) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@50 f_133@@50) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@50 f_133@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@50 f_133@@50))
))) (forall ((o2_43@@51 T@Ref) (f_133@@51 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@51 f_133@@51) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@15) o2_43@@51 f_133@@51) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@51 f_133@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@51 f_133@@51))
))) (forall ((o2_43@@52 T@Ref) (f_133@@52 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@52 f_133@@52) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@15) o2_43@@52 f_133@@52) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@52 f_133@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@52 f_133@@52))
))) (forall ((o2_43@@53 T@Ref) (f_133@@53 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@53 f_133@@53) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@15) o2_43@@53 f_133@@53) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@53 f_133@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@53 f_133@@53))
))) (forall ((o2_43@@54 T@Ref) (f_133@@54 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@54 f_133@@54) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@15) o2_43@@54 f_133@@54) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@54 f_133@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@54 f_133@@54))
))) (forall ((o2_43@@55 T@Ref) (f_133@@55 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@55 f_133@@55) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@55 f_133@@55) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@55 f_133@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@55 f_133@@55))
))) (forall ((o2_43@@56 T@Ref) (f_133@@56 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@56 f_133@@56) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@15) o2_43@@56 f_133@@56) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@56 f_133@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@56 f_133@@56))
))) (forall ((o2_43@@57 T@Ref) (f_133@@57 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@57 f_133@@57) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@15) o2_43@@57 f_133@@57) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@57 f_133@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@57 f_133@@57))
))) (forall ((o2_43@@58 T@Ref) (f_133@@58 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@58 f_133@@58) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@15) o2_43@@58 f_133@@58) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@58 f_133@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@58 f_133@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (IsPredicateField_20459_20460 pm_f_43@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_43401) (ExhaleHeap@@10 T@PolymorphicMapType_43401) (Mask@@11 T@PolymorphicMapType_43422) (pm_f_43@@10 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_20418_20460 Mask@@11 null pm_f_43@@10) (IsPredicateField_20418_178276 pm_f_43@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@59 T@Ref) (f_133@@59 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@59 f_133@@59) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@16) o2_43@@59 f_133@@59) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@59 f_133@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@59 f_133@@59))
)) (forall ((o2_43@@60 T@Ref) (f_133@@60 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@60 f_133@@60) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@60 f_133@@60) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@60 f_133@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@60 f_133@@60))
))) (forall ((o2_43@@61 T@Ref) (f_133@@61 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@61 f_133@@61) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@16) o2_43@@61 f_133@@61) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@61 f_133@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@61 f_133@@61))
))) (forall ((o2_43@@62 T@Ref) (f_133@@62 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@62 f_133@@62) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@16) o2_43@@62 f_133@@62) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@62 f_133@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@62 f_133@@62))
))) (forall ((o2_43@@63 T@Ref) (f_133@@63 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@63 f_133@@63) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) o2_43@@63 f_133@@63) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@63 f_133@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@63 f_133@@63))
))) (forall ((o2_43@@64 T@Ref) (f_133@@64 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@64 f_133@@64) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@16) o2_43@@64 f_133@@64) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@64 f_133@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@64 f_133@@64))
))) (forall ((o2_43@@65 T@Ref) (f_133@@65 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@65 f_133@@65) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@65 f_133@@65) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@65 f_133@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@65 f_133@@65))
))) (forall ((o2_43@@66 T@Ref) (f_133@@66 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@66 f_133@@66) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@16) o2_43@@66 f_133@@66) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@66 f_133@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@66 f_133@@66))
))) (forall ((o2_43@@67 T@Ref) (f_133@@67 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@67 f_133@@67) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@16) o2_43@@67 f_133@@67) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@67 f_133@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@67 f_133@@67))
))) (forall ((o2_43@@68 T@Ref) (f_133@@68 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@68 f_133@@68) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@16) o2_43@@68 f_133@@68) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@68 f_133@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@68 f_133@@68))
))) (forall ((o2_43@@69 T@Ref) (f_133@@69 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@69 f_133@@69) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@16) o2_43@@69 f_133@@69) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@69 f_133@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@69 f_133@@69))
))) (forall ((o2_43@@70 T@Ref) (f_133@@70 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@70 f_133@@70) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@70 f_133@@70) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@70 f_133@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@70 f_133@@70))
))) (forall ((o2_43@@71 T@Ref) (f_133@@71 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@71 f_133@@71) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@16) o2_43@@71 f_133@@71) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@71 f_133@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@71 f_133@@71))
))) (forall ((o2_43@@72 T@Ref) (f_133@@72 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@72 f_133@@72) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@16) o2_43@@72 f_133@@72) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@72 f_133@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@72 f_133@@72))
))) (forall ((o2_43@@73 T@Ref) (f_133@@73 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@73 f_133@@73) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@16) o2_43@@73 f_133@@73) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@73 f_133@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@73 f_133@@73))
))) (forall ((o2_43@@74 T@Ref) (f_133@@74 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@74 f_133@@74) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@16) o2_43@@74 f_133@@74) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@74 f_133@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@74 f_133@@74))
))) (forall ((o2_43@@75 T@Ref) (f_133@@75 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@75 f_133@@75) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@75 f_133@@75) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@75 f_133@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@75 f_133@@75))
))) (forall ((o2_43@@76 T@Ref) (f_133@@76 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@76 f_133@@76) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@16) o2_43@@76 f_133@@76) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@76 f_133@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@76 f_133@@76))
))) (forall ((o2_43@@77 T@Ref) (f_133@@77 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@77 f_133@@77) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@16) o2_43@@77 f_133@@77) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@77 f_133@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@77 f_133@@77))
))) (forall ((o2_43@@78 T@Ref) (f_133@@78 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@78 f_133@@78) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@16) o2_43@@78 f_133@@78) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@78 f_133@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@78 f_133@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (IsPredicateField_20418_178276 pm_f_43@@10))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_43401) (ExhaleHeap@@11 T@PolymorphicMapType_43401) (Mask@@12 T@PolymorphicMapType_43422) (pm_f_43@@11 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_20509_20510 Mask@@12 null pm_f_43@@11) (IsWandField_20509_185968 pm_f_43@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@79 T@Ref) (f_133@@79 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@79 f_133@@79) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@17) o2_43@@79 f_133@@79) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@79 f_133@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@79 f_133@@79))
)) (forall ((o2_43@@80 T@Ref) (f_133@@80 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@80 f_133@@80) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@80 f_133@@80) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@80 f_133@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@80 f_133@@80))
))) (forall ((o2_43@@81 T@Ref) (f_133@@81 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@81 f_133@@81) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@17) o2_43@@81 f_133@@81) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@81 f_133@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@81 f_133@@81))
))) (forall ((o2_43@@82 T@Ref) (f_133@@82 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@82 f_133@@82) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@17) o2_43@@82 f_133@@82) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@82 f_133@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@82 f_133@@82))
))) (forall ((o2_43@@83 T@Ref) (f_133@@83 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@83 f_133@@83) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@17) o2_43@@83 f_133@@83) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@83 f_133@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@83 f_133@@83))
))) (forall ((o2_43@@84 T@Ref) (f_133@@84 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@84 f_133@@84) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@17) o2_43@@84 f_133@@84) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@84 f_133@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@84 f_133@@84))
))) (forall ((o2_43@@85 T@Ref) (f_133@@85 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@85 f_133@@85) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@85 f_133@@85) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@85 f_133@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@85 f_133@@85))
))) (forall ((o2_43@@86 T@Ref) (f_133@@86 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@86 f_133@@86) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@17) o2_43@@86 f_133@@86) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@86 f_133@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@86 f_133@@86))
))) (forall ((o2_43@@87 T@Ref) (f_133@@87 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@87 f_133@@87) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@17) o2_43@@87 f_133@@87) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@87 f_133@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@87 f_133@@87))
))) (forall ((o2_43@@88 T@Ref) (f_133@@88 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@88 f_133@@88) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@17) o2_43@@88 f_133@@88) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@88 f_133@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@88 f_133@@88))
))) (forall ((o2_43@@89 T@Ref) (f_133@@89 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@89 f_133@@89) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@17) o2_43@@89 f_133@@89) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@89 f_133@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@89 f_133@@89))
))) (forall ((o2_43@@90 T@Ref) (f_133@@90 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@90 f_133@@90) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@90 f_133@@90) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@90 f_133@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@90 f_133@@90))
))) (forall ((o2_43@@91 T@Ref) (f_133@@91 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@91 f_133@@91) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@17) o2_43@@91 f_133@@91) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@91 f_133@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@91 f_133@@91))
))) (forall ((o2_43@@92 T@Ref) (f_133@@92 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@92 f_133@@92) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@17) o2_43@@92 f_133@@92) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@92 f_133@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@92 f_133@@92))
))) (forall ((o2_43@@93 T@Ref) (f_133@@93 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@93 f_133@@93) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@17) o2_43@@93 f_133@@93) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@93 f_133@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@93 f_133@@93))
))) (forall ((o2_43@@94 T@Ref) (f_133@@94 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@94 f_133@@94) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@17) o2_43@@94 f_133@@94) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@94 f_133@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@94 f_133@@94))
))) (forall ((o2_43@@95 T@Ref) (f_133@@95 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@95 f_133@@95) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@95 f_133@@95) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@95 f_133@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@95 f_133@@95))
))) (forall ((o2_43@@96 T@Ref) (f_133@@96 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@96 f_133@@96) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@17) o2_43@@96 f_133@@96) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@96 f_133@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@96 f_133@@96))
))) (forall ((o2_43@@97 T@Ref) (f_133@@97 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@97 f_133@@97) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@17) o2_43@@97 f_133@@97) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@97 f_133@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@97 f_133@@97))
))) (forall ((o2_43@@98 T@Ref) (f_133@@98 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@98 f_133@@98) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) o2_43@@98 f_133@@98) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@98 f_133@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@98 f_133@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (IsWandField_20509_185968 pm_f_43@@11))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_43401) (ExhaleHeap@@12 T@PolymorphicMapType_43401) (Mask@@13 T@PolymorphicMapType_43422) (pm_f_43@@12 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_20484_20485 Mask@@13 null pm_f_43@@12) (IsWandField_20484_185611 pm_f_43@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@99 T@Ref) (f_133@@99 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@99 f_133@@99) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@18) o2_43@@99 f_133@@99) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@99 f_133@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@99 f_133@@99))
)) (forall ((o2_43@@100 T@Ref) (f_133@@100 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@100 f_133@@100) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@100 f_133@@100) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@100 f_133@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@100 f_133@@100))
))) (forall ((o2_43@@101 T@Ref) (f_133@@101 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@101 f_133@@101) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@18) o2_43@@101 f_133@@101) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@101 f_133@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@101 f_133@@101))
))) (forall ((o2_43@@102 T@Ref) (f_133@@102 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@102 f_133@@102) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@18) o2_43@@102 f_133@@102) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@102 f_133@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@102 f_133@@102))
))) (forall ((o2_43@@103 T@Ref) (f_133@@103 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@103 f_133@@103) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@18) o2_43@@103 f_133@@103) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@103 f_133@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@103 f_133@@103))
))) (forall ((o2_43@@104 T@Ref) (f_133@@104 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@104 f_133@@104) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@18) o2_43@@104 f_133@@104) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@104 f_133@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@104 f_133@@104))
))) (forall ((o2_43@@105 T@Ref) (f_133@@105 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@105 f_133@@105) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@105 f_133@@105) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@105 f_133@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@105 f_133@@105))
))) (forall ((o2_43@@106 T@Ref) (f_133@@106 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@106 f_133@@106) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@18) o2_43@@106 f_133@@106) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@106 f_133@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@106 f_133@@106))
))) (forall ((o2_43@@107 T@Ref) (f_133@@107 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@107 f_133@@107) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@18) o2_43@@107 f_133@@107) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@107 f_133@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@107 f_133@@107))
))) (forall ((o2_43@@108 T@Ref) (f_133@@108 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@108 f_133@@108) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@18) o2_43@@108 f_133@@108) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@108 f_133@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@108 f_133@@108))
))) (forall ((o2_43@@109 T@Ref) (f_133@@109 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@109 f_133@@109) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@18) o2_43@@109 f_133@@109) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@109 f_133@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@109 f_133@@109))
))) (forall ((o2_43@@110 T@Ref) (f_133@@110 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@110 f_133@@110) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@110 f_133@@110) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@110 f_133@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@110 f_133@@110))
))) (forall ((o2_43@@111 T@Ref) (f_133@@111 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@111 f_133@@111) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@18) o2_43@@111 f_133@@111) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@111 f_133@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@111 f_133@@111))
))) (forall ((o2_43@@112 T@Ref) (f_133@@112 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@112 f_133@@112) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@18) o2_43@@112 f_133@@112) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@112 f_133@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@112 f_133@@112))
))) (forall ((o2_43@@113 T@Ref) (f_133@@113 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@113 f_133@@113) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) o2_43@@113 f_133@@113) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@113 f_133@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@113 f_133@@113))
))) (forall ((o2_43@@114 T@Ref) (f_133@@114 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@114 f_133@@114) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@18) o2_43@@114 f_133@@114) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@114 f_133@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@114 f_133@@114))
))) (forall ((o2_43@@115 T@Ref) (f_133@@115 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@115 f_133@@115) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@115 f_133@@115) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@115 f_133@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@115 f_133@@115))
))) (forall ((o2_43@@116 T@Ref) (f_133@@116 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@116 f_133@@116) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@18) o2_43@@116 f_133@@116) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@116 f_133@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@116 f_133@@116))
))) (forall ((o2_43@@117 T@Ref) (f_133@@117 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@117 f_133@@117) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@18) o2_43@@117 f_133@@117) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@117 f_133@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@117 f_133@@117))
))) (forall ((o2_43@@118 T@Ref) (f_133@@118 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@118 f_133@@118) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@18) o2_43@@118 f_133@@118) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@118 f_133@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@118 f_133@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (IsWandField_20484_185611 pm_f_43@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_43401) (ExhaleHeap@@13 T@PolymorphicMapType_43401) (Mask@@14 T@PolymorphicMapType_43422) (pm_f_43@@13 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_20459_20460 Mask@@14 null pm_f_43@@13) (IsWandField_20459_185254 pm_f_43@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@119 T@Ref) (f_133@@119 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@119 f_133@@119) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@19) o2_43@@119 f_133@@119) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@119 f_133@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@119 f_133@@119))
)) (forall ((o2_43@@120 T@Ref) (f_133@@120 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@120 f_133@@120) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@120 f_133@@120) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@120 f_133@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@120 f_133@@120))
))) (forall ((o2_43@@121 T@Ref) (f_133@@121 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@121 f_133@@121) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@19) o2_43@@121 f_133@@121) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@121 f_133@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@121 f_133@@121))
))) (forall ((o2_43@@122 T@Ref) (f_133@@122 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@122 f_133@@122) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@19) o2_43@@122 f_133@@122) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@122 f_133@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@122 f_133@@122))
))) (forall ((o2_43@@123 T@Ref) (f_133@@123 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@123 f_133@@123) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@19) o2_43@@123 f_133@@123) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@123 f_133@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@123 f_133@@123))
))) (forall ((o2_43@@124 T@Ref) (f_133@@124 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@124 f_133@@124) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@19) o2_43@@124 f_133@@124) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@124 f_133@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@124 f_133@@124))
))) (forall ((o2_43@@125 T@Ref) (f_133@@125 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@125 f_133@@125) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@125 f_133@@125) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@125 f_133@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@125 f_133@@125))
))) (forall ((o2_43@@126 T@Ref) (f_133@@126 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@126 f_133@@126) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@19) o2_43@@126 f_133@@126) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@126 f_133@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@126 f_133@@126))
))) (forall ((o2_43@@127 T@Ref) (f_133@@127 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@127 f_133@@127) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@19) o2_43@@127 f_133@@127) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@127 f_133@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@127 f_133@@127))
))) (forall ((o2_43@@128 T@Ref) (f_133@@128 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@128 f_133@@128) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) o2_43@@128 f_133@@128) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@128 f_133@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@128 f_133@@128))
))) (forall ((o2_43@@129 T@Ref) (f_133@@129 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@129 f_133@@129) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@19) o2_43@@129 f_133@@129) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@129 f_133@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@129 f_133@@129))
))) (forall ((o2_43@@130 T@Ref) (f_133@@130 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@130 f_133@@130) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@130 f_133@@130) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@130 f_133@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@130 f_133@@130))
))) (forall ((o2_43@@131 T@Ref) (f_133@@131 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@131 f_133@@131) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@19) o2_43@@131 f_133@@131) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@131 f_133@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@131 f_133@@131))
))) (forall ((o2_43@@132 T@Ref) (f_133@@132 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@132 f_133@@132) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@19) o2_43@@132 f_133@@132) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@132 f_133@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@132 f_133@@132))
))) (forall ((o2_43@@133 T@Ref) (f_133@@133 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@133 f_133@@133) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@19) o2_43@@133 f_133@@133) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@133 f_133@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@133 f_133@@133))
))) (forall ((o2_43@@134 T@Ref) (f_133@@134 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@134 f_133@@134) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@19) o2_43@@134 f_133@@134) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@134 f_133@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@134 f_133@@134))
))) (forall ((o2_43@@135 T@Ref) (f_133@@135 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@135 f_133@@135) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@135 f_133@@135) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@135 f_133@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@135 f_133@@135))
))) (forall ((o2_43@@136 T@Ref) (f_133@@136 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@136 f_133@@136) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@19) o2_43@@136 f_133@@136) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@136 f_133@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@136 f_133@@136))
))) (forall ((o2_43@@137 T@Ref) (f_133@@137 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@137 f_133@@137) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@19) o2_43@@137 f_133@@137) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@137 f_133@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@137 f_133@@137))
))) (forall ((o2_43@@138 T@Ref) (f_133@@138 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@138 f_133@@138) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@19) o2_43@@138 f_133@@138) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@138 f_133@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@138 f_133@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (IsWandField_20459_185254 pm_f_43@@13))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_43401) (ExhaleHeap@@14 T@PolymorphicMapType_43401) (Mask@@15 T@PolymorphicMapType_43422) (pm_f_43@@14 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_20418_20460 Mask@@15 null pm_f_43@@14) (IsWandField_20418_184897 pm_f_43@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@139 T@Ref) (f_133@@139 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@139 f_133@@139) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@20) o2_43@@139 f_133@@139) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@139 f_133@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@139 f_133@@139))
)) (forall ((o2_43@@140 T@Ref) (f_133@@140 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@140 f_133@@140) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@140 f_133@@140) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@140 f_133@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@140 f_133@@140))
))) (forall ((o2_43@@141 T@Ref) (f_133@@141 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@141 f_133@@141) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@20) o2_43@@141 f_133@@141) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@141 f_133@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@141 f_133@@141))
))) (forall ((o2_43@@142 T@Ref) (f_133@@142 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@142 f_133@@142) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@20) o2_43@@142 f_133@@142) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@142 f_133@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@142 f_133@@142))
))) (forall ((o2_43@@143 T@Ref) (f_133@@143 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@143 f_133@@143) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) o2_43@@143 f_133@@143) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@143 f_133@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@143 f_133@@143))
))) (forall ((o2_43@@144 T@Ref) (f_133@@144 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@144 f_133@@144) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@20) o2_43@@144 f_133@@144) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@144 f_133@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@144 f_133@@144))
))) (forall ((o2_43@@145 T@Ref) (f_133@@145 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@145 f_133@@145) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@145 f_133@@145) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@145 f_133@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@145 f_133@@145))
))) (forall ((o2_43@@146 T@Ref) (f_133@@146 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@146 f_133@@146) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@20) o2_43@@146 f_133@@146) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@146 f_133@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@146 f_133@@146))
))) (forall ((o2_43@@147 T@Ref) (f_133@@147 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@147 f_133@@147) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@20) o2_43@@147 f_133@@147) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@147 f_133@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@147 f_133@@147))
))) (forall ((o2_43@@148 T@Ref) (f_133@@148 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@148 f_133@@148) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@20) o2_43@@148 f_133@@148) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@148 f_133@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@148 f_133@@148))
))) (forall ((o2_43@@149 T@Ref) (f_133@@149 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@149 f_133@@149) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@20) o2_43@@149 f_133@@149) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@149 f_133@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@149 f_133@@149))
))) (forall ((o2_43@@150 T@Ref) (f_133@@150 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@150 f_133@@150) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@150 f_133@@150) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@150 f_133@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@150 f_133@@150))
))) (forall ((o2_43@@151 T@Ref) (f_133@@151 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@151 f_133@@151) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@20) o2_43@@151 f_133@@151) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@151 f_133@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@151 f_133@@151))
))) (forall ((o2_43@@152 T@Ref) (f_133@@152 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@152 f_133@@152) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@20) o2_43@@152 f_133@@152) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@152 f_133@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@152 f_133@@152))
))) (forall ((o2_43@@153 T@Ref) (f_133@@153 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@153 f_133@@153) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@20) o2_43@@153 f_133@@153) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@153 f_133@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@153 f_133@@153))
))) (forall ((o2_43@@154 T@Ref) (f_133@@154 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@154 f_133@@154) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@20) o2_43@@154 f_133@@154) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@154 f_133@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@154 f_133@@154))
))) (forall ((o2_43@@155 T@Ref) (f_133@@155 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@155 f_133@@155) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@155 f_133@@155) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@155 f_133@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@155 f_133@@155))
))) (forall ((o2_43@@156 T@Ref) (f_133@@156 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@156 f_133@@156) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@20) o2_43@@156 f_133@@156) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@156 f_133@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@156 f_133@@156))
))) (forall ((o2_43@@157 T@Ref) (f_133@@157 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@157 f_133@@157) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@20) o2_43@@157 f_133@@157) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@157 f_133@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@157 f_133@@157))
))) (forall ((o2_43@@158 T@Ref) (f_133@@158 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@158 f_133@@158) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@20) o2_43@@158 f_133@@158) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@158 f_133@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@158 f_133@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (IsWandField_20418_184897 pm_f_43@@14))
)))
(assert (forall ((this@@7 T@Ref) (this2 T@Ref) ) (!  (=> (= (Nodevalid$ this@@7) (Nodevalid$ this2)) (= this@@7 this2))
 :qid |stdinbpl.326:15|
 :skolemid |30|
 :pattern ( (Nodevalid$ this@@7) (Nodevalid$ this2))
)))
(assert (forall ((this@@8 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Nodevalid$#sm| this@@8) (|Nodevalid$#sm| this2@@0)) (= this@@8 this2@@0))
 :qid |stdinbpl.330:15|
 :skolemid |31|
 :pattern ( (|Nodevalid$#sm| this@@8) (|Nodevalid$#sm| this2@@0))
)))
(assert (forall ((this@@9 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (Nodep$ this@@9) (Nodep$ this2@@1)) (= this@@9 this2@@1))
 :qid |stdinbpl.401:15|
 :skolemid |36|
 :pattern ( (Nodep$ this@@9) (Nodep$ this2@@1))
)))
(assert (forall ((this@@10 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|Nodep$#sm| this@@10) (|Nodep$#sm| this2@@2)) (= this@@10 this2@@2))
 :qid |stdinbpl.405:15|
 :skolemid |37|
 :pattern ( (|Nodep$#sm| this@@10) (|Nodep$#sm| this2@@2))
)))
(assert (forall ((this@@11 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (Nodeq$ this@@11) (Nodeq$ this2@@3)) (= this@@11 this2@@3))
 :qid |stdinbpl.476:15|
 :skolemid |42|
 :pattern ( (Nodeq$ this@@11) (Nodeq$ this2@@3))
)))
(assert (forall ((this@@12 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|Nodeq$#sm| this@@12) (|Nodeq$#sm| this2@@4)) (= this@@12 this2@@4))
 :qid |stdinbpl.480:15|
 :skolemid |43|
 :pattern ( (|Nodeq$#sm| this@@12) (|Nodeq$#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@21 T@PolymorphicMapType_43401) (ExhaleHeap@@15 T@PolymorphicMapType_43401) (Mask@@16 T@PolymorphicMapType_43422) (o_100 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@21) o_100 $allocated) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@15) o_100 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@15) o_100 $allocated))
)))
(assert (forall ((p T@Field_20418_20460) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_43461_43461 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43461_43461 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_53008_53009) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_20509_20509 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20509_20509 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_51807_51808) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_20484_20484 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20484_20484 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_47198_47199) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_20459_20459 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20459_20459 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_20418_20419 Nodenext$)))
(assert  (not (IsWandField_20418_20419 Nodenext$)))
(assert  (not (IsPredicateField_20421_1204 Nodevalue$)))
(assert  (not (IsWandField_20421_1204 Nodevalue$)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_43401) (ExhaleHeap@@16 T@PolymorphicMapType_43401) (Mask@@17 T@PolymorphicMapType_43422) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@22 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_43422) (o_2@@19 T@Ref) (f_4@@19 T@Field_51820_51825) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20484_199643 f_4@@19))) (not (IsWandField_20484_199659 f_4@@19))) (<= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_43422) (o_2@@20 T@Ref) (f_4@@20 T@Field_20484_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20484_53 f_4@@20))) (not (IsWandField_20484_53 f_4@@20))) (<= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_43422) (o_2@@21 T@Ref) (f_4@@21 T@Field_20484_1204) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_20484_1204 f_4@@21))) (not (IsWandField_20484_1204 f_4@@21))) (<= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_43422) (o_2@@22 T@Ref) (f_4@@22 T@Field_20484_20419) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_20484_20419 f_4@@22))) (not (IsWandField_20484_20419 f_4@@22))) (<= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_43422) (o_2@@23 T@Ref) (f_4@@23 T@Field_51807_51808) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_20484_20485 f_4@@23))) (not (IsWandField_20484_185611 f_4@@23))) (<= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_43422) (o_2@@24 T@Ref) (f_4@@24 T@Field_53295_53300) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_20509_198812 f_4@@24))) (not (IsWandField_20509_198828 f_4@@24))) (<= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_43422) (o_2@@25 T@Ref) (f_4@@25 T@Field_20509_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_20509_53 f_4@@25))) (not (IsWandField_20509_53 f_4@@25))) (<= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_43422) (o_2@@26 T@Ref) (f_4@@26 T@Field_20509_1204) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_20509_1204 f_4@@26))) (not (IsWandField_20509_1204 f_4@@26))) (<= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_43422) (o_2@@27 T@Ref) (f_4@@27 T@Field_20509_20419) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_20509_20419 f_4@@27))) (not (IsWandField_20509_20419 f_4@@27))) (<= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_43422) (o_2@@28 T@Ref) (f_4@@28 T@Field_53008_53009) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_20509_20510 f_4@@28))) (not (IsWandField_20509_185968 f_4@@28))) (<= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_43422) (o_2@@29 T@Ref) (f_4@@29 T@Field_20418_49412) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_20418_197981 f_4@@29))) (not (IsWandField_20418_197997 f_4@@29))) (<= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_43422) (o_2@@30 T@Ref) (f_4@@30 T@Field_43461_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_20418_53 f_4@@30))) (not (IsWandField_20418_53 f_4@@30))) (<= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_43422) (o_2@@31 T@Ref) (f_4@@31 T@Field_46838_1204) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_20421_1204 f_4@@31))) (not (IsWandField_20421_1204 f_4@@31))) (<= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_43422) (o_2@@32 T@Ref) (f_4@@32 T@Field_43474_43475) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_20418_20419 f_4@@32))) (not (IsWandField_20418_20419 f_4@@32))) (<= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_43422) (o_2@@33 T@Ref) (f_4@@33 T@Field_20418_20460) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_20418_178276 f_4@@33))) (not (IsWandField_20418_184897 f_4@@33))) (<= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_43422) (o_2@@34 T@Ref) (f_4@@34 T@Field_49407_49412) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_20459_197178 f_4@@34))) (not (IsWandField_20459_197194 f_4@@34))) (<= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_43422) (o_2@@35 T@Ref) (f_4@@35 T@Field_20459_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_20459_53 f_4@@35))) (not (IsWandField_20459_53 f_4@@35))) (<= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_43422) (o_2@@36 T@Ref) (f_4@@36 T@Field_20459_1204) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_20459_1204 f_4@@36))) (not (IsWandField_20459_1204 f_4@@36))) (<= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_43422) (o_2@@37 T@Ref) (f_4@@37 T@Field_20459_20419) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_20459_20419 f_4@@37))) (not (IsWandField_20459_20419 f_4@@37))) (<= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_43422) (o_2@@38 T@Ref) (f_4@@38 T@Field_47198_47199) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_20459_20460 f_4@@38))) (not (IsWandField_20459_185254 f_4@@38))) (<= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_43422) (o_2@@39 T@Ref) (f_4@@39 T@Field_53295_53300) ) (! (= (HasDirectPerm_20509_178031 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_178031 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_43422) (o_2@@40 T@Ref) (f_4@@40 T@Field_20509_1204) ) (! (= (HasDirectPerm_20509_1204 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_1204 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_43422) (o_2@@41 T@Ref) (f_4@@41 T@Field_20509_53) ) (! (= (HasDirectPerm_20509_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_43422) (o_2@@42 T@Ref) (f_4@@42 T@Field_53008_53009) ) (! (= (HasDirectPerm_20509_20510 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_20510 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_43422) (o_2@@43 T@Ref) (f_4@@43 T@Field_20509_20419) ) (! (= (HasDirectPerm_20509_20419 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_20419 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_43422) (o_2@@44 T@Ref) (f_4@@44 T@Field_51820_51825) ) (! (= (HasDirectPerm_20484_176933 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_176933 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_43422) (o_2@@45 T@Ref) (f_4@@45 T@Field_20484_1204) ) (! (= (HasDirectPerm_20484_1204 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_1204 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_43422) (o_2@@46 T@Ref) (f_4@@46 T@Field_20484_53) ) (! (= (HasDirectPerm_20484_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_43422) (o_2@@47 T@Ref) (f_4@@47 T@Field_51807_51808) ) (! (= (HasDirectPerm_20484_20485 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_20485 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_43422) (o_2@@48 T@Ref) (f_4@@48 T@Field_20484_20419) ) (! (= (HasDirectPerm_20484_20419 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_20419 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_43422) (o_2@@49 T@Ref) (f_4@@49 T@Field_49407_49412) ) (! (= (HasDirectPerm_20459_175835 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_175835 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_43422) (o_2@@50 T@Ref) (f_4@@50 T@Field_20459_1204) ) (! (= (HasDirectPerm_20459_1204 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_1204 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_43422) (o_2@@51 T@Ref) (f_4@@51 T@Field_20459_53) ) (! (= (HasDirectPerm_20459_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_43422) (o_2@@52 T@Ref) (f_4@@52 T@Field_47198_47199) ) (! (= (HasDirectPerm_20459_20460 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_20460 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_43422) (o_2@@53 T@Ref) (f_4@@53 T@Field_20459_20419) ) (! (= (HasDirectPerm_20459_20419 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_20419 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_43422) (o_2@@54 T@Ref) (f_4@@54 T@Field_20418_49412) ) (! (= (HasDirectPerm_20418_174694 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_174694 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_43422) (o_2@@55 T@Ref) (f_4@@55 T@Field_46838_1204) ) (! (= (HasDirectPerm_20418_1204 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_1204 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_43422) (o_2@@56 T@Ref) (f_4@@56 T@Field_43461_53) ) (! (= (HasDirectPerm_20418_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_43422) (o_2@@57 T@Ref) (f_4@@57 T@Field_20418_20460) ) (! (= (HasDirectPerm_20418_20460 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_20460 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_43422) (o_2@@58 T@Ref) (f_4@@58 T@Field_43474_43475) ) (! (= (HasDirectPerm_20418_20419 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_20419 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_43401) (ExhaleHeap@@17 T@PolymorphicMapType_43401) (Mask@@58 T@PolymorphicMapType_43422) (o_100@@0 T@Ref) (f_133@@159 T@Field_53295_53300) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_20509_178031 Mask@@58 o_100@@0 f_133@@159) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@23) o_100@@0 f_133@@159) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@17) o_100@@0 f_133@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@17) o_100@@0 f_133@@159))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_43401) (ExhaleHeap@@18 T@PolymorphicMapType_43401) (Mask@@59 T@PolymorphicMapType_43422) (o_100@@1 T@Ref) (f_133@@160 T@Field_20509_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_20509_1204 Mask@@59 o_100@@1 f_133@@160) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@24) o_100@@1 f_133@@160) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@18) o_100@@1 f_133@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@18) o_100@@1 f_133@@160))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_43401) (ExhaleHeap@@19 T@PolymorphicMapType_43401) (Mask@@60 T@PolymorphicMapType_43422) (o_100@@2 T@Ref) (f_133@@161 T@Field_20509_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_20509_53 Mask@@60 o_100@@2 f_133@@161) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@25) o_100@@2 f_133@@161) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@19) o_100@@2 f_133@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@19) o_100@@2 f_133@@161))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_43401) (ExhaleHeap@@20 T@PolymorphicMapType_43401) (Mask@@61 T@PolymorphicMapType_43422) (o_100@@3 T@Ref) (f_133@@162 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_20509_20510 Mask@@61 o_100@@3 f_133@@162) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@26) o_100@@3 f_133@@162) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@20) o_100@@3 f_133@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@20) o_100@@3 f_133@@162))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_43401) (ExhaleHeap@@21 T@PolymorphicMapType_43401) (Mask@@62 T@PolymorphicMapType_43422) (o_100@@4 T@Ref) (f_133@@163 T@Field_20509_20419) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_20509_20419 Mask@@62 o_100@@4 f_133@@163) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@27) o_100@@4 f_133@@163) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@21) o_100@@4 f_133@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@21) o_100@@4 f_133@@163))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_43401) (ExhaleHeap@@22 T@PolymorphicMapType_43401) (Mask@@63 T@PolymorphicMapType_43422) (o_100@@5 T@Ref) (f_133@@164 T@Field_51820_51825) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_20484_176933 Mask@@63 o_100@@5 f_133@@164) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@28) o_100@@5 f_133@@164) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@22) o_100@@5 f_133@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@22) o_100@@5 f_133@@164))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_43401) (ExhaleHeap@@23 T@PolymorphicMapType_43401) (Mask@@64 T@PolymorphicMapType_43422) (o_100@@6 T@Ref) (f_133@@165 T@Field_20484_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_20484_1204 Mask@@64 o_100@@6 f_133@@165) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@29) o_100@@6 f_133@@165) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@23) o_100@@6 f_133@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@23) o_100@@6 f_133@@165))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_43401) (ExhaleHeap@@24 T@PolymorphicMapType_43401) (Mask@@65 T@PolymorphicMapType_43422) (o_100@@7 T@Ref) (f_133@@166 T@Field_20484_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_20484_53 Mask@@65 o_100@@7 f_133@@166) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@30) o_100@@7 f_133@@166) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@24) o_100@@7 f_133@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@24) o_100@@7 f_133@@166))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_43401) (ExhaleHeap@@25 T@PolymorphicMapType_43401) (Mask@@66 T@PolymorphicMapType_43422) (o_100@@8 T@Ref) (f_133@@167 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_20484_20485 Mask@@66 o_100@@8 f_133@@167) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@31) o_100@@8 f_133@@167) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@25) o_100@@8 f_133@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@25) o_100@@8 f_133@@167))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_43401) (ExhaleHeap@@26 T@PolymorphicMapType_43401) (Mask@@67 T@PolymorphicMapType_43422) (o_100@@9 T@Ref) (f_133@@168 T@Field_20484_20419) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_20484_20419 Mask@@67 o_100@@9 f_133@@168) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@32) o_100@@9 f_133@@168) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@26) o_100@@9 f_133@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@26) o_100@@9 f_133@@168))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_43401) (ExhaleHeap@@27 T@PolymorphicMapType_43401) (Mask@@68 T@PolymorphicMapType_43422) (o_100@@10 T@Ref) (f_133@@169 T@Field_49407_49412) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_20459_175835 Mask@@68 o_100@@10 f_133@@169) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@33) o_100@@10 f_133@@169) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@27) o_100@@10 f_133@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@27) o_100@@10 f_133@@169))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_43401) (ExhaleHeap@@28 T@PolymorphicMapType_43401) (Mask@@69 T@PolymorphicMapType_43422) (o_100@@11 T@Ref) (f_133@@170 T@Field_20459_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_20459_1204 Mask@@69 o_100@@11 f_133@@170) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@34) o_100@@11 f_133@@170) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@28) o_100@@11 f_133@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@28) o_100@@11 f_133@@170))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_43401) (ExhaleHeap@@29 T@PolymorphicMapType_43401) (Mask@@70 T@PolymorphicMapType_43422) (o_100@@12 T@Ref) (f_133@@171 T@Field_20459_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_20459_53 Mask@@70 o_100@@12 f_133@@171) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@35) o_100@@12 f_133@@171) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@29) o_100@@12 f_133@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@29) o_100@@12 f_133@@171))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_43401) (ExhaleHeap@@30 T@PolymorphicMapType_43401) (Mask@@71 T@PolymorphicMapType_43422) (o_100@@13 T@Ref) (f_133@@172 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_20459_20460 Mask@@71 o_100@@13 f_133@@172) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@36) o_100@@13 f_133@@172) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@30) o_100@@13 f_133@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@30) o_100@@13 f_133@@172))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_43401) (ExhaleHeap@@31 T@PolymorphicMapType_43401) (Mask@@72 T@PolymorphicMapType_43422) (o_100@@14 T@Ref) (f_133@@173 T@Field_20459_20419) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_20459_20419 Mask@@72 o_100@@14 f_133@@173) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@37) o_100@@14 f_133@@173) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@31) o_100@@14 f_133@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@31) o_100@@14 f_133@@173))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_43401) (ExhaleHeap@@32 T@PolymorphicMapType_43401) (Mask@@73 T@PolymorphicMapType_43422) (o_100@@15 T@Ref) (f_133@@174 T@Field_20418_49412) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_20418_174694 Mask@@73 o_100@@15 f_133@@174) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@38) o_100@@15 f_133@@174) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@32) o_100@@15 f_133@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@32) o_100@@15 f_133@@174))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_43401) (ExhaleHeap@@33 T@PolymorphicMapType_43401) (Mask@@74 T@PolymorphicMapType_43422) (o_100@@16 T@Ref) (f_133@@175 T@Field_46838_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_20418_1204 Mask@@74 o_100@@16 f_133@@175) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@39) o_100@@16 f_133@@175) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@33) o_100@@16 f_133@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@33) o_100@@16 f_133@@175))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_43401) (ExhaleHeap@@34 T@PolymorphicMapType_43401) (Mask@@75 T@PolymorphicMapType_43422) (o_100@@17 T@Ref) (f_133@@176 T@Field_43461_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_20418_53 Mask@@75 o_100@@17 f_133@@176) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@40) o_100@@17 f_133@@176) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@34) o_100@@17 f_133@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@34) o_100@@17 f_133@@176))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_43401) (ExhaleHeap@@35 T@PolymorphicMapType_43401) (Mask@@76 T@PolymorphicMapType_43422) (o_100@@18 T@Ref) (f_133@@177 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_20418_20460 Mask@@76 o_100@@18 f_133@@177) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@41) o_100@@18 f_133@@177) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@35) o_100@@18 f_133@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@35) o_100@@18 f_133@@177))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_43401) (ExhaleHeap@@36 T@PolymorphicMapType_43401) (Mask@@77 T@PolymorphicMapType_43422) (o_100@@19 T@Ref) (f_133@@178 T@Field_43474_43475) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_20418_20419 Mask@@77 o_100@@19 f_133@@178) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@42) o_100@@19 f_133@@178) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@36) o_100@@19 f_133@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@36) o_100@@19 f_133@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_51820_51825) ) (! (= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_20484_53) ) (! (= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_20484_1204) ) (! (= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_20484_20419) ) (! (= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_51807_51808) ) (! (= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_53295_53300) ) (! (= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_20509_53) ) (! (= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_20509_1204) ) (! (= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_20509_20419) ) (! (= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_53008_53009) ) (! (= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_20418_49412) ) (! (= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_43461_53) ) (! (= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_46838_1204) ) (! (= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_43474_43475) ) (! (= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_20418_20460) ) (! (= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_49407_49412) ) (! (= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_20459_53) ) (! (= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_20459_1204) ) (! (= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_20459_20419) ) (! (= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_47198_47199) ) (! (= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_43422) (SummandMask1 T@PolymorphicMapType_43422) (SummandMask2 T@PolymorphicMapType_43422) (o_2@@79 T@Ref) (f_4@@79 T@Field_51820_51825) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_43422) (SummandMask1@@0 T@PolymorphicMapType_43422) (SummandMask2@@0 T@PolymorphicMapType_43422) (o_2@@80 T@Ref) (f_4@@80 T@Field_20484_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_43422) (SummandMask1@@1 T@PolymorphicMapType_43422) (SummandMask2@@1 T@PolymorphicMapType_43422) (o_2@@81 T@Ref) (f_4@@81 T@Field_20484_1204) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_43422) (SummandMask1@@2 T@PolymorphicMapType_43422) (SummandMask2@@2 T@PolymorphicMapType_43422) (o_2@@82 T@Ref) (f_4@@82 T@Field_20484_20419) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_43422) (SummandMask1@@3 T@PolymorphicMapType_43422) (SummandMask2@@3 T@PolymorphicMapType_43422) (o_2@@83 T@Ref) (f_4@@83 T@Field_51807_51808) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_43422) (SummandMask1@@4 T@PolymorphicMapType_43422) (SummandMask2@@4 T@PolymorphicMapType_43422) (o_2@@84 T@Ref) (f_4@@84 T@Field_53295_53300) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_43422) (SummandMask1@@5 T@PolymorphicMapType_43422) (SummandMask2@@5 T@PolymorphicMapType_43422) (o_2@@85 T@Ref) (f_4@@85 T@Field_20509_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_43422) (SummandMask1@@6 T@PolymorphicMapType_43422) (SummandMask2@@6 T@PolymorphicMapType_43422) (o_2@@86 T@Ref) (f_4@@86 T@Field_20509_1204) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_43422) (SummandMask1@@7 T@PolymorphicMapType_43422) (SummandMask2@@7 T@PolymorphicMapType_43422) (o_2@@87 T@Ref) (f_4@@87 T@Field_20509_20419) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_43422) (SummandMask1@@8 T@PolymorphicMapType_43422) (SummandMask2@@8 T@PolymorphicMapType_43422) (o_2@@88 T@Ref) (f_4@@88 T@Field_53008_53009) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_43422) (SummandMask1@@9 T@PolymorphicMapType_43422) (SummandMask2@@9 T@PolymorphicMapType_43422) (o_2@@89 T@Ref) (f_4@@89 T@Field_20418_49412) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_43422) (SummandMask1@@10 T@PolymorphicMapType_43422) (SummandMask2@@10 T@PolymorphicMapType_43422) (o_2@@90 T@Ref) (f_4@@90 T@Field_43461_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_43422) (SummandMask1@@11 T@PolymorphicMapType_43422) (SummandMask2@@11 T@PolymorphicMapType_43422) (o_2@@91 T@Ref) (f_4@@91 T@Field_46838_1204) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_43422) (SummandMask1@@12 T@PolymorphicMapType_43422) (SummandMask2@@12 T@PolymorphicMapType_43422) (o_2@@92 T@Ref) (f_4@@92 T@Field_43474_43475) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_43422) (SummandMask1@@13 T@PolymorphicMapType_43422) (SummandMask2@@13 T@PolymorphicMapType_43422) (o_2@@93 T@Ref) (f_4@@93 T@Field_20418_20460) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_43422) (SummandMask1@@14 T@PolymorphicMapType_43422) (SummandMask2@@14 T@PolymorphicMapType_43422) (o_2@@94 T@Ref) (f_4@@94 T@Field_49407_49412) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_43422) (SummandMask1@@15 T@PolymorphicMapType_43422) (SummandMask2@@15 T@PolymorphicMapType_43422) (o_2@@95 T@Ref) (f_4@@95 T@Field_20459_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_43422) (SummandMask1@@16 T@PolymorphicMapType_43422) (SummandMask2@@16 T@PolymorphicMapType_43422) (o_2@@96 T@Ref) (f_4@@96 T@Field_20459_1204) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_43422) (SummandMask1@@17 T@PolymorphicMapType_43422) (SummandMask2@@17 T@PolymorphicMapType_43422) (o_2@@97 T@Ref) (f_4@@97 T@Field_20459_20419) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_43422) (SummandMask1@@18 T@PolymorphicMapType_43422) (SummandMask2@@18 T@PolymorphicMapType_43422) (o_2@@98 T@Ref) (f_4@@98 T@Field_47198_47199) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_43401) (Mask@@78 T@PolymorphicMapType_43422) (this@@13 T@Ref) ) (!  (=> (and (state Heap@@43 Mask@@78) (< AssumeFunctionsAbove 0)) (=> (not (= this@@13 null)) (= (NodegetNext$ Heap@@43 this@@13) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@43) this@@13 Nodenext$))))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@43 Mask@@78) (NodegetNext$ Heap@@43 this@@13))
 :pattern ( (state Heap@@43 Mask@@78) (|NodegetNext$#triggerStateless| this@@13) (|Nodevalid$#trigger_20459| Heap@@43 (Nodevalid$ this@@13)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_43401) (Mask@@79 T@PolymorphicMapType_43422) (this@@14 T@Ref) ) (!  (=> (state Heap@@44 Mask@@79) (= (|NodegetNext$'| Heap@@44 this@@14) (|NodegetNext$#frame| (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@44) null (Nodevalid$ this@@14)) this@@14)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@44 Mask@@79) (|NodegetNext$'| Heap@@44 this@@14))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (getPredWandId_20459_20460 (Nodevalid$ this@@15)) 0)
 :qid |stdinbpl.320:15|
 :skolemid |29|
 :pattern ( (Nodevalid$ this@@15))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_20484_20485 (Nodep$ this@@16)) 1)
 :qid |stdinbpl.395:15|
 :skolemid |35|
 :pattern ( (Nodep$ this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (getPredWandId_20509_20510 (Nodeq$ this@@17)) 2)
 :qid |stdinbpl.470:15|
 :skolemid |41|
 :pattern ( (Nodeq$ this@@17))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_43401) (o_98 T@Ref) (f_108 T@Field_53295_53300) (v T@PolymorphicMapType_43950) ) (! (succHeap Heap@@45 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@45) (store (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@45) o_98 f_108 v) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@45) (store (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@45) o_98 f_108 v) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_43401) (o_98@@0 T@Ref) (f_108@@0 T@Field_20509_1204) (v@@0 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@46) (store (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@46) o_98@@0 f_108@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@46) (store (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@46) o_98@@0 f_108@@0 v@@0)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_43401) (o_98@@1 T@Ref) (f_108@@1 T@Field_53008_53009) (v@@1 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@47) (store (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@47) o_98@@1 f_108@@1 v@@1) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@47) (store (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@47) o_98@@1 f_108@@1 v@@1) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_43401) (o_98@@2 T@Ref) (f_108@@2 T@Field_20509_20419) (v@@2 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@48) (store (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@48) o_98@@2 f_108@@2 v@@2) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@48) (store (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@48) o_98@@2 f_108@@2 v@@2) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_43401) (o_98@@3 T@Ref) (f_108@@3 T@Field_20509_53) (v@@3 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@49) (store (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@49) o_98@@3 f_108@@3 v@@3) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@49) (store (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@49) o_98@@3 f_108@@3 v@@3) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_43401) (o_98@@4 T@Ref) (f_108@@4 T@Field_51820_51825) (v@@4 T@PolymorphicMapType_43950) ) (! (succHeap Heap@@50 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@50) (store (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@50) o_98@@4 f_108@@4 v@@4) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@50) (store (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@50) o_98@@4 f_108@@4 v@@4) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_43401) (o_98@@5 T@Ref) (f_108@@5 T@Field_20484_1204) (v@@5 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@51) (store (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@51) o_98@@5 f_108@@5 v@@5) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@51) (store (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@51) o_98@@5 f_108@@5 v@@5) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_43401) (o_98@@6 T@Ref) (f_108@@6 T@Field_51807_51808) (v@@6 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@52) (store (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@52) o_98@@6 f_108@@6 v@@6) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@52) (store (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@52) o_98@@6 f_108@@6 v@@6) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_43401) (o_98@@7 T@Ref) (f_108@@7 T@Field_20484_20419) (v@@7 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@53) (store (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@53) o_98@@7 f_108@@7 v@@7) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@53) (store (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@53) o_98@@7 f_108@@7 v@@7) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_43401) (o_98@@8 T@Ref) (f_108@@8 T@Field_20484_53) (v@@8 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@54) (store (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@54) o_98@@8 f_108@@8 v@@8) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@54) (store (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@54) o_98@@8 f_108@@8 v@@8) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_43401) (o_98@@9 T@Ref) (f_108@@9 T@Field_49407_49412) (v@@9 T@PolymorphicMapType_43950) ) (! (succHeap Heap@@55 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@55) (store (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@55) o_98@@9 f_108@@9 v@@9) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@55) (store (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@55) o_98@@9 f_108@@9 v@@9) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_43401) (o_98@@10 T@Ref) (f_108@@10 T@Field_20459_1204) (v@@10 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@56) (store (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@56) o_98@@10 f_108@@10 v@@10) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@56) (store (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@56) o_98@@10 f_108@@10 v@@10) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_43401) (o_98@@11 T@Ref) (f_108@@11 T@Field_47198_47199) (v@@11 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@57) (store (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@57) o_98@@11 f_108@@11 v@@11) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@57) (store (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@57) o_98@@11 f_108@@11 v@@11) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_43401) (o_98@@12 T@Ref) (f_108@@12 T@Field_20459_20419) (v@@12 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@58) (store (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@58) o_98@@12 f_108@@12 v@@12) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@58) (store (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@58) o_98@@12 f_108@@12 v@@12) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_43401) (o_98@@13 T@Ref) (f_108@@13 T@Field_20459_53) (v@@13 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@59) (store (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@59) o_98@@13 f_108@@13 v@@13) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@59) (store (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@59) o_98@@13 f_108@@13 v@@13) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_43401) (o_98@@14 T@Ref) (f_108@@14 T@Field_20418_49412) (v@@14 T@PolymorphicMapType_43950) ) (! (succHeap Heap@@60 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@60) (store (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@60) o_98@@14 f_108@@14 v@@14) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@60) (store (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@60) o_98@@14 f_108@@14 v@@14) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_43401) (o_98@@15 T@Ref) (f_108@@15 T@Field_46838_1204) (v@@15 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@61) (store (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@61) o_98@@15 f_108@@15 v@@15) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@61) (store (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@61) o_98@@15 f_108@@15 v@@15) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_43401) (o_98@@16 T@Ref) (f_108@@16 T@Field_20418_20460) (v@@16 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@62) (store (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@62) o_98@@16 f_108@@16 v@@16) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@62) (store (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@62) o_98@@16 f_108@@16 v@@16) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_43401) (o_98@@17 T@Ref) (f_108@@17 T@Field_43474_43475) (v@@17 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@63) (store (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@63) o_98@@17 f_108@@17 v@@17) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@63) (store (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@63) o_98@@17 f_108@@17 v@@17) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_43401) (o_98@@18 T@Ref) (f_108@@18 T@Field_43461_53) (v@@18 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_43401 (store (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@64) o_98@@18 f_108@@18 v@@18) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (store (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@64) o_98@@18 f_108@@18 v@@18) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@64)))
)))
(assert (forall ((this@@18 T@Ref) ) (! (= (PredicateMaskField_20459 (Nodevalid$ this@@18)) (|Nodevalid$#sm| this@@18))
 :qid |stdinbpl.312:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_20459 (Nodevalid$ this@@18)))
)))
(assert (forall ((this@@19 T@Ref) ) (! (= (PredicateMaskField_20484 (Nodep$ this@@19)) (|Nodep$#sm| this@@19))
 :qid |stdinbpl.387:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_20484 (Nodep$ this@@19)))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (PredicateMaskField_20509 (Nodeq$ this@@20)) (|Nodeq$#sm| this@@20))
 :qid |stdinbpl.462:15|
 :skolemid |39|
 :pattern ( (PredicateMaskField_20509 (Nodeq$ this@@20)))
)))
(assert (forall ((o_98@@19 T@Ref) (f_132 T@Field_43474_43475) (Heap@@65 T@PolymorphicMapType_43401) ) (!  (=> (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@65) o_98@@19 $allocated) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@65) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@65) o_98@@19 f_132) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@65) o_98@@19 f_132))
)))
(assert (forall ((p@@4 T@Field_20418_20460) (v_1@@3 T@FrameType) (q T@Field_20418_20460) (w@@3 T@FrameType) (r T@Field_20418_20460) (u T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@4 v_1@@3 q w@@3) (InsidePredicate_43461_43461 q w@@3 r u)) (InsidePredicate_43461_43461 p@@4 v_1@@3 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@4 v_1@@3 q w@@3) (InsidePredicate_43461_43461 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_20418_20460) (v_1@@4 T@FrameType) (q@@0 T@Field_20418_20460) (w@@4 T@FrameType) (r@@0 T@Field_51807_51808) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_43461_20484 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_43461_20484 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_43461_20484 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_20418_20460) (v_1@@5 T@FrameType) (q@@1 T@Field_20418_20460) (w@@5 T@FrameType) (r@@1 T@Field_53008_53009) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_43461_20509 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_43461_20509 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_43461_20509 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_20418_20460) (v_1@@6 T@FrameType) (q@@2 T@Field_20418_20460) (w@@6 T@FrameType) (r@@2 T@Field_47198_47199) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_43461_20459 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_43461_20459 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_43461_20459 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_20418_20460) (v_1@@7 T@FrameType) (q@@3 T@Field_51807_51808) (w@@7 T@FrameType) (r@@3 T@Field_20418_20460) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20484_43461 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_43461_43461 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20484_43461 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_20418_20460) (v_1@@8 T@FrameType) (q@@4 T@Field_51807_51808) (w@@8 T@FrameType) (r@@4 T@Field_51807_51808) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20484_20484 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_43461_20484 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20484_20484 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_20418_20460) (v_1@@9 T@FrameType) (q@@5 T@Field_51807_51808) (w@@9 T@FrameType) (r@@5 T@Field_53008_53009) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20484_20509 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_43461_20509 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20484_20509 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_20418_20460) (v_1@@10 T@FrameType) (q@@6 T@Field_51807_51808) (w@@10 T@FrameType) (r@@6 T@Field_47198_47199) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20484_20459 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_43461_20459 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20484_20459 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_20418_20460) (v_1@@11 T@FrameType) (q@@7 T@Field_53008_53009) (w@@11 T@FrameType) (r@@7 T@Field_20418_20460) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_20509_43461 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_43461_43461 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_20509_43461 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_20418_20460) (v_1@@12 T@FrameType) (q@@8 T@Field_53008_53009) (w@@12 T@FrameType) (r@@8 T@Field_51807_51808) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_20509_20484 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_43461_20484 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_20509_20484 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_20418_20460) (v_1@@13 T@FrameType) (q@@9 T@Field_53008_53009) (w@@13 T@FrameType) (r@@9 T@Field_53008_53009) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_20509_20509 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_43461_20509 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_20509_20509 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_20418_20460) (v_1@@14 T@FrameType) (q@@10 T@Field_53008_53009) (w@@14 T@FrameType) (r@@10 T@Field_47198_47199) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_20509_20459 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_43461_20459 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_20509_20459 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_20418_20460) (v_1@@15 T@FrameType) (q@@11 T@Field_47198_47199) (w@@15 T@FrameType) (r@@11 T@Field_20418_20460) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_20459_43461 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_43461_43461 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_20459_43461 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_20418_20460) (v_1@@16 T@FrameType) (q@@12 T@Field_47198_47199) (w@@16 T@FrameType) (r@@12 T@Field_51807_51808) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_20459_20484 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_43461_20484 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_20459_20484 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_20418_20460) (v_1@@17 T@FrameType) (q@@13 T@Field_47198_47199) (w@@17 T@FrameType) (r@@13 T@Field_53008_53009) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_20459_20509 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_43461_20509 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_20459_20509 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_20418_20460) (v_1@@18 T@FrameType) (q@@14 T@Field_47198_47199) (w@@18 T@FrameType) (r@@14 T@Field_47198_47199) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_20459_20459 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_43461_20459 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_20459_20459 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_53008_53009) (v_1@@19 T@FrameType) (q@@15 T@Field_20418_20460) (w@@19 T@FrameType) (r@@15 T@Field_20418_20460) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_43461_43461 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_20509_43461 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_43461_43461 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_53008_53009) (v_1@@20 T@FrameType) (q@@16 T@Field_20418_20460) (w@@20 T@FrameType) (r@@16 T@Field_51807_51808) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_43461_20484 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_20509_20484 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_43461_20484 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_53008_53009) (v_1@@21 T@FrameType) (q@@17 T@Field_20418_20460) (w@@21 T@FrameType) (r@@17 T@Field_53008_53009) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_43461_20509 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_20509_20509 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_43461_20509 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_53008_53009) (v_1@@22 T@FrameType) (q@@18 T@Field_20418_20460) (w@@22 T@FrameType) (r@@18 T@Field_47198_47199) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_43461_20459 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_20509_20459 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_43461_20459 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_53008_53009) (v_1@@23 T@FrameType) (q@@19 T@Field_51807_51808) (w@@23 T@FrameType) (r@@19 T@Field_20418_20460) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20484_43461 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_20509_43461 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20484_43461 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_53008_53009) (v_1@@24 T@FrameType) (q@@20 T@Field_51807_51808) (w@@24 T@FrameType) (r@@20 T@Field_51807_51808) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20484_20484 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_20509_20484 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20484_20484 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_53008_53009) (v_1@@25 T@FrameType) (q@@21 T@Field_51807_51808) (w@@25 T@FrameType) (r@@21 T@Field_53008_53009) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20484_20509 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_20509_20509 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20484_20509 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_53008_53009) (v_1@@26 T@FrameType) (q@@22 T@Field_51807_51808) (w@@26 T@FrameType) (r@@22 T@Field_47198_47199) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20484_20459 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_20509_20459 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20484_20459 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_53008_53009) (v_1@@27 T@FrameType) (q@@23 T@Field_53008_53009) (w@@27 T@FrameType) (r@@23 T@Field_20418_20460) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_20509_43461 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_20509_43461 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_20509_43461 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_53008_53009) (v_1@@28 T@FrameType) (q@@24 T@Field_53008_53009) (w@@28 T@FrameType) (r@@24 T@Field_51807_51808) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_20509_20484 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_20509_20484 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_20509_20484 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_53008_53009) (v_1@@29 T@FrameType) (q@@25 T@Field_53008_53009) (w@@29 T@FrameType) (r@@25 T@Field_53008_53009) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_20509_20509 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_20509_20509 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_20509_20509 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_53008_53009) (v_1@@30 T@FrameType) (q@@26 T@Field_53008_53009) (w@@30 T@FrameType) (r@@26 T@Field_47198_47199) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_20509_20459 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_20509_20459 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_20509_20459 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_53008_53009) (v_1@@31 T@FrameType) (q@@27 T@Field_47198_47199) (w@@31 T@FrameType) (r@@27 T@Field_20418_20460) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_20459_43461 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_20509_43461 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_20459_43461 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_53008_53009) (v_1@@32 T@FrameType) (q@@28 T@Field_47198_47199) (w@@32 T@FrameType) (r@@28 T@Field_51807_51808) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_20459_20484 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_20509_20484 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_20459_20484 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_53008_53009) (v_1@@33 T@FrameType) (q@@29 T@Field_47198_47199) (w@@33 T@FrameType) (r@@29 T@Field_53008_53009) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_20459_20509 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_20509_20509 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_20459_20509 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_53008_53009) (v_1@@34 T@FrameType) (q@@30 T@Field_47198_47199) (w@@34 T@FrameType) (r@@30 T@Field_47198_47199) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_20459_20459 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_20509_20459 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_20459_20459 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_51807_51808) (v_1@@35 T@FrameType) (q@@31 T@Field_20418_20460) (w@@35 T@FrameType) (r@@31 T@Field_20418_20460) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_43461_43461 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_20484_43461 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_43461_43461 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_51807_51808) (v_1@@36 T@FrameType) (q@@32 T@Field_20418_20460) (w@@36 T@FrameType) (r@@32 T@Field_51807_51808) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_43461_20484 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_20484_20484 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_43461_20484 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_51807_51808) (v_1@@37 T@FrameType) (q@@33 T@Field_20418_20460) (w@@37 T@FrameType) (r@@33 T@Field_53008_53009) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_43461_20509 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_20484_20509 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_43461_20509 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_51807_51808) (v_1@@38 T@FrameType) (q@@34 T@Field_20418_20460) (w@@38 T@FrameType) (r@@34 T@Field_47198_47199) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_43461_20459 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_20484_20459 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_43461_20459 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_51807_51808) (v_1@@39 T@FrameType) (q@@35 T@Field_51807_51808) (w@@39 T@FrameType) (r@@35 T@Field_20418_20460) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20484_43461 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_20484_43461 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20484_43461 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_51807_51808) (v_1@@40 T@FrameType) (q@@36 T@Field_51807_51808) (w@@40 T@FrameType) (r@@36 T@Field_51807_51808) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20484_20484 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_20484_20484 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20484_20484 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_51807_51808) (v_1@@41 T@FrameType) (q@@37 T@Field_51807_51808) (w@@41 T@FrameType) (r@@37 T@Field_53008_53009) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20484_20509 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_20484_20509 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20484_20509 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_51807_51808) (v_1@@42 T@FrameType) (q@@38 T@Field_51807_51808) (w@@42 T@FrameType) (r@@38 T@Field_47198_47199) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20484_20459 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_20484_20459 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20484_20459 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_51807_51808) (v_1@@43 T@FrameType) (q@@39 T@Field_53008_53009) (w@@43 T@FrameType) (r@@39 T@Field_20418_20460) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_20509_43461 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_20484_43461 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_20509_43461 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_51807_51808) (v_1@@44 T@FrameType) (q@@40 T@Field_53008_53009) (w@@44 T@FrameType) (r@@40 T@Field_51807_51808) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_20509_20484 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_20484_20484 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_20509_20484 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_51807_51808) (v_1@@45 T@FrameType) (q@@41 T@Field_53008_53009) (w@@45 T@FrameType) (r@@41 T@Field_53008_53009) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_20509_20509 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_20484_20509 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_20509_20509 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_51807_51808) (v_1@@46 T@FrameType) (q@@42 T@Field_53008_53009) (w@@46 T@FrameType) (r@@42 T@Field_47198_47199) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_20509_20459 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_20484_20459 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_20509_20459 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_51807_51808) (v_1@@47 T@FrameType) (q@@43 T@Field_47198_47199) (w@@47 T@FrameType) (r@@43 T@Field_20418_20460) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_20459_43461 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_20484_43461 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_20459_43461 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_51807_51808) (v_1@@48 T@FrameType) (q@@44 T@Field_47198_47199) (w@@48 T@FrameType) (r@@44 T@Field_51807_51808) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_20459_20484 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_20484_20484 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_20459_20484 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_51807_51808) (v_1@@49 T@FrameType) (q@@45 T@Field_47198_47199) (w@@49 T@FrameType) (r@@45 T@Field_53008_53009) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_20459_20509 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_20484_20509 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_20459_20509 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_51807_51808) (v_1@@50 T@FrameType) (q@@46 T@Field_47198_47199) (w@@50 T@FrameType) (r@@46 T@Field_47198_47199) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_20459_20459 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_20484_20459 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_20459_20459 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_47198_47199) (v_1@@51 T@FrameType) (q@@47 T@Field_20418_20460) (w@@51 T@FrameType) (r@@47 T@Field_20418_20460) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_43461_43461 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_20459_43461 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_43461_43461 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_47198_47199) (v_1@@52 T@FrameType) (q@@48 T@Field_20418_20460) (w@@52 T@FrameType) (r@@48 T@Field_51807_51808) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_43461_20484 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_20459_20484 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_43461_20484 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_47198_47199) (v_1@@53 T@FrameType) (q@@49 T@Field_20418_20460) (w@@53 T@FrameType) (r@@49 T@Field_53008_53009) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_43461_20509 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_20459_20509 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_43461_20509 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_47198_47199) (v_1@@54 T@FrameType) (q@@50 T@Field_20418_20460) (w@@54 T@FrameType) (r@@50 T@Field_47198_47199) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_43461_20459 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_20459_20459 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_43461_20459 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_47198_47199) (v_1@@55 T@FrameType) (q@@51 T@Field_51807_51808) (w@@55 T@FrameType) (r@@51 T@Field_20418_20460) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20484_43461 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_20459_43461 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20484_43461 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_47198_47199) (v_1@@56 T@FrameType) (q@@52 T@Field_51807_51808) (w@@56 T@FrameType) (r@@52 T@Field_51807_51808) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20484_20484 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_20459_20484 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20484_20484 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_47198_47199) (v_1@@57 T@FrameType) (q@@53 T@Field_51807_51808) (w@@57 T@FrameType) (r@@53 T@Field_53008_53009) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20484_20509 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_20459_20509 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20484_20509 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_47198_47199) (v_1@@58 T@FrameType) (q@@54 T@Field_51807_51808) (w@@58 T@FrameType) (r@@54 T@Field_47198_47199) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20484_20459 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_20459_20459 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20484_20459 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_47198_47199) (v_1@@59 T@FrameType) (q@@55 T@Field_53008_53009) (w@@59 T@FrameType) (r@@55 T@Field_20418_20460) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_20509_43461 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_20459_43461 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_20509_43461 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_47198_47199) (v_1@@60 T@FrameType) (q@@56 T@Field_53008_53009) (w@@60 T@FrameType) (r@@56 T@Field_51807_51808) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_20509_20484 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_20459_20484 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_20509_20484 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_47198_47199) (v_1@@61 T@FrameType) (q@@57 T@Field_53008_53009) (w@@61 T@FrameType) (r@@57 T@Field_53008_53009) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_20509_20509 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_20459_20509 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_20509_20509 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_47198_47199) (v_1@@62 T@FrameType) (q@@58 T@Field_53008_53009) (w@@62 T@FrameType) (r@@58 T@Field_47198_47199) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_20509_20459 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_20459_20459 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_20509_20459 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_47198_47199) (v_1@@63 T@FrameType) (q@@59 T@Field_47198_47199) (w@@63 T@FrameType) (r@@59 T@Field_20418_20460) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_20459_43461 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_20459_43461 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_20459_43461 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_47198_47199) (v_1@@64 T@FrameType) (q@@60 T@Field_47198_47199) (w@@64 T@FrameType) (r@@60 T@Field_51807_51808) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_20459_20484 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_20459_20484 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_20459_20484 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_47198_47199) (v_1@@65 T@FrameType) (q@@61 T@Field_47198_47199) (w@@65 T@FrameType) (r@@61 T@Field_53008_53009) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_20459_20509 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_20459_20509 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_20459_20509 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_47198_47199) (v_1@@66 T@FrameType) (q@@62 T@Field_47198_47199) (w@@66 T@FrameType) (r@@62 T@Field_47198_47199) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_20459_20459 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_20459_20459 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_20459_20459 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@66 () T@PolymorphicMapType_43401)
(declare-fun this@@21 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_43422)
(declare-fun Mask@1 () T@PolymorphicMapType_43422)
(declare-fun Mask@2 () T@PolymorphicMapType_43422)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_43422)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |Nodeq$#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@66) this@@21 Nodenext$) null) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@66) this@@21 Nodenext$) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_20418_20419 Mask@1 this@@21 Nodenext$)) (=> (HasDirectPerm_20418_20419 Mask@1 this@@21 Nodenext$) (=> (and (and (= Mask@2 (PolymorphicMapType_43422 (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@1) (store (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@1) null (Nodep$ (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@66) this@@21 Nodenext$)) (+ (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@1) null (Nodep$ (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@66) this@@21 Nodenext$))) FullPerm)) (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@1) (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@1))) (state Heap@@66 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (state Heap@@66 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@66) this@@21 $allocated))) (=> (and (and (and (> wildcard@0 NoPerm) (not (= this@@21 null))) (and (= Mask@0 (PolymorphicMapType_43422 (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ZeroMask) (store (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ZeroMask) this@@21 Nodenext$ (+ (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ZeroMask) this@@21 Nodenext$) wildcard@0)) (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ZeroMask) (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ZeroMask))) (state Heap@@66 Mask@0))) (and (and (> wildcard@1 NoPerm) (not (= this@@21 null))) (and (= Mask@1 (PolymorphicMapType_43422 (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@0) (store (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@0) this@@21 Nodevalue$ (+ (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@0) this@@21 Nodevalue$) wildcard@1)) (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@0) (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@0))) (state Heap@@66 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_20418_20419 Mask@1 this@@21 Nodenext$)) (=> (HasDirectPerm_20418_20419 Mask@1 this@@21 Nodenext$) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 7) 5)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-sort T@Field_43461_53 0)
(declare-sort T@Field_43474_43475 0)
(declare-sort T@Field_47198_47199 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_46838_1204 0)
(declare-sort T@Field_49407_49412 0)
(declare-sort T@Field_51807_51808 0)
(declare-sort T@Field_53008_53009 0)
(declare-sort T@Field_53295_53300 0)
(declare-sort T@Field_51820_51825 0)
(declare-sort T@Field_20418_20460 0)
(declare-sort T@Field_20418_49412 0)
(declare-sort T@Field_20459_20419 0)
(declare-sort T@Field_20459_53 0)
(declare-sort T@Field_20459_1204 0)
(declare-sort T@Field_20484_20419 0)
(declare-sort T@Field_20484_53 0)
(declare-sort T@Field_20484_1204 0)
(declare-sort T@Field_20509_20419 0)
(declare-sort T@Field_20509_53 0)
(declare-sort T@Field_20509_1204 0)
(declare-datatypes ((T@PolymorphicMapType_43422 0)) (((PolymorphicMapType_43422 (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| (Array T@Ref T@Field_47198_47199 Real)) (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_43474_43475 Real)) (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_46838_1204 Real)) (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| (Array T@Ref T@Field_53008_53009 Real)) (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| (Array T@Ref T@Field_51807_51808 Real)) (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_20459_20419 Real)) (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_20459_1204 Real)) (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| (Array T@Ref T@Field_20459_53 Real)) (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| (Array T@Ref T@Field_49407_49412 Real)) (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| (Array T@Ref T@Field_20418_20460 Real)) (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| (Array T@Ref T@Field_43461_53 Real)) (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| (Array T@Ref T@Field_20418_49412 Real)) (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_20509_20419 Real)) (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_20509_1204 Real)) (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| (Array T@Ref T@Field_20509_53 Real)) (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| (Array T@Ref T@Field_53295_53300 Real)) (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| (Array T@Ref T@Field_20484_20419 Real)) (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| (Array T@Ref T@Field_20484_1204 Real)) (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| (Array T@Ref T@Field_20484_53 Real)) (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| (Array T@Ref T@Field_51820_51825 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43950 0)) (((PolymorphicMapType_43950 (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_43474_43475 Bool)) (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_46838_1204 Bool)) (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (Array T@Ref T@Field_43461_53 Bool)) (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_20418_20460 Bool)) (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (Array T@Ref T@Field_20418_49412 Bool)) (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_20459_20419 Bool)) (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_20459_1204 Bool)) (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (Array T@Ref T@Field_20459_53 Bool)) (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_47198_47199 Bool)) (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (Array T@Ref T@Field_49407_49412 Bool)) (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_20484_20419 Bool)) (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_20484_1204 Bool)) (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (Array T@Ref T@Field_20484_53 Bool)) (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_51807_51808 Bool)) (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (Array T@Ref T@Field_51820_51825 Bool)) (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (Array T@Ref T@Field_20509_20419 Bool)) (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (Array T@Ref T@Field_20509_1204 Bool)) (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (Array T@Ref T@Field_20509_53 Bool)) (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (Array T@Ref T@Field_53008_53009 Bool)) (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (Array T@Ref T@Field_53295_53300 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43401 0)) (((PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| (Array T@Ref T@Field_43461_53 Bool)) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| (Array T@Ref T@Field_43474_43475 T@Ref)) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| (Array T@Ref T@Field_47198_47199 T@FrameType)) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_46838_1204 Int)) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| (Array T@Ref T@Field_49407_49412 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| (Array T@Ref T@Field_51807_51808 T@FrameType)) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| (Array T@Ref T@Field_53008_53009 T@FrameType)) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| (Array T@Ref T@Field_53295_53300 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| (Array T@Ref T@Field_51820_51825 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| (Array T@Ref T@Field_20418_20460 T@FrameType)) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| (Array T@Ref T@Field_20418_49412 T@PolymorphicMapType_43950)) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| (Array T@Ref T@Field_20459_20419 T@Ref)) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| (Array T@Ref T@Field_20459_53 Bool)) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_20459_1204 Int)) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| (Array T@Ref T@Field_20484_20419 T@Ref)) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| (Array T@Ref T@Field_20484_53 Bool)) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_20484_1204 Int)) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| (Array T@Ref T@Field_20509_20419 T@Ref)) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| (Array T@Ref T@Field_20509_53 Bool)) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| (Array T@Ref T@Field_20509_1204 Int)) ) ) ))
(declare-fun $allocated () T@Field_43461_53)
(declare-fun Nodenext$ () T@Field_43474_43475)
(declare-fun Nodevalue$ () T@Field_46838_1204)
(declare-fun succHeap (T@PolymorphicMapType_43401 T@PolymorphicMapType_43401) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_43401 T@PolymorphicMapType_43401) Bool)
(declare-fun state (T@PolymorphicMapType_43401 T@PolymorphicMapType_43422) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_43422) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_43950)
(declare-fun Nodevalid$ (T@Ref) T@Field_47198_47199)
(declare-fun IsPredicateField_20459_20460 (T@Field_47198_47199) Bool)
(declare-fun Nodep$ (T@Ref) T@Field_51807_51808)
(declare-fun IsPredicateField_20484_20485 (T@Field_51807_51808) Bool)
(declare-fun Nodeq$ (T@Ref) T@Field_53008_53009)
(declare-fun IsPredicateField_20509_20510 (T@Field_53008_53009) Bool)
(declare-fun |NodegetNext$'| (T@PolymorphicMapType_43401 T@Ref) T@Ref)
(declare-fun dummyFunction_20445 (T@Ref) Bool)
(declare-fun |NodegetNext$#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Nodevalid$#trigger_20459| (T@PolymorphicMapType_43401 T@Field_47198_47199) Bool)
(declare-fun |Nodevalid$#everUsed_20459| (T@Field_47198_47199) Bool)
(declare-fun |Nodep$#trigger_20484| (T@PolymorphicMapType_43401 T@Field_51807_51808) Bool)
(declare-fun |Nodep$#everUsed_20484| (T@Field_51807_51808) Bool)
(declare-fun |Nodeq$#trigger_20509| (T@PolymorphicMapType_43401 T@Field_53008_53009) Bool)
(declare-fun |Nodeq$#everUsed_20509| (T@Field_53008_53009) Bool)
(declare-fun NodegetNext$ (T@PolymorphicMapType_43401 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_43401 T@PolymorphicMapType_43401 T@PolymorphicMapType_43422) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20509 (T@Field_53008_53009) T@Field_53295_53300)
(declare-fun HasDirectPerm_20509_20510 (T@PolymorphicMapType_43422 T@Ref T@Field_53008_53009) Bool)
(declare-fun PredicateMaskField_20484 (T@Field_51807_51808) T@Field_51820_51825)
(declare-fun HasDirectPerm_20484_20485 (T@PolymorphicMapType_43422 T@Ref T@Field_51807_51808) Bool)
(declare-fun PredicateMaskField_20459 (T@Field_47198_47199) T@Field_49407_49412)
(declare-fun HasDirectPerm_20459_20460 (T@PolymorphicMapType_43422 T@Ref T@Field_47198_47199) Bool)
(declare-fun IsPredicateField_20418_178276 (T@Field_20418_20460) Bool)
(declare-fun PredicateMaskField_20418 (T@Field_20418_20460) T@Field_20418_49412)
(declare-fun HasDirectPerm_20418_20460 (T@PolymorphicMapType_43422 T@Ref T@Field_20418_20460) Bool)
(declare-fun IsWandField_20509_185968 (T@Field_53008_53009) Bool)
(declare-fun WandMaskField_20509 (T@Field_53008_53009) T@Field_53295_53300)
(declare-fun IsWandField_20484_185611 (T@Field_51807_51808) Bool)
(declare-fun WandMaskField_20484 (T@Field_51807_51808) T@Field_51820_51825)
(declare-fun IsWandField_20459_185254 (T@Field_47198_47199) Bool)
(declare-fun WandMaskField_20459 (T@Field_47198_47199) T@Field_49407_49412)
(declare-fun IsWandField_20418_184897 (T@Field_20418_20460) Bool)
(declare-fun WandMaskField_20418 (T@Field_20418_20460) T@Field_20418_49412)
(declare-fun |Nodevalid$#sm| (T@Ref) T@Field_49407_49412)
(declare-fun |Nodep$#sm| (T@Ref) T@Field_51820_51825)
(declare-fun |Nodeq$#sm| (T@Ref) T@Field_53295_53300)
(declare-fun dummyHeap () T@PolymorphicMapType_43401)
(declare-fun ZeroMask () T@PolymorphicMapType_43422)
(declare-fun InsidePredicate_43461_43461 (T@Field_20418_20460 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_20509 (T@Field_53008_53009 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_20484 (T@Field_51807_51808 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_20459 (T@Field_47198_47199 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun IsPredicateField_20418_20419 (T@Field_43474_43475) Bool)
(declare-fun IsWandField_20418_20419 (T@Field_43474_43475) Bool)
(declare-fun IsPredicateField_20421_1204 (T@Field_46838_1204) Bool)
(declare-fun IsWandField_20421_1204 (T@Field_46838_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20484_199643 (T@Field_51820_51825) Bool)
(declare-fun IsWandField_20484_199659 (T@Field_51820_51825) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20484_53 (T@Field_20484_53) Bool)
(declare-fun IsWandField_20484_53 (T@Field_20484_53) Bool)
(declare-fun IsPredicateField_20484_1204 (T@Field_20484_1204) Bool)
(declare-fun IsWandField_20484_1204 (T@Field_20484_1204) Bool)
(declare-fun IsPredicateField_20484_20419 (T@Field_20484_20419) Bool)
(declare-fun IsWandField_20484_20419 (T@Field_20484_20419) Bool)
(declare-fun IsPredicateField_20509_198812 (T@Field_53295_53300) Bool)
(declare-fun IsWandField_20509_198828 (T@Field_53295_53300) Bool)
(declare-fun IsPredicateField_20509_53 (T@Field_20509_53) Bool)
(declare-fun IsWandField_20509_53 (T@Field_20509_53) Bool)
(declare-fun IsPredicateField_20509_1204 (T@Field_20509_1204) Bool)
(declare-fun IsWandField_20509_1204 (T@Field_20509_1204) Bool)
(declare-fun IsPredicateField_20509_20419 (T@Field_20509_20419) Bool)
(declare-fun IsWandField_20509_20419 (T@Field_20509_20419) Bool)
(declare-fun IsPredicateField_20418_197981 (T@Field_20418_49412) Bool)
(declare-fun IsWandField_20418_197997 (T@Field_20418_49412) Bool)
(declare-fun IsPredicateField_20418_53 (T@Field_43461_53) Bool)
(declare-fun IsWandField_20418_53 (T@Field_43461_53) Bool)
(declare-fun IsPredicateField_20459_197178 (T@Field_49407_49412) Bool)
(declare-fun IsWandField_20459_197194 (T@Field_49407_49412) Bool)
(declare-fun IsPredicateField_20459_53 (T@Field_20459_53) Bool)
(declare-fun IsWandField_20459_53 (T@Field_20459_53) Bool)
(declare-fun IsPredicateField_20459_1204 (T@Field_20459_1204) Bool)
(declare-fun IsWandField_20459_1204 (T@Field_20459_1204) Bool)
(declare-fun IsPredicateField_20459_20419 (T@Field_20459_20419) Bool)
(declare-fun IsWandField_20459_20419 (T@Field_20459_20419) Bool)
(declare-fun HasDirectPerm_20509_178031 (T@PolymorphicMapType_43422 T@Ref T@Field_53295_53300) Bool)
(declare-fun HasDirectPerm_20509_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_20509_1204) Bool)
(declare-fun HasDirectPerm_20509_53 (T@PolymorphicMapType_43422 T@Ref T@Field_20509_53) Bool)
(declare-fun HasDirectPerm_20509_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_20509_20419) Bool)
(declare-fun HasDirectPerm_20484_176933 (T@PolymorphicMapType_43422 T@Ref T@Field_51820_51825) Bool)
(declare-fun HasDirectPerm_20484_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_20484_1204) Bool)
(declare-fun HasDirectPerm_20484_53 (T@PolymorphicMapType_43422 T@Ref T@Field_20484_53) Bool)
(declare-fun HasDirectPerm_20484_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_20484_20419) Bool)
(declare-fun HasDirectPerm_20459_175835 (T@PolymorphicMapType_43422 T@Ref T@Field_49407_49412) Bool)
(declare-fun HasDirectPerm_20459_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_20459_1204) Bool)
(declare-fun HasDirectPerm_20459_53 (T@PolymorphicMapType_43422 T@Ref T@Field_20459_53) Bool)
(declare-fun HasDirectPerm_20459_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_20459_20419) Bool)
(declare-fun HasDirectPerm_20418_174694 (T@PolymorphicMapType_43422 T@Ref T@Field_20418_49412) Bool)
(declare-fun HasDirectPerm_20418_1204 (T@PolymorphicMapType_43422 T@Ref T@Field_46838_1204) Bool)
(declare-fun HasDirectPerm_20418_53 (T@PolymorphicMapType_43422 T@Ref T@Field_43461_53) Bool)
(declare-fun HasDirectPerm_20418_20419 (T@PolymorphicMapType_43422 T@Ref T@Field_43474_43475) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_43422 T@PolymorphicMapType_43422 T@PolymorphicMapType_43422) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |NodegetNext$#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_20459_20460 (T@Field_47198_47199) Int)
(declare-fun getPredWandId_20484_20485 (T@Field_51807_51808) Int)
(declare-fun getPredWandId_20509_20510 (T@Field_53008_53009) Int)
(declare-fun InsidePredicate_43461_20484 (T@Field_20418_20460 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_43461_20509 (T@Field_20418_20460 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(declare-fun InsidePredicate_43461_20459 (T@Field_20418_20460 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_43461 (T@Field_51807_51808 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_20509 (T@Field_51807_51808 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(declare-fun InsidePredicate_20484_20459 (T@Field_51807_51808 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_43461 (T@Field_53008_53009 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_20484 (T@Field_53008_53009 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_20509_20459 (T@Field_53008_53009 T@FrameType T@Field_47198_47199 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_43461 (T@Field_47198_47199 T@FrameType T@Field_20418_20460 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_20484 (T@Field_47198_47199 T@FrameType T@Field_51807_51808 T@FrameType) Bool)
(declare-fun InsidePredicate_20459_20509 (T@Field_47198_47199 T@FrameType T@Field_53008_53009 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_43401) (Heap1 T@PolymorphicMapType_43401) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_43401) (Mask T@PolymorphicMapType_43422) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_43401) (Heap1@@0 T@PolymorphicMapType_43401) (Heap2 T@PolymorphicMapType_43401) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_53295_53300) ) (!  (not (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_53008_53009) ) (!  (not (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20509_53) ) (!  (not (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20509_1204) ) (!  (not (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20509_20419) ) (!  (not (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_51820_51825) ) (!  (not (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_51807_51808) ) (!  (not (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_20484_53) ) (!  (not (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20484_1204) ) (!  (not (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_20484_20419) ) (!  (not (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_49407_49412) ) (!  (not (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_47198_47199) ) (!  (not (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_20459_53) ) (!  (not (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_20459_1204) ) (!  (not (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_20459_20419) ) (!  (not (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_20418_49412) ) (!  (not (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_20418_20460) ) (!  (not (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_43461_53) ) (!  (not (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_46838_1204) ) (!  (not (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_43474_43475) ) (!  (not (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_20459_20460 (Nodevalid$ this))
 :qid |stdinbpl.316:15|
 :skolemid |28|
 :pattern ( (Nodevalid$ this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_20484_20485 (Nodep$ this@@0))
 :qid |stdinbpl.391:15|
 :skolemid |34|
 :pattern ( (Nodep$ this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_20509_20510 (Nodeq$ this@@1))
 :qid |stdinbpl.466:15|
 :skolemid |40|
 :pattern ( (Nodeq$ this@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_43401) (this@@2 T@Ref) ) (! (dummyFunction_20445 (|NodegetNext$#triggerStateless| this@@2))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|NodegetNext$'| Heap@@0 this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_43401) (this@@3 T@Ref) ) (! (|Nodevalid$#everUsed_20459| (Nodevalid$ this@@3))
 :qid |stdinbpl.335:15|
 :skolemid |32|
 :pattern ( (|Nodevalid$#trigger_20459| Heap@@1 (Nodevalid$ this@@3)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_43401) (this@@4 T@Ref) ) (! (|Nodep$#everUsed_20484| (Nodep$ this@@4))
 :qid |stdinbpl.410:15|
 :skolemid |38|
 :pattern ( (|Nodep$#trigger_20484| Heap@@2 (Nodep$ this@@4)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_43401) (this@@5 T@Ref) ) (! (|Nodeq$#everUsed_20509| (Nodeq$ this@@5))
 :qid |stdinbpl.485:15|
 :skolemid |44|
 :pattern ( (|Nodeq$#trigger_20509| Heap@@3 (Nodeq$ this@@5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_43401) (this@@6 T@Ref) ) (!  (and (= (NodegetNext$ Heap@@4 this@@6) (|NodegetNext$'| Heap@@4 this@@6)) (dummyFunction_20445 (|NodegetNext$#triggerStateless| this@@6)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (NodegetNext$ Heap@@4 this@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_43401) (ExhaleHeap T@PolymorphicMapType_43401) (Mask@@0 T@PolymorphicMapType_43422) (pm_f_43 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20509_20510 Mask@@0 null pm_f_43) (IsPredicateField_20509_20510 pm_f_43)) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@5) null (PredicateMaskField_20509 pm_f_43)) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap) null (PredicateMaskField_20509 pm_f_43)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_20509_20510 pm_f_43) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap) null (PredicateMaskField_20509 pm_f_43)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_43401) (ExhaleHeap@@0 T@PolymorphicMapType_43401) (Mask@@1 T@PolymorphicMapType_43422) (pm_f_43@@0 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20484_20485 Mask@@1 null pm_f_43@@0) (IsPredicateField_20484_20485 pm_f_43@@0)) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@6) null (PredicateMaskField_20484 pm_f_43@@0)) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@0) null (PredicateMaskField_20484 pm_f_43@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_20484_20485 pm_f_43@@0) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@0) null (PredicateMaskField_20484 pm_f_43@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_43401) (ExhaleHeap@@1 T@PolymorphicMapType_43401) (Mask@@2 T@PolymorphicMapType_43422) (pm_f_43@@1 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_20459_20460 Mask@@2 null pm_f_43@@1) (IsPredicateField_20459_20460 pm_f_43@@1)) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@7) null (PredicateMaskField_20459 pm_f_43@@1)) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@1) null (PredicateMaskField_20459 pm_f_43@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsPredicateField_20459_20460 pm_f_43@@1) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@1) null (PredicateMaskField_20459 pm_f_43@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_43401) (ExhaleHeap@@2 T@PolymorphicMapType_43401) (Mask@@3 T@PolymorphicMapType_43422) (pm_f_43@@2 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_20418_20460 Mask@@3 null pm_f_43@@2) (IsPredicateField_20418_178276 pm_f_43@@2)) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@8) null (PredicateMaskField_20418 pm_f_43@@2)) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@2) null (PredicateMaskField_20418 pm_f_43@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsPredicateField_20418_178276 pm_f_43@@2) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@2) null (PredicateMaskField_20418 pm_f_43@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_43401) (ExhaleHeap@@3 T@PolymorphicMapType_43401) (Mask@@4 T@PolymorphicMapType_43422) (pm_f_43@@3 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_20509_20510 Mask@@4 null pm_f_43@@3) (IsWandField_20509_185968 pm_f_43@@3)) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@9) null (WandMaskField_20509 pm_f_43@@3)) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@3) null (WandMaskField_20509 pm_f_43@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsWandField_20509_185968 pm_f_43@@3) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@3) null (WandMaskField_20509 pm_f_43@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_43401) (ExhaleHeap@@4 T@PolymorphicMapType_43401) (Mask@@5 T@PolymorphicMapType_43422) (pm_f_43@@4 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_20484_20485 Mask@@5 null pm_f_43@@4) (IsWandField_20484_185611 pm_f_43@@4)) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@10) null (WandMaskField_20484 pm_f_43@@4)) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@4) null (WandMaskField_20484 pm_f_43@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsWandField_20484_185611 pm_f_43@@4) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@4) null (WandMaskField_20484 pm_f_43@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_43401) (ExhaleHeap@@5 T@PolymorphicMapType_43401) (Mask@@6 T@PolymorphicMapType_43422) (pm_f_43@@5 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_20459_20460 Mask@@6 null pm_f_43@@5) (IsWandField_20459_185254 pm_f_43@@5)) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@11) null (WandMaskField_20459 pm_f_43@@5)) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@5) null (WandMaskField_20459 pm_f_43@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_20459_185254 pm_f_43@@5) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@5) null (WandMaskField_20459 pm_f_43@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_43401) (ExhaleHeap@@6 T@PolymorphicMapType_43401) (Mask@@7 T@PolymorphicMapType_43422) (pm_f_43@@6 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_20418_20460 Mask@@7 null pm_f_43@@6) (IsWandField_20418_184897 pm_f_43@@6)) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@12) null (WandMaskField_20418 pm_f_43@@6)) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@6) null (WandMaskField_20418 pm_f_43@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_20418_184897 pm_f_43@@6) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@6) null (WandMaskField_20418 pm_f_43@@6)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_43401) (ExhaleHeap@@7 T@PolymorphicMapType_43401) (Mask@@8 T@PolymorphicMapType_43422) (pm_f_43@@7 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_20509_20510 Mask@@8 null pm_f_43@@7) (IsPredicateField_20509_20510 pm_f_43@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43 T@Ref) (f_133 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43 f_133) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@13) o2_43 f_133) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43 f_133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43 f_133))
)) (forall ((o2_43@@0 T@Ref) (f_133@@0 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@0 f_133@@0) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@0 f_133@@0) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@0 f_133@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@0 f_133@@0))
))) (forall ((o2_43@@1 T@Ref) (f_133@@1 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@1 f_133@@1) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@13) o2_43@@1 f_133@@1) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@1 f_133@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@1 f_133@@1))
))) (forall ((o2_43@@2 T@Ref) (f_133@@2 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@2 f_133@@2) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@13) o2_43@@2 f_133@@2) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@2 f_133@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@2 f_133@@2))
))) (forall ((o2_43@@3 T@Ref) (f_133@@3 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@3 f_133@@3) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@13) o2_43@@3 f_133@@3) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@3 f_133@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@3 f_133@@3))
))) (forall ((o2_43@@4 T@Ref) (f_133@@4 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@4 f_133@@4) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@13) o2_43@@4 f_133@@4) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@4 f_133@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@4 f_133@@4))
))) (forall ((o2_43@@5 T@Ref) (f_133@@5 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@5 f_133@@5) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@5 f_133@@5) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@5 f_133@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@5 f_133@@5))
))) (forall ((o2_43@@6 T@Ref) (f_133@@6 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@6 f_133@@6) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@13) o2_43@@6 f_133@@6) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@6 f_133@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@6 f_133@@6))
))) (forall ((o2_43@@7 T@Ref) (f_133@@7 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@7 f_133@@7) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@13) o2_43@@7 f_133@@7) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@7 f_133@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@7 f_133@@7))
))) (forall ((o2_43@@8 T@Ref) (f_133@@8 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@8 f_133@@8) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@13) o2_43@@8 f_133@@8) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@8 f_133@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@8 f_133@@8))
))) (forall ((o2_43@@9 T@Ref) (f_133@@9 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@9 f_133@@9) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@13) o2_43@@9 f_133@@9) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@9 f_133@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@9 f_133@@9))
))) (forall ((o2_43@@10 T@Ref) (f_133@@10 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@10 f_133@@10) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@10 f_133@@10) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@10 f_133@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@10 f_133@@10))
))) (forall ((o2_43@@11 T@Ref) (f_133@@11 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@11 f_133@@11) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@13) o2_43@@11 f_133@@11) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@11 f_133@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@11 f_133@@11))
))) (forall ((o2_43@@12 T@Ref) (f_133@@12 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@12 f_133@@12) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@13) o2_43@@12 f_133@@12) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@12 f_133@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@12 f_133@@12))
))) (forall ((o2_43@@13 T@Ref) (f_133@@13 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@13 f_133@@13) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@13) o2_43@@13 f_133@@13) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@13 f_133@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@13 f_133@@13))
))) (forall ((o2_43@@14 T@Ref) (f_133@@14 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@14 f_133@@14) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@13) o2_43@@14 f_133@@14) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@14 f_133@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@14 f_133@@14))
))) (forall ((o2_43@@15 T@Ref) (f_133@@15 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@15 f_133@@15) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@13) o2_43@@15 f_133@@15) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@15 f_133@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@15 f_133@@15))
))) (forall ((o2_43@@16 T@Ref) (f_133@@16 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@16 f_133@@16) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@13) o2_43@@16 f_133@@16) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@16 f_133@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@16 f_133@@16))
))) (forall ((o2_43@@17 T@Ref) (f_133@@17 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@17 f_133@@17) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@13) o2_43@@17 f_133@@17) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@17 f_133@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@17 f_133@@17))
))) (forall ((o2_43@@18 T@Ref) (f_133@@18 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) null (PredicateMaskField_20509 pm_f_43@@7))) o2_43@@18 f_133@@18) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@13) o2_43@@18 f_133@@18) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@18 f_133@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@7) o2_43@@18 f_133@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@8) (IsPredicateField_20509_20510 pm_f_43@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_43401) (ExhaleHeap@@8 T@PolymorphicMapType_43401) (Mask@@9 T@PolymorphicMapType_43422) (pm_f_43@@8 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_20484_20485 Mask@@9 null pm_f_43@@8) (IsPredicateField_20484_20485 pm_f_43@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@19 T@Ref) (f_133@@19 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@19 f_133@@19) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@14) o2_43@@19 f_133@@19) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@19 f_133@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@19 f_133@@19))
)) (forall ((o2_43@@20 T@Ref) (f_133@@20 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@20 f_133@@20) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@20 f_133@@20) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@20 f_133@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@20 f_133@@20))
))) (forall ((o2_43@@21 T@Ref) (f_133@@21 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@21 f_133@@21) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@14) o2_43@@21 f_133@@21) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@21 f_133@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@21 f_133@@21))
))) (forall ((o2_43@@22 T@Ref) (f_133@@22 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@22 f_133@@22) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@14) o2_43@@22 f_133@@22) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@22 f_133@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@22 f_133@@22))
))) (forall ((o2_43@@23 T@Ref) (f_133@@23 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@23 f_133@@23) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@14) o2_43@@23 f_133@@23) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@23 f_133@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@23 f_133@@23))
))) (forall ((o2_43@@24 T@Ref) (f_133@@24 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@24 f_133@@24) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@14) o2_43@@24 f_133@@24) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@24 f_133@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@24 f_133@@24))
))) (forall ((o2_43@@25 T@Ref) (f_133@@25 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@25 f_133@@25) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@25 f_133@@25) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@25 f_133@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@25 f_133@@25))
))) (forall ((o2_43@@26 T@Ref) (f_133@@26 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@26 f_133@@26) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@14) o2_43@@26 f_133@@26) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@26 f_133@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@26 f_133@@26))
))) (forall ((o2_43@@27 T@Ref) (f_133@@27 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@27 f_133@@27) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@14) o2_43@@27 f_133@@27) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@27 f_133@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@27 f_133@@27))
))) (forall ((o2_43@@28 T@Ref) (f_133@@28 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@28 f_133@@28) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@14) o2_43@@28 f_133@@28) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@28 f_133@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@28 f_133@@28))
))) (forall ((o2_43@@29 T@Ref) (f_133@@29 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@29 f_133@@29) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@14) o2_43@@29 f_133@@29) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@29 f_133@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@29 f_133@@29))
))) (forall ((o2_43@@30 T@Ref) (f_133@@30 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@30 f_133@@30) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@30 f_133@@30) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@30 f_133@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@30 f_133@@30))
))) (forall ((o2_43@@31 T@Ref) (f_133@@31 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@31 f_133@@31) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@14) o2_43@@31 f_133@@31) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@31 f_133@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@31 f_133@@31))
))) (forall ((o2_43@@32 T@Ref) (f_133@@32 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@32 f_133@@32) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@14) o2_43@@32 f_133@@32) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@32 f_133@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@32 f_133@@32))
))) (forall ((o2_43@@33 T@Ref) (f_133@@33 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@33 f_133@@33) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) o2_43@@33 f_133@@33) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@33 f_133@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@33 f_133@@33))
))) (forall ((o2_43@@34 T@Ref) (f_133@@34 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@34 f_133@@34) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@14) o2_43@@34 f_133@@34) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@34 f_133@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@34 f_133@@34))
))) (forall ((o2_43@@35 T@Ref) (f_133@@35 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@35 f_133@@35) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@14) o2_43@@35 f_133@@35) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@35 f_133@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@35 f_133@@35))
))) (forall ((o2_43@@36 T@Ref) (f_133@@36 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@36 f_133@@36) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@14) o2_43@@36 f_133@@36) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@36 f_133@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@36 f_133@@36))
))) (forall ((o2_43@@37 T@Ref) (f_133@@37 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@37 f_133@@37) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@14) o2_43@@37 f_133@@37) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@37 f_133@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@37 f_133@@37))
))) (forall ((o2_43@@38 T@Ref) (f_133@@38 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@14) null (PredicateMaskField_20484 pm_f_43@@8))) o2_43@@38 f_133@@38) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@14) o2_43@@38 f_133@@38) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@38 f_133@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@8) o2_43@@38 f_133@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@9) (IsPredicateField_20484_20485 pm_f_43@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_43401) (ExhaleHeap@@9 T@PolymorphicMapType_43401) (Mask@@10 T@PolymorphicMapType_43422) (pm_f_43@@9 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_20459_20460 Mask@@10 null pm_f_43@@9) (IsPredicateField_20459_20460 pm_f_43@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@39 T@Ref) (f_133@@39 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@39 f_133@@39) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@15) o2_43@@39 f_133@@39) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@39 f_133@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@39 f_133@@39))
)) (forall ((o2_43@@40 T@Ref) (f_133@@40 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@40 f_133@@40) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@40 f_133@@40) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@40 f_133@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@40 f_133@@40))
))) (forall ((o2_43@@41 T@Ref) (f_133@@41 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@41 f_133@@41) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@15) o2_43@@41 f_133@@41) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@41 f_133@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@41 f_133@@41))
))) (forall ((o2_43@@42 T@Ref) (f_133@@42 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@42 f_133@@42) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@15) o2_43@@42 f_133@@42) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@42 f_133@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@42 f_133@@42))
))) (forall ((o2_43@@43 T@Ref) (f_133@@43 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@43 f_133@@43) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@15) o2_43@@43 f_133@@43) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@43 f_133@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@43 f_133@@43))
))) (forall ((o2_43@@44 T@Ref) (f_133@@44 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@44 f_133@@44) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@15) o2_43@@44 f_133@@44) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@44 f_133@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@44 f_133@@44))
))) (forall ((o2_43@@45 T@Ref) (f_133@@45 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@45 f_133@@45) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@45 f_133@@45) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@45 f_133@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@45 f_133@@45))
))) (forall ((o2_43@@46 T@Ref) (f_133@@46 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@46 f_133@@46) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@15) o2_43@@46 f_133@@46) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@46 f_133@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@46 f_133@@46))
))) (forall ((o2_43@@47 T@Ref) (f_133@@47 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@47 f_133@@47) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@15) o2_43@@47 f_133@@47) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@47 f_133@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@47 f_133@@47))
))) (forall ((o2_43@@48 T@Ref) (f_133@@48 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@48 f_133@@48) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) o2_43@@48 f_133@@48) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@48 f_133@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@48 f_133@@48))
))) (forall ((o2_43@@49 T@Ref) (f_133@@49 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@49 f_133@@49) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@15) o2_43@@49 f_133@@49) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@49 f_133@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@49 f_133@@49))
))) (forall ((o2_43@@50 T@Ref) (f_133@@50 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@50 f_133@@50) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@50 f_133@@50) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@50 f_133@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@50 f_133@@50))
))) (forall ((o2_43@@51 T@Ref) (f_133@@51 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@51 f_133@@51) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@15) o2_43@@51 f_133@@51) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@51 f_133@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@51 f_133@@51))
))) (forall ((o2_43@@52 T@Ref) (f_133@@52 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@52 f_133@@52) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@15) o2_43@@52 f_133@@52) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@52 f_133@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@52 f_133@@52))
))) (forall ((o2_43@@53 T@Ref) (f_133@@53 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@53 f_133@@53) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@15) o2_43@@53 f_133@@53) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@53 f_133@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@53 f_133@@53))
))) (forall ((o2_43@@54 T@Ref) (f_133@@54 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@54 f_133@@54) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@15) o2_43@@54 f_133@@54) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@54 f_133@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@54 f_133@@54))
))) (forall ((o2_43@@55 T@Ref) (f_133@@55 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@55 f_133@@55) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@15) o2_43@@55 f_133@@55) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@55 f_133@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@55 f_133@@55))
))) (forall ((o2_43@@56 T@Ref) (f_133@@56 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@56 f_133@@56) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@15) o2_43@@56 f_133@@56) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@56 f_133@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@56 f_133@@56))
))) (forall ((o2_43@@57 T@Ref) (f_133@@57 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@57 f_133@@57) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@15) o2_43@@57 f_133@@57) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@57 f_133@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@57 f_133@@57))
))) (forall ((o2_43@@58 T@Ref) (f_133@@58 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@15) null (PredicateMaskField_20459 pm_f_43@@9))) o2_43@@58 f_133@@58) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@15) o2_43@@58 f_133@@58) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@58 f_133@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@9) o2_43@@58 f_133@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@10) (IsPredicateField_20459_20460 pm_f_43@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_43401) (ExhaleHeap@@10 T@PolymorphicMapType_43401) (Mask@@11 T@PolymorphicMapType_43422) (pm_f_43@@10 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_20418_20460 Mask@@11 null pm_f_43@@10) (IsPredicateField_20418_178276 pm_f_43@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@59 T@Ref) (f_133@@59 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@59 f_133@@59) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@16) o2_43@@59 f_133@@59) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@59 f_133@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@59 f_133@@59))
)) (forall ((o2_43@@60 T@Ref) (f_133@@60 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@60 f_133@@60) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@60 f_133@@60) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@60 f_133@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@60 f_133@@60))
))) (forall ((o2_43@@61 T@Ref) (f_133@@61 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@61 f_133@@61) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@16) o2_43@@61 f_133@@61) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@61 f_133@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@61 f_133@@61))
))) (forall ((o2_43@@62 T@Ref) (f_133@@62 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@62 f_133@@62) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@16) o2_43@@62 f_133@@62) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@62 f_133@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@62 f_133@@62))
))) (forall ((o2_43@@63 T@Ref) (f_133@@63 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@63 f_133@@63) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) o2_43@@63 f_133@@63) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@63 f_133@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@63 f_133@@63))
))) (forall ((o2_43@@64 T@Ref) (f_133@@64 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@64 f_133@@64) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@16) o2_43@@64 f_133@@64) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@64 f_133@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@64 f_133@@64))
))) (forall ((o2_43@@65 T@Ref) (f_133@@65 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@65 f_133@@65) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@65 f_133@@65) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@65 f_133@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@65 f_133@@65))
))) (forall ((o2_43@@66 T@Ref) (f_133@@66 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@66 f_133@@66) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@16) o2_43@@66 f_133@@66) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@66 f_133@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@66 f_133@@66))
))) (forall ((o2_43@@67 T@Ref) (f_133@@67 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@67 f_133@@67) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@16) o2_43@@67 f_133@@67) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@67 f_133@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@67 f_133@@67))
))) (forall ((o2_43@@68 T@Ref) (f_133@@68 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@68 f_133@@68) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@16) o2_43@@68 f_133@@68) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@68 f_133@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@68 f_133@@68))
))) (forall ((o2_43@@69 T@Ref) (f_133@@69 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@69 f_133@@69) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@16) o2_43@@69 f_133@@69) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@69 f_133@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@69 f_133@@69))
))) (forall ((o2_43@@70 T@Ref) (f_133@@70 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@70 f_133@@70) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@70 f_133@@70) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@70 f_133@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@70 f_133@@70))
))) (forall ((o2_43@@71 T@Ref) (f_133@@71 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@71 f_133@@71) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@16) o2_43@@71 f_133@@71) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@71 f_133@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@71 f_133@@71))
))) (forall ((o2_43@@72 T@Ref) (f_133@@72 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@72 f_133@@72) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@16) o2_43@@72 f_133@@72) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@72 f_133@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@72 f_133@@72))
))) (forall ((o2_43@@73 T@Ref) (f_133@@73 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@73 f_133@@73) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@16) o2_43@@73 f_133@@73) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@73 f_133@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@73 f_133@@73))
))) (forall ((o2_43@@74 T@Ref) (f_133@@74 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@74 f_133@@74) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@16) o2_43@@74 f_133@@74) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@74 f_133@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@74 f_133@@74))
))) (forall ((o2_43@@75 T@Ref) (f_133@@75 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@75 f_133@@75) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@16) o2_43@@75 f_133@@75) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@75 f_133@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@75 f_133@@75))
))) (forall ((o2_43@@76 T@Ref) (f_133@@76 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@76 f_133@@76) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@16) o2_43@@76 f_133@@76) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@76 f_133@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@76 f_133@@76))
))) (forall ((o2_43@@77 T@Ref) (f_133@@77 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@77 f_133@@77) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@16) o2_43@@77 f_133@@77) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@77 f_133@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@77 f_133@@77))
))) (forall ((o2_43@@78 T@Ref) (f_133@@78 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@16) null (PredicateMaskField_20418 pm_f_43@@10))) o2_43@@78 f_133@@78) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@16) o2_43@@78 f_133@@78) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@78 f_133@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@10) o2_43@@78 f_133@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@11) (IsPredicateField_20418_178276 pm_f_43@@10))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_43401) (ExhaleHeap@@11 T@PolymorphicMapType_43401) (Mask@@12 T@PolymorphicMapType_43422) (pm_f_43@@11 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_20509_20510 Mask@@12 null pm_f_43@@11) (IsWandField_20509_185968 pm_f_43@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@79 T@Ref) (f_133@@79 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@79 f_133@@79) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@17) o2_43@@79 f_133@@79) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@79 f_133@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@79 f_133@@79))
)) (forall ((o2_43@@80 T@Ref) (f_133@@80 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@80 f_133@@80) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@80 f_133@@80) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@80 f_133@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@80 f_133@@80))
))) (forall ((o2_43@@81 T@Ref) (f_133@@81 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@81 f_133@@81) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@17) o2_43@@81 f_133@@81) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@81 f_133@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@81 f_133@@81))
))) (forall ((o2_43@@82 T@Ref) (f_133@@82 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@82 f_133@@82) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@17) o2_43@@82 f_133@@82) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@82 f_133@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@82 f_133@@82))
))) (forall ((o2_43@@83 T@Ref) (f_133@@83 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@83 f_133@@83) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@17) o2_43@@83 f_133@@83) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@83 f_133@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@83 f_133@@83))
))) (forall ((o2_43@@84 T@Ref) (f_133@@84 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@84 f_133@@84) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@17) o2_43@@84 f_133@@84) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@84 f_133@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@84 f_133@@84))
))) (forall ((o2_43@@85 T@Ref) (f_133@@85 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@85 f_133@@85) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@85 f_133@@85) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@85 f_133@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@85 f_133@@85))
))) (forall ((o2_43@@86 T@Ref) (f_133@@86 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@86 f_133@@86) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@17) o2_43@@86 f_133@@86) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@86 f_133@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@86 f_133@@86))
))) (forall ((o2_43@@87 T@Ref) (f_133@@87 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@87 f_133@@87) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@17) o2_43@@87 f_133@@87) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@87 f_133@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@87 f_133@@87))
))) (forall ((o2_43@@88 T@Ref) (f_133@@88 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@88 f_133@@88) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@17) o2_43@@88 f_133@@88) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@88 f_133@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@88 f_133@@88))
))) (forall ((o2_43@@89 T@Ref) (f_133@@89 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@89 f_133@@89) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@17) o2_43@@89 f_133@@89) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@89 f_133@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@89 f_133@@89))
))) (forall ((o2_43@@90 T@Ref) (f_133@@90 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@90 f_133@@90) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@90 f_133@@90) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@90 f_133@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@90 f_133@@90))
))) (forall ((o2_43@@91 T@Ref) (f_133@@91 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@91 f_133@@91) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@17) o2_43@@91 f_133@@91) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@91 f_133@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@91 f_133@@91))
))) (forall ((o2_43@@92 T@Ref) (f_133@@92 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@92 f_133@@92) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@17) o2_43@@92 f_133@@92) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@92 f_133@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@92 f_133@@92))
))) (forall ((o2_43@@93 T@Ref) (f_133@@93 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@93 f_133@@93) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@17) o2_43@@93 f_133@@93) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@93 f_133@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@93 f_133@@93))
))) (forall ((o2_43@@94 T@Ref) (f_133@@94 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@94 f_133@@94) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@17) o2_43@@94 f_133@@94) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@94 f_133@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@94 f_133@@94))
))) (forall ((o2_43@@95 T@Ref) (f_133@@95 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@95 f_133@@95) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@17) o2_43@@95 f_133@@95) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@95 f_133@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@95 f_133@@95))
))) (forall ((o2_43@@96 T@Ref) (f_133@@96 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@96 f_133@@96) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@17) o2_43@@96 f_133@@96) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@96 f_133@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@96 f_133@@96))
))) (forall ((o2_43@@97 T@Ref) (f_133@@97 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@97 f_133@@97) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@17) o2_43@@97 f_133@@97) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@97 f_133@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@97 f_133@@97))
))) (forall ((o2_43@@98 T@Ref) (f_133@@98 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) null (WandMaskField_20509 pm_f_43@@11))) o2_43@@98 f_133@@98) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@17) o2_43@@98 f_133@@98) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@98 f_133@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@11) o2_43@@98 f_133@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@12) (IsWandField_20509_185968 pm_f_43@@11))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_43401) (ExhaleHeap@@12 T@PolymorphicMapType_43401) (Mask@@13 T@PolymorphicMapType_43422) (pm_f_43@@12 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_20484_20485 Mask@@13 null pm_f_43@@12) (IsWandField_20484_185611 pm_f_43@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@99 T@Ref) (f_133@@99 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@99 f_133@@99) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@18) o2_43@@99 f_133@@99) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@99 f_133@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@99 f_133@@99))
)) (forall ((o2_43@@100 T@Ref) (f_133@@100 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@100 f_133@@100) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@100 f_133@@100) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@100 f_133@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@100 f_133@@100))
))) (forall ((o2_43@@101 T@Ref) (f_133@@101 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@101 f_133@@101) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@18) o2_43@@101 f_133@@101) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@101 f_133@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@101 f_133@@101))
))) (forall ((o2_43@@102 T@Ref) (f_133@@102 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@102 f_133@@102) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@18) o2_43@@102 f_133@@102) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@102 f_133@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@102 f_133@@102))
))) (forall ((o2_43@@103 T@Ref) (f_133@@103 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@103 f_133@@103) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@18) o2_43@@103 f_133@@103) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@103 f_133@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@103 f_133@@103))
))) (forall ((o2_43@@104 T@Ref) (f_133@@104 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@104 f_133@@104) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@18) o2_43@@104 f_133@@104) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@104 f_133@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@104 f_133@@104))
))) (forall ((o2_43@@105 T@Ref) (f_133@@105 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@105 f_133@@105) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@105 f_133@@105) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@105 f_133@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@105 f_133@@105))
))) (forall ((o2_43@@106 T@Ref) (f_133@@106 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@106 f_133@@106) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@18) o2_43@@106 f_133@@106) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@106 f_133@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@106 f_133@@106))
))) (forall ((o2_43@@107 T@Ref) (f_133@@107 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@107 f_133@@107) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@18) o2_43@@107 f_133@@107) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@107 f_133@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@107 f_133@@107))
))) (forall ((o2_43@@108 T@Ref) (f_133@@108 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@108 f_133@@108) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@18) o2_43@@108 f_133@@108) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@108 f_133@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@108 f_133@@108))
))) (forall ((o2_43@@109 T@Ref) (f_133@@109 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@109 f_133@@109) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@18) o2_43@@109 f_133@@109) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@109 f_133@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@109 f_133@@109))
))) (forall ((o2_43@@110 T@Ref) (f_133@@110 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@110 f_133@@110) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@110 f_133@@110) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@110 f_133@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@110 f_133@@110))
))) (forall ((o2_43@@111 T@Ref) (f_133@@111 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@111 f_133@@111) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@18) o2_43@@111 f_133@@111) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@111 f_133@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@111 f_133@@111))
))) (forall ((o2_43@@112 T@Ref) (f_133@@112 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@112 f_133@@112) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@18) o2_43@@112 f_133@@112) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@112 f_133@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@112 f_133@@112))
))) (forall ((o2_43@@113 T@Ref) (f_133@@113 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@113 f_133@@113) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) o2_43@@113 f_133@@113) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@113 f_133@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@113 f_133@@113))
))) (forall ((o2_43@@114 T@Ref) (f_133@@114 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@114 f_133@@114) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@18) o2_43@@114 f_133@@114) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@114 f_133@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@114 f_133@@114))
))) (forall ((o2_43@@115 T@Ref) (f_133@@115 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@115 f_133@@115) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@18) o2_43@@115 f_133@@115) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@115 f_133@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@115 f_133@@115))
))) (forall ((o2_43@@116 T@Ref) (f_133@@116 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@116 f_133@@116) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@18) o2_43@@116 f_133@@116) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@116 f_133@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@116 f_133@@116))
))) (forall ((o2_43@@117 T@Ref) (f_133@@117 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@117 f_133@@117) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@18) o2_43@@117 f_133@@117) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@117 f_133@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@117 f_133@@117))
))) (forall ((o2_43@@118 T@Ref) (f_133@@118 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@18) null (WandMaskField_20484 pm_f_43@@12))) o2_43@@118 f_133@@118) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@18) o2_43@@118 f_133@@118) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@118 f_133@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@12) o2_43@@118 f_133@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@13) (IsWandField_20484_185611 pm_f_43@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_43401) (ExhaleHeap@@13 T@PolymorphicMapType_43401) (Mask@@14 T@PolymorphicMapType_43422) (pm_f_43@@13 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_20459_20460 Mask@@14 null pm_f_43@@13) (IsWandField_20459_185254 pm_f_43@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@119 T@Ref) (f_133@@119 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@119 f_133@@119) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@19) o2_43@@119 f_133@@119) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@119 f_133@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@119 f_133@@119))
)) (forall ((o2_43@@120 T@Ref) (f_133@@120 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@120 f_133@@120) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@120 f_133@@120) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@120 f_133@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@120 f_133@@120))
))) (forall ((o2_43@@121 T@Ref) (f_133@@121 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@121 f_133@@121) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@19) o2_43@@121 f_133@@121) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@121 f_133@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@121 f_133@@121))
))) (forall ((o2_43@@122 T@Ref) (f_133@@122 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@122 f_133@@122) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@19) o2_43@@122 f_133@@122) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@122 f_133@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@122 f_133@@122))
))) (forall ((o2_43@@123 T@Ref) (f_133@@123 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@123 f_133@@123) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@19) o2_43@@123 f_133@@123) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@123 f_133@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@123 f_133@@123))
))) (forall ((o2_43@@124 T@Ref) (f_133@@124 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@124 f_133@@124) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@19) o2_43@@124 f_133@@124) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@124 f_133@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@124 f_133@@124))
))) (forall ((o2_43@@125 T@Ref) (f_133@@125 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@125 f_133@@125) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@125 f_133@@125) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@125 f_133@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@125 f_133@@125))
))) (forall ((o2_43@@126 T@Ref) (f_133@@126 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@126 f_133@@126) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@19) o2_43@@126 f_133@@126) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@126 f_133@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@126 f_133@@126))
))) (forall ((o2_43@@127 T@Ref) (f_133@@127 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@127 f_133@@127) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@19) o2_43@@127 f_133@@127) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@127 f_133@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@127 f_133@@127))
))) (forall ((o2_43@@128 T@Ref) (f_133@@128 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@128 f_133@@128) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) o2_43@@128 f_133@@128) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@128 f_133@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@128 f_133@@128))
))) (forall ((o2_43@@129 T@Ref) (f_133@@129 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@129 f_133@@129) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@19) o2_43@@129 f_133@@129) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@129 f_133@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@129 f_133@@129))
))) (forall ((o2_43@@130 T@Ref) (f_133@@130 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@130 f_133@@130) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@130 f_133@@130) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@130 f_133@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@130 f_133@@130))
))) (forall ((o2_43@@131 T@Ref) (f_133@@131 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@131 f_133@@131) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@19) o2_43@@131 f_133@@131) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@131 f_133@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@131 f_133@@131))
))) (forall ((o2_43@@132 T@Ref) (f_133@@132 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@132 f_133@@132) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@19) o2_43@@132 f_133@@132) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@132 f_133@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@132 f_133@@132))
))) (forall ((o2_43@@133 T@Ref) (f_133@@133 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@133 f_133@@133) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@19) o2_43@@133 f_133@@133) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@133 f_133@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@133 f_133@@133))
))) (forall ((o2_43@@134 T@Ref) (f_133@@134 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@134 f_133@@134) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@19) o2_43@@134 f_133@@134) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@134 f_133@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@134 f_133@@134))
))) (forall ((o2_43@@135 T@Ref) (f_133@@135 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@135 f_133@@135) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@19) o2_43@@135 f_133@@135) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@135 f_133@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@135 f_133@@135))
))) (forall ((o2_43@@136 T@Ref) (f_133@@136 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@136 f_133@@136) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@19) o2_43@@136 f_133@@136) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@136 f_133@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@136 f_133@@136))
))) (forall ((o2_43@@137 T@Ref) (f_133@@137 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@137 f_133@@137) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@19) o2_43@@137 f_133@@137) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@137 f_133@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@137 f_133@@137))
))) (forall ((o2_43@@138 T@Ref) (f_133@@138 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@19) null (WandMaskField_20459 pm_f_43@@13))) o2_43@@138 f_133@@138) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@19) o2_43@@138 f_133@@138) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@138 f_133@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@13) o2_43@@138 f_133@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@14) (IsWandField_20459_185254 pm_f_43@@13))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_43401) (ExhaleHeap@@14 T@PolymorphicMapType_43401) (Mask@@15 T@PolymorphicMapType_43422) (pm_f_43@@14 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_20418_20460 Mask@@15 null pm_f_43@@14) (IsWandField_20418_184897 pm_f_43@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_43@@139 T@Ref) (f_133@@139 T@Field_43474_43475) ) (!  (=> (select (|PolymorphicMapType_43950_20418_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@139 f_133@@139) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@20) o2_43@@139 f_133@@139) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@139 f_133@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@139 f_133@@139))
)) (forall ((o2_43@@140 T@Ref) (f_133@@140 T@Field_46838_1204) ) (!  (=> (select (|PolymorphicMapType_43950_20421_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@140 f_133@@140) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@140 f_133@@140) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@140 f_133@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@140 f_133@@140))
))) (forall ((o2_43@@141 T@Ref) (f_133@@141 T@Field_43461_53) ) (!  (=> (select (|PolymorphicMapType_43950_20418_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@141 f_133@@141) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@20) o2_43@@141 f_133@@141) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@141 f_133@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@141 f_133@@141))
))) (forall ((o2_43@@142 T@Ref) (f_133@@142 T@Field_20418_20460) ) (!  (=> (select (|PolymorphicMapType_43950_20418_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@142 f_133@@142) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@20) o2_43@@142 f_133@@142) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@142 f_133@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@142 f_133@@142))
))) (forall ((o2_43@@143 T@Ref) (f_133@@143 T@Field_20418_49412) ) (!  (=> (select (|PolymorphicMapType_43950_20418_180383#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@143 f_133@@143) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) o2_43@@143 f_133@@143) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@143 f_133@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@143 f_133@@143))
))) (forall ((o2_43@@144 T@Ref) (f_133@@144 T@Field_20459_20419) ) (!  (=> (select (|PolymorphicMapType_43950_47198_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@144 f_133@@144) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@20) o2_43@@144 f_133@@144) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@144 f_133@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@144 f_133@@144))
))) (forall ((o2_43@@145 T@Ref) (f_133@@145 T@Field_20459_1204) ) (!  (=> (select (|PolymorphicMapType_43950_47198_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@145 f_133@@145) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@145 f_133@@145) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@145 f_133@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@145 f_133@@145))
))) (forall ((o2_43@@146 T@Ref) (f_133@@146 T@Field_20459_53) ) (!  (=> (select (|PolymorphicMapType_43950_47198_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@146 f_133@@146) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@20) o2_43@@146 f_133@@146) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@146 f_133@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@146 f_133@@146))
))) (forall ((o2_43@@147 T@Ref) (f_133@@147 T@Field_47198_47199) ) (!  (=> (select (|PolymorphicMapType_43950_47198_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@147 f_133@@147) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@20) o2_43@@147 f_133@@147) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@147 f_133@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@147 f_133@@147))
))) (forall ((o2_43@@148 T@Ref) (f_133@@148 T@Field_49407_49412) ) (!  (=> (select (|PolymorphicMapType_43950_47198_181431#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@148 f_133@@148) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@20) o2_43@@148 f_133@@148) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@148 f_133@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@148 f_133@@148))
))) (forall ((o2_43@@149 T@Ref) (f_133@@149 T@Field_20484_20419) ) (!  (=> (select (|PolymorphicMapType_43950_51807_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@149 f_133@@149) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@20) o2_43@@149 f_133@@149) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@149 f_133@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@149 f_133@@149))
))) (forall ((o2_43@@150 T@Ref) (f_133@@150 T@Field_20484_1204) ) (!  (=> (select (|PolymorphicMapType_43950_51807_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@150 f_133@@150) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@150 f_133@@150) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@150 f_133@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@150 f_133@@150))
))) (forall ((o2_43@@151 T@Ref) (f_133@@151 T@Field_20484_53) ) (!  (=> (select (|PolymorphicMapType_43950_51807_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@151 f_133@@151) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@20) o2_43@@151 f_133@@151) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@151 f_133@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@151 f_133@@151))
))) (forall ((o2_43@@152 T@Ref) (f_133@@152 T@Field_51807_51808) ) (!  (=> (select (|PolymorphicMapType_43950_51807_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@152 f_133@@152) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@20) o2_43@@152 f_133@@152) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@152 f_133@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@152 f_133@@152))
))) (forall ((o2_43@@153 T@Ref) (f_133@@153 T@Field_51820_51825) ) (!  (=> (select (|PolymorphicMapType_43950_51807_182479#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@153 f_133@@153) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@20) o2_43@@153 f_133@@153) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@153 f_133@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@153 f_133@@153))
))) (forall ((o2_43@@154 T@Ref) (f_133@@154 T@Field_20509_20419) ) (!  (=> (select (|PolymorphicMapType_43950_53008_20419#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@154 f_133@@154) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@20) o2_43@@154 f_133@@154) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@154 f_133@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@154 f_133@@154))
))) (forall ((o2_43@@155 T@Ref) (f_133@@155 T@Field_20509_1204) ) (!  (=> (select (|PolymorphicMapType_43950_53008_1204#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@155 f_133@@155) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@20) o2_43@@155 f_133@@155) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@155 f_133@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@155 f_133@@155))
))) (forall ((o2_43@@156 T@Ref) (f_133@@156 T@Field_20509_53) ) (!  (=> (select (|PolymorphicMapType_43950_53008_53#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@156 f_133@@156) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@20) o2_43@@156 f_133@@156) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@156 f_133@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@156 f_133@@156))
))) (forall ((o2_43@@157 T@Ref) (f_133@@157 T@Field_53008_53009) ) (!  (=> (select (|PolymorphicMapType_43950_53008_47199#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@157 f_133@@157) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@20) o2_43@@157 f_133@@157) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@157 f_133@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@157 f_133@@157))
))) (forall ((o2_43@@158 T@Ref) (f_133@@158 T@Field_53295_53300) ) (!  (=> (select (|PolymorphicMapType_43950_53008_183527#PolymorphicMapType_43950| (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@20) null (WandMaskField_20418 pm_f_43@@14))) o2_43@@158 f_133@@158) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@20) o2_43@@158 f_133@@158) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@158 f_133@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@14) o2_43@@158 f_133@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@15) (IsWandField_20418_184897 pm_f_43@@14))
)))
(assert (forall ((this@@7 T@Ref) (this2 T@Ref) ) (!  (=> (= (Nodevalid$ this@@7) (Nodevalid$ this2)) (= this@@7 this2))
 :qid |stdinbpl.326:15|
 :skolemid |30|
 :pattern ( (Nodevalid$ this@@7) (Nodevalid$ this2))
)))
(assert (forall ((this@@8 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Nodevalid$#sm| this@@8) (|Nodevalid$#sm| this2@@0)) (= this@@8 this2@@0))
 :qid |stdinbpl.330:15|
 :skolemid |31|
 :pattern ( (|Nodevalid$#sm| this@@8) (|Nodevalid$#sm| this2@@0))
)))
(assert (forall ((this@@9 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (Nodep$ this@@9) (Nodep$ this2@@1)) (= this@@9 this2@@1))
 :qid |stdinbpl.401:15|
 :skolemid |36|
 :pattern ( (Nodep$ this@@9) (Nodep$ this2@@1))
)))
(assert (forall ((this@@10 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|Nodep$#sm| this@@10) (|Nodep$#sm| this2@@2)) (= this@@10 this2@@2))
 :qid |stdinbpl.405:15|
 :skolemid |37|
 :pattern ( (|Nodep$#sm| this@@10) (|Nodep$#sm| this2@@2))
)))
(assert (forall ((this@@11 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (Nodeq$ this@@11) (Nodeq$ this2@@3)) (= this@@11 this2@@3))
 :qid |stdinbpl.476:15|
 :skolemid |42|
 :pattern ( (Nodeq$ this@@11) (Nodeq$ this2@@3))
)))
(assert (forall ((this@@12 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|Nodeq$#sm| this@@12) (|Nodeq$#sm| this2@@4)) (= this@@12 this2@@4))
 :qid |stdinbpl.480:15|
 :skolemid |43|
 :pattern ( (|Nodeq$#sm| this@@12) (|Nodeq$#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@21 T@PolymorphicMapType_43401) (ExhaleHeap@@15 T@PolymorphicMapType_43401) (Mask@@16 T@PolymorphicMapType_43422) (o_100 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@21) o_100 $allocated) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@15) o_100 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@15) o_100 $allocated))
)))
(assert (forall ((p T@Field_20418_20460) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_43461_43461 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43461_43461 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_53008_53009) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_20509_20509 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20509_20509 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_51807_51808) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_20484_20484 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20484_20484 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_47198_47199) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_20459_20459 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20459_20459 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_20418_20419 Nodenext$)))
(assert  (not (IsWandField_20418_20419 Nodenext$)))
(assert  (not (IsPredicateField_20421_1204 Nodevalue$)))
(assert  (not (IsWandField_20421_1204 Nodevalue$)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_43401) (ExhaleHeap@@16 T@PolymorphicMapType_43401) (Mask@@17 T@PolymorphicMapType_43422) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@22 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_43422) (o_2@@19 T@Ref) (f_4@@19 T@Field_51820_51825) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20484_199643 f_4@@19))) (not (IsWandField_20484_199659 f_4@@19))) (<= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_43422) (o_2@@20 T@Ref) (f_4@@20 T@Field_20484_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20484_53 f_4@@20))) (not (IsWandField_20484_53 f_4@@20))) (<= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_43422) (o_2@@21 T@Ref) (f_4@@21 T@Field_20484_1204) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_20484_1204 f_4@@21))) (not (IsWandField_20484_1204 f_4@@21))) (<= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_43422) (o_2@@22 T@Ref) (f_4@@22 T@Field_20484_20419) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_20484_20419 f_4@@22))) (not (IsWandField_20484_20419 f_4@@22))) (<= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_43422) (o_2@@23 T@Ref) (f_4@@23 T@Field_51807_51808) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_20484_20485 f_4@@23))) (not (IsWandField_20484_185611 f_4@@23))) (<= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_43422) (o_2@@24 T@Ref) (f_4@@24 T@Field_53295_53300) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_20509_198812 f_4@@24))) (not (IsWandField_20509_198828 f_4@@24))) (<= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_43422) (o_2@@25 T@Ref) (f_4@@25 T@Field_20509_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_20509_53 f_4@@25))) (not (IsWandField_20509_53 f_4@@25))) (<= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_43422) (o_2@@26 T@Ref) (f_4@@26 T@Field_20509_1204) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_20509_1204 f_4@@26))) (not (IsWandField_20509_1204 f_4@@26))) (<= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_43422) (o_2@@27 T@Ref) (f_4@@27 T@Field_20509_20419) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_20509_20419 f_4@@27))) (not (IsWandField_20509_20419 f_4@@27))) (<= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_43422) (o_2@@28 T@Ref) (f_4@@28 T@Field_53008_53009) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_20509_20510 f_4@@28))) (not (IsWandField_20509_185968 f_4@@28))) (<= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_43422) (o_2@@29 T@Ref) (f_4@@29 T@Field_20418_49412) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_20418_197981 f_4@@29))) (not (IsWandField_20418_197997 f_4@@29))) (<= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_43422) (o_2@@30 T@Ref) (f_4@@30 T@Field_43461_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_20418_53 f_4@@30))) (not (IsWandField_20418_53 f_4@@30))) (<= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_43422) (o_2@@31 T@Ref) (f_4@@31 T@Field_46838_1204) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_20421_1204 f_4@@31))) (not (IsWandField_20421_1204 f_4@@31))) (<= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_43422) (o_2@@32 T@Ref) (f_4@@32 T@Field_43474_43475) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_20418_20419 f_4@@32))) (not (IsWandField_20418_20419 f_4@@32))) (<= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_43422) (o_2@@33 T@Ref) (f_4@@33 T@Field_20418_20460) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_20418_178276 f_4@@33))) (not (IsWandField_20418_184897 f_4@@33))) (<= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_43422) (o_2@@34 T@Ref) (f_4@@34 T@Field_49407_49412) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_20459_197178 f_4@@34))) (not (IsWandField_20459_197194 f_4@@34))) (<= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_43422) (o_2@@35 T@Ref) (f_4@@35 T@Field_20459_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_20459_53 f_4@@35))) (not (IsWandField_20459_53 f_4@@35))) (<= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_43422) (o_2@@36 T@Ref) (f_4@@36 T@Field_20459_1204) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_20459_1204 f_4@@36))) (not (IsWandField_20459_1204 f_4@@36))) (<= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_43422) (o_2@@37 T@Ref) (f_4@@37 T@Field_20459_20419) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_20459_20419 f_4@@37))) (not (IsWandField_20459_20419 f_4@@37))) (<= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_43422) (o_2@@38 T@Ref) (f_4@@38 T@Field_47198_47199) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_20459_20460 f_4@@38))) (not (IsWandField_20459_185254 f_4@@38))) (<= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_43422) (o_2@@39 T@Ref) (f_4@@39 T@Field_53295_53300) ) (! (= (HasDirectPerm_20509_178031 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_178031 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_43422) (o_2@@40 T@Ref) (f_4@@40 T@Field_20509_1204) ) (! (= (HasDirectPerm_20509_1204 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_1204 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_43422) (o_2@@41 T@Ref) (f_4@@41 T@Field_20509_53) ) (! (= (HasDirectPerm_20509_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_43422) (o_2@@42 T@Ref) (f_4@@42 T@Field_53008_53009) ) (! (= (HasDirectPerm_20509_20510 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_20510 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_43422) (o_2@@43 T@Ref) (f_4@@43 T@Field_20509_20419) ) (! (= (HasDirectPerm_20509_20419 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20509_20419 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_43422) (o_2@@44 T@Ref) (f_4@@44 T@Field_51820_51825) ) (! (= (HasDirectPerm_20484_176933 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_176933 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_43422) (o_2@@45 T@Ref) (f_4@@45 T@Field_20484_1204) ) (! (= (HasDirectPerm_20484_1204 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_1204 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_43422) (o_2@@46 T@Ref) (f_4@@46 T@Field_20484_53) ) (! (= (HasDirectPerm_20484_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_43422) (o_2@@47 T@Ref) (f_4@@47 T@Field_51807_51808) ) (! (= (HasDirectPerm_20484_20485 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_20485 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_43422) (o_2@@48 T@Ref) (f_4@@48 T@Field_20484_20419) ) (! (= (HasDirectPerm_20484_20419 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20484_20419 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_43422) (o_2@@49 T@Ref) (f_4@@49 T@Field_49407_49412) ) (! (= (HasDirectPerm_20459_175835 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_175835 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_43422) (o_2@@50 T@Ref) (f_4@@50 T@Field_20459_1204) ) (! (= (HasDirectPerm_20459_1204 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_1204 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_43422) (o_2@@51 T@Ref) (f_4@@51 T@Field_20459_53) ) (! (= (HasDirectPerm_20459_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_43422) (o_2@@52 T@Ref) (f_4@@52 T@Field_47198_47199) ) (! (= (HasDirectPerm_20459_20460 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_20460 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_43422) (o_2@@53 T@Ref) (f_4@@53 T@Field_20459_20419) ) (! (= (HasDirectPerm_20459_20419 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20459_20419 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_43422) (o_2@@54 T@Ref) (f_4@@54 T@Field_20418_49412) ) (! (= (HasDirectPerm_20418_174694 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_174694 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_43422) (o_2@@55 T@Ref) (f_4@@55 T@Field_46838_1204) ) (! (= (HasDirectPerm_20418_1204 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_1204 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_43422) (o_2@@56 T@Ref) (f_4@@56 T@Field_43461_53) ) (! (= (HasDirectPerm_20418_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_43422) (o_2@@57 T@Ref) (f_4@@57 T@Field_20418_20460) ) (! (= (HasDirectPerm_20418_20460 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_20460 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_43422) (o_2@@58 T@Ref) (f_4@@58 T@Field_43474_43475) ) (! (= (HasDirectPerm_20418_20419 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20418_20419 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_43401) (ExhaleHeap@@17 T@PolymorphicMapType_43401) (Mask@@58 T@PolymorphicMapType_43422) (o_100@@0 T@Ref) (f_133@@159 T@Field_53295_53300) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_20509_178031 Mask@@58 o_100@@0 f_133@@159) (= (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@23) o_100@@0 f_133@@159) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@17) o_100@@0 f_133@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| ExhaleHeap@@17) o_100@@0 f_133@@159))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_43401) (ExhaleHeap@@18 T@PolymorphicMapType_43401) (Mask@@59 T@PolymorphicMapType_43422) (o_100@@1 T@Ref) (f_133@@160 T@Field_20509_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_20509_1204 Mask@@59 o_100@@1 f_133@@160) (= (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@24) o_100@@1 f_133@@160) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@18) o_100@@1 f_133@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| ExhaleHeap@@18) o_100@@1 f_133@@160))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_43401) (ExhaleHeap@@19 T@PolymorphicMapType_43401) (Mask@@60 T@PolymorphicMapType_43422) (o_100@@2 T@Ref) (f_133@@161 T@Field_20509_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_20509_53 Mask@@60 o_100@@2 f_133@@161) (= (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@25) o_100@@2 f_133@@161) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@19) o_100@@2 f_133@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| ExhaleHeap@@19) o_100@@2 f_133@@161))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_43401) (ExhaleHeap@@20 T@PolymorphicMapType_43401) (Mask@@61 T@PolymorphicMapType_43422) (o_100@@3 T@Ref) (f_133@@162 T@Field_53008_53009) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_20509_20510 Mask@@61 o_100@@3 f_133@@162) (= (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@26) o_100@@3 f_133@@162) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@20) o_100@@3 f_133@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| ExhaleHeap@@20) o_100@@3 f_133@@162))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_43401) (ExhaleHeap@@21 T@PolymorphicMapType_43401) (Mask@@62 T@PolymorphicMapType_43422) (o_100@@4 T@Ref) (f_133@@163 T@Field_20509_20419) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_20509_20419 Mask@@62 o_100@@4 f_133@@163) (= (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@27) o_100@@4 f_133@@163) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@21) o_100@@4 f_133@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| ExhaleHeap@@21) o_100@@4 f_133@@163))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_43401) (ExhaleHeap@@22 T@PolymorphicMapType_43401) (Mask@@63 T@PolymorphicMapType_43422) (o_100@@5 T@Ref) (f_133@@164 T@Field_51820_51825) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_20484_176933 Mask@@63 o_100@@5 f_133@@164) (= (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@28) o_100@@5 f_133@@164) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@22) o_100@@5 f_133@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| ExhaleHeap@@22) o_100@@5 f_133@@164))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_43401) (ExhaleHeap@@23 T@PolymorphicMapType_43401) (Mask@@64 T@PolymorphicMapType_43422) (o_100@@6 T@Ref) (f_133@@165 T@Field_20484_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_20484_1204 Mask@@64 o_100@@6 f_133@@165) (= (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@29) o_100@@6 f_133@@165) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@23) o_100@@6 f_133@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| ExhaleHeap@@23) o_100@@6 f_133@@165))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_43401) (ExhaleHeap@@24 T@PolymorphicMapType_43401) (Mask@@65 T@PolymorphicMapType_43422) (o_100@@7 T@Ref) (f_133@@166 T@Field_20484_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_20484_53 Mask@@65 o_100@@7 f_133@@166) (= (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@30) o_100@@7 f_133@@166) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@24) o_100@@7 f_133@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| ExhaleHeap@@24) o_100@@7 f_133@@166))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_43401) (ExhaleHeap@@25 T@PolymorphicMapType_43401) (Mask@@66 T@PolymorphicMapType_43422) (o_100@@8 T@Ref) (f_133@@167 T@Field_51807_51808) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_20484_20485 Mask@@66 o_100@@8 f_133@@167) (= (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@31) o_100@@8 f_133@@167) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@25) o_100@@8 f_133@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| ExhaleHeap@@25) o_100@@8 f_133@@167))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_43401) (ExhaleHeap@@26 T@PolymorphicMapType_43401) (Mask@@67 T@PolymorphicMapType_43422) (o_100@@9 T@Ref) (f_133@@168 T@Field_20484_20419) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_20484_20419 Mask@@67 o_100@@9 f_133@@168) (= (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@32) o_100@@9 f_133@@168) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@26) o_100@@9 f_133@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| ExhaleHeap@@26) o_100@@9 f_133@@168))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_43401) (ExhaleHeap@@27 T@PolymorphicMapType_43401) (Mask@@68 T@PolymorphicMapType_43422) (o_100@@10 T@Ref) (f_133@@169 T@Field_49407_49412) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_20459_175835 Mask@@68 o_100@@10 f_133@@169) (= (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@33) o_100@@10 f_133@@169) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@27) o_100@@10 f_133@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| ExhaleHeap@@27) o_100@@10 f_133@@169))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_43401) (ExhaleHeap@@28 T@PolymorphicMapType_43401) (Mask@@69 T@PolymorphicMapType_43422) (o_100@@11 T@Ref) (f_133@@170 T@Field_20459_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_20459_1204 Mask@@69 o_100@@11 f_133@@170) (= (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@34) o_100@@11 f_133@@170) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@28) o_100@@11 f_133@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| ExhaleHeap@@28) o_100@@11 f_133@@170))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_43401) (ExhaleHeap@@29 T@PolymorphicMapType_43401) (Mask@@70 T@PolymorphicMapType_43422) (o_100@@12 T@Ref) (f_133@@171 T@Field_20459_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_20459_53 Mask@@70 o_100@@12 f_133@@171) (= (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@35) o_100@@12 f_133@@171) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@29) o_100@@12 f_133@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| ExhaleHeap@@29) o_100@@12 f_133@@171))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_43401) (ExhaleHeap@@30 T@PolymorphicMapType_43401) (Mask@@71 T@PolymorphicMapType_43422) (o_100@@13 T@Ref) (f_133@@172 T@Field_47198_47199) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_20459_20460 Mask@@71 o_100@@13 f_133@@172) (= (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@36) o_100@@13 f_133@@172) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@30) o_100@@13 f_133@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| ExhaleHeap@@30) o_100@@13 f_133@@172))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_43401) (ExhaleHeap@@31 T@PolymorphicMapType_43401) (Mask@@72 T@PolymorphicMapType_43422) (o_100@@14 T@Ref) (f_133@@173 T@Field_20459_20419) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_20459_20419 Mask@@72 o_100@@14 f_133@@173) (= (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@37) o_100@@14 f_133@@173) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@31) o_100@@14 f_133@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| ExhaleHeap@@31) o_100@@14 f_133@@173))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_43401) (ExhaleHeap@@32 T@PolymorphicMapType_43401) (Mask@@73 T@PolymorphicMapType_43422) (o_100@@15 T@Ref) (f_133@@174 T@Field_20418_49412) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_20418_174694 Mask@@73 o_100@@15 f_133@@174) (= (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@38) o_100@@15 f_133@@174) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@32) o_100@@15 f_133@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| ExhaleHeap@@32) o_100@@15 f_133@@174))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_43401) (ExhaleHeap@@33 T@PolymorphicMapType_43401) (Mask@@74 T@PolymorphicMapType_43422) (o_100@@16 T@Ref) (f_133@@175 T@Field_46838_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_20418_1204 Mask@@74 o_100@@16 f_133@@175) (= (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@39) o_100@@16 f_133@@175) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@33) o_100@@16 f_133@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| ExhaleHeap@@33) o_100@@16 f_133@@175))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_43401) (ExhaleHeap@@34 T@PolymorphicMapType_43401) (Mask@@75 T@PolymorphicMapType_43422) (o_100@@17 T@Ref) (f_133@@176 T@Field_43461_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_20418_53 Mask@@75 o_100@@17 f_133@@176) (= (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@40) o_100@@17 f_133@@176) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@34) o_100@@17 f_133@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| ExhaleHeap@@34) o_100@@17 f_133@@176))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_43401) (ExhaleHeap@@35 T@PolymorphicMapType_43401) (Mask@@76 T@PolymorphicMapType_43422) (o_100@@18 T@Ref) (f_133@@177 T@Field_20418_20460) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_20418_20460 Mask@@76 o_100@@18 f_133@@177) (= (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@41) o_100@@18 f_133@@177) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@35) o_100@@18 f_133@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| ExhaleHeap@@35) o_100@@18 f_133@@177))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_43401) (ExhaleHeap@@36 T@PolymorphicMapType_43401) (Mask@@77 T@PolymorphicMapType_43422) (o_100@@19 T@Ref) (f_133@@178 T@Field_43474_43475) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_20418_20419 Mask@@77 o_100@@19 f_133@@178) (= (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@42) o_100@@19 f_133@@178) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@36) o_100@@19 f_133@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| ExhaleHeap@@36) o_100@@19 f_133@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_51820_51825) ) (! (= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_20484_53) ) (! (= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_20484_1204) ) (! (= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_20484_20419) ) (! (= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_51807_51808) ) (! (= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_53295_53300) ) (! (= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_20509_53) ) (! (= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_20509_1204) ) (! (= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_20509_20419) ) (! (= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_53008_53009) ) (! (= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_20418_49412) ) (! (= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_43461_53) ) (! (= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_46838_1204) ) (! (= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_43474_43475) ) (! (= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_20418_20460) ) (! (= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_49407_49412) ) (! (= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_20459_53) ) (! (= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_20459_1204) ) (! (= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_20459_20419) ) (! (= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_47198_47199) ) (! (= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_43422) (SummandMask1 T@PolymorphicMapType_43422) (SummandMask2 T@PolymorphicMapType_43422) (o_2@@79 T@Ref) (f_4@@79 T@Field_51820_51825) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43422_20484_195039#PolymorphicMapType_43422| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_43422) (SummandMask1@@0 T@PolymorphicMapType_43422) (SummandMask2@@0 T@PolymorphicMapType_43422) (o_2@@80 T@Ref) (f_4@@80 T@Field_20484_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43422_20484_53#PolymorphicMapType_43422| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_43422) (SummandMask1@@1 T@PolymorphicMapType_43422) (SummandMask2@@1 T@PolymorphicMapType_43422) (o_2@@81 T@Ref) (f_4@@81 T@Field_20484_1204) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43422_20484_1204#PolymorphicMapType_43422| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_43422) (SummandMask1@@2 T@PolymorphicMapType_43422) (SummandMask2@@2 T@PolymorphicMapType_43422) (o_2@@82 T@Ref) (f_4@@82 T@Field_20484_20419) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43422_20484_20419#PolymorphicMapType_43422| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_43422) (SummandMask1@@3 T@PolymorphicMapType_43422) (SummandMask2@@3 T@PolymorphicMapType_43422) (o_2@@83 T@Ref) (f_4@@83 T@Field_51807_51808) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43422_20484_20485#PolymorphicMapType_43422| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_43422) (SummandMask1@@4 T@PolymorphicMapType_43422) (SummandMask2@@4 T@PolymorphicMapType_43422) (o_2@@84 T@Ref) (f_4@@84 T@Field_53295_53300) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43422_20509_194628#PolymorphicMapType_43422| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_43422) (SummandMask1@@5 T@PolymorphicMapType_43422) (SummandMask2@@5 T@PolymorphicMapType_43422) (o_2@@85 T@Ref) (f_4@@85 T@Field_20509_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43422_20509_53#PolymorphicMapType_43422| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_43422) (SummandMask1@@6 T@PolymorphicMapType_43422) (SummandMask2@@6 T@PolymorphicMapType_43422) (o_2@@86 T@Ref) (f_4@@86 T@Field_20509_1204) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43422_20509_1204#PolymorphicMapType_43422| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_43422) (SummandMask1@@7 T@PolymorphicMapType_43422) (SummandMask2@@7 T@PolymorphicMapType_43422) (o_2@@87 T@Ref) (f_4@@87 T@Field_20509_20419) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43422_20509_20419#PolymorphicMapType_43422| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_43422) (SummandMask1@@8 T@PolymorphicMapType_43422) (SummandMask2@@8 T@PolymorphicMapType_43422) (o_2@@88 T@Ref) (f_4@@88 T@Field_53008_53009) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43422_20509_20510#PolymorphicMapType_43422| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_43422) (SummandMask1@@9 T@PolymorphicMapType_43422) (SummandMask2@@9 T@PolymorphicMapType_43422) (o_2@@89 T@Ref) (f_4@@89 T@Field_20418_49412) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43422_20418_194217#PolymorphicMapType_43422| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_43422) (SummandMask1@@10 T@PolymorphicMapType_43422) (SummandMask2@@10 T@PolymorphicMapType_43422) (o_2@@90 T@Ref) (f_4@@90 T@Field_43461_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43422_20418_53#PolymorphicMapType_43422| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_43422) (SummandMask1@@11 T@PolymorphicMapType_43422) (SummandMask2@@11 T@PolymorphicMapType_43422) (o_2@@91 T@Ref) (f_4@@91 T@Field_46838_1204) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43422_20421_1204#PolymorphicMapType_43422| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_43422) (SummandMask1@@12 T@PolymorphicMapType_43422) (SummandMask2@@12 T@PolymorphicMapType_43422) (o_2@@92 T@Ref) (f_4@@92 T@Field_43474_43475) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43422_20418_20419#PolymorphicMapType_43422| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_43422) (SummandMask1@@13 T@PolymorphicMapType_43422) (SummandMask2@@13 T@PolymorphicMapType_43422) (o_2@@93 T@Ref) (f_4@@93 T@Field_20418_20460) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43422_20418_20460#PolymorphicMapType_43422| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_43422) (SummandMask1@@14 T@PolymorphicMapType_43422) (SummandMask2@@14 T@PolymorphicMapType_43422) (o_2@@94 T@Ref) (f_4@@94 T@Field_49407_49412) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43422_20459_193818#PolymorphicMapType_43422| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_43422) (SummandMask1@@15 T@PolymorphicMapType_43422) (SummandMask2@@15 T@PolymorphicMapType_43422) (o_2@@95 T@Ref) (f_4@@95 T@Field_20459_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43422_20459_53#PolymorphicMapType_43422| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_43422) (SummandMask1@@16 T@PolymorphicMapType_43422) (SummandMask2@@16 T@PolymorphicMapType_43422) (o_2@@96 T@Ref) (f_4@@96 T@Field_20459_1204) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43422_20459_1204#PolymorphicMapType_43422| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_43422) (SummandMask1@@17 T@PolymorphicMapType_43422) (SummandMask2@@17 T@PolymorphicMapType_43422) (o_2@@97 T@Ref) (f_4@@97 T@Field_20459_20419) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43422_20459_20419#PolymorphicMapType_43422| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_43422) (SummandMask1@@18 T@PolymorphicMapType_43422) (SummandMask2@@18 T@PolymorphicMapType_43422) (o_2@@98 T@Ref) (f_4@@98 T@Field_47198_47199) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43422_20459_20460#PolymorphicMapType_43422| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_43401) (Mask@@78 T@PolymorphicMapType_43422) (this@@13 T@Ref) ) (!  (=> (and (state Heap@@43 Mask@@78) (< AssumeFunctionsAbove 0)) (=> (not (= this@@13 null)) (= (NodegetNext$ Heap@@43 this@@13) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@43) this@@13 Nodenext$))))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@43 Mask@@78) (NodegetNext$ Heap@@43 this@@13))
 :pattern ( (state Heap@@43 Mask@@78) (|NodegetNext$#triggerStateless| this@@13) (|Nodevalid$#trigger_20459| Heap@@43 (Nodevalid$ this@@13)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_43401) (Mask@@79 T@PolymorphicMapType_43422) (this@@14 T@Ref) ) (!  (=> (state Heap@@44 Mask@@79) (= (|NodegetNext$'| Heap@@44 this@@14) (|NodegetNext$#frame| (select (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@44) null (Nodevalid$ this@@14)) this@@14)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@44 Mask@@79) (|NodegetNext$'| Heap@@44 this@@14))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (getPredWandId_20459_20460 (Nodevalid$ this@@15)) 0)
 :qid |stdinbpl.320:15|
 :skolemid |29|
 :pattern ( (Nodevalid$ this@@15))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_20484_20485 (Nodep$ this@@16)) 1)
 :qid |stdinbpl.395:15|
 :skolemid |35|
 :pattern ( (Nodep$ this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (getPredWandId_20509_20510 (Nodeq$ this@@17)) 2)
 :qid |stdinbpl.470:15|
 :skolemid |41|
 :pattern ( (Nodeq$ this@@17))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_43401) (o_98 T@Ref) (f_108 T@Field_53295_53300) (v T@PolymorphicMapType_43950) ) (! (succHeap Heap@@45 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@45) (store (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@45) o_98 f_108 v) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@45) (store (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@45) o_98 f_108 v) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@45) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_43401) (o_98@@0 T@Ref) (f_108@@0 T@Field_20509_1204) (v@@0 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@46) (store (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@46) o_98@@0 f_108@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@46) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@46) (store (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@46) o_98@@0 f_108@@0 v@@0)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_43401) (o_98@@1 T@Ref) (f_108@@1 T@Field_53008_53009) (v@@1 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@47) (store (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@47) o_98@@1 f_108@@1 v@@1) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@47) (store (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@47) o_98@@1 f_108@@1 v@@1) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@47) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_43401) (o_98@@2 T@Ref) (f_108@@2 T@Field_20509_20419) (v@@2 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@48) (store (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@48) o_98@@2 f_108@@2 v@@2) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@48) (store (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@48) o_98@@2 f_108@@2 v@@2) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@48) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_43401) (o_98@@3 T@Ref) (f_108@@3 T@Field_20509_53) (v@@3 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@49) (store (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@49) o_98@@3 f_108@@3 v@@3) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@49) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@49) (store (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@49) o_98@@3 f_108@@3 v@@3) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_43401) (o_98@@4 T@Ref) (f_108@@4 T@Field_51820_51825) (v@@4 T@PolymorphicMapType_43950) ) (! (succHeap Heap@@50 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@50) (store (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@50) o_98@@4 f_108@@4 v@@4) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@50) (store (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@50) o_98@@4 f_108@@4 v@@4) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@50) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_43401) (o_98@@5 T@Ref) (f_108@@5 T@Field_20484_1204) (v@@5 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@51) (store (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@51) o_98@@5 f_108@@5 v@@5) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@51) (store (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@51) o_98@@5 f_108@@5 v@@5) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@51) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_43401) (o_98@@6 T@Ref) (f_108@@6 T@Field_51807_51808) (v@@6 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@52) (store (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@52) o_98@@6 f_108@@6 v@@6) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@52) (store (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@52) o_98@@6 f_108@@6 v@@6) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@52) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_43401) (o_98@@7 T@Ref) (f_108@@7 T@Field_20484_20419) (v@@7 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@53) (store (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@53) o_98@@7 f_108@@7 v@@7) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@53) (store (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@53) o_98@@7 f_108@@7 v@@7) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@53) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_43401) (o_98@@8 T@Ref) (f_108@@8 T@Field_20484_53) (v@@8 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@54) (store (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@54) o_98@@8 f_108@@8 v@@8) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@54) (store (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@54) o_98@@8 f_108@@8 v@@8) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@54) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_43401) (o_98@@9 T@Ref) (f_108@@9 T@Field_49407_49412) (v@@9 T@PolymorphicMapType_43950) ) (! (succHeap Heap@@55 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@55) (store (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@55) o_98@@9 f_108@@9 v@@9) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@55) (store (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@55) o_98@@9 f_108@@9 v@@9) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@55) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_43401) (o_98@@10 T@Ref) (f_108@@10 T@Field_20459_1204) (v@@10 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@56) (store (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@56) o_98@@10 f_108@@10 v@@10) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@56) (store (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@56) o_98@@10 f_108@@10 v@@10) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@56) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_43401) (o_98@@11 T@Ref) (f_108@@11 T@Field_47198_47199) (v@@11 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@57) (store (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@57) o_98@@11 f_108@@11 v@@11) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@57) (store (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@57) o_98@@11 f_108@@11 v@@11) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@57) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_43401) (o_98@@12 T@Ref) (f_108@@12 T@Field_20459_20419) (v@@12 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@58) (store (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@58) o_98@@12 f_108@@12 v@@12) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@58) (store (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@58) o_98@@12 f_108@@12 v@@12) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@58) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_43401) (o_98@@13 T@Ref) (f_108@@13 T@Field_20459_53) (v@@13 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@59) (store (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@59) o_98@@13 f_108@@13 v@@13) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@59) (store (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@59) o_98@@13 f_108@@13 v@@13) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@59) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_43401) (o_98@@14 T@Ref) (f_108@@14 T@Field_20418_49412) (v@@14 T@PolymorphicMapType_43950) ) (! (succHeap Heap@@60 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@60) (store (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@60) o_98@@14 f_108@@14 v@@14) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@60) (store (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@60) o_98@@14 f_108@@14 v@@14) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@60) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_43401) (o_98@@15 T@Ref) (f_108@@15 T@Field_46838_1204) (v@@15 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@61) (store (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@61) o_98@@15 f_108@@15 v@@15) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@61) (store (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@61) o_98@@15 f_108@@15 v@@15) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@61) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_43401) (o_98@@16 T@Ref) (f_108@@16 T@Field_20418_20460) (v@@16 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@62) (store (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@62) o_98@@16 f_108@@16 v@@16) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@62) (store (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@62) o_98@@16 f_108@@16 v@@16) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@62) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_43401) (o_98@@17 T@Ref) (f_108@@17 T@Field_43474_43475) (v@@17 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@63) (store (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@63) o_98@@17 f_108@@17 v@@17) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@63) (store (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@63) o_98@@17 f_108@@17 v@@17) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@63) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_43401) (o_98@@18 T@Ref) (f_108@@18 T@Field_43461_53) (v@@18 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_43401 (store (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@64) o_98@@18 f_108@@18 v@@18) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43401 (store (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@64) o_98@@18 f_108@@18 v@@18) (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20421_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20463_49499#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20485#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20510#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20513_114782#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20488_115922#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_20460#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20418_174736#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20459_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20484_1204#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_20419#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_53#PolymorphicMapType_43401| Heap@@64) (|PolymorphicMapType_43401_20509_1204#PolymorphicMapType_43401| Heap@@64)))
)))
(assert (forall ((this@@18 T@Ref) ) (! (= (PredicateMaskField_20459 (Nodevalid$ this@@18)) (|Nodevalid$#sm| this@@18))
 :qid |stdinbpl.312:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_20459 (Nodevalid$ this@@18)))
)))
(assert (forall ((this@@19 T@Ref) ) (! (= (PredicateMaskField_20484 (Nodep$ this@@19)) (|Nodep$#sm| this@@19))
 :qid |stdinbpl.387:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_20484 (Nodep$ this@@19)))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (PredicateMaskField_20509 (Nodeq$ this@@20)) (|Nodeq$#sm| this@@20))
 :qid |stdinbpl.462:15|
 :skolemid |39|
 :pattern ( (PredicateMaskField_20509 (Nodeq$ this@@20)))
)))
(assert (forall ((o_98@@19 T@Ref) (f_132 T@Field_43474_43475) (Heap@@65 T@PolymorphicMapType_43401) ) (!  (=> (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@65) o_98@@19 $allocated) (select (|PolymorphicMapType_43401_20290_53#PolymorphicMapType_43401| Heap@@65) (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@65) o_98@@19 f_132) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_43401_20293_20294#PolymorphicMapType_43401| Heap@@65) o_98@@19 f_132))
)))
(assert (forall ((p@@4 T@Field_20418_20460) (v_1@@3 T@FrameType) (q T@Field_20418_20460) (w@@3 T@FrameType) (r T@Field_20418_20460) (u T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@4 v_1@@3 q w@@3) (InsidePredicate_43461_43461 q w@@3 r u)) (InsidePredicate_43461_43461 p@@4 v_1@@3 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@4 v_1@@3 q w@@3) (InsidePredicate_43461_43461 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_20418_20460) (v_1@@4 T@FrameType) (q@@0 T@Field_20418_20460) (w@@4 T@FrameType) (r@@0 T@Field_51807_51808) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_43461_20484 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_43461_20484 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_43461_20484 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_20418_20460) (v_1@@5 T@FrameType) (q@@1 T@Field_20418_20460) (w@@5 T@FrameType) (r@@1 T@Field_53008_53009) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_43461_20509 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_43461_20509 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_43461_20509 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_20418_20460) (v_1@@6 T@FrameType) (q@@2 T@Field_20418_20460) (w@@6 T@FrameType) (r@@2 T@Field_47198_47199) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_43461 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_43461_20459 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_43461_20459 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_43461 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_43461_20459 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_20418_20460) (v_1@@7 T@FrameType) (q@@3 T@Field_51807_51808) (w@@7 T@FrameType) (r@@3 T@Field_20418_20460) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20484_43461 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_43461_43461 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20484_43461 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_20418_20460) (v_1@@8 T@FrameType) (q@@4 T@Field_51807_51808) (w@@8 T@FrameType) (r@@4 T@Field_51807_51808) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20484_20484 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_43461_20484 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20484_20484 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_20418_20460) (v_1@@9 T@FrameType) (q@@5 T@Field_51807_51808) (w@@9 T@FrameType) (r@@5 T@Field_53008_53009) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20484_20509 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_43461_20509 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20484_20509 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_20418_20460) (v_1@@10 T@FrameType) (q@@6 T@Field_51807_51808) (w@@10 T@FrameType) (r@@6 T@Field_47198_47199) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20484 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20484_20459 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_43461_20459 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20484 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20484_20459 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_20418_20460) (v_1@@11 T@FrameType) (q@@7 T@Field_53008_53009) (w@@11 T@FrameType) (r@@7 T@Field_20418_20460) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_20509_43461 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_43461_43461 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_20509_43461 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_20418_20460) (v_1@@12 T@FrameType) (q@@8 T@Field_53008_53009) (w@@12 T@FrameType) (r@@8 T@Field_51807_51808) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_20509_20484 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_43461_20484 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_20509_20484 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_20418_20460) (v_1@@13 T@FrameType) (q@@9 T@Field_53008_53009) (w@@13 T@FrameType) (r@@9 T@Field_53008_53009) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_20509_20509 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_43461_20509 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_20509_20509 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_20418_20460) (v_1@@14 T@FrameType) (q@@10 T@Field_53008_53009) (w@@14 T@FrameType) (r@@10 T@Field_47198_47199) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20509 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_20509_20459 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_43461_20459 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20509 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_20509_20459 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_20418_20460) (v_1@@15 T@FrameType) (q@@11 T@Field_47198_47199) (w@@15 T@FrameType) (r@@11 T@Field_20418_20460) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_20459_43461 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_43461_43461 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_20459_43461 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_20418_20460) (v_1@@16 T@FrameType) (q@@12 T@Field_47198_47199) (w@@16 T@FrameType) (r@@12 T@Field_51807_51808) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_20459_20484 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_43461_20484 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_20459_20484 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_20418_20460) (v_1@@17 T@FrameType) (q@@13 T@Field_47198_47199) (w@@17 T@FrameType) (r@@13 T@Field_53008_53009) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_20459_20509 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_43461_20509 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_20459_20509 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_20418_20460) (v_1@@18 T@FrameType) (q@@14 T@Field_47198_47199) (w@@18 T@FrameType) (r@@14 T@Field_47198_47199) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_43461_20459 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_20459_20459 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_43461_20459 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43461_20459 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_20459_20459 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_53008_53009) (v_1@@19 T@FrameType) (q@@15 T@Field_20418_20460) (w@@19 T@FrameType) (r@@15 T@Field_20418_20460) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_43461_43461 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_20509_43461 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_43461_43461 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_53008_53009) (v_1@@20 T@FrameType) (q@@16 T@Field_20418_20460) (w@@20 T@FrameType) (r@@16 T@Field_51807_51808) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_43461_20484 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_20509_20484 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_43461_20484 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_53008_53009) (v_1@@21 T@FrameType) (q@@17 T@Field_20418_20460) (w@@21 T@FrameType) (r@@17 T@Field_53008_53009) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_43461_20509 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_20509_20509 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_43461_20509 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_53008_53009) (v_1@@22 T@FrameType) (q@@18 T@Field_20418_20460) (w@@22 T@FrameType) (r@@18 T@Field_47198_47199) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_43461 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_43461_20459 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_20509_20459 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_43461 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_43461_20459 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_53008_53009) (v_1@@23 T@FrameType) (q@@19 T@Field_51807_51808) (w@@23 T@FrameType) (r@@19 T@Field_20418_20460) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20484_43461 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_20509_43461 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20484_43461 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_53008_53009) (v_1@@24 T@FrameType) (q@@20 T@Field_51807_51808) (w@@24 T@FrameType) (r@@20 T@Field_51807_51808) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20484_20484 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_20509_20484 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20484_20484 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_53008_53009) (v_1@@25 T@FrameType) (q@@21 T@Field_51807_51808) (w@@25 T@FrameType) (r@@21 T@Field_53008_53009) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20484_20509 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_20509_20509 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20484_20509 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_53008_53009) (v_1@@26 T@FrameType) (q@@22 T@Field_51807_51808) (w@@26 T@FrameType) (r@@22 T@Field_47198_47199) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20484 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20484_20459 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_20509_20459 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20484 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20484_20459 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_53008_53009) (v_1@@27 T@FrameType) (q@@23 T@Field_53008_53009) (w@@27 T@FrameType) (r@@23 T@Field_20418_20460) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_20509_43461 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_20509_43461 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_20509_43461 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_53008_53009) (v_1@@28 T@FrameType) (q@@24 T@Field_53008_53009) (w@@28 T@FrameType) (r@@24 T@Field_51807_51808) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_20509_20484 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_20509_20484 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_20509_20484 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_53008_53009) (v_1@@29 T@FrameType) (q@@25 T@Field_53008_53009) (w@@29 T@FrameType) (r@@25 T@Field_53008_53009) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_20509_20509 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_20509_20509 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_20509_20509 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_53008_53009) (v_1@@30 T@FrameType) (q@@26 T@Field_53008_53009) (w@@30 T@FrameType) (r@@26 T@Field_47198_47199) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20509 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_20509_20459 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_20509_20459 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20509 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_20509_20459 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_53008_53009) (v_1@@31 T@FrameType) (q@@27 T@Field_47198_47199) (w@@31 T@FrameType) (r@@27 T@Field_20418_20460) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_20459_43461 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_20509_43461 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_20459_43461 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_53008_53009) (v_1@@32 T@FrameType) (q@@28 T@Field_47198_47199) (w@@32 T@FrameType) (r@@28 T@Field_51807_51808) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_20459_20484 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_20509_20484 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_20459_20484 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_53008_53009) (v_1@@33 T@FrameType) (q@@29 T@Field_47198_47199) (w@@33 T@FrameType) (r@@29 T@Field_53008_53009) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_20459_20509 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_20509_20509 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_20459_20509 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_53008_53009) (v_1@@34 T@FrameType) (q@@30 T@Field_47198_47199) (w@@34 T@FrameType) (r@@30 T@Field_47198_47199) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_20509_20459 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_20459_20459 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_20509_20459 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20509_20459 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_20459_20459 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_51807_51808) (v_1@@35 T@FrameType) (q@@31 T@Field_20418_20460) (w@@35 T@FrameType) (r@@31 T@Field_20418_20460) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_43461_43461 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_20484_43461 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_43461_43461 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_51807_51808) (v_1@@36 T@FrameType) (q@@32 T@Field_20418_20460) (w@@36 T@FrameType) (r@@32 T@Field_51807_51808) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_43461_20484 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_20484_20484 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_43461_20484 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_51807_51808) (v_1@@37 T@FrameType) (q@@33 T@Field_20418_20460) (w@@37 T@FrameType) (r@@33 T@Field_53008_53009) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_43461_20509 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_20484_20509 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_43461_20509 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_51807_51808) (v_1@@38 T@FrameType) (q@@34 T@Field_20418_20460) (w@@38 T@FrameType) (r@@34 T@Field_47198_47199) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_43461 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_43461_20459 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_20484_20459 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_43461 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_43461_20459 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_51807_51808) (v_1@@39 T@FrameType) (q@@35 T@Field_51807_51808) (w@@39 T@FrameType) (r@@35 T@Field_20418_20460) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20484_43461 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_20484_43461 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20484_43461 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_51807_51808) (v_1@@40 T@FrameType) (q@@36 T@Field_51807_51808) (w@@40 T@FrameType) (r@@36 T@Field_51807_51808) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20484_20484 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_20484_20484 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20484_20484 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_51807_51808) (v_1@@41 T@FrameType) (q@@37 T@Field_51807_51808) (w@@41 T@FrameType) (r@@37 T@Field_53008_53009) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20484_20509 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_20484_20509 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20484_20509 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_51807_51808) (v_1@@42 T@FrameType) (q@@38 T@Field_51807_51808) (w@@42 T@FrameType) (r@@38 T@Field_47198_47199) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20484 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20484_20459 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_20484_20459 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20484 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20484_20459 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_51807_51808) (v_1@@43 T@FrameType) (q@@39 T@Field_53008_53009) (w@@43 T@FrameType) (r@@39 T@Field_20418_20460) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_20509_43461 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_20484_43461 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_20509_43461 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_51807_51808) (v_1@@44 T@FrameType) (q@@40 T@Field_53008_53009) (w@@44 T@FrameType) (r@@40 T@Field_51807_51808) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_20509_20484 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_20484_20484 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_20509_20484 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_51807_51808) (v_1@@45 T@FrameType) (q@@41 T@Field_53008_53009) (w@@45 T@FrameType) (r@@41 T@Field_53008_53009) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_20509_20509 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_20484_20509 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_20509_20509 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_51807_51808) (v_1@@46 T@FrameType) (q@@42 T@Field_53008_53009) (w@@46 T@FrameType) (r@@42 T@Field_47198_47199) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20509 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_20509_20459 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_20484_20459 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20509 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_20509_20459 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_51807_51808) (v_1@@47 T@FrameType) (q@@43 T@Field_47198_47199) (w@@47 T@FrameType) (r@@43 T@Field_20418_20460) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_20459_43461 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_20484_43461 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_20459_43461 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_51807_51808) (v_1@@48 T@FrameType) (q@@44 T@Field_47198_47199) (w@@48 T@FrameType) (r@@44 T@Field_51807_51808) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_20459_20484 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_20484_20484 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_20459_20484 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_51807_51808) (v_1@@49 T@FrameType) (q@@45 T@Field_47198_47199) (w@@49 T@FrameType) (r@@45 T@Field_53008_53009) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_20459_20509 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_20484_20509 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_20459_20509 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_51807_51808) (v_1@@50 T@FrameType) (q@@46 T@Field_47198_47199) (w@@50 T@FrameType) (r@@46 T@Field_47198_47199) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_20484_20459 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_20459_20459 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_20484_20459 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20484_20459 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_20459_20459 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_47198_47199) (v_1@@51 T@FrameType) (q@@47 T@Field_20418_20460) (w@@51 T@FrameType) (r@@47 T@Field_20418_20460) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_43461_43461 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_20459_43461 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_43461_43461 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_47198_47199) (v_1@@52 T@FrameType) (q@@48 T@Field_20418_20460) (w@@52 T@FrameType) (r@@48 T@Field_51807_51808) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_43461_20484 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_20459_20484 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_43461_20484 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_47198_47199) (v_1@@53 T@FrameType) (q@@49 T@Field_20418_20460) (w@@53 T@FrameType) (r@@49 T@Field_53008_53009) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_43461_20509 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_20459_20509 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_43461_20509 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_47198_47199) (v_1@@54 T@FrameType) (q@@50 T@Field_20418_20460) (w@@54 T@FrameType) (r@@50 T@Field_47198_47199) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_43461 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_43461_20459 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_20459_20459 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_43461 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_43461_20459 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_47198_47199) (v_1@@55 T@FrameType) (q@@51 T@Field_51807_51808) (w@@55 T@FrameType) (r@@51 T@Field_20418_20460) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20484_43461 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_20459_43461 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20484_43461 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_47198_47199) (v_1@@56 T@FrameType) (q@@52 T@Field_51807_51808) (w@@56 T@FrameType) (r@@52 T@Field_51807_51808) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20484_20484 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_20459_20484 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20484_20484 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_47198_47199) (v_1@@57 T@FrameType) (q@@53 T@Field_51807_51808) (w@@57 T@FrameType) (r@@53 T@Field_53008_53009) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20484_20509 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_20459_20509 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20484_20509 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_47198_47199) (v_1@@58 T@FrameType) (q@@54 T@Field_51807_51808) (w@@58 T@FrameType) (r@@54 T@Field_47198_47199) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20484 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20484_20459 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_20459_20459 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20484 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20484_20459 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_47198_47199) (v_1@@59 T@FrameType) (q@@55 T@Field_53008_53009) (w@@59 T@FrameType) (r@@55 T@Field_20418_20460) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_20509_43461 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_20459_43461 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_20509_43461 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_47198_47199) (v_1@@60 T@FrameType) (q@@56 T@Field_53008_53009) (w@@60 T@FrameType) (r@@56 T@Field_51807_51808) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_20509_20484 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_20459_20484 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_20509_20484 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_47198_47199) (v_1@@61 T@FrameType) (q@@57 T@Field_53008_53009) (w@@61 T@FrameType) (r@@57 T@Field_53008_53009) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_20509_20509 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_20459_20509 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_20509_20509 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_47198_47199) (v_1@@62 T@FrameType) (q@@58 T@Field_53008_53009) (w@@62 T@FrameType) (r@@58 T@Field_47198_47199) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20509 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_20509_20459 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_20459_20459 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20509 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_20509_20459 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_47198_47199) (v_1@@63 T@FrameType) (q@@59 T@Field_47198_47199) (w@@63 T@FrameType) (r@@59 T@Field_20418_20460) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_20459_43461 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_20459_43461 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_20459_43461 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_47198_47199) (v_1@@64 T@FrameType) (q@@60 T@Field_47198_47199) (w@@64 T@FrameType) (r@@60 T@Field_51807_51808) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_20459_20484 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_20459_20484 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_20459_20484 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_47198_47199) (v_1@@65 T@FrameType) (q@@61 T@Field_47198_47199) (w@@65 T@FrameType) (r@@61 T@Field_53008_53009) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_20459_20509 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_20459_20509 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_20459_20509 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_47198_47199) (v_1@@66 T@FrameType) (q@@62 T@Field_47198_47199) (w@@66 T@FrameType) (r@@62 T@Field_47198_47199) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_20459_20459 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_20459_20459 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_20459_20459 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20459_20459 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_20459_20459 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

